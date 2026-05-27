inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre4BoneC2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i16 @_ZNK6Assimp4Ogre4Bone8ParentIdEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #1 align 2 {
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
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
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #31
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.ae, ptr %i.l, align 8
  store ptr %i.ai, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.aj, ptr %i.o, align 8
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
define hidden void @_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE(ptr noundef nonnull align 8 dereferenceable(248) initializes((120, 248)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.m = load float, ptr %i.i, align 4, !noalias !72 ; 4 uses
  %i.n = fneg float %i.m                          ; 3 uses
  %i.o = load <2 x float>, ptr %i.k, align 4, !noalias !72 ; 4 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 5 uses
  %i.q = fmul float %i.p, %i.p                    ; 2 uses
  %i.r = load <2 x float>, ptr %i.l, align 8, !noalias !72 ; 5 uses
  %i.s = extractelement <2 x float> %i.r, i64 1   ; 7 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.q)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float -2.000000e+00, float 1.000000e+00)
  %i.v = insertelement <2 x float> poison, float %i.m, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.n, i64 1
  %i.x = fmul <2 x float> %i.o, %i.w
  %i.y = shufflevector <2 x float> %i.o, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.y, <2 x float> %i.x)
  %i.aa = fmul <2 x float> %i.z, splat (float 2.000000e+00)
  %i.ab = fmul float %i.p, %i.m
  %i.ac = extractelement <2 x float> %i.r, i64 0  ; 8 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.s, float %i.ab)
  %4 = fmul float %i.ad, 2.000000e+00
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.q)
  %5 = fmul float %i.ac, %i.n
  %6 = insertelement <2 x float> %i.r, float %i.ae, i64 0
  %i.af = insertelement <2 x float> %i.o, float -2.000000e+00, i64 0
  %i.ag = insertelement <2 x float> <float 1.000000e+00, float poison>, float %5, i64 1
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.af, <2 x float> %i.ag)
  %i.ah = fmul <2 x float> %7, <float 1.000000e+00, float 2.000000e+00>
  %i.ai = fmul float %i.s, %i.n
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.p, float %i.ai)
  %i.ak = fmul float %i.aj, 2.000000e+00
  %8 = fmul float %i.ac, %i.m
  %9 = fmul float %i.s, %i.s
  %10 = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %9)
  %11 = tail call float @llvm.fmuladd.f32(float %10, float -2.000000e+00, float 1.000000e+00)
  %12 = tail call float @llvm.fmuladd.f32(float %i.s, float %i.p, float %8)
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %14 = insertelement <2 x float> %13, float %11, i64 1
  %15 = fmul <2 x float> %14, <float 2.000000e+00, float 1.000000e+00>
  %i.al = load float, ptr %i.h, align 4
  %i.am = load float, ptr %i.j, align 8
  %i.an = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ao = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3
  %i.ar = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.al, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.at = fmul <4 x float> %i.aq, %i.as
  store <4 x float> %i.at, ptr %2, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load float, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.av, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %16 = insertelement <4 x float> poison, float %4, i64 0
  %i.bb = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %i.bb, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bc = insertelement <4 x float> %17, float %i.ay, i64 3
  %i.bd = fmul <4 x float> %i.ba, %i.bc
  store <4 x float> %i.bd, ptr %i.aw, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = load float, ptr %i.bh, align 8
  %i.bj = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bf, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %18 = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.bl = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %18, <4 x float> %i.bl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bm = insertelement <4 x float> %19, float %i.bi, i64 3
  %i.bn = fmul <4 x float> %i.bk, %i.bm
  store <4 x float> %i.bn, ptr %i.bg, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bo, align 16
  %i.bp = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %2)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bq, ptr noundef nonnull align 4 dereferenceable(64) %i.bp, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.br = load float, ptr %i.i, align 4, !noalias !75 ; 4 uses
  %i.bs = fneg float %i.br                        ; 3 uses
  %i.bt = load <2 x float>, ptr %i.k, align 4, !noalias !75 ; 4 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 1 ; 5 uses
  %i.bv = fmul float %i.bu, %i.bu                 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.l, align 8, !noalias !75 ; 5 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 7 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bv)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float -2.000000e+00, float 1.000000e+00)
  %i.ca = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bs, i64 1
  %i.cc = fmul <2 x float> %i.bt, %i.cb
  %i.cd = shufflevector <2 x float> %i.bt, <2 x float> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.cd, <2 x float> %i.cc)
  %i.cf = fmul <2 x float> %i.ce, splat (float 2.000000e+00)
  %i.cg = fmul float %i.bu, %i.br
  %i.ch = extractelement <2 x float> %i.bw, i64 0 ; 8 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bx, float %i.cg)
  %20 = fmul float %i.ci, 2.000000e+00
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.bv)
  %21 = fmul float %i.ch, %i.bs
  %22 = insertelement <2 x float> %i.bw, float %i.cj, i64 0
  %i.ck = insertelement <2 x float> %i.bt, float -2.000000e+00, i64 0
  %i.cl = insertelement <2 x float> <float 1.000000e+00, float poison>, float %21, i64 1
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.ck, <2 x float> %i.cl)
  %i.cm = fmul <2 x float> %23, <float 1.000000e+00, float 2.000000e+00>
  %i.cn = fmul float %i.bx, %i.bs
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bu, float %i.cn)
  %i.cp = fmul float %i.co, 2.000000e+00
  %24 = fmul float %i.ch, %i.br
  %25 = fmul float %i.bx, %i.bx
  %26 = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %26, float -2.000000e+00, float 1.000000e+00)
  %28 = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bu, float %24)
  %29 = insertelement <2 x float> poison, float %28, i64 0
  %30 = insertelement <2 x float> %29, float %27, i64 1
  %31 = fmul <2 x float> %30, <float 2.000000e+00, float 1.000000e+00>
  %i.cq = load float, ptr %i.h, align 4
  %i.cr = load float, ptr %i.j, align 8
  %i.cs = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ct = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3
  %i.cw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cq, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cy = fmul <4 x float> %i.cv, %i.cx
  store <4 x float> %i.cy, ptr %3, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.da = load float, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.da, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %32 = insertelement <4 x float> poison, float %20, i64 0
  %i.dg = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %32, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dh = insertelement <4 x float> %33, float %i.dd, i64 3
  %i.di = fmul <4 x float> %i.df, %i.dh
  store <4 x float> %i.di, ptr %i.db, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dn = load float, ptr %i.dm, align 8
  %i.do = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dk, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %34 = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.dq = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %35 = shufflevector <4 x float> %34, <4 x float> %i.dq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dr = insertelement <4 x float> %35, float %i.dn, i64 3
  %i.ds = fmul <4 x float> %i.dp, %i.dr
  store <4 x float> %i.ds, ptr %i.dl, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.dt, align 16
  %i.du = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 16 uses
  %i.dv = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 120
  %i.dx = load <4 x float>, ptr %i.du, align 4
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dy = load <4 x float>, ptr %.sroa.615.0..sroa_idx16, align 4
  %.sroa.818.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load <4 x float>, ptr %.sroa.818.0..sroa_idx19, align 4
  %.sroa.1021.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.ea = load <4 x float>, ptr %.sroa.1021.0..sroa_idx22, align 4
  %.sroa.1224.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.eb = load <4 x float>, ptr %.sroa.1224.0..sroa_idx25, align 4
  %.sroa.1427.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %i.ec = load <4 x float>, ptr %.sroa.1427.0..sroa_idx28, align 4
  %.sroa.1630.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ed = load <4 x float>, ptr %.sroa.1630.0..sroa_idx31, align 4
  %.sroa.1833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.ee = load <4 x float>, ptr %.sroa.1833.0..sroa_idx34, align 4
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.ef = load <4 x float>, ptr %.sroa.20.0..sroa_idx36, align 4
  %.sroa.22.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.eg = load <4 x float>, ptr %.sroa.22.0..sroa_idx38, align 4
  %.sroa.24.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.eh = load <4 x float>, ptr %.sroa.24.0..sroa_idx40, align 4
  %.sroa.26.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  %i.ei = load <4 x float>, ptr %.sroa.26.0..sroa_idx42, align 4
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.ej = load <4 x float>, ptr %.sroa.28.0..sroa_idx44, align 4
  %.sroa.30.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.du, i64 52
  %.sroa.30.0.copyload47 = load float, ptr %.sroa.30.0..sroa_idx46, align 4
  %.sroa.32.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %.sroa.32.0.copyload49 = load float, ptr %.sroa.32.0..sroa_idx48, align 4
  %.sroa.34.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.du, i64 60
  %.sroa.34.0.copyload51 = load float, ptr %.sroa.34.0..sroa_idx50, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 152
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 168
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eo = load <4 x float>, ptr %i.dw, align 4    ; 4 uses
  %i.ep = load <4 x float>, ptr %i.ek, align 4    ; 4 uses
  %i.eq = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = fmul <4 x float> %i.eq, %i.ep
  %i.es = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.es, <4 x float> %i.er)
  %i.eu = load <4 x float>, ptr %i.el, align 4    ; 4 uses
  %i.ev = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ev, <4 x float> %i.et)
  %i.ex = load <4 x float>, ptr %i.em, align 4    ; 4 uses
  %i.ey = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.ey, <4 x float> %i.ew)
  store <4 x float> %i.ez, ptr %i.en, align 8
  %.sroa.1224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fa = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul <4 x float> %i.fa, %i.ep
  %i.fc = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.fc, <4 x float> %i.fb)
  %i.fe = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.fe, <4 x float> %i.fd)
  %i.fg = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fg, <4 x float> %i.ff)
  store <4 x float> %i.fh, ptr %.sroa.1224.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fi = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = fmul <4 x float> %i.fi, %i.ep
  %i.fk = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.fk, <4 x float> %i.fj)
  %i.fm = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.fm, <4 x float> %i.fl)
  %i.fo = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fo, <4 x float> %i.fn)
  store <4 x float> %i.fp, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fq = insertelement <4 x float> poison, float %.sroa.30.0.copyload47, i64 0
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fs = fmul <4 x float> %i.fr, %i.ep
  %i.ft = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.ft, <4 x float> %i.fs)
  %i.fv = insertelement <4 x float> poison, float %.sroa.32.0.copyload49, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.fw, <4 x float> %i.fu)
  %i.fy = insertelement <4 x float> poison, float %.sroa.34.0.copyload51, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fz, <4 x float> %i.fx)
  store <4 x float> %i.ga, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gg = load float, ptr %i.gc, align 4, !noalias !78 ; 4 uses
  %i.gh = fneg float %i.gg                        ; 3 uses
  %i.gi = load <2 x float>, ptr %i.ge, align 4, !noalias !78 ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1 ; 5 uses
  %i.gk = fmul float %i.gj, %i.gj                 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.gf, align 8, !noalias !78 ; 5 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 1 ; 7 uses
  %i.gn = call float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float %i.gk)
  %i.go = call float @llvm.fmuladd.f32(float %i.gn, float -2.000000e+00, float 1.000000e+00)
  %i.gp = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.gh, i64 1
  %i.gr = fmul <2 x float> %i.gi, %i.gq
  %i.gs = shufflevector <2 x float> %i.gi, <2 x float> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.gs, <2 x float> %i.gr)
  %i.gu = fmul <2 x float> %i.gt, splat (float 2.000000e+00)
  %i.gv = fmul float %i.gj, %i.gg
  %i.gw = extractelement <2 x float> %i.gl, i64 0 ; 8 uses
  %i.gx = call float @llvm.fmuladd.f32(float %i.gw, float %i.gm, float %i.gv)
  %36 = fmul float %i.gx, 2.000000e+00
  %i.gy = call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gk)
  %37 = fmul float %i.gw, %i.gh
  %38 = insertelement <2 x float> %i.gl, float %i.gy, i64 0
  %i.gz = insertelement <2 x float> %i.gi, float -2.000000e+00, i64 0
  %i.ha = insertelement <2 x float> <float 1.000000e+00, float poison>, float %37, i64 1
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %i.gz, <2 x float> %i.ha)
  %i.hb = fmul <2 x float> %39, <float 1.000000e+00, float 2.000000e+00>
  %i.hc = fmul float %i.gm, %i.gh
  %i.hd = call float @llvm.fmuladd.f32(float %i.gw, float %i.gj, float %i.hc)
  %i.he = fmul float %i.hd, 2.000000e+00
  %40 = fmul float %i.gw, %i.gg
  %41 = fmul float %i.gm, %i.gm
  %42 = call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %41)
  %43 = call float @llvm.fmuladd.f32(float %42, float -2.000000e+00, float 1.000000e+00)
  %44 = call float @llvm.fmuladd.f32(float %i.gm, float %i.gj, float %40)
  %45 = insertelement <2 x float> poison, float %44, i64 0
  %46 = insertelement <2 x float> %45, float %43, i64 1
  %47 = fmul <2 x float> %46, <float 2.000000e+00, float 1.000000e+00>
  %i.hf = load float, ptr %i.gb, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hh = load float, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.hk = load float, ptr %i.hj, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hn = load float, ptr %i.gd, align 8
  %i.ho = insertelement <4 x float> poison, float %i.go, i64 0
  %i.hp = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 3
  %i.hs = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hf, i64 0
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hu = fmul <4 x float> %i.hr, %i.ht
  store <4 x float> %i.hu, ptr %i.hm, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hv = load float, ptr %i.hi, align 4
  %i.hw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hh, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %48 = insertelement <4 x float> poison, float %36, i64 0
  %i.hy = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %49 = shufflevector <4 x float> %48, <4 x float> %i.hy, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.hz = insertelement <4 x float> %49, float %i.hv, i64 3
  %i.ia = fmul <4 x float> %i.hx, %i.hz
  store <4 x float> %i.ia, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ib = load float, ptr %i.hl, align 8
  %i.ic = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hk, i64 0
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %50 = insertelement <4 x float> poison, float %i.he, i64 0
  %i.ie = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> %i.ie, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.if = insertelement <4 x float> %51, float %i.ib, i64 3
  %i.ig = fmul <4 x float> %i.id, %i.if
  store <4 x float> %i.ig, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ii = load ptr, ptr %i.ih, align 8            ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.ii, %i.ik
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit
  %.sroa.09.056 = phi ptr [ %i.ii, %.lr.ph ], [ %i.iw, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.im = load i16, ptr %.sroa.09.056, align 2    ; 2 uses
  store i16 %i.im, ptr %i.a, align 2
  %i.in = load ptr, ptr %1, align 8               ; 2 uses
  %i.io = load ptr, ptr %i.il, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.in, %i.io
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i, i64 8 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ip, %i.io
  br i1 %.not.i8, label %.loopexit, label %.lr.ph.i, !llvm.loop !46

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.04.011.i = phi ptr [ %i.ip, %bb.f ], [ %i.in, %bb.e ] ; 2 uses
  %i.iq = load ptr, ptr %.sroa.04.011.i, align 8  ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 8
  %i.is = icmp eq i16 %i.ir, %i.im
  br i1 %i.is, label %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, label %bb.f

.loopexit:                                        ; preds = %bb.e, %bb.f
  %i.it = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA63_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 1 dereferenceable(63) @.str.46, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.47, ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 1 dereferenceable(2) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %i.iu)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit
  call void @__cxa_throw(ptr nonnull %i.it, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.h:                                             ; preds = %.loopexit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.it) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.iv

