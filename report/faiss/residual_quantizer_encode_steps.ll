Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/residual_quantizer_encode_steps?download=true
inline.NumInlined: 502
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5faiss31HeapWithBucketsGenericCMaxFloatILj32ELj2EE7bs_addnEjjPKfjPfPi:bb.a
  %i.gn = fcmp oeq float %i.fr, %i.gj
  %i.go = icmp sgt i32 %i.fo, %i.gm
  %i.gp = and i1 %i.gn, %i.go
  br i1 %i.gp, label %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, label %bb.x

bb.w:                                             ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i79
  %i.gq = fcmp ogt float %i.fr, %i.ga
  br i1 %i.gq, label %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80

_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80:          ; preds = %bb.w
  %i.gr = fcmp oeq float %i.fr, %i.ga
  %i.gs = icmp sgt i32 %i.fo, %i.gc
  %i.gt = and i1 %i.gr, %i.gs
  br i1 %i.gt, label %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, label %bb.x

bb.x:                                             ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86
  %.sink71.i81 = phi float [ %i.gj, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86 ], [ %i.ga, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80 ]
  %.sink.i82 = phi i32 [ %i.gm, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86 ], [ %i.gc, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80 ]
  %.1.i83 = phi i64 [ %i.fv, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86 ], [ %i.fu, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.056.i78
  store float %.sink71.i81, ptr %i.gu, align 4, !tbaa !35
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.056.i78
  store i32 %.sink.i82, ptr %i.gv, align 4, !tbaa !45
  %i.gw = shl i64 %.1.i83, 1                      ; 3 uses
  %i.gx = or disjoint i64 %i.gw, 1
  %i.gy = icmp ugt i64 %i.gw, %i.d
  br i1 %i.gy, label %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, label %.lr.ph.i77, !llvm.loop !1

_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i85, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86, %bb.w, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80, %bb.x, %bb.u
  %.0.lcssa.i84 = phi i64 [ 1, %bb.u ], [ %.1.i83, %bb.x ], [ %.056.i78, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86 ], [ %.056.i78, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80 ], [ %.056.i78, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i85 ], [ %.056.i78, %bb.w ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.lcssa.i84
  store float %i.fr, ptr %i.gz, align 4, !tbaa !35
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0.lcssa.i84
  store i32 %i.fo, ptr %i.ha, align 4, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, %bb.t
  %i.hb = add nuw i32 %.0112, 1                   ; 2 uses
  %i.hc = icmp ult i32 %i.hb, %1
  br i1 %i.hc, label %bb.t, label %._crit_edge, !llvm.loop !132
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss27beam_search_encode_step_tabEmmmPKfmPKmS1_mS1_mPKiS1_mPiPf17ApproxTopK_mode_t(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca i64, align 8                      ; 3 uses
  %i.l = alloca ptr, align 8                      ; 3 uses
  %i.m = alloca ptr, align 8                      ; 3 uses
  %i.n = alloca i64, align 8                      ; 3 uses
  %i.o = alloca ptr, align 8                      ; 3 uses
  %i.p = alloca ptr, align 8                      ; 3 uses
  %i.q = alloca i32, align 4                      ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !14
  store i64 %1, ptr %i.c, align 8, !tbaa !14
  store i64 %2, ptr %i.d, align 8, !tbaa !14
  store ptr %3, ptr %i.e, align 8, !tbaa !17
  store i64 %4, ptr %i.f, align 8, !tbaa !14
  store ptr %5, ptr %i.g, align 8, !tbaa !51
  store ptr %6, ptr %i.h, align 8, !tbaa !17
  store i64 %7, ptr %i.i, align 8, !tbaa !14
  store ptr %8, ptr %i.j, align 8, !tbaa !17
  store i64 %9, ptr %i.k, align 8, !tbaa !14
  store ptr %10, ptr %i.l, align 8, !tbaa !19
  store ptr %11, ptr %i.m, align 8, !tbaa !17
  store i64 %12, ptr %i.n, align 8, !tbaa !14
  store ptr %13, ptr %i.o, align 8, !tbaa !19
  store ptr %14, ptr %i.p, align 8, !tbaa !17
  store i32 %15, ptr %i.q, align 4, !tbaa !23
  %.not = icmp ult i64 %4, %0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.r, ptr %16, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !28
  store i8 0, ptr %i.r, align 8, !tbaa !29
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #14 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.w)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %16, align 8, !tbaa !30
  %i.y = load i64, ptr %i.s, align 8, !tbaa !28
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #14 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.v)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #14 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss27beam_search_encode_step_tabEmmmPKfmPKmS1_mS1_mPKiS1_mPiPf17ApproxTopK_mode_t, ptr noundef nonnull @.str.2, i32 noundef 366)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.m unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.ac, %bb.h ]
  %i.ad = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.r, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.ai = icmp ugt i64 %1, 100
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 16, ptr nonnull @"_ZZN5faiss27beam_search_encode_step_tabEmmmPKfmPKmS1_mS1_mPKiS1_mPiPf17ApproxTopK_mode_tENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined", ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.l, ptr nonnull %i.k, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.m, ptr nonnull %i.j, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.o, ptr nonnull %i.n, ptr nonnull %i.p, ptr nonnull %i.q)
  br label %"_ZN5faiss22with_simd_level_256bitIZNS_27beam_search_encode_step_tabEmmmPKfmPKmS2_mS2_mPKiS2_mPiPf17ApproxTopK_mode_tE3$_0EEDaOT_.exit"

bb.l:                                             ; preds = %bb.j
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.ah)
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !45
  call void @"_ZZN5faiss27beam_search_encode_step_tabEmmmPKfmPKmS1_mS1_mPKiS1_mPiPf17ApproxTopK_mode_tENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined"(ptr nonnull %i.a, ptr nonnull poison, ptr %i.c, ptr %i.d, ptr %i.b, ptr %i.l, ptr %i.k, ptr %i.h, ptr %i.i, ptr %i.m, ptr %i.j, ptr %i.e, ptr %i.f, ptr %i.g, ptr %i.o, ptr %i.n, ptr %i.p, ptr %i.q) #14
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.ah)
  br label %"_ZN5faiss22with_simd_level_256bitIZNS_27beam_search_encode_step_tabEmmmPKfmPKmS2_mS2_mPKiS2_mPiPf17ApproxTopK_mode_tE3$_0EEDaOT_.exit"

