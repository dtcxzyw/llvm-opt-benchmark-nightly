Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math?download=true
inline.NumInlined: 930
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4pbrt19IntegrateCatmullRomEN4pstd4spanIKfEES3_NS1_IfEE:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.am = load float, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.an = fsub float %i.ai, %i.ag                 ; 3 uses
  %i.ao = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = fsub float %i.am, %i.aq
  %i.as = fmul float %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = fsub float %i.ai, %i.au
  %i.aw = fdiv float %i.as, %i.av
  %i.ax = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ay = icmp ugt i64 %1, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.peel.next
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = fsub float %i.ba, %i.ak
  %i.bc = fmul float %i.an, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fsub float %i.be, %i.ag
  %i.bg = fdiv float %i.bc, %i.bf
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.peel.next
  %i.bh = fsub float %i.am, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = phi float [ %i.bg, %bb.h ], [ %i.bh, %bb.i ]
  %i.bj = fadd float %i.ak, %i.am
  %i.bk = fmul float %i.bj, 5.000000e-01
  %i.bl = fsub float %i.aw, %i.bi
  %i.bm = fdiv float %i.bl, 1.200000e+01
  %i.bn = fadd float %i.bk, %i.bm
  %i.bo = fmul float %i.an, %i.bn
  %i.bp = fadd float %.03247, %i.bo               ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.bp, ptr %i.bq, align 4, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !68
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float> %0) local_unnamed_addr #8 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.b = fcmp ole <4 x float> %i.a, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.c = fcmp oge <4 x float> %i.a, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.d = shufflevector <4 x i1> %i.b, <4 x i1> %i.c, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.e = freeze <4 x i1> %i.d
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA45_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 293, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(45) @.str.17) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.031.4.vec.extract37 = extractelement <2 x float> %0, i64 1
  %.sroa.031.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.h = fmul nnan float %.sroa.031.0.vec.extract, 2.000000e+00
  %i.i = fadd float %i.h, -1.000000e+00           ; 2 uses
  %i.j = fmul nnan float %.sroa.031.4.vec.extract37, 2.000000e+00
  %i.k = fadd float %i.j, -1.000000e+00           ; 2 uses
  %i.l = tail call noundef float @llvm.fabs.f32(float %i.i) ; 2 uses
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.n = fadd float %i.l, %i.m
  %i.o = fsub float 1.000000e+00, %i.n            ; 2 uses
  %i.p = tail call noundef float @llvm.fabs.f32(float %i.o)
  %i.q = fsub float 1.000000e+00, %i.p            ; 6 uses
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fsub float %i.m, %i.l
  %i.t = fdiv float %i.s, %i.q
  %i.u = fadd float %i.t, 1.000000e+00
  %i.v = fmul float %i.u, f0x40490FDB
  %i.w = fmul float %i.v, 2.500000e-01
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = phi float [ %i.w, %bb.d ], [ f0x3F490FDB, %bb.c ] ; 2 uses
  %i.y = fmul float %i.q, %i.q                    ; 2 uses
  %i.z = fsub float 1.000000e+00, %i.y
  %i.aa = tail call noundef float @llvm.copysign.f32(float %i.z, float %i.o)
  %i.ab = tail call noundef float @cosf(float noundef %i.x) #23
  %i.ac = tail call noundef float @llvm.copysign.f32(float %i.ab, float %i.i)
  %i.ad = tail call noundef float @sinf(float noundef %i.x) #23
  %i.ae = tail call noundef float @llvm.copysign.f32(float %i.ad, float %i.k)
  %i.af = fmul float %i.q, %i.ac
  %i.ag = fsub float 2.000000e+00, %i.y           ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ah, float %i.ag, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.ai = fmul float %sqrt.i, %i.af
  %i.aj = fmul float %i.q, %i.ae
  %i.ak = fmul float %sqrt.i, %i.aj
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ai, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ak, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.aa, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA45_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(45) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !17, !alias.scope !72
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !72
  store i8 0, ptr %i.a, align 8, !tbaa !20, !alias.scope !72
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA45_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(45) %4)
          to label %_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !21, !alias.scope !72 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20, !alias.scope !72
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !21
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %0, float %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0) ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %1)
  %i.c = fsub float 1.000000e+00, %i.b            ; 2 uses
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.d, float %i.c, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.e = extractelement <2 x float> %i.a, i64 0   ; 4 uses
  %i.f = extractelement <2 x float> %i.a, i64 1   ; 4 uses
  %i.g = fcmp olt float %i.e, %i.f                ; 2 uses
  %.sroa.speculated27 = select i1 %i.g, float %i.f, float %i.e ; 2 uses
  %i.h = fcmp olt float %i.f, %i.e
  %.sroa.speculated = select i1 %i.h, float %i.f, float %i.e
  %i.i = fcmp oeq float %.sroa.speculated27, 0.000000e+00
  %i.j = fdiv float %.sroa.speculated, %.sroa.speculated27
  %i.k = select i1 %i.i, float 0.000000e+00, float %i.j ; 6 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float f0xBCCDF082, float f0x3D2BA368)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.k, float %i.l, float f0x3DB4962E)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.k, float %i.m, float f0xBE7D450E)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.k, float %i.n, float f0x3BC9C25A)
  %i.p = tail call noundef float @llvm.fma.f32(float %i.k, float %i.o, float f0x3F22DFBE)
  %i.q = tail call noundef float @llvm.fma.f32(float %i.k, float %i.p, float f0x36887C4B) ; 2 uses
  %i.r = fsub float 1.000000e+00, %i.q
  %spec.select = select i1 %i.g, float %i.r, float %i.q
  %i.s = fmul float %sqrt.i, %spec.select         ; 3 uses
  %i.t = fsub float %sqrt.i, %i.s                 ; 2 uses
  %i.u = fcmp olt float %1, 0.000000e+00          ; 2 uses
  %i.v = fsub float 1.000000e+00, %i.t
  %i.w = fsub float 1.000000e+00, %i.s
  %.032 = select i1 %i.u, float %i.v, float %i.s
  %.0 = select i1 %i.u, float %i.w, float %i.t
  %i.x = insertelement <2 x float> poison, float %.0, i64 0
  %i.y = insertelement <2 x float> %i.x, float %.032, i64 1
  %i.z = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %i.y, <2 x float> %0)
  %i.aa = fadd <2 x float> %i.z, splat (float 1.000000e+00)
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  ret <2 x float> %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x float> @_ZN4pbrt19WrapEqualAreaSquareENS_6Point2IfEE(<2 x float> %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.a = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fneg float %.sroa.0.0.vec.extract
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.b, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.c = fsub float 1.000000e+00, %.sroa.0.4.vec.extract
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.c, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp ogt float %.sroa.0.0.vec.extract, 1.000000e+00
  %i.e = fsub <2 x float> <float 2.000000e+00, float 1.000000e+00>, %0
  %spec.select = select i1 %i.d, <2 x float> %i.e, <2 x float> %0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.b ], [ %spec.select, %bb.c ] ; 5 uses
  %.sroa.0.4.vec.extract25 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.f = fcmp olt float %.sroa.0.4.vec.extract25, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.extract12 = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.g = fsub float 1.000000e+00, %.sroa.0.0.vec.extract12
  %i.h = fneg <2 x float> %.sroa.0.0
  %.sroa.0.4.vec.insert29 = insertelement <2 x float> %i.h, float %i.g, i64 0
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = fcmp ogt float %.sroa.0.4.vec.extract25, 1.000000e+00
  %i.j = fsub <2 x float> <float 1.000000e+00, float 2.000000e+00>, %.sroa.0.0
  %spec.select36 = select i1 %i.i, <2 x float> %i.j, <2 x float> %.sroa.0.0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1 = phi <2 x float> [ %.sroa.0.4.vec.insert29, %bb.e ], [ %spec.select36, %bb.f ]
  ret <2 x float> %.sroa.0.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #11

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 42, i64 noundef 0) #23
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 115, i64 noundef 0) #23
  %.not20 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 100, i64 noundef 0) #23
  %.not21 = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.ab
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %cond = icmp eq i64 %i.g, 2
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.h = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = icmp ne i16 %i.i, 26149
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = load i16, ptr %i.h, align 1
  %i.n = icmp ne i16 %i.m, 29477
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.q = load float, ptr %2, align 4, !tbaa !10
  invoke void @_ZN4pbrt6detail13FloatToStringB5cxx11Ef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, float noundef %i.q)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.x = load ptr, ptr %5, align 8, !tbaa !21
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ab

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.g
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !20
end_hunk_0
