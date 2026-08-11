inline.NumInlined: 4140
inline.NumDeleted: 1439
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !52
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !38
  %i.g = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.g, ptr %i.b, align 8, !tbaa !44
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !44
  store i8 %i.i, ptr %i.h, align 1, !tbaa !44
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !53
  %i.l = load ptr, ptr %0, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !54
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #29, !inline_history !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %bb.b unwind label %bb.n       ; 28 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13, !noalias !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !15, !noalias !66
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !16, !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7cvannoy10AnnoyIndexIifNS_9EuclideanEN2cv6RandomENS_34AnnoyIndexMultiThreadedBuildPolicyEEE, i64 16), ptr %i.f, align 8, !tbaa !16, !noalias !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %1, ptr %i.g, align 8, !tbaa !71, !noalias !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !89, !noalias !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.o = sext i32 %1 to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.q = add nsw i64 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !90, !noalias !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 161
  store i8 0, ptr %i.s, align 1, !tbaa !91, !noalias !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 169
  store i8 0, ptr %i.t, align 1, !tbaa !92, !noalias !66
  %2 = add nsw i64 %i.p, 8
  %3 = lshr exact i64 %2, 2
  %4 = trunc i64 %3 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %4, ptr %i.u, align 8, !tbaa !93, !noalias !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 0, ptr %i.v, align 4, !tbaa !94, !noalias !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i8 0, ptr %i.x, align 8, !tbaa !95, !noalias !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.y, align 8, !tbaa !96, !noalias !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i8 0, ptr %i.z, align 8, !tbaa !97, !noalias !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !66
  store i64 4294967295, ptr %i.n, align 8, !tbaa !98, !noalias !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.aa, align 8, !tbaa !99, !noalias !66
  store ptr null, ptr %i.j, align 8, !tbaa !100, !noalias !66
  store ptr %i.i, ptr %i.k, align 8, !tbaa !101, !noalias !66
  store ptr %i.i, ptr %i.l, align 8, !tbaa !102, !noalias !66
  store i64 0, ptr %i.m, align 8, !tbaa !103, !noalias !66
  store ptr %i.f, ptr %i.b, align 8, !tbaa !104
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !55
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ae, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !15
  %i.aj = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !105
  %i.am = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !105
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i9.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.h, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, !prof !106

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !50
  %i.at = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  store i32 0, ptr %i.d, align 8, !tbaa !13
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !107
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !107
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9EuclideanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.av, -1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.m, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #29
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy9EuclideanEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy9EuclideanEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9EuclideanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN2cv12ANNIndexImplIfN7cvannoy9EuclideanEE9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES9_iiENKUlRKNS_5RangeEE_clESC_:bb.a
  %i.be = load ptr, ptr %3, align 8, !tbaa !350   ; 3 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !350
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !351, !nonnull !188, !align !345 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bl = mul i64 %i.bk, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.i, label %bb.j, !prof !279

bb.i:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.be, i64 %i.bp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = load float, ptr %i.be, align 4, !tbaa !196
  store float %i.bs, ptr %i.bm, align 4, !tbaa !196
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.j, %bb.i
  %i.bt = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !213
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !309   ; 5 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !305
  %.not.i.i13 = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i13, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !305
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !147
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.d, label %._crit_edge, !llvm.loop !352

