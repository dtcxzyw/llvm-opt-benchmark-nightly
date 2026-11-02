Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/IlmThreadPool?download=true
inline.NumInlined: 455
inline.NumDeleted: 259
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i:      ; preds = %bb.a, %bb.b
  %.05.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i.i, align 8, !tbaa !59
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.i
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #30
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i:      ; preds = %bb.d, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZSt8_DestroyIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEvPT_.exit

_ZSt8_DestroyIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEvPT_.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(173) %i.r) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define internal void @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider10threadLoopESt10shared_ptrINS0_21DefaultThreadPoolDataEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val721 = load ptr, ptr %1, align 8, !tbaa !49
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %.val721)
  %.val622 = load ptr, ptr %1, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %.val622, i64 40 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i23, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.ae, %.backedge ]
  tail call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #28
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a, %.backedge
  %i.c = phi ptr [ %i.ad, %.backedge ], [ %i.a, %bb.a ] ; 2 uses
  %.val5 = load ptr, ptr %1, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 6 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !66
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %.backedge, label %.noexc9

.noexc9:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j), !inline_history !4
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !4
  %.not7.i = icmp eq ptr %i.m, null
  br i1 %.not7.i, label %.backedge, label %bb.c

bb.c:                                             ; preds = %.noexc9
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %i.u = atomicrmw add ptr %i.t, i32 -1 seq_cst, align 4
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w)
  br label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i: ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.y = atomicrmw add ptr %i.x, i32 -1 seq_cst, align 4 ; 0 uses
  br label %.backedge

_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.val5, i64 172
  %i.aa = load atomic i8, ptr %i.z monotonic, align 4, !range !133, !noundef !72
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  br i1 %i.ab, label %bb.e, label %.backedge

.backedge:                                        ; preds = %bb.b, %.noexc9, %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i, %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  %.val7 = load ptr, ptr %1, align 8, !tbaa !49
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %.val7)
  %.val6 = load ptr, ptr %1, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 40 ; 2 uses
  %i.ae = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.e:                                             ; preds = %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6threadmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6threadmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !61
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !56
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #28
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !61
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %4 = lshr i64 %3, 3
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %5, 4611686018427387900        ; 3 uses
  %6 = shl i64 %n.vec, 3                          ; 2 uses
  %7 = getelementptr i8, ptr %i.u, i64 %6
  %8 = getelementptr i8, ptr %i.c, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %9 = shl i64 %index, 3                          ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %9  ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %10 = getelementptr i8, ptr %next.gep40, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !59, !alias.scope !140
  %wide.load41 = load <2 x i64>, ptr %10, align 8, !tbaa !59, !alias.scope !140
  %11 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !59, !alias.scope !139
  store <2 x i64> %wide.load41, ptr %11, align 8, !tbaa !59, !alias.scope !139
  store <2 x i64> zeroinitializer, ptr %next.gep40, align 8, !tbaa !59, !alias.scope !140
  store <2 x i64> zeroinitializer, ptr %10, align 8, !tbaa !59, !alias.scope !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %7, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %8, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.x = load i64, ptr %.0911.i.i.i, align 8, !tbaa !59, !alias.scope !140
  store i64 %i.x, ptr %.012.i.i.i, align 8, !tbaa !59, !alias.scope !139
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !59, !alias.scope !140
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !138

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #30
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6threadmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread24_M_thread_deps_never_runEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !31  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !23
  %i.g = load ptr, ptr %.val, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26, !inline_history !143
  %i.j = load ptr, ptr %.val, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26, !inline_history !143
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #26
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit

