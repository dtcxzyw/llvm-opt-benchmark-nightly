Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/LocalSearchQuantizer?download=true
inline.NumInlined: 876
inline.NumDeleted: 439
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5faiss20LocalSearchQuantizer15icm_encode_implEPiPKfS3_RSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEmmb.omp_outlined.omp.reduction.reduction_func:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !63
  %i.h = load i64, ptr %i.a, align 8, !tbaa !63
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr %i.b, align 8, !tbaa !63
  %i.j = load float, ptr %i.f, align 4, !tbaa !95
  %i.k = load float, ptr %i.d, align 4, !tbaa !95
  %i.l = fadd float %i.j, %i.k
  store float %i.l, ptr %i.f, align 4, !tbaa !95
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.f = load ptr, ptr %0, align 8, !tbaa !186    ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !178

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %1, align 4, !tbaa !90
  store i32 %i.o, ptr %i.l, align 4, !tbaa !90
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !186
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !196
  store ptr %i.q, ptr %i.d, align 8, !tbaa !188
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196  ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.u, %i.c
  br i1 %.not, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp sgt i64 %i.c, 4
  br i1 %i.v, label %bb.j, label %bb.k, !prof !178

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !196
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.k:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.c, 4
  br i1 %i.w, label %bb.l, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %1, align 4, !tbaa !90
  store i32 %i.x, ptr %i.f, align 4, !tbaa !90
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.j, %bb.k, %bb.l
  %i.y = phi ptr [ %.pre, %bb.j ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i16 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i16, label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  store ptr %i.z, ptr %i.r, align 8, !tbaa !196
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.u ; 3 uses
  %i.aa = ptrtoint ptr %.sink.i to i64
  %i.ab = icmp sgt i64 %i.u, 4
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !178

bb.m:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.u, i1 false)
  %.pre21 = load ptr, ptr %i.r, align 8, !tbaa !196
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17

bb.n:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %i.ac = icmp eq i64 %i.u, 4
  br i1 %i.ac, label %bb.o, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17

bb.o:                                             ; preds = %bb.n
  %i.ad = load i32, ptr %1, align 4, !tbaa !90
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !90
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17:               ; preds = %bb.m, %bb.n, %bb.o
  %i.ae = phi ptr [ %.pre21, %bb.m ], [ %i.s, %bb.n ], [ %i.s, %bb.o ] ; 3 uses
  %i.af = sub i64 %i.a, %i.aa                     ; 4 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.p, label %bb.q, !prof !178

bb.p:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %.sink.i, i64 %i.af, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit

bb.q:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.r, label %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit

