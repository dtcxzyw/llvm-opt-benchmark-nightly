Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/pipeline?download=true
inline.NumInlined: 678
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN19TextureBufferOutputD1Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 3 uses
  %.not3.i = icmp eq ptr %i.d, null
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN19TextureBufferOutputD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZN19TextureBufferOutputD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #32
  unreachable

_ZN19TextureBufferOutputD2Ev.exit:                ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N19TextureBufferOutputD1Ev(ptr nofree noundef captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-40, 32) (i8, ptr @_ZTV19TextureBufferOutput, i64 40), ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %.not3.i.i = icmp eq ptr %i.h, null
  br i1 %.not3.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.f, !inline_history !106

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN19TextureBufferOutputD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #31, !inline_history !106
  br label %_ZN19TextureBufferOutputD1Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #32, !inline_history !106
  unreachable

_ZN19TextureBufferOutputD1Ev.exit:                ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19TextureBufferOutputD0Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-40, 32) (i8, ptr @_ZTV19TextureBufferOutput, i64 40), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 3 uses
  %.not3.i.i = icmp eq ptr %i.d, null
  br i1 %.not3.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.f, !inline_history !106

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN19TextureBufferOutputD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31, !inline_history !106
  br label %_ZN19TextureBufferOutputD1Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #32, !inline_history !106
  unreachable

_ZN19TextureBufferOutputD1Ev.exit:                ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N19TextureBufferOutputD0Ev(ptr noundef %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-40, 32) (i8, ptr @_ZTV19TextureBufferOutput, i64 40), ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not3.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.f, !inline_history !169

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN19TextureBufferOutputD0Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #31, !inline_history !169
  br label %_ZN19TextureBufferOutputD0Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #32, !inline_history !169
  unreachable

_ZN19TextureBufferOutputD0Ev.exit:                ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef 72) #31, !inline_history !170
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19TextureBufferOutput8activateER15PipelineContext(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::dimension2d", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  store ptr %i.n, ptr %i.i, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 0, ptr %2, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !98   ; 2 uses
  %.not61 = icmp eq ptr %i.r, %i.s
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %bb.n, %bb.e
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.13.1, %bb.n ] ; 5 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.9.1, %bb.n ] ; 2 uses
  %.sroa.037.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.037.1, %bb.n ] ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !101   ; 2 uses
  %.not18 = icmp eq i8 %i.v, -1
  br i1 %.not18, label %bb.p, label %bb.o

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.w = phi i32 [ 0, %.lr.ph ], [ %i.ay, %bb.n ] ; 2 uses
  %i.x = phi ptr [ %i.s, %.lr.ph ], [ %i.bb, %bb.n ]
  %.01258 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.037.057 = phi ptr [ null, %.lr.ph ], [ %.sroa.037.1, %bb.n ] ; 7 uses
  %.sroa.9.056 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %bb.n ] ; 6 uses
  %.sroa.13.055 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.1, %bb.n ] ; 3 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !97   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01258
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 noundef zeroext %i.aa)
          to label %bb.g unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit ; 4 uses

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %.sroa.9.056, %.sroa.13.055
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ae, ptr %.sroa.9.056, align 8, !tbaa !45
  br label %_ZN4core5arrayIPN5video8ITextureEE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.sroa.9.056 to i64
  %i.ag = ptrtoint ptr %.sroa.037.057 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.j, label %_ZNKSt6vectorIPN5video8ITextureESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #34
          to label %.noexc unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN5video8ITextureESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #35
          to label %.noexc23 unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIPN5video8ITextureESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.ae, ptr %i.aq, align 8, !tbaa !45
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.k, label %_ZNSt6vectorIPN5video8ITextureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %.sroa.037.057, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPN5video8ITextureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN5video8ITextureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %.noexc23
  %.not.i17.i.i.i = icmp eq ptr %.sroa.037.057, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN5video8ITextureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.057, i64 noundef %i.ah) #31
  br label %_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN5video8ITextureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  br label %_ZN4core5arrayIPN5video8ITextureEE9push_backERKS3_.exit

_ZN4core5arrayIPN5video8ITextureEE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.h
  %.sroa.13.1 = phi ptr [ %i.as, %_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.13.055, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.9.056, %bb.h ]
  %.sroa.037.1 = phi ptr [ %i.ap, %_ZNSt6vectorIPN5video8ITextureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.037.057, %bb.h ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.at = icmp ne ptr %i.ae, null
  %i.au = icmp eq i32 %i.w, 0
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEE9push_backERKS3_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.aw = load i64, ptr %i.av, align 4, !tbaa !55 ; 2 uses
  store i64 %i.aw, ptr %2, align 8, !tbaa !55
  %i.ax = trunc i64 %i.aw to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4core5arrayIPN5video8ITextureEE9push_backERKS3_.exit
  %i.ay = phi i32 [ %i.ax, %bb.m ], [ %i.w, %_ZN4core5arrayIPN5video8ITextureEE9push_backERKS3_.exit ]
  %i.az = add nuw i64 %.01258, 1                  ; 2 uses
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !98  ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.az, %i.be
  br i1 %i.bf, label %bb.f, label %._crit_edge, !llvm.loop !171

bb.o:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !97 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i8 noundef zeroext %i.v)
          to label %bb.p unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %.011 = phi ptr [ null, %._crit_edge ], [ %i.bl, %bb.o ]
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !104 ; 3 uses
  %.not19 = icmp eq ptr %i.bm, null
  br i1 %.not19, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp eq ptr %.sroa.037.0.lcssa, %.sroa.9.0.lcssa
  %spec.select.i.i = select i1 %i.bn, ptr null, ptr %.sroa.037.0.lcssa
  %i.bo = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.bp = ptrtoint ptr %.sroa.037.0.lcssa to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 3
  %i.bs = trunc i64 %i.br to i32
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(84) %i.bm, ptr noundef %spec.select.i.i, i32 noundef %i.bs, ptr noundef %.011, ptr noundef null, i32 noundef 0)
          to label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp, !inline_history !172