"_ZN5faiss22with_simd_level_256bitIZNS_27beam_search_encode_step_tabEmmmPKfmPKmS2_mS2_mPKiS2_mPiPf17ApproxTopK_mode_tE3$_0EEDaOT_.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @"_ZZN5faiss27beam_search_encode_step_tabEmmmPKfmPKmS1_mS1_mPKiS1_mPiPf17ApproxTopK_mode_tENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined"(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 1, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 4 uses
  tail call void @__kmpc_dispatch_init_8(ptr nonnull @2, i32 %i.h, i32 1073741859, i64 0, i64 %i.g, i64 1, i64 1)
  %i.i = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not126 = icmp eq i32 %i.i, 0
  br i1 %.not126, label %._crit_edge129, label %.lr.ph128

.loopexit109:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit88, %.lr.ph128
  %i.j = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.b, %.loopexit109
  %i.k = load i64, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !14, !llvm.access.group !133
  %.not61122 = icmp sgt i64 %i.k, %i.l
  br i1 %.not61122, label %.loopexit109, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.lr.ph128
  %i.m = shl i64 %i.k, 2
  %i.n = add i64 %i.m, 4                          ; 2 uses
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit88
  %indvar = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvar.next, %_ZNSt6vectorIfSaIfEED2Ev.exit88 ] ; 4 uses
  %.058123 = phi i64 [ %i.k, %.lr.ph125.preheader ], [ %i.nq, %_ZNSt6vectorIfSaIfEED2Ev.exit88 ] ; 5 uses
  %18 = add i64 %i.k, %indvar
  %i.o = shl i64 %18, 2
  %i.p = shl i64 %indvar, 2
  %i.q = add i64 %i.n, %i.p
  %i.r = shl i64 %indvar, 2
  %i.s = add i64 %i.n, %i.r
  %i.t = load i64, ptr %3, align 8, !tbaa !14, !llvm.access.group !133
  %i.u = load i64, ptr %4, align 8, !tbaa !14, !llvm.access.group !133 ; 2 uses
  %i.v = mul i64 %i.u, %i.t                       ; 5 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %._crit_edge117, %.lr.ph52.i, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %.lr.ph125
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph125
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc63:                                         ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !35, !llvm.access.group !133
  %i.aa = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc63
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35, !llvm.access.group !133
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split: ; preds = %.noexc63, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.pr = load i64, ptr %4, align 8, !tbaa !14
  %i.ad = ptrtoint ptr %i.z to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = phi i64 [ %.pr, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split ], [ %i.u, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.9103.0 = phi i64 [ %i.ad, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.099.0 = phi ptr [ %i.y, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exitthread-pre-split ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 21 uses
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i65 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #20
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc71:                                         ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !35, !llvm.access.group !133
  %i.aj = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66: ; preds = %.noexc71
  %i.al = getelementptr i8, ptr %i.ah, i64 4
  %.idx.i.i.i.i.i.i.i67 = shl nuw nsw i64 %i.aj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %.idx.i.i.i.i.i.i.i67, i1 false), !tbaa !35, !llvm.access.group !133
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66, %.noexc71, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64
  %.sroa.095.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66 ], [ %i.ah, %.noexc71 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64 ] ; 20 uses
  %.sroa.9.0 = phi ptr [ %i.ai, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66 ], [ %i.ai, %.noexc71 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64 ]
  %.sroa.095.0256 = ptrtoaddr ptr %.sroa.095.0 to i64 ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !19, !llvm.access.group !133
  %i.an = load i64, ptr %6, align 8, !tbaa !14, !llvm.access.group !133 ; 4 uses
  %i.ao = load i64, ptr %3, align 8, !tbaa !14, !llvm.access.group !133 ; 8 uses
  %i.ap = mul i64 %i.ao, %.058123                 ; 2 uses
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !17, !llvm.access.group !133 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = load i64, ptr %8, align 8, !tbaa !14, !llvm.access.group !133 ; 2 uses
  %i.av = mul i64 %i.au, %.058123
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av ; 4 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !17, !llvm.access.group !133 ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.ap ; 4 uses
  %i.az = load i64, ptr %4, align 8, !tbaa !14, !llvm.access.group !133 ; 28 uses
  %.not130 = icmp eq i64 %i.az, 0                 ; 4 uses
  br i1 %.not130, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72
  %i.ba = load ptr, ptr %10, align 8, !tbaa !17, !llvm.access.group !133 ; 5 uses
  %min.iters.check260 = icmp ult i64 %i.az, 8
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.lr.ph
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %.sroa.095.0256
  %diff.check = icmp ugt i64 %i.bc, -32
  %i.bd = mul i64 %i.au, %i.o
  %i.be = add i64 %i.bd, %i.at
  %i.bf = sub i64 %i.be, %.sroa.095.0256
  %diff.check257 = icmp ugt i64 %i.bf, -32
  %conflict.rdx258 = or i1 %diff.check, %diff.check257
  br i1 %conflict.rdx258, label %scalar.ph259.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck255
  %n.vec262 = and i64 %i.az, -8                   ; 3 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next269, %vector.body263 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index264 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load265 = load <4 x float>, ptr %i.bg, align 4, !tbaa !35, !llvm.access.group !133
  %wide.load266 = load <4 x float>, ptr %i.bh, align 4, !tbaa !35, !llvm.access.group !133
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index264 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load267 = load <4 x float>, ptr %i.bi, align 4, !tbaa !35, !llvm.access.group !133
  %wide.load268 = load <4 x float>, ptr %i.bj, align 4, !tbaa !35, !llvm.access.group !133
  %i.bk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load267, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load265)
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load268, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load266)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.095.0, i64 %index264 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !35, !llvm.access.group !133
  store <4 x float> %i.bl, ptr %i.bn, align 4, !tbaa !35, !llvm.access.group !133
  %index.next269 = add nuw i64 %index264, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next269, %n.vec262
  br i1 %i.bo, label %middle.block270, label %vector.body263, !llvm.loop !134