_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit:        ; preds = %.lr.ph.i
  call void @_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE(ptr noundef nonnull align 8 dereferenceable(248) %i.iq, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.09.056, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.iw, %i.ik
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
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 5 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fneg <2 x float> %i.x                    ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <2 x float> %i.y, i64 1  ; 3 uses
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
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.di = fmul <4 x float> %i.dh, %i.de
  %i.dj = fneg float %i.e
  %i.dk = fneg float %i.aa
  %i.dl = fneg float %i.df                        ; 2 uses
  %i.dm = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dn = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.do = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dp, <4 x float> %i.di) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.gv = fmul <4 x float> %i.gt, %i.gu
  %i.gw = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.gx = insertelement <4 x float> %i.gw, float %i.bd, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gz = fmul <4 x float> %i.gy, %i.de
  %i.ha = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.hb = insertelement <4 x float> %i.ev, float %i.ba, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hc, <4 x float> %i.gz)
  %i.he = fmul <4 x float> %i.ed, %i.hd
  %i.hf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.a, i64 1
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hi = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hi, <4 x float> %i.he)
  %i.hk = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.hk, <4 x float> %i.hj)
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
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
define hidden void @_ZN6Assimp4Ogre17TransformKeyFrame9TransformEv(ptr dead_on_unwind noalias writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.b, align 4, !noalias !81 ; 4 uses
  %i.g = fneg float %i.f                          ; 3 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !noalias !81 ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 1   ; 5 uses
  %i.j = fmul float %i.i, %i.i                    ; 2 uses
  %i.k = load <2 x float>, ptr %i.e, align 4, !noalias !81 ; 5 uses
  %i.l = extractelement <2 x float> %i.k, i64 1   ; 7 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.j)
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float -2.000000e+00, float 1.000000e+00)
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.g, i64 1
  %i.q = fmul <2 x float> %i.h, %i.p
  %i.r = shufflevector <2 x float> %i.h, <2 x float> %i.k, <2 x i32> <i32 1, i32 2>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.r, <2 x float> %i.q)
  %i.t = fmul <2 x float> %i.s, splat (float 2.000000e+00)
  %i.u = fmul float %i.i, %i.f
  %i.v = extractelement <2 x float> %i.k, i64 0   ; 8 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.l, float %i.u)
  %2 = fmul float %i.w, 2.000000e+00
  %i.x = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.j)
  %3 = fmul float %i.v, %i.g
  %4 = insertelement <2 x float> %i.k, float %i.x, i64 0
  %i.y = insertelement <2 x float> %i.h, float -2.000000e+00, i64 0
  %i.z = insertelement <2 x float> <float 1.000000e+00, float poison>, float %3, i64 1
  %5 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %i.y, <2 x float> %i.z)
  %i.aa = fmul <2 x float> %5, <float 1.000000e+00, float 2.000000e+00>
  %i.ab = fmul float %i.l, %i.g
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.v, float %i.i, float %i.ab)
  %i.ad = fmul float %i.ac, 2.000000e+00
  %6 = fmul float %i.v, %i.f
  %7 = fmul float %i.l, %i.l
  %8 = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %7)
  %9 = tail call float @llvm.fmuladd.f32(float %8, float -2.000000e+00, float 1.000000e+00)
  %10 = tail call float @llvm.fmuladd.f32(float %i.l, float %i.i, float %6)
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %12 = insertelement <2 x float> %11, float %9, i64 1
  %13 = fmul <2 x float> %12, <float 2.000000e+00, float 1.000000e+00>
  %i.ae = load float, ptr %i.a, align 4
  %i.af = load float, ptr %i.c, align 4
  %i.ag = insertelement <4 x float> poison, float %i.n, i64 0
  %i.ah = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 3
  %i.ak = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ae, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.am = fmul <4 x float> %i.aj, %i.al
  store <4 x float> %i.am, ptr %0, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ao, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %14 = insertelement <4 x float> poison, float %2, i64 0
  %i.au = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %14, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.av = insertelement <4 x float> %15, float %i.ar, i64 3
  %i.aw = fmul <4 x float> %i.at, %i.av
  store <4 x float> %i.aw, ptr %i.ap, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ay, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %16 = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.be = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bf = insertelement <4 x float> %17, float %i.bb, i64 3
  %i.bg = fmul <4 x float> %i.bd, %i.bf
  store <4 x float> %i.bg, ptr %i.az, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bh, align 4
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
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 4            ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load float, ptr %i.r, align 4            ; 4 uses
  %i.t = load <2 x float>, ptr %0, align 4        ; 4 uses
  %i.u = load <2 x float>, ptr %i.c, align 4      ; 4 uses
  %i.v = load <2 x float>, ptr %i.g, align 4      ; 4 uses
  %i.w = fmul <2 x float> %i.u, %i.u
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.w)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.v, <2 x float> %i.x)
  %i.z = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.y) ; 4 uses
  store <2 x float> %i.z, ptr %1, align 4
  %i.aa = fmul float %i.q, %i.q
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.ab)
  %sqrt.i32 = tail call noundef float @llvm.sqrt.f32(float %i.ac) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %sqrt.i32, ptr %i.ad, align 4
  %i.ae = load float, ptr %0, align 4             ; 3 uses
  %i.af = load float, ptr %i.l, align 4           ; 3 uses
  %i.ag = fmul float %i.ae, %i.af                 ; 2 uses
  %i.ah = load float, ptr %i.r, align 4           ; 4 uses
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = load float, ptr %i.aj, align 4          ; 6 uses
  %i.al = load float, ptr %i.h, align 4           ; 5 uses
  %i.am = fmul float %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load float, ptr %i.an, align 4          ; 6 uses
  %i.ap = fneg float %i.ao
  %i.aq = fmul float %i.am, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ak, float %i.aq)
  %i.as = load float, ptr %i.p, align 4           ; 3 uses
  %i.at = fmul float %i.ae, %i.as                 ; 2 uses
  %i.au = fmul float %i.al, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.ar)
  %i.ay = load float, ptr %i.m, align 4           ; 4 uses
  %i.az = fneg float %i.ay                        ; 3 uses
  %i.ba = fmul float %i.at, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ak, float %i.ax)
  %i.bc = load float, ptr %i.d, align 4           ; 3 uses
  %i.bd = fmul float %i.ae, %i.bc                 ; 2 uses
  %i.be = fmul float %i.ay, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ao, float %i.bb)
  %i.bg = fneg float %i.ah                        ; 3 uses
  %i.bh = fmul float %i.bd, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.aw, float %i.bf)
  %i.bj = load float, ptr %i.k, align 4           ; 3 uses
  %i.bk = fmul float %i.as, %i.bj                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load float, ptr %i.bl, align 4          ; 6 uses
  %i.bn = fneg float %i.al                        ; 2 uses
  %i.bo = fmul float %i.bk, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bm, float %i.bi)
  %i.bq = load float, ptr %i.g, align 4           ; 4 uses
  %i.br = fmul float %i.bk, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.ak, float %i.bp)
  %i.bt = fmul float %i.bc, %i.bj                 ; 2 uses
  %i.bu = fneg float %i.bq                        ; 3 uses
  %i.bv = fmul float %i.bt, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ao, float %i.bs)
  %i.bx = fmul float %i.ah, %i.bt
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bm, float %i.bw)
  %i.bz = load float, ptr %i.c, align 4           ; 3 uses
  %i.ca = fmul float %i.bj, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.ca, %i.bg
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ak, float %i.by)
  %i.cd = fmul float %i.al, %i.ca
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ao, float %i.cc)
  %i.cf = load float, ptr %i.n, align 4           ; 3 uses
  %i.cg = fmul float %i.bc, %i.cf                 ; 2 uses
  %i.ch = fmul float %i.bq, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.aw, float %i.ce)
  %i.cj = fmul float %i.cg, %i.az
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.bm, float %i.ci)
  %i.cl = fmul float %i.bz, %i.cf                 ; 2 uses
  %i.cm = fmul float %i.ay, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.ak, float %i.ck)
  %i.co = fmul float %i.cl, %i.bn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.aw, float %i.cn)
  %i.cq = fmul float %i.af, %i.cf                 ; 2 uses
  %i.cr = fmul float %i.al, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.bm, float %i.cp)
  %i.ct = fmul float %i.cq, %i.bu
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ak, float %i.cs)
  %i.cv = load float, ptr %i.a, align 4           ; 3 uses
  %i.cw = fmul float %i.bz, %i.cv                 ; 2 uses
  %i.cx = fmul float %i.cw, %i.az
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.ao, float %i.cu)
  %i.cz = fmul float %i.ah, %i.cw
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.aw, float %i.cy)
  %i.db = fmul float %i.af, %i.cv                 ; 2 uses
  %i.dc = fmul float %i.db, %i.bg
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.bm, float %i.da)
  %i.de = fmul float %i.bq, %i.db
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.ao, float %i.dd)
  %i.dg = fmul float %i.as, %i.cv                 ; 2 uses
  %i.dh = fmul float %i.dg, %i.bu
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.aw, float %i.df)
  %i.dj = fmul float %i.ay, %i.dg
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.bm, float %i.di)
  %i.dl = fcmp olt float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dm = extractelement <2 x float> %i.z, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dn = extractelement <2 x float> %i.z, i64 0
  %i.do = fneg float %i.dn                        ; 2 uses
  %i.dp = extractelement <2 x float> %i.z, i64 1
  %i.dq = fneg float %i.dp                        ; 2 uses
  %i.dr = fneg float %sqrt.i32                    ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.do, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.dq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  store float %i.dr, ptr %i.ad, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ds = phi float [ %sqrt.i32, %._crit_edge ], [ %i.dr, %bb.b ] ; 2 uses
  %i.dt = phi float [ %i.dm, %._crit_edge ], [ %i.dq, %bb.b ] ; 2 uses
  %i.du = phi float [ %.pre, %._crit_edge ], [ %i.do, %bb.b ] ; 2 uses
  %i.dv = fcmp une float %i.du, 0.000000e+00      ; 3 uses
  %i.dw = fdiv float 1.000000e+00, %i.du          ; 3 uses
  %i.dx = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.dy = fmul float %i.dx, %i.dw
  %i.dz = extractelement <2 x float> %i.u, i64 0  ; 2 uses
  %i.ea = fmul float %i.dz, %i.dw
  %i.eb = extractelement <2 x float> %i.v, i64 0  ; 2 uses
  %i.ec = fmul float %i.eb, %i.dw
  %.sroa.055.0 = select i1 %i.dv, float %i.dy, float %i.dx ; 6 uses
  %.sroa.7.0 = select i1 %i.dv, float %i.ea, float %i.dz ; 4 uses
  %.sroa.1260.0 = select i1 %i.dv, float %i.ec, float %i.eb ; 4 uses
  %i.ed = fcmp une float %i.dt, 0.000000e+00      ; 3 uses
  %i.ee = fdiv float 1.000000e+00, %i.dt          ; 3 uses
  %i.ef = extractelement <2 x float> %i.t, i64 1  ; 2 uses
  %i.eg = fmul float %i.ef, %i.ee
  %i.eh = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.ei = fmul float %i.eh, %i.ee
  %i.ej = extractelement <2 x float> %i.v, i64 1  ; 2 uses
  %i.ek = fmul float %i.ej, %i.ee
  %.sroa.17.0 = select i1 %i.ed, float %i.eg, float %i.ef ; 4 uses
  %.sroa.22.0 = select i1 %i.ed, float %i.ei, float %i.eh ; 6 uses
  %.sroa.27.0 = select i1 %i.ed, float %i.ek, float %i.ej ; 4 uses
  %i.el = fcmp une float %i.ds, 0.000000e+00      ; 3 uses
  %i.em = fdiv float 1.000000e+00, %i.ds          ; 3 uses
  %i.en = fmul float %i.o, %i.em
  %i.eo = fmul float %i.q, %i.em
  %i.ep = fmul float %i.s, %i.em
  %.sroa.32.0 = select i1 %i.el, float %i.en, float %i.o ; 4 uses
  %.sroa.37.0 = select i1 %i.el, float %i.eo, float %i.q ; 4 uses
  %.sroa.42.0 = select i1 %i.el, float %i.ep, float %i.s ; 6 uses
  %i.eq = fadd float %.sroa.055.0, %.sroa.22.0
  %i.er = fadd float %i.eq, %.sroa.42.0           ; 2 uses
  %i.es = fcmp ogt float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.et = fadd float %i.er, 1.000000e+00
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #28
  %i.ev = fsub float %.sroa.7.0, %.sroa.17.0
  %.scalar = fmul float %i.eu, 2.000000e+00
  %i.ew = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ey = fsub float %.sroa.32.0, %.sroa.1260.0
  %i.ez = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
end_hunk_1
