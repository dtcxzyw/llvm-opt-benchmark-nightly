Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CommandObjectApropos?download=true
inline.NumInlined: 435
inline.NumDeleted: 284
begin_hunk_0_@_ZN12lldb_private9StreamTee16SetStreamAtIndexEjRKSt10shared_ptrINS_6StreamEE:bb.a

_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private6StreamEEEvT_S5_.exit.i.i, %bb.f, %bb.e, %bb.d, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.c ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !118
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !121 ; 4 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6StreamEEaSERKS2_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE6resizeEm.exit
  %.not7.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i5 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !38
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !121
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.av = phi ptr [ %i.ap, %bb.m ], [ %i.ap, %bb.o ], [ %.pr.pre.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aw, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !130
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #13, !inline_history !164
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #13, !inline_history !164
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i9.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i9.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.az, %bb.t ], [ %i.bj, %bb.u ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !133

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !121
  br label %_ZNSt10shared_ptrIN12lldb_private6StreamEEaSERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private6StreamEEaSERKS2_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE6resizeEm.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.bl = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !165
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !38   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !165
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private12StreamStringESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private12StreamStringESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #13, !inline_history !166
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private12StreamStringESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private12StreamStringESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private12StreamStringESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN12lldb_private6StreamEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN12lldb_private6StreamEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !114
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #15
  unreachable

_ZNKSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !173, !alias.scope !171, !noalias !168
  store ptr null, ptr %i.x, align 8, !tbaa !121, !alias.scope !171, !noalias !168
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !173, !alias.scope !168, !noalias !171
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !171, !noalias !168
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !174

_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %2 = load ptr, ptr %i.h, align 8, !tbaa !167
  %3 = ptrtoint ptr %2 to i64
  %i.ab = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #14
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !167
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN12lldb_private6StreamEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN12lldb_private6StreamEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #1

declare void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32, ptr) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN12lldb_private19CommandReturnObject13AppendMessageEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(396), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.e = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.d, i64 -1, i64 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !44   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorIPKcEclERNS_11raw_ostreamENS_9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %bb.b
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #13
  %i.h = call i64 @llvm.umin.i64(i64 %i.g, i64 %.0.i.i) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.f, i64 noundef %i.h) #13 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorIPKcEclERNS_11raw_ostreamENS_9StringRefE.exit

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %.not.i2.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i2.i.i, label %_ZN4llvm7support6detail13FormatFunctorIPKcEclERNS_11raw_ostreamENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.f, i64 %i.h, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !176
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store ptr %i.s, ptr %i.k, align 8, !tbaa !176
  br label %_ZN4llvm7support6detail13FormatFunctorIPKcEclERNS_11raw_ostreamENS_9StringRefE.exit

_ZN4llvm7support6detail13FormatFunctorIPKcEclERNS_11raw_ostreamENS_9StringRefE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #1

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177, !nonnull !33, !align !73 ; 2 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.f = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.e, i64 -1, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i, i64 %.0.i.i) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %.sroa.speculated.i.i.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i) #13 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated.i.i.i
  store ptr %i.q, ptr %i.i, align 8, !tbaa !176
  br label %_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit

_ZN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEclERNS_11raw_ostreamES3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN12lldb_private13CommandObject19CommandArgumentDataESaIS3_EESaIS5_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTSSt6vectorIN12lldb_private13CommandObject19CommandArgumentDataESaIS2_EE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN12lldb_private13CommandObject19CommandArgumentDataESaIS2_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
end_hunk_0
