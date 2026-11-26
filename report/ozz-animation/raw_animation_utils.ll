Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_utils?download=true
inline.NumInlined: 692
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3ozz9animation7offline21SampleTrackModelSpaceERKNS1_12RawAnimationERKNS0_8SkeletonEi:bb.a
bb.ae:                                            ; preds = %bb.ad, %bb.h
  %.pn36.pn = phi { ptr, i32 } [ %i.cb, %bb.h ], [ %.pn.pn.pn.pn.pn, %bb.ad ]
  call void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn36.pn

bb.af:                                            ; preds = %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit, %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.26") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.28", align 8    ; 16 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit:  ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not118 = icmp eq i64 %i.e, 0
  br i1 %.not118, label %.critedge58.thread, label %.lr.ph

.critedge58.thread:                               ; preds = %bb.b
  store i8 1, ptr %0, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8
  br label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit
  %.045119 = phi ptr [ %i.c, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit ] ; 2 uses
  %i.l = load i16, ptr %.045119, align 2, !tbaa !30 ; 3 uses
  %i.m = icmp slt i16 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i16 %i.l to i32
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.p = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72
  %i.u = trunc i64 %i.t to i32
  %.not49 = icmp sgt i32 %i.u, %i.n
  br i1 %.not49, label %bb.e, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit70

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit70: ; preds = %bb.d, %bb.c
  store i8 0, ptr %0, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.w = zext nneg i16 %i.l to i64
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.w ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %.not5.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not5.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_14TranslationKeyEEEDaRKT_.exit.i"
  %.sroa.02.06.i = phi ptr [ %i.af, %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_14TranslationKeyEEEDaRKT_.exit.i" ], [ %i.y, %bb.e ] ; 3 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !47  ; 4 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !48
  %.not.i.i.i71 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i71, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ad = load float, ptr %.sroa.02.06.i, align 4, !tbaa !12
  store float %i.ad, ptr %i.ab, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !47
  br label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_14TranslationKeyEEEDaRKT_.exit.i"

bb.g:                                             ; preds = %.lr.ph.i
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.06.i)
          to label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_14TranslationKeyEEEDaRKT_.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_14TranslationKeyEEEDaRKT_.exit.i": ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i, !llvm.loop !108

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit": ; preds = %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_14TranslationKeyEEEDaRKT_.exit.i", %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  %.not5.i72 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not5.i72, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i"
  %.sroa.02.06.i74 = phi ptr [ %i.ao, %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i" ], [ %i.ah, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ] ; 3 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !47  ; 4 uses
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !48
  %.not.i.i.i75 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i73
  %i.am = load float, ptr %.sroa.02.06.i74, align 4, !tbaa !12
  store float %i.am, ptr %i.ak, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.an, ptr %i.j, align 8, !tbaa !47
  br label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i"

bb.i:                                             ; preds = %.lr.ph.i73
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ak, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.02.06.i74)
          to label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i": ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i74, i64 20 ; 2 uses
  %.not.i76 = icmp eq ptr %i.ao, %i.aj
  br i1 %.not.i76, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i73, !llvm.loop !109

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit": ; preds = %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i", %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !126 ; 2 uses
  %.not5.i78 = icmp eq ptr %i.aq, %i.as
  br i1 %.not5.i78, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i"
  %.sroa.02.06.i80 = phi ptr [ %i.ax, %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i" ], [ %i.aq, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ] ; 3 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !47  ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !48
  %.not.i.i.i81 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i79
  %i.av = load float, ptr %.sroa.02.06.i80, align 4, !tbaa !12
  store float %i.av, ptr %i.at, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !47
  br label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i"

bb.k:                                             ; preds = %.lr.ph.i79
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.at, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.06.i80)
          to label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i": ; preds = %bb.k, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i80, i64 16 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i82, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i79, !llvm.loop !110

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit": ; preds = %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i", %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %i.ay = load ptr, ptr %3, align 8, !tbaa !38    ; 5 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !38  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit, label %bb.l