_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit: ; preds = %bb.q
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !89, !range !68, !noundef !69
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = select i1 %i.bz, i16 7, i16 0
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload = load i32, ptr %i.cb, align 8, !tbaa !55
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 328
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %i.bw, i16 noundef zeroext %i.ca, i32 %.sroa.0.0.copyload, float noundef 1.000000e+00, i8 noundef zeroext 0)
          to label %bb.r unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 616
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.s unwind label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp

_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit: ; preds = %bb.f, %_ZNKSt6vectorIPN5video8ITextureESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.13.055.lcssa = phi ptr [ %.sroa.13.055, %bb.f ], [ %.sroa.9.056, %_ZNKSt6vectorIPN5video8ITextureESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27

_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp: ; preds = %bb.q, %bb.j, %bb.r, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit, %bb.o
  %.sroa.13.054 = phi ptr [ %.sroa.13.0.lcssa, %bb.q ], [ %.sroa.9.056, %bb.j ], [ %.sroa.13.0.lcssa, %bb.r ], [ %.sroa.13.0.lcssa, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit ], [ %.sroa.13.0.lcssa, %bb.o ]
  %.sroa.037.048 = phi ptr [ %.sroa.037.0.lcssa, %bb.q ], [ %.sroa.037.057, %bb.j ], [ %.sroa.037.0.lcssa, %bb.r ], [ %.sroa.037.0.lcssa, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit ], [ %.sroa.037.0.lcssa, %bb.o ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27

_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27: ; preds = %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit
  %.sroa.13.053 = phi ptr [ %.sroa.13.055.lcssa, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit ], [ %.sroa.13.054, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp ]
  %.sroa.037.047 = phi ptr [ %.sroa.037.057, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit ], [ %.sroa.037.048, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit ], [ %lpad.loopexit.split-lp, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.not.i.i.i.i29 = icmp eq ptr %.sroa.037.047, null
  br i1 %.not.i.i.i.i29, label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit30, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ck, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.not.i.i.i.i28 = icmp eq ptr %.sroa.037.0.lcssa, null
  br i1 %.not.i.i.i.i28, label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.cm = ptrtoint ptr %.sroa.037.0.lcssa to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.lcssa, i64 noundef %i.cn) #31
  br label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit

_ZN4core5arrayIPN5video8ITextureEED2Ev.exit:      ; preds = %bb.s, %bb.t
  ret void

bb.u:                                             ; preds = %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27
  %i.co = ptrtoint ptr %.sroa.13.053 to i64
  %i.cp = ptrtoint ptr %.sroa.037.047 to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.047, i64 noundef %i.cq) #31
  br label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit30

_ZN4core5arrayIPN5video8ITextureEED2Ev.exit30:    ; preds = %_ZN4core5arrayIN5video14E_CUBE_SURFACEEED2Ev.exit27, %bb.u
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12RenderTarget8activateER15PipelineContext(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(47) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN19TextureBufferOutput18getIrrRenderTargetER15PipelineContext(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(47) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(47) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @_ZN13DynamicSource15getTextureCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i8 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN13DynamicSource10getTextureEh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %1)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12ScreenTarget8activateER15PipelineContext(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !89, !range !68, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.h, i16 7, i16 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8, !tbaa !55
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef null, i16 noundef zeroext %i.i, i32 %.sroa.0.0.copyload, float noundef 1.000000e+00, i8 noundef zeroext 0) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 616
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.o)
  store i8 0, ptr %i.f, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13DynamicTarget8activateER15PipelineContext(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(47) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 8 dereferenceable(47) %1)
  ret void
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12ScreenTarget5resetER15PipelineContext(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((8, 9), (12, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !89
  %i.b = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i64, ptr %i.j, align 4, !tbaa !55
  store i64 %i.l, ptr %i.k, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12RenderTarget5resetER15PipelineContext(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(47) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZTv0_n32_N12ScreenTarget5resetER15PipelineContext(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.e, align 8, !tbaa !89
  %i.f = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !173 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !173
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.p = load i64, ptr %i.n, align 4, !tbaa !55
end_hunk_0