middle.block270:                                  ; preds = %vector.body263
  %cmp.n271 = icmp eq i64 %i.az, %n.vec262
  br i1 %cmp.n271, label %._crit_edge, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %vector.memcheck255, %.lr.ph, %middle.block270
  %.057114.ph = phi i64 [ 0, %vector.memcheck255 ], [ 0, %.lr.ph ], [ %n.vec262, %middle.block270 ] ; 6 uses
  %.neg = or disjoint i64 %.057114.ph, 1
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol

scalar.ph259.prol:                                ; preds = %scalar.ph259.preheader
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.057114.ph
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !35, !llvm.access.group !133
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.057114.ph
  %i.bs = load float, ptr %i.br, align 4, !tbaa !35, !llvm.access.group !133
  %i.bt = call float @llvm.fmuladd.f32(float %i.bs, float -2.000000e+00, float %i.bq)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.095.0, i64 %.057114.ph
  store float %i.bt, ptr %i.bu, align 4, !tbaa !35, !llvm.access.group !133
  %i.bv = or disjoint i64 %.057114.ph, 1
  br label %scalar.ph259.prol.loopexit

scalar.ph259.prol.loopexit:                       ; preds = %scalar.ph259.prol, %scalar.ph259.preheader
  %.057114.unr = phi i64 [ %.057114.ph, %scalar.ph259.preheader ], [ %i.bv, %scalar.ph259.prol ]
  %i.bw = icmp eq i64 %i.az, %.neg
  br i1 %i.bw, label %._crit_edge, label %scalar.ph259