bb.r:                                             ; preds = %bb.q
  %i.ai = load i32, ptr %.sink.i, align 4, !tbaa !90
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !90
  br label %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !196
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit:    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @"_ZZNK5faiss20LocalSearchQuantizer15icm_encode_stepEPiPKfS3_mmENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined"(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.i, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 1, ptr %i.c, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !90
  %i.j = load i32, ptr %0, align 4, !tbaa !90     ; 4 uses
  tail call void @__kmpc_dispatch_init_8(ptr nonnull @2, i32 %i.j, i32 1073741859, i64 0, i64 %i.i, i64 1, i64 1)
  %i.k = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %i.j, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not76 = icmp eq i32 %i.k, 0
  br i1 %.not76, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.c

.loopexit58:                                      ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  %i.n = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %i.j, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge79, label %bb.c

bb.c:                                             ; preds = %.lr.ph78, %.loopexit58
  %i.o = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !63, !llvm.access.group !197
  %.not4871 = icmp sgt i64 %i.o, %i.p
  br i1 %.not4871, label %.loopexit58, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %indvar = phi i64 [ %indvar.next, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ 0, %bb.c ] ; 2 uses
  %.072 = phi i64 [ %i.ag, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.o, %bb.c ] ; 5 uses
  %8 = add i64 %i.o, %indvar
  %i.q = shl i64 %8, 2
  %i.r = load i64, ptr %i.l, align 8, !tbaa !56, !llvm.access.group !197 ; 5 uses
  %i.s = icmp ugt i64 %i.r, 2305843009213693951
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %.lr.ph75
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph75
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc49:                                         ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !95, !llvm.access.group !197
  %i.w = add nsw i64 %i.r, -1                     ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc49
  %i.y = getelementptr i8, ptr %i.u, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !95, !llvm.access.group !197
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc49, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.v, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.v, %.noexc49 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.051.0 = phi ptr [ %i.u, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.u, %.noexc49 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
  %.sroa.051.0106 = ptrtoaddr ptr %.sroa.051.0 to i64
  %i.z = load i64, ptr %4, align 8, !tbaa !63, !llvm.access.group !197 ; 2 uses
  %.not80 = icmp eq i64 %i.z, 0
  br i1 %.not80, label %._crit_edge70, label %.preheader56.lr.ph

.preheader56.lr.ph:                               ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !24, !llvm.access.group !197 ; 2 uses
  %.not81 = icmp eq i64 %i.aa, 0
  br i1 %.not81, label %._crit_edge70, label %.preheader56

.preheader56:                                     ; preds = %.preheader56.lr.ph, %._crit_edge
  %i.ab = phi i64 [ %i.ai, %._crit_edge ], [ %i.z, %.preheader56.lr.ph ]
  %i.ac = phi i64 [ %i.aj, %._crit_edge ], [ %i.aa, %.preheader56.lr.ph ] ; 2 uses
  %.04669 = phi i64 [ %i.ak, %._crit_edge ], [ 0, %.preheader56.lr.ph ]
  %.not82 = icmp eq i64 %i.ac, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph68

._crit_edge70:                                    ; preds = %._crit_edge, %.preheader56.lr.ph, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.051.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge70
  %i.ad = ptrtoint ptr %.sroa.10.0 to i64
  %i.ae = ptrtoint ptr %.sroa.051.0 to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.051.0, i64 noundef %i.af) #25, !llvm.access.group !197
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge70, %bb.f
  %i.ag = add nsw i64 %.072, 1
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !63, !llvm.access.group !197
  %.not48.not = icmp slt i64 %.072, %i.ah
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.not, label %.lr.ph75, label %.loopexit58, !llvm.loop !198

._crit_edge.loopexit:                             ; preds = %_ZN5faiss24HeapWithBucketsCMaxFloatILj16ELj1ELNS_9SIMDLevelE0EE4addnEjPKfjPfPi.exit
  %.pre = load i64, ptr %4, align 8, !tbaa !63, !llvm.access.group !197
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader56
  %i.ai = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.preheader56 ] ; 2 uses
  %i.aj = phi i64 [ %i.em, %._crit_edge.loopexit ], [ 0, %.preheader56 ]
  %i.ak = add nuw i64 %.04669, 1                  ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %.preheader56, label %._crit_edge70, !llvm.loop !200