bb.l:                                             ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = xor i64 %i.bf, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.ay, ptr %i.az, i64 noundef %i.bg)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.l
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.ay, ptr %i.az)
          to label %.noexc84._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit_crit_edge: ; preds = %.noexc84
  %.pre = load ptr, ptr %3, align 8, !tbaa !38
  %.pre134 = load ptr, ptr %i.j, align 8, !tbaa !38
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit: ; preds = %.noexc84._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit_crit_edge, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %4 = phi ptr [ %.pre134, %.noexc84._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit_crit_edge ], [ %i.az, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ] ; 8 uses
  %5 = phi ptr [ %.pre, %.noexc84._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit_crit_edge ], [ %i.ay, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ] ; 6 uses
  %i.bh = icmp eq ptr %5, %4
  br i1 %i.bh, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit, %bb.m
  %.sroa.09.0.i.i.i = phi ptr [ %i.bi, %bb.m ], [ %5, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.bi, %4
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.i.i.i
  %i.bj = load float, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !12 ; 2 uses
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bl = fcmp oeq float %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !111

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.bm, %4
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i, %bb.o
  %i.bn = phi float [ %i.bs, %bb.o ], [ %i.bj, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %i.bo = phi ptr [ %i.bt, %bb.o ], [ %i.bm, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 3 uses
  %i.bq = fcmp oeq float %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store float %i.bp, ptr %i.br, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bs = phi float [ %i.bn, %.lr.ph.i.i ], [ %i.bp, %bb.n ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.br, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.bt, %4
  br i1 %.not.i.i87, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !112

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit: ; preds = %bb.o, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.bu, %4
  br i1 %.not.i.i88, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %5 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %5, i64 %i.bx ; 2 uses
  store ptr %i.by, ptr %i.j, align 8, !tbaa !47
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit: ; preds = %.preheader.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit
  %6 = phi ptr [ %4, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit ], [ %4, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit ], [ %i.by, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i ], [ %4, %.preheader.i.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.045119, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.f
  br i1 %.not, label %.critedge58, label %bb.c

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.k, %bb.g, %.noexc84, %bb.l
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %lpad.loopexit.split-lp197

.critedge58:                                      ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit
  store i8 1, ptr %0, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cc = ptrtoint ptr %6 to i64
  %i.cd = ptrtoint ptr %5 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i90 = icmp eq ptr %6, %5
  br i1 %.not.i.i.i.i.i90, label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91, label %bb.p

bb.p:                                             ; preds = %.critedge58
  %i.cf = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i64 noundef %i.ce, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91 unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #18
  unreachable

_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91: ; preds = %.critedge58.thread, %bb.q, %.critedge58
  %i.cm = phi i64 [ 0, %.critedge58 ], [ %i.ce, %bb.q ], [ 0, %.critedge58.thread ]
  %i.cn = phi ptr [ %i.cb, %.critedge58 ], [ %i.cb, %bb.q ], [ %i.h, %.critedge58.thread ]
  %i.co = phi ptr [ %i.ca, %.critedge58 ], [ %i.ca, %bb.q ], [ %i.g, %.critedge58.thread ]
  %i.cp = phi ptr [ null, %.critedge58 ], [ %i.cj, %bb.q ], [ null, %.critedge58.thread ] ; 9 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cm
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !48
  %i.ct = load ptr, ptr %3, align 8, !tbaa !38    ; 7 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !38 ; 3 uses
  %.not13.i.i.i92 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not13.i.i.i92, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91
  %i.cv = ptrtoaddr ptr %i.ct to i64              ; 2 uses
  %i.cw = ptrtoaddr ptr %i.cp to i64
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = add i64 %i.cx, -4
  %i.cz = sub i64 %i.cy, %i.cv                    ; 3 uses
  %i.da = lshr i64 %i.cz, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cz, 28
  %i.dc = sub i64 %i.cv, %i.cw
  %diff.check = icmp ugt i64 %i.dc, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i93.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check180 = icmp ult i64 %i.cz, 124
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dd = and i64 %i.db, 24
  %n.vec = and i64 %i.db, 9223372036854775776     ; 4 uses
  %i.de = shl i64 %n.vec, 2                       ; 2 uses
  %i.df = getelementptr i8, ptr %i.cp, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ct, i64 %i.de
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.dh ; 4 uses
  %next.gep181 = getelementptr i8, ptr %i.ct, i64 %i.dh ; 4 uses
  %i.di = getelementptr i8, ptr %next.gep181, i64 32
  %i.dj = getelementptr i8, ptr %next.gep181, i64 64
  %i.dk = getelementptr i8, ptr %next.gep181, i64 96
  %wide.load = load <8 x float>, ptr %next.gep181, align 4, !tbaa !12
  %wide.load182 = load <8 x float>, ptr %i.di, align 4, !tbaa !12
  %wide.load183 = load <8 x float>, ptr %i.dj, align 4, !tbaa !12
  %wide.load184 = load <8 x float>, ptr %i.dk, align 4, !tbaa !12
  %i.dl = getelementptr i8, ptr %next.gep, i64 32
  %i.dm = getelementptr i8, ptr %next.gep, i64 64
  %i.dn = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !12
  store <8 x float> %wide.load182, ptr %i.dl, align 4, !tbaa !12
  store <8 x float> %wide.load183, ptr %i.dm, align 4, !tbaa !12
  store <8 x float> %wide.load184, ptr %i.dn, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i93.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec185 = and i64 %i.db, 9223372036854775800  ; 3 uses
  %i.dp = shl i64 %n.vec185, 2                    ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cp, i64 %i.dp  ; 2 uses
  %i.dr = getelementptr i8, ptr %i.ct, i64 %i.dp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next190, %vec.epilog.vector.body ] ; 2 uses
  %i.ds = shl i64 %index186, 2                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.cp, i64 %i.ds
  %next.gep188 = getelementptr i8, ptr %i.ct, i64 %i.ds
  %wide.load189 = load <8 x float>, ptr %next.gep188, align 4, !tbaa !12
  store <8 x float> %wide.load189, ptr %next.gep187, align 4, !tbaa !12
  %index.next190 = add nuw i64 %index186, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n191 = icmp eq i64 %i.db, %n.vec185
  br i1 %cmp.n191, label %.loopexit, label %.lr.ph.i.i.i93.preheader

.lr.ph.i.i.i93.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i94.ph = phi ptr [ %i.cp, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.i95.ph = phi ptr [ %i.ct, %iter.check ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %.lr.ph.i.i.i93.preheader, %.lr.ph.i.i.i93
  %.015.i.i.i94 = phi ptr [ %i.dw, %.lr.ph.i.i.i93 ], [ %.015.i.i.i94.ph, %.lr.ph.i.i.i93.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i95 = phi ptr [ %i.dv, %.lr.ph.i.i.i93 ], [ %.sroa.010.014.i.i.i95.ph, %.lr.ph.i.i.i93.preheader ] ; 2 uses
  %i.du = load float, ptr %.sroa.010.014.i.i.i95, align 4, !tbaa !12
  store float %i.du, ptr %.015.i.i.i94, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i95, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.015.i.i.i94, i64 4 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.dv, %i.cu
  br i1 %.not.i.i.i96, label %.loopexit, label %.lr.ph.i.i.i93, !llvm.loop !115

.loopexit:                                        ; preds = %.lr.ph.i.i.i93, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91
  %.0.lcssa.i.i.i97 = phi ptr [ %i.cp, %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91 ], [ %i.dq, %vec.epilog.middle.block ], [ %i.df, %middle.block ], [ %i.dw, %.lr.ph.i.i.i93 ]
  store ptr %.0.lcssa.i.i.i97, ptr %i.cq, align 8, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit70, %.loopexit
  %i.dx = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.dx)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99 unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #18
  unreachable

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99: ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #18
  unreachable

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit:  ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
end_hunk_0