._crit_edge:                                      ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259, %middle.block270, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72
  %i.bx = load ptr, ptr %11, align 8, !tbaa !17, !llvm.access.group !133
  %i.by = load i64, ptr %12, align 8, !tbaa !14, !llvm.access.group !133
  %i.bz = load ptr, ptr %13, align 8, !tbaa !51, !llvm.access.group !133
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_131compute_cent_distances_baselineEmmPKfmPKmmPKiS2_S2_Pf.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.az, 2305843009213693951
  %i.cb = shl nuw nsw i64 %i.az, 2                ; 3 uses
  %i.cc = add nsw i64 %i.az, -1                   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cc, 2 ; 2 uses
  br i1 %i.ca, label %.invoke, label %.lr.ph52.split.i

.lr.ph52.split.i:                                 ; preds = %.lr.ph52.i
  %.not78.i = icmp eq i64 %i.an, 0
  br i1 %.not78.i, label %.lr.ph52.split.split.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i.preheader

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i.preheader: ; preds = %.lr.ph52.split.i
  %i.ce = shl nuw nsw i64 %i.az, 2                ; 3 uses
  %i.cf = mul i64 %i.ce, %i.ao
  %scevgep224 = getelementptr i8, ptr %.sroa.099.0, i64 %i.cf ; 3 uses
  %i.cg = mul i64 %i.ao, %i.q
  %scevgep225 = getelementptr i8, ptr %i.ax, i64 %i.cg
  %scevgep226 = getelementptr i8, ptr %.sroa.095.0, i64 %i.ce
  %min.iters.check240 = icmp ult i64 %i.az, 8
  %bound0228 = icmp ult ptr %.sroa.099.0, %scevgep225
  %bound1229 = icmp ult ptr %i.ay, %scevgep224
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult ptr %.sroa.099.0, %scevgep226
  %bound1232 = icmp ult ptr %.sroa.095.0, %scevgep224
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  %n.vec242 = and i64 %i.az, 2305843009213693944  ; 3 uses
  %cmp.n253 = icmp eq i64 %i.az, %n.vec242
  %xtraiter279 = and i64 %i.az, 1
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i
end_hunk_0