bb.l:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %3, align 8, !tbaa !309   ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !308
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ch = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit17

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.ca
}

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #29, !inline_history !353
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !354
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %bb.b unwind label %bb.n       ; 28 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13, !noalias !360
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !15, !noalias !360
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !16, !noalias !360
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7cvannoy10AnnoyIndexIifNS_9ManhattanEN2cv6RandomENS_34AnnoyIndexMultiThreadedBuildPolicyEEE, i64 16), ptr %i.f, align 8, !tbaa !16, !noalias !360
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %1, ptr %i.g, align 8, !tbaa !365, !noalias !360
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !360
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !89, !noalias !360
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.o = sext i32 %1 to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.q = add nsw i64 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !367, !noalias !360
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 161
  store i8 0, ptr %i.s, align 1, !tbaa !368, !noalias !360
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 169
  store i8 0, ptr %i.t, align 1, !tbaa !369, !noalias !360
  %2 = add nsw i64 %i.p, 8
  %3 = lshr exact i64 %2, 2
  %4 = trunc i64 %3 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %4, ptr %i.u, align 8, !tbaa !370, !noalias !360
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 0, ptr %i.v, align 4, !tbaa !371, !noalias !360
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i8 0, ptr %i.x, align 8, !tbaa !372, !noalias !360
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.y, align 8, !tbaa !373, !noalias !360
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i8 0, ptr %i.z, align 8, !tbaa !374, !noalias !360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !360
  store i64 4294967295, ptr %i.n, align 8, !tbaa !375, !noalias !360
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.aa, align 8, !tbaa !376, !noalias !360
  store ptr null, ptr %i.j, align 8, !tbaa !100, !noalias !360
  store ptr %i.i, ptr %i.k, align 8, !tbaa !101, !noalias !360
  store ptr %i.i, ptr %i.l, align 8, !tbaa !102, !noalias !360
  store i64 0, ptr %i.m, align 8, !tbaa !103, !noalias !360
  store ptr %i.f, ptr %i.b, align 8, !tbaa !377
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !55
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ae, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !15
  %i.aj = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !378
  %i.am = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !378
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i9.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.h, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, !prof !106

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !50
  %i.at = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  store i32 0, ptr %i.d, align 8, !tbaa !13
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !379
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !379
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_9ManhattanENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.av, -1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.m, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #29
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy9ManhattanEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy9ManhattanEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_9ManhattanEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN2cv12ANNIndexImplIfN7cvannoy9ManhattanEE9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES9_iiENKUlRKNS_5RangeEE_clESC_:bb.a
  %i.aw = mul i64 %i.av, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = ptrtoint ptr %i.ap to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 4
  br i1 %i.bb, label %bb.f, label %bb.g, !prof !279

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ax, ptr align 4 %i.ap, i64 %i.ba, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = icmp eq i64 %i.ba, 4
  br i1 %i.bc, label %bb.h, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.ap, align 4, !tbaa !55
  store i32 %i.bd, ptr %i.ax, align 4, !tbaa !55
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.g, %bb.f
  %i.be = load ptr, ptr %3, align 8, !tbaa !350   ; 3 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !350
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !480, !nonnull !188, !align !345 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bl = mul i64 %i.bk, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.i, label %bb.j, !prof !279

bb.i:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.be, i64 %i.bp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = load float, ptr %i.be, align 4, !tbaa !196
  store float %i.bs, ptr %i.bm, align 4, !tbaa !196
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.j, %bb.i
  %i.bt = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !213
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !309   ; 5 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !305
  %.not.i.i13 = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i13, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !305
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !147
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.d, label %._crit_edge, !llvm.loop !481

bb.l:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %3, align 8, !tbaa !309   ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !308
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ch = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit17

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy7AngularEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy7AngularEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #29, !inline_history !482
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy7AngularEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy7AngularEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy7AngularEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy7AngularEEC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy7AngularEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %bb.b unwind label %bb.n       ; 28 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13, !noalias !489
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !15, !noalias !489
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !16, !noalias !489
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7cvannoy10AnnoyIndexIifNS_7AngularEN2cv6RandomENS_34AnnoyIndexMultiThreadedBuildPolicyEEE, i64 16), ptr %i.f, align 8, !tbaa !16, !noalias !489
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %1, ptr %i.g, align 8, !tbaa !494, !noalias !489
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !489
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !89, !noalias !489
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.o = sext i32 %1 to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.q = add nsw i64 %i.p, 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !496, !noalias !489
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 161
  store i8 0, ptr %i.s, align 1, !tbaa !497, !noalias !489
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 169
  store i8 0, ptr %i.t, align 1, !tbaa !498, !noalias !489
  %2 = add nsw i64 %i.p, 8
  %3 = lshr exact i64 %2, 2
  %4 = trunc i64 %3 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %4, ptr %i.u, align 8, !tbaa !499, !noalias !489
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 0, ptr %i.v, align 4, !tbaa !500, !noalias !489
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i8 0, ptr %i.x, align 8, !tbaa !501, !noalias !489
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.y, align 8, !tbaa !502, !noalias !489
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i8 0, ptr %i.z, align 8, !tbaa !503, !noalias !489
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !489
  store i64 4294967295, ptr %i.n, align 8, !tbaa !504, !noalias !489
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.aa, align 8, !tbaa !505, !noalias !489
  store ptr null, ptr %i.j, align 8, !tbaa !100, !noalias !489
  store ptr %i.i, ptr %i.k, align 8, !tbaa !101, !noalias !489
  store ptr %i.i, ptr %i.l, align 8, !tbaa !102, !noalias !489
  store i64 0, ptr %i.m, align 8, !tbaa !103, !noalias !489
  store ptr %i.f, ptr %i.b, align 8, !tbaa !506
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !55
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ae, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !15
  %i.aj = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !507
  %i.am = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !507
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i9.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.h, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, !prof !106

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !50
  %i.at = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  store i32 0, ptr %i.d, align 8, !tbaa !13
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !508
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !508
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_7AngularENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.av, -1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.m, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #29
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy7AngularEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy7AngularEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_7AngularEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZZN2cv12ANNIndexImplIhN7cvannoy7HammingEE9knnSearchERKNS_11_InputArrayERKNS_12_OutputArrayES9_iiENKUlRKNS_5RangeEE_clESC_:bb.a
  br i1 %i.bb, label %bb.f, label %bb.g, !prof !279

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ax, ptr align 4 %i.ap, i64 %i.ba, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = icmp eq i64 %i.ba, 4
  br i1 %i.bc, label %bb.h, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.ap, align 4, !tbaa !55
  store i32 %i.bd, ptr %i.ax, align 4, !tbaa !55
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.g, %bb.f
  %i.be = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !803, !nonnull !188, !align !345 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bl = mul i64 %i.bk, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 1
  br i1 %i.bq, label %bb.i, label %bb.j, !prof !279

