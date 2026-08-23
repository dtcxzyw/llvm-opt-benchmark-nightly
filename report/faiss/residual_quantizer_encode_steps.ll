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
  store float %.sink71.i81, ptr %i.gu, align 4, !tbaa !32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.056.i78
  store i32 %.sink.i82, ptr %i.gv, align 4, !tbaa !45
  %i.gw = shl i64 %.1.i83, 1                      ; 3 uses
  %i.gx = or disjoint i64 %i.gw, 1
  %i.gy = icmp ugt i64 %i.gw, %i.d
  br i1 %i.gy, label %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, label %.lr.ph.i77, !llvm.loop !53

_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i85, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86, %bb.w, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80, %bb.x, %bb.u
  %.0.lcssa.i84 = phi i64 [ 1, %bb.u ], [ %.1.i83, %bb.x ], [ %.056.i78, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit54.i86 ], [ %.056.i78, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit55.i80 ], [ %.056.i78, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i85 ], [ %.056.i78, %bb.w ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.lcssa.i84
  store float %i.fr, ptr %i.gz, align 4, !tbaa !32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0.lcssa.i84
  store i32 %i.fo, ptr %i.ha, align 4, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit89, %bb.t
  %i.hb = add nuw i32 %.0112, 1                   ; 2 uses
  %i.hc = icmp ult i32 %i.hb, %1
  br i1 %i.hc, label %bb.t, label %._crit_edge, !llvm.loop !84
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
  store i64 %0, ptr %i.b, align 8, !tbaa !9
  store i64 %1, ptr %i.c, align 8, !tbaa !9
  store i64 %2, ptr %i.d, align 8, !tbaa !9
  store ptr %3, ptr %i.e, align 8, !tbaa !11
  store i64 %4, ptr %i.f, align 8, !tbaa !9
  store ptr %5, ptr %i.g, align 8, !tbaa !85
  store ptr %6, ptr %i.h, align 8, !tbaa !11
  store i64 %7, ptr %i.i, align 8, !tbaa !9
  store ptr %8, ptr %i.j, align 8, !tbaa !11
  store i64 %9, ptr %i.k, align 8, !tbaa !9
  store ptr %10, ptr %i.l, align 8, !tbaa !14
  store ptr %11, ptr %i.m, align 8, !tbaa !11
  store i64 %12, ptr %i.n, align 8, !tbaa !9
  store ptr %13, ptr %i.o, align 8, !tbaa !14
  store ptr %14, ptr %i.p, align 8, !tbaa !11
  store i32 %15, ptr %i.q, align 4, !tbaa !18
  %.not = icmp ult i64 %4, %0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.r, ptr %16, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !23
  store i8 0, ptr %i.r, align 8, !tbaa !25
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #14 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.w)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %16, align 8, !tbaa !26
  %i.y = load i64, ptr %i.s, align 8, !tbaa !23
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
  %i.ad = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.r, align 8, !tbaa !25
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
  %i.e = load i64, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 1, ptr %i.c, align 8, !tbaa !9
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
  %i.k = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !9, !llvm.access.group !86
  %.not61122 = icmp sgt i64 %i.k, %i.l
  br i1 %.not61122, label %.loopexit109, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.lr.ph128
  %i.m = shl i64 %i.k, 2
  %i.n = add i64 %i.m, 4                          ; 2 uses
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit88
  %indvar = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvar.next, %_ZNSt6vectorIfSaIfEED2Ev.exit88 ] ; 3 uses
  %.058123 = phi i64 [ %i.k, %.lr.ph125.preheader ], [ %i.nl, %_ZNSt6vectorIfSaIfEED2Ev.exit88 ] ; 6 uses
  %i.o = shl i64 %.058123, 2
  %i.p = shl i64 %indvar, 2
  %i.q = add i64 %i.n, %i.p
  %i.r = shl i64 %indvar, 2
  %i.s = add i64 %i.n, %i.r
  %i.t = load i64, ptr %3, align 8, !tbaa !9, !llvm.access.group !86 ; 9 uses
  %i.u = load i64, ptr %4, align 8, !tbaa !9, !llvm.access.group !86 ; 32 uses
  %i.v = mul i64 %i.u, %i.t                       ; 5 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %._crit_edge117, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %.lr.ph125
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
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc63:                                         ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !32, !llvm.access.group !86
  %i.aa = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc63
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !32, !llvm.access.group !86
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc63, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9103.0 = phi ptr [ %i.z, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc63 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.099.0 = phi ptr [ %i.y, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc63 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 21 uses
  %i.ad = icmp ugt i64 %i.u, 2305843009213693951
  br i1 %i.ad, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i65 = icmp eq i64 %i.u, 0           ; 5 uses
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64
  %i.ae = shl nuw nsw i64 %i.u, 2
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #20
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc71:                                         ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.u ; 2 uses
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !32, !llvm.access.group !86
  %i.ah = add nsw i64 %i.u, -1                    ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66: ; preds = %.noexc71
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %.idx.i.i.i.i.i.i.i67 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i67, i1 false), !tbaa !32, !llvm.access.group !86
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66, %.noexc71, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64
  %.sroa.095.0 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66 ], [ %i.af, %.noexc71 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64 ] ; 20 uses
  %.sroa.9.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66 ], [ %i.ag, %.noexc71 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i64 ]
  %.sroa.095.0258 = ptrtoaddr ptr %.sroa.095.0 to i64 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !14, !llvm.access.group !86
  %i.al = load i64, ptr %6, align 8, !tbaa !9, !llvm.access.group !86 ; 4 uses
  %i.am = mul i64 %i.t, %.058123                  ; 2 uses
  %i.an = mul i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !11, !llvm.access.group !86 ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = load i64, ptr %8, align 8, !tbaa !9, !llvm.access.group !86 ; 2 uses
  %i.as = mul i64 %i.ar, %.058123
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.as ; 4 uses
  %i.au = load ptr, ptr %9, align 8, !tbaa !11, !llvm.access.group !86 ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.am ; 4 uses
  br i1 %.not.i.i.i.i65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72
  %i.aw = load ptr, ptr %10, align 8, !tbaa !11, !llvm.access.group !86 ; 5 uses
  %min.iters.check262 = icmp ult i64 %i.u, 8
  br i1 %min.iters.check262, label %scalar.ph261.preheader, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %.sroa.095.0258
  %diff.check = icmp ugt i64 %i.ay, -32
  %i.az = mul i64 %i.ar, %i.o
  %i.ba = add i64 %i.az, %i.aq
  %i.bb = sub i64 %i.ba, %.sroa.095.0258
  %diff.check259 = icmp ugt i64 %i.bb, -32
  %conflict.rdx260 = or i1 %diff.check, %diff.check259
  br i1 %conflict.rdx260, label %scalar.ph261.preheader, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck257
  %n.vec264 = and i64 %i.u, 2305843009213693944   ; 3 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next271, %vector.body265 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index266 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load267 = load <4 x float>, ptr %i.bc, align 4, !tbaa !32, !llvm.access.group !86
  %wide.load268 = load <4 x float>, ptr %i.bd, align 4, !tbaa !32, !llvm.access.group !86
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index266 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load269 = load <4 x float>, ptr %i.be, align 4, !tbaa !32, !llvm.access.group !86
  %wide.load270 = load <4 x float>, ptr %i.bf, align 4, !tbaa !32, !llvm.access.group !86
  %i.bg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load269, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load267)
  %i.bh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load270, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load268)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.095.0, i64 %index266 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x float> %i.bg, ptr %i.bi, align 4, !tbaa !32, !llvm.access.group !86
  store <4 x float> %i.bh, ptr %i.bj, align 4, !tbaa !32, !llvm.access.group !86
  %index.next271 = add nuw i64 %index266, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next271, %n.vec264
  br i1 %i.bk, label %middle.block272, label %vector.body265, !llvm.loop !87

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.u, %n.vec264
  br i1 %cmp.n273, label %._crit_edge, label %scalar.ph261.preheader