.lr.ph68:                                         ; preds = %.preheader56, %_ZN5faiss24HeapWithBucketsCMaxFloatILj16ELj1ELNS_9SIMDLevelE0EE4addnEjPKfjPfPi.exit
  %i.am = phi i64 [ %i.em, %_ZN5faiss24HeapWithBucketsCMaxFloatILj16ELj1ELNS_9SIMDLevelE0EE4addnEjPKfjPfPi.exit ], [ %i.ac, %.preheader56 ] ; 3 uses
  %.04567 = phi i64 [ %i.eq, %_ZN5faiss24HeapWithBucketsCMaxFloatILj16ELj1ELNS_9SIMDLevelE0EE4addnEjPKfjPfPi.exit ], [ 0, %.preheader56 ] ; 6 uses
  %i.an = shl i64 %.04567, 2
  %i.ao = load ptr, ptr %5, align 8, !tbaa !64, !llvm.access.group !197 ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = load i64, ptr %2, align 8, !tbaa !63, !llvm.access.group !197 ; 2 uses
  %i.ar = mul i64 %i.aq, %.04567
  %i.as = load i64, ptr %i.l, align 8, !tbaa !56, !llvm.access.group !197
  %.fr84 = freeze i64 %i.as                       ; 21 uses
  %i.at = mul i64 %i.ar, %.fr84
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.at
  %i.av = mul i64 %.fr84, %.072
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av ; 6 uses
  %.not83 = icmp eq i64 %.fr84, 0
  br i1 %.not83, label %.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %min.iters.check108 = icmp ult i64 %.fr84, 12
  br i1 %min.iters.check108, label %.lr.ph.preheader119, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.lr.ph.preheader
  %i.ax = mul i64 %i.aq, %i.an
  %i.ay = add i64 %i.q, %i.ax
  %i.az = mul i64 %.fr84, %i.ay
  %i.ba = add i64 %i.az, %i.ap
  %i.bb = sub i64 %i.ba, %.sroa.051.0106
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.preheader119, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck105
  %n.vec110 = and i64 %.fr84, -8                  ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load113 = load <4 x float>, ptr %i.bc, align 4, !tbaa !95, !llvm.access.group !197
  %wide.load114 = load <4 x float>, ptr %i.bd, align 4, !tbaa !95, !llvm.access.group !197
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %index112 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %wide.load113, ptr %i.be, align 4, !tbaa !95, !llvm.access.group !197
  store <4 x float> %wide.load114, ptr %i.bf, align 4, !tbaa !95, !llvm.access.group !197
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bg, label %middle.block116, label %vector.body111, !llvm.loop !201

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %.fr84, %n.vec110
  br i1 %cmp.n117, label %.preheader55.split.us.preheader, label %.lr.ph.preheader119