bb.i:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.be, i64 %i.bp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.br = icmp eq i64 %i.bp, 1
  br i1 %i.br, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = load i8, ptr %i.be, align 1, !tbaa !44
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.j, %bb.i
  %i.bt = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !213
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !779   ; 5 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !776
  %.not.i.i13 = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i13, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !776
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !147
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.d, label %._crit_edge, !llvm.loop !804

bb.l:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %3, align 8, !tbaa !779   ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIhSaIhEED2Ev.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !778
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit15

_ZNSt6vectorIhSaIhEED2Ev.exit15:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ch = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit15
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit17

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy10DotProductEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy10DotProductEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #29, !inline_history !805
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy10DotProductEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy10DotProductEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12ANNIndexImplIfN7cvannoy10DotProductEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy10DotProductEEC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy10DotProductEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !806
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %bb.b unwind label %bb.n       ; 28 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13, !noalias !812
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !15, !noalias !812
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !16, !noalias !812
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7cvannoy10AnnoyIndexIifNS_10DotProductEN2cv6RandomENS_34AnnoyIndexMultiThreadedBuildPolicyEEE, i64 16), ptr %i.f, align 8, !tbaa !16, !noalias !812
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %1, ptr %i.g, align 8, !tbaa !817, !noalias !812
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !812
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !89, !noalias !812
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.o = sext i32 %1 to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.q = add nsw i64 %i.p, 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !819, !noalias !812
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 161
  store i8 0, ptr %i.s, align 1, !tbaa !820, !noalias !812
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 169
  store i8 0, ptr %i.t, align 1, !tbaa !821, !noalias !812
  %2 = add nsw i64 %i.p, 20
  %3 = lshr exact i64 %2, 2
  %4 = trunc i64 %3 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %4, ptr %i.u, align 8, !tbaa !822, !noalias !812
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 0, ptr %i.v, align 4, !tbaa !823, !noalias !812
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i8 0, ptr %i.x, align 8, !tbaa !824, !noalias !812
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.y, align 8, !tbaa !825, !noalias !812
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i8 0, ptr %i.z, align 8, !tbaa !826, !noalias !812
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !812
  store i64 4294967295, ptr %i.n, align 8, !tbaa !827, !noalias !812
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.aa, align 8, !tbaa !828, !noalias !812
  store ptr null, ptr %i.j, align 8, !tbaa !100, !noalias !812
  store ptr %i.i, ptr %i.k, align 8, !tbaa !101, !noalias !812
  store ptr %i.i, ptr %i.l, align 8, !tbaa !102, !noalias !812
  store i64 0, ptr %i.m, align 8, !tbaa !103, !noalias !812
  store ptr %i.f, ptr %i.b, align 8, !tbaa !829
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !55
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ae, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !15
  %i.aj = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !830
  %i.am = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29, !inline_history !830
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i9.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.h, label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit, !prof !106

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #29
  br label %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit

_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !50
  %i.at = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  store i32 0, ptr %i.d, align 8, !tbaa !13
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !831
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !831
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %_ZN2cv3PtrIN7cvannoy10AnnoyIndexIifNS1_10DotProductENS_6RandomENS1_34AnnoyIndexMultiThreadedBuildPolicyEEEEaSERKS7_.exit
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.av, -1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.m, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #29
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !108
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12ANNIndexImplIfN7cvannoy10DotProductEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv12ANNIndexImplIfN7cvannoy10DotProductEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7cvannoy10AnnoyIndexIifNS0_10DotProductEN2cv6RandomENS0_34AnnoyIndexMultiThreadedBuildPolicyEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_3