scalar.ph261.preheader:                           ; preds = %vector.memcheck257, %.lr.ph, %middle.block272
  %.057114.ph = phi i64 [ 0, %vector.memcheck257 ], [ 0, %.lr.ph ], [ %n.vec264, %middle.block272 ] ; 6 uses
  %.neg = or disjoint i64 %.057114.ph, 1
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph261.prol.loopexit, label %scalar.ph261.prol

scalar.ph261.prol:                                ; preds = %scalar.ph261.preheader
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.057114.ph
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !32, !llvm.access.group !86
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.057114.ph
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !32, !llvm.access.group !86
  %i.bp = call float @llvm.fmuladd.f32(float %i.bo, float -2.000000e+00, float %i.bm)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.095.0, i64 %.057114.ph
  store float %i.bp, ptr %i.bq, align 4, !tbaa !32, !llvm.access.group !86
  %i.br = or disjoint i64 %.057114.ph, 1
  br label %scalar.ph261.prol.loopexit

scalar.ph261.prol.loopexit:                       ; preds = %scalar.ph261.prol, %scalar.ph261.preheader
  %.057114.unr = phi i64 [ %.057114.ph, %scalar.ph261.preheader ], [ %i.br, %scalar.ph261.prol ]
  %i.bs = icmp eq i64 %i.u, %.neg
  br i1 %i.bs, label %._crit_edge, label %scalar.ph261