_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !23
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #26, !inline_history !144
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #26, !inline_history !144
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #26, !inline_history !145
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev.exit

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #26, !inline_history !145
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEE6_M_runEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.7", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load i64, ptr %i.b, align 8, !tbaa !32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load i64, ptr %i.d, align 8, !tbaa !32
  %.val2.i.i = load ptr, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.e = getelementptr inbounds i8, ptr %.val2.i.i, i64 %.val1.i.i ; 2 uses
  %i.f = and i64 %.val.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %i.g, i64 %.val.i.i
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load ptr, ptr %i.i, align 8, !nosanitize !72
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %.val.i.i to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <2 x ptr>, ptr %i.a, align 8, !tbaa !35
  store ptr null, ptr %i.n, align 8, !tbaa !31
  store <2 x ptr> %i.o, ptr %1, align 16, !tbaa !35
  store ptr null, ptr %i.a, align 8, !tbaa !49
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %.val6.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !31 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val6.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEEclEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !23
  %i.u = load ptr, ptr %.val6.i.i.i.i, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %.val6.i.i.i.i) #26, !inline_history !146
  %i.x = load ptr, ptr %.val6.i.i.i.i, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val6.i.i.i.i) #26, !inline_history !146
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEEclEv.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEEclEv.exit, !prof !34

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val6.i.i.i.i) #26
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEEclEv.exit

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !31
  call fastcc void @_ZNSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.val.i.i.i.i) #26
  resume { ptr, i32 } %i.ae