.lr.ph.preheader119:                              ; preds = %vector.memcheck105, %.lr.ph.preheader, %middle.block116
  %.04462.ph = phi i64 [ 0, %vector.memcheck105 ], [ 0, %.lr.ph.preheader ], [ %n.vec110, %middle.block116 ] ; 3 uses
  %xtraiter = and i64 %.fr84, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader119, %.lr.ph.prol
  %.04462.prol = phi i64 [ %i.bk, %.lr.ph.prol ], [ %.04462.ph, %.lr.ph.preheader119 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader119 ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04462.prol
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !95, !llvm.access.group !197
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %.04462.prol
  store float %i.bi, ptr %i.bj, align 4, !tbaa !95, !llvm.access.group !197
  %i.bk = add nuw i64 %.04462.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !202

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader119
  %.04462.unr = phi i64 [ %.04462.ph, %.lr.ph.preheader119 ], [ %i.bk, %.lr.ph.prol ]
  %i.bl = sub i64 %.04462.ph, %.fr84
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %.preheader55.split.us.preheader, label %.lr.ph

.preheader55.split.us.preheader:                  ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block116
  %i.bn = mul i64 %i.am, %.072
  %i.bo = shl i64 %.fr84, 2
  %scevgep = getelementptr i8, ptr %.sroa.051.0, i64 %i.bo
  %min.iters.check = icmp ult i64 %.fr84, 8
  %n.vec = and i64 %.fr84, -8                     ; 3 uses
  %cmp.n = icmp eq i64 %.fr84, %n.vec
  %xtraiter120 = and i64 %.fr84, 3                ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br label %.preheader55.split.us

.preheader55.split.us:                            ; preds = %.preheader55.split.us.preheader, %..loopexit_crit_edge.us
  %.04365.us = phi i64 [ %i.co, %..loopexit_crit_edge.us ], [ 0, %.preheader55.split.us.preheader ] ; 4 uses
  %i.bp = icmp eq i64 %.04365.us, %.04567
  br i1 %i.bp, label %..loopexit_crit_edge.us, label %.preheader.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04263.us = phi i64 [ %i.cn, %scalar.ph ], [ %.04263.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr [4 x i8], ptr %i.da, i64 %.04263.us
  %i.br = load float, ptr %i.bq, align 4, !tbaa !95, !llvm.access.group !197
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %.04263.us ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !95, !llvm.access.group !197
  %i.bu = fadd float %i.br, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !95, !llvm.access.group !197
  %i.bv = add nuw i64 %.04263.us, 1               ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.da, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !95, !llvm.access.group !197
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %i.bv ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !95, !llvm.access.group !197
  %i.ca = fadd float %i.bx, %i.bz
  store float %i.ca, ptr %i.by, align 4, !tbaa !95, !llvm.access.group !197
  %i.cb = add nuw i64 %.04263.us, 2               ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.da, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !95, !llvm.access.group !197
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %i.cb ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !95, !llvm.access.group !197
  %i.cg = fadd float %i.cd, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !95, !llvm.access.group !197
  %i.ch = add nuw i64 %.04263.us, 3               ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.da, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !95, !llvm.access.group !197
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %i.ch ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !95, !llvm.access.group !197
  %i.cm = fadd float %i.cj, %i.cl
  store float %i.cm, ptr %i.ck, align 4, !tbaa !95, !llvm.access.group !197
  %i.cn = add nuw i64 %.04263.us, 4               ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %i.cn, %.fr84
  br i1 %exitcond88.not.3, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !203

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader55.split.us
  %i.co = add nuw i64 %.04365.us, 1               ; 2 uses
  %exitcond89.not = icmp eq i64 %i.co, %i.am
  br i1 %exitcond89.not, label %.split.us, label %.preheader55.split.us, !llvm.loop !204

.preheader.us:                                    ; preds = %.preheader55.split.us
  %i.cp = load ptr, ptr %6, align 8, !tbaa !130, !llvm.access.group !197
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.bn
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %.04365.us
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !90, !llvm.access.group !197
  %i.ct = mul i64 %.04365.us, %i.am
  %i.cu = add i64 %i.ct, %.04567
  %i.cv = mul i64 %i.cu, %.fr84
  %i.cw = sext i32 %i.cs to i64
  %i.cx = add i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = mul i64 %i.cx, %.fr84
  %i.cz = load ptr, ptr %7, align 8, !tbaa !64, !llvm.access.group !197 ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.cz, i64 %i.cy ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %i.db = shl i64 %i.cx, 2
  %i.dc = add i64 %i.db, 4
  %i.dd = mul i64 %.fr84, %i.dc
  %scevgep101 = getelementptr i8, ptr %i.cz, i64 %i.dd
  %bound0 = icmp ult ptr %.sroa.051.0, %scevgep101
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.de = getelementptr [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %wide.load = load <4 x float>, ptr %i.de, align 4, !tbaa !95, !alias.scope !205, !llvm.access.group !197
  %wide.load102 = load <4 x float>, ptr %i.df, align 4, !tbaa !95, !alias.scope !205, !llvm.access.group !197
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %index ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load103 = load <4 x float>, ptr %i.dg, align 4, !tbaa !95, !alias.scope !208, !noalias !205, !llvm.access.group !197
  %wide.load104 = load <4 x float>, ptr %i.dh, align 4, !tbaa !95, !alias.scope !208, !noalias !205, !llvm.access.group !197
  %i.di = fadd <4 x float> %wide.load, %wide.load103
  %i.dj = fadd <4 x float> %wide.load102, %wide.load104
  store <4 x float> %i.di, ptr %i.dg, align 4, !tbaa !95, !alias.scope !208, !noalias !205, !llvm.access.group !197
  store <4 x float> %i.dj, ptr %i.dh, align 4, !tbaa !95, !alias.scope !208, !noalias !205, !llvm.access.group !197
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %.04263.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod121.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.04263.us.prol = phi i64 [ %i.dq, %scalar.ph.prol ], [ %.04263.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dl = getelementptr [4 x i8], ptr %i.da, i64 %.04263.us.prol
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !95, !llvm.access.group !197
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.051.0, i64 %.04263.us.prol ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !95, !llvm.access.group !197
end_hunk_0