._crit_edge:                                      ; preds = %scalar.ph261.prol.loopexit, %scalar.ph261, %middle.block272, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit72
  %i.bt = load ptr, ptr %11, align 8, !tbaa !11, !llvm.access.group !86
  %i.bu = load i64, ptr %12, align 8, !tbaa !9, !llvm.access.group !86
  %i.bv = load ptr, ptr %13, align 8, !tbaa !85, !llvm.access.group !86
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_131compute_cent_distances_baselineEmmPKfmPKmmPKiS2_S2_Pf.exit, label %.lr.ph52.split.i

.lr.ph52.split.i:                                 ; preds = %._crit_edge
  %i.bw = shl nuw nsw i64 %i.u, 2                 ; 3 uses
  %i.bx = add nsw i64 %i.u, -1                    ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bx, 2 ; 2 uses
  %.not78.i = icmp eq i64 %i.al, 0
  br i1 %.not78.i, label %.lr.ph52.split.split.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i.preheader

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i.preheader: ; preds = %.lr.ph52.split.i
  %i.bz = shl nuw nsw i64 %i.u, 2                 ; 3 uses
  %i.ca = mul i64 %i.bz, %i.t
  %scevgep223 = getelementptr i8, ptr %.sroa.099.0, i64 %i.ca ; 3 uses
  %i.cb = mul i64 %i.t, %i.q
  %scevgep224 = getelementptr i8, ptr %i.au, i64 %i.cb
  %scevgep225 = getelementptr i8, ptr %.sroa.095.0, i64 %i.bz
  %min.iters.check242 = icmp ult i64 %i.u, 8
  %bound0227 = icmp ult ptr %.sroa.099.0, %scevgep224
  %bound1228 = icmp ult ptr %i.av, %scevgep223
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0231 = icmp ult ptr %.sroa.099.0, %scevgep225
  %bound1232 = icmp ult ptr %.sroa.095.0, %scevgep223
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx235 = or i1 %found.conflict229, %found.conflict233
  %n.vec244 = and i64 %i.u, 2305843009213693944   ; 3 uses
  %cmp.n255 = icmp eq i64 %i.u, %n.vec244
  %xtraiter281 = and i64 %i.u, 1
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit40.us.i
  %.03450.us.i = phi i64 [ %i.dl, %_ZNSt6vectorIfSaIfEED2Ev.exit40.us.i ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.us.i, label %.noexc38.us.i

.noexc38.us.i:                                    ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.us.i
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #20
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc74:                                         ; preds = %.noexc38.us.i
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.u ; 2 uses
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !32, !llvm.access.group !86
  br i1 %i.by, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.us.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.us.i
end_hunk_0