_ZNSt6thread8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS3_21DefaultThreadPoolDataEEEPS4_S7_EEEclEv.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nofree nounwind }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !18}
!1 = distinct !{null, null, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !18}
!6 = distinct !{!6, !18}
!7 = distinct !{!7, !18}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIiE", !13, i64 0}
!17 = !{!16, !13, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"vtable pointer", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!22 = !{!21, !13, i64 8}
!23 = !{!21, !13, i64 12}
!24 = !{!"any pointer", !12, i64 0}
!25 = !{!"p1 _ZTSN13IlmThread_3_418ThreadPoolProviderE", !24, i64 0}
!26 = !{!"_ZTSSt15_Sp_counted_ptrIPN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !25, i64 16}
!27 = !{!26, !25, i64 16}
!28 = !{!25, !25, i64 0}
!29 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!30 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!12, !12, i64 0}
!33 = !{!13, !13, i64 0}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!24, !24, i64 0}
!36 = !{!"_ZTSSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !30, i64 8}
!37 = !{!36, !25, i64 0}
!38 = !{!"p1 _ZTSN13IlmThread_3_49TaskGroupE", !24, i64 0}
!39 = !{!"_ZTSN13IlmThread_3_44TaskE", !38, i64 8}
!40 = !{!39, !38, i64 8}
!41 = !{!"p1 _ZTSN13IlmThread_3_49TaskGroup4DataE", !24, i64 0}
!42 = !{!"_ZTSN13IlmThread_3_49TaskGroupE", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"p1 _ZTSN13IlmThread_3_410ThreadPool4DataE", !24, i64 0}
!45 = !{!"_ZTSN13IlmThread_3_410ThreadPoolE", !44, i64 8}
!46 = !{!45, !44, i64 8}
!47 = !{!"p1 _ZTSN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataE", !24, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !30, i64 8}
!49 = !{!48, !47, i64 0}
!50 = !{!"branch_weights", i32 1, i32 1048575}
!51 = !{!"p1 omnipotent char", !24, i64 0}
!52 = !{!"_ZTSSt9type_info", !51, i64 8}
!53 = !{!52, !51, i64 8}
!54 = !{!"p1 _ZTSSt6thread", !24, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 8}
!57 = !{!55, !54, i64 0}
!58 = !{!"long", !12, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"_ZTSNSt6thread2idE", !58, i64 0}
!61 = !{!60, !58, i64 0}
!62 = !{!"p1 _ZTSN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE", !24, i64 0}
!63 = !{!"any p2 pointer", !24, i64 0}
!64 = !{!"p2 _ZTSN13IlmThread_3_44TaskE", !63, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIPN13IlmThread_3_44TaskESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 8}
!67 = !{!65, !64, i64 16}
!68 = !{!"p1 _ZTSN13IlmThread_3_44TaskE", !24, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!65, !64, i64 0}
!71 = !{!55, !54, i64 16}
!72 = !{}
!73 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN13IlmThread_3_418ThreadPoolProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!74 = distinct !{!74, i1 true, !"_ZSt15atomic_exchangeIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPS4_S4_"}
!75 = distinct !{!75, !74, !"_ZSt15atomic_exchangeIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPS4_S4_: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZSt24atomic_exchange_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPS4_S4_St12memory_order"}
!77 = distinct !{!77, !76, !"_ZSt24atomic_exchange_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPS4_S4_St12memory_order: argument 0"}
!78 = !{!75}
!79 = !{!77}
!80 = !{!77, !75}
!81 = distinct !{!81, i1 true, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv"}
!82 = distinct !{!82, !81, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZSt11atomic_loadIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_"}
!84 = distinct !{!84, !83, !"_ZSt11atomic_loadIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZSt20atomic_load_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_St12memory_order"}
!86 = distinct !{!86, !85, !"_ZSt20atomic_load_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_St12memory_order: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZSt11make_sharedIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!88 = distinct !{!88, !87, !"_ZSt11make_sharedIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZSt11make_sharedIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!90 = distinct !{!90, !89, !"_ZSt11make_sharedIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!91 = !{!82}
!92 = !{!84}
!93 = !{!86}
!94 = !{!86, !84, !82}
!95 = !{!88}
!96 = !{!90}
!97 = !{!90, !88}
!98 = !{!47, !47, i64 0}
!99 = distinct !{!99, i1 true, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv"}
!100 = distinct !{!100, !99, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZSt11atomic_loadIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_"}
!102 = distinct !{!102, !101, !"_ZSt11atomic_loadIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZSt20atomic_load_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_St12memory_order"}
!104 = distinct !{!104, !103, !"_ZSt20atomic_load_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_St12memory_order: argument 0"}
!105 = !{!100}
!106 = !{!102}
!107 = !{!104}
!108 = !{!104, !102, !100}
!109 = distinct !{!109, i1 true, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv"}
!110 = distinct !{!110, !109, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZSt11atomic_loadIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_"}
!112 = distinct !{!112, !111, !"_ZSt11atomic_loadIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZSt20atomic_load_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_St12memory_order"}
!114 = distinct !{!114, !113, !"_ZSt20atomic_load_explicitIN13IlmThread_3_418ThreadPoolProviderEESt10shared_ptrIT_EPKS4_St12memory_order: argument 0"}
!115 = !{!110}
!116 = !{!112}
!117 = !{!114}
!118 = !{!114, !112, !110}
!119 = distinct !{null}
!120 = distinct !{null}
!121 = distinct !{ptr @_ZNSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!122 = distinct !{ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderD2Ev, ptr @_ZNSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!123 = !{ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderD2Ev}
!124 = distinct !{null, null, null}
!125 = distinct !{!125, !18}
!126 = !{!"_ZTSSt10_Head_baseILm1EPN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderELb0EE", !62, i64 0}
!127 = !{!126, !62, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS1_21DefaultThreadPoolDataEEELb0EE", !12, i64 0}
!129 = !{!128, !12, i64 0}
!130 = !{!"p1 _ZTSNSt6thread6_StateE", !24, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!64, !64, i64 0}
!133 = !{i8 0, i8 2}
!134 = distinct !{!134, i1 true, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!135 = distinct !{!135, !134, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !134, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!137 = distinct !{!137, !18, !141, !142}
!138 = distinct !{!138, !18, !142, !141}
!139 = !{!135}
!140 = !{!136}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!144 = distinct !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!145 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvSt10shared_ptrINS4_21DefaultThreadPoolDataEEEPS5_S8_EEEEED2Ev}
!146 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!147 = !{!62, !62, i64 0}
end_hunk_0
