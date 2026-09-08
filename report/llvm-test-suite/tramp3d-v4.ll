Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 168
begin_hunk_0_@_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !399    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !350
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !350
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !350
  store double %i.u, ptr %i.s, align 8, !tbaa !350
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !350
  store double %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !350
  store double %i.y, ptr %i.w, align 8, !tbaa !350
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !350
  store double %i.ab, ptr %i.z, align 8, !tbaa !350
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI6VectorILi3Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i19 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %i.af = load <2 x double>, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !350
  store <2 x double> %i.af, ptr %.011.i.i.i.i.i20, align 8, !tbaa !350
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !350
  store double %i.ai, ptr %i.ag, align 8, !tbaa !350
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !35

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ak, %.lr.ph.i.i.i.i.i19 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !400
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #48
  br label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi3Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !399
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !404
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !400
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_Z17makeRBlocksFactorIiESt6vectorIT_SaIS1_EES1_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, i32 noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i32 %1, 2
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge25.thread

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.d = phi ptr [ null, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.e = phi ptr [ null, %.preheader.lr.ph ], [ %i.ai, %._crit_edge ] ; 2 uses
  %.promoted = phi ptr [ null, %.preheader.lr.ph ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %storemerge24 = phi i32 [ 2, %.preheader.lr.ph ], [ %i.aj, %._crit_edge ] ; 6 uses
  %.023 = phi i32 [ %1, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.f = srem i32 %.023, %storemerge24
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge25:                                    ; preds = %._crit_edge
  %.not = icmp eq i32 %.1.lcssa, 1
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit8, label %bb.g

._crit_edge25.thread:                             ; preds = %bb.a
  %.not43 = icmp eq i32 %1, 1
  br i1 %.not43, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit8, label %.thread

.thread:                                          ; preds = %._crit_edge25.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.i = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.d, %.preheader ] ; 3 uses
  %i.j = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.e, %.preheader ] ; 3 uses
  %.121 = phi i32 [ %i.ae, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.023, %.preheader ]
  %i.k = phi ptr [ %i.ad, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.promoted, %.preheader ] ; 6 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i32 %storemerge24, ptr %i.j, align 4, !tbaa !165
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !281
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775804
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951)
  %i.u = select i1 %i.s, i64 2305843009213693951, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #45 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i32 %storemerge24, ptr %i.x, align 4, !tbaa !165
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.o) #48
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.z, ptr %i.b, align 8, !tbaa !281
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !280
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ab = phi ptr [ %i.i, %bb.b ], [ %i.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ac = phi ptr [ %i.l, %bb.b ], [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ad = phi ptr [ %i.k, %bb.b ], [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ae = sdiv i32 %.121, %storemerge24           ; 3 uses
  %i.af = srem i32 %i.ae, %storemerge24
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !3125

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader
  %i.ah = phi ptr [ %i.d, %.preheader ], [ %i.ab, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.ai = phi ptr [ %i.e, %.preheader ], [ %i.ac, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.lcssa = phi ptr [ %.promoted, %.preheader ], [ %i.ad, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.023, %.preheader ], [ %i.ae, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  store ptr %.lcssa, ptr %0, align 8
  %i.aj = add nuw nsw i32 %storemerge24, 1        ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %.1.lcssa
  br i1 %i.ak, label %.preheader, label %._crit_edge25, !llvm.loop !3126

bb.g:                                             ; preds = %._crit_edge25
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i1 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.1.lcssa, ptr %i.ai, align 4, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.am, ptr %i.al, align 8, !tbaa !281
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit8

bb.i:                                             ; preds = %.thread, %bb.g
  %i.an = phi ptr [ %i.h, %.thread ], [ %i.al, %bb.g ]
  %i.ao = phi ptr [ null, %.thread ], [ %.lcssa, %bb.g ] ; 4 uses
  %i.ap = phi ptr [ null, %.thread ], [ %i.ah, %bb.g ]
  %.0.lcssa4447 = phi i32 [ %1, %.thread ], [ %.1.lcssa, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i2

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i2: ; preds = %bb.i
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i3 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i3, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 3 uses
  %.not.i.i.i4 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i4)
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #45 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i32 %.0.lcssa4447, ptr %i.bc, align 4, !tbaa !165
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i5

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i5

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i5: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i2
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.not.i17.i.i6 = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i6, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i7, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #48
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i7

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i7: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i5
  store ptr %i.bb, ptr %0, align 8, !tbaa !279
  store ptr %i.be, ptr %i.an, align 8, !tbaa !281
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.aq, align 8, !tbaa !280
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit8

_ZNSt6vectorIiSaIiEE9push_backERKi.exit8:         ; preds = %._crit_edge25.thread, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i7, %bb.h, %._crit_edge25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12DomainTraitsI4GridILi1EEE9setDomainI5RangeILi1EEEEvR15IndirectionListIiERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %class.IndirectionList, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = load i32, ptr %1, align 4, !tbaa !165    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !165  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !165  ; 5 uses
  %i.f = sext i32 %i.e to i64                     ; 5 uses
  store i64 0, ptr %2, align 8, !tbaa !491
  %i.g = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45 ; 10 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN12DataBlockPtrIiLb0EEC2Em.exit.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.a
  %i.h = shl i32 %i.e, 2
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #45 ; 3 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.f, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  br label %_ZN12DataBlockPtrIiLb0EEC2Em.exit.i

_ZN12DataBlockPtrIiLb0EEC2Em.exit.i:              ; preds = %.loopexit.i.i.i.i.i.i, %bb.a
  %.019.i7.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.l, %.loopexit.i.i.i.i.i.i ]
  %.020.i6.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.k, %.loopexit.i.i.i.i.i.i ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !493
  store ptr %.020.i6.i.i.i.i.i, ptr %i.r, align 8, !tbaa !494
  store ptr %.019.i7.i.i.i.i.i, ptr %i.q, align 8, !tbaa !495
  store i8 1, ptr %i.o, align 8, !tbaa !496
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.t = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #45
  store ptr %i.t, ptr %i.s, align 8, !tbaa !501
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 1, ptr %i.u, align 8, !tbaa !502
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr null, ptr %i.v, align 8, !tbaa !503
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 -1, ptr %i.w, align 8, !tbaa !504
  store ptr %i.g, ptr %i.p, align 8, !tbaa !505
  store i32 1, ptr %i.g, align 8, !tbaa !433
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.x, align 8, !tbaa !274
  %i.y = icmp sgt i32 %i.e, 0
  br i1 %i.y, label %.lr.ph.i.preheader, label %_ZN15IndirectionListIiEC2IiEERKT_S4_l.exit

.lr.ph.i.preheader:                               ; preds = %_ZN12DataBlockPtrIiLb0EEC2Em.exit.i
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 2147483640               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.z = trunc nuw nsw i64 %n.vec to i32
  %i.aa = mul i32 %i.c, %i.z
  %i.ab = add i32 %i.a, %i.aa
  %i.ac = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %broadcast.splatinsert5 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat6 = shufflevector <4 x i32> %broadcast.splatinsert5, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ad = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add nsw <4 x i32> %broadcast.splat6, %i.ad
  %invariant.op = add <4 x i32> %i.ac, %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %vec.ind, ptr %i.ae, align 4, !tbaa !165
  store <4 x i32> %step.add, ptr %i.af, align 4, !tbaa !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %_ZN15IndirectionListIiEC2IiEERKT_S4_l.exit, label %.lr.ph.i.preheader8

.lr.ph.i.preheader8:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.01011.i.ph = phi i32 [ %i.a, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader8, %.lr.ph.i
  %.012.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader8 ] ; 2 uses
  %.01011.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader8 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.012.i
  store i32 %.01011.i, ptr %i.ah, align 4, !tbaa !165
  %i.ai = add nsw i32 %.01011.i, %i.c
  %i.aj = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.f
  br i1 %exitcond.not.i, label %_ZN15IndirectionListIiEC2IiEERKT_S4_l.exit, label %.lr.ph.i, !llvm.loop !3128

_ZN15IndirectionListIiEC2IiEERKT_S4_l.exit:       ; preds = %.lr.ph.i, %middle.block, %_ZN12DataBlockPtrIiLb0EEC2Em.exit.i
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN12DataBlockPtrIiLb0EEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.al = load i64, ptr %i.x, align 8, !tbaa !274
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !274
  call void @_ZN12DataBlockPtrIiLb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CombineDomainI4GridILi1EE15IndirectionListIiELi0EE7combineERS1_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %class.ObserverEvent, align 8       ; 6 uses
end_hunk_0
