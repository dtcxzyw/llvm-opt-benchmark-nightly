inline.NumInlined: 1723
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18OccLockBucketsImplILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18OccLockBucketsImplILb1EEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !486  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.idx.i.i.i = shl i64 %i.e, 6                   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %i.h = phi ptr [ %i.i, %.preheader.i.i.i ], [ %i.g, %.preheader.preheader.i.i.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %i.i) #22
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %.preheader.i.i.i, %bb.b
  %i.k = add i64 %.idx.i.i.i, 64
  tail call void @_ZdaPvmSt11align_val_t(ptr noundef nonnull %i.c, i64 noundef %i.k, i64 noundef 64) #21
  br label %_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit

_ZN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18OccLockBucketsImplILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18OccLockBucketsImplILb1EEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !486  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb18OccLockBucketsImplILb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.idx.i.i.i.i = shl i64 %i.e, 6                 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.h = phi ptr [ %i.i, %.preheader.i.i.i.i ], [ %i.g, %.preheader.preheader.i.i.i.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 64 dead_on_return(40) dereferenceable(40) %i.i) #22, !inline_history !489
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i, label %.preheader.i.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.b
  %i.k = add i64 %.idx.i.i.i.i, 64
  tail call void @_ZdaPvmSt11align_val_t(ptr noundef nonnull %i.c, i64 noundef %i.k, i64 noundef 64) #21, !inline_history !489
  br label %_ZN7rocksdb18OccLockBucketsImplILb1EED2Ev.exit

_ZN7rocksdb18OccLockBucketsImplILb1EED2Ev.exit:   ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb18OccLockBucketsImplILb1EE22ApproximateMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !476
  %i.c = shl i64 %i.b, 6
  %i.d = or disjoint i64 %i.c, 24
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN7rocksdb18OccLockBucketsImplILb1EE13GetLockBucketERKNS_5SliceEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !209
  %i.e = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !476
  %i.g = zext i64 %i.f to i128
  %i.h = zext i64 %i.e to i128
  %i.i = mul nuw i128 %i.g, %i.h
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !486
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.k
  ret ptr %i.n
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #17

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnamSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb4port5MutexC1Eb(ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN7rocksdb18OccLockBucketsImplILb0EEESaIvEJRmEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !490 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !16     ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18OccLockBucketsImplILb0EEE, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !493
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 40) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.i, i64 8) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = or i1 %i.h, %i.k
  %i.m = extractvalue { i64, i1 } %i.j, 0
  %i.n = select i1 %i.l, i64 -1, i64 %i.m         ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #23
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %bb.a
  store i64 %i.e, ptr %i.o, align 16
  %i.p = icmp eq i64 %i.e, 0
  br i1 %i.p, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.q = load i8, ptr @_ZN7rocksdb23kDefaultToAdaptiveMutexE, align 1, !tbaa !156, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.idx.i.i.i.i = phi i64 [ 8, %bb.b ], [ %.add.i.i.i.i, %bb.d ] ; 5 uses
  %.ptr.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i
  invoke void @_ZN7rocksdb4port5MutexC1Eb(ptr noundef nonnull align 8 dereferenceable(40) %.ptr.ptr.i.i.i.i, i1 noundef zeroext %i.r)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %.add.i.i.i.i = add nuw nsw i64 %.idx.i.i.i.i, 40
  %i.s = add nuw nsw i64 %.idx.i.i.i.i, 32
  %i.t = icmp eq i64 %i.s, %i.i
  br i1 %i.t, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %.idx.i.i.i.i, 8
  br i1 %i.v, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.e, %.preheader.i.i.i.i
  %.idx8.i.i.i.i = phi i64 [ %.add9.i.i.i.i, %.preheader.i.i.i.i ], [ %.idx.i.i.i.i, %bb.e ]
  %.add9.i.i.i.i = add nsw i64 %.idx8.i.i.i.i, -40 ; 3 uses
  %.ptr11.i.i.i.i = getelementptr inbounds i8, ptr %i.o, i64 %.add9.i.i.i.i
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.ptr11.i.i.i.i) #22
  %4 = icmp eq i64 %.add9.i.i.i.i, 8
  br i1 %4, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %bb.e
  tail call void @_ZdaPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #21
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.d, %.noexc
  %.ptr7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.ptr7.i.i.i.i, ptr %i.w, align 8, !tbaa !502
  store ptr %i.a, ptr %0, align 8, !tbaa !42
  store ptr %i.d, ptr %1, align 8, !tbaa !503
  ret void

bb.f:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9: ; preds = %.loopexit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.u, %.loopexit.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN7rocksdb18OccLockBucketsImplILb0EEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #22, !inline_history !504
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18OccLockBucketsImplILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18OccLockBucketsImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18OccLockBucketsImplILb0EEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb7StripedINS_4port5MutexENS_5SliceENS_15SliceNPHasher64EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.idx.i.i.i = mul i64 %i.d, 40                  ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %i.g = phi ptr [ %i.h, %.preheader.i.i.i ], [ %i.f, %.preheader.preheader.i.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40 ; 3 uses
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.h) #22
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i: ; preds = %.preheader.i.i.i, %bb.b
  %i.j = add i64 %.idx.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.j) #21
  br label %_ZN7rocksdb7StripedINS_4port5MutexENS_5SliceENS_15SliceNPHasher64EED2Ev.exit

_ZN7rocksdb7StripedINS_4port5MutexENS_5SliceENS_15SliceNPHasher64EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18OccLockBucketsImplILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18OccLockBucketsImplILb0EEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb18OccLockBucketsImplILb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.idx.i.i.i.i = mul i64 %i.d, 40                ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.g = phi ptr [ %i.h, %.preheader.i.i.i.i ], [ %i.f, %.preheader.preheader.i.i.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40 ; 3 uses
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.h) #22, !inline_history !505
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i, label %.preheader.i.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.b
  %i.j = add i64 %.idx.i.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.j) #21, !inline_history !505
  br label %_ZN7rocksdb18OccLockBucketsImplILb0EED2Ev.exit

_ZN7rocksdb18OccLockBucketsImplILb0EED2Ev.exit:   ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb4port5MutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb18OccLockBucketsImplILb0EE22ApproximateMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !493
  %i.c = mul i64 %i.b, 40
  %i.d = add i64 %i.c, 24
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN7rocksdb18OccLockBucketsImplILb0EE13GetLockBucketERKNS_5SliceEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !209
  %i.e = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !493
  %i.g = zext i64 %i.f to i128
  %i.h = zext i64 %i.e to i128
  %i.i = mul nuw i128 %i.g, %i.h
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !502
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.k
  ret ptr %i.n
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_optimistic_transaction_db_impl.cc() #18 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 -241, ptr @_ZN7rocksdbL23kRangeTombstoneSentinelE, align 8, !tbaa !16
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN7rocksdbL23kRangeTombstoneSentinelE) ; 0 uses
  store i32 0, ptr @_ZN7rocksdbL22global_operation_tableE, align 16, !tbaa !506
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 8), align 8, !tbaa !210
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 16), align 16, !tbaa !211
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 24), align 8, !tbaa !15
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 40), align 8, !tbaa !506
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 48), align 16, !tbaa !210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 64), ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 56), align 8, !tbaa !211
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 74), align 2, !tbaa !15
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 80), align 16, !tbaa !506
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 88), align 8, !tbaa !210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 104), ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 96), align 16, !tbaa !211
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 109), align 1, !tbaa !15
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 120), align 8, !tbaa !506
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 128), align 16, !tbaa !210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 144), ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
end_hunk_0
