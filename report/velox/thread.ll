inline.NumInlined: 1276
inline.NumDeleted: 517
begin_hunk_0_@_ZN5boost16exception_detail27get_static_exception_objectINS0_10bad_alloc_EEENS_13exception_ptrEv:.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16exception_detail10clone_implINS0_10bad_alloc_EEE, i64 72), ptr %i.i, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-40, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_implINS0_10bad_alloc_EEE, i64 136), ptr %i.e, align 8, !tbaa !20
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  store ptr @__PRETTY_FUNCTION__._ZN5boost16exception_detail27get_static_exception_objectINS0_10bad_alloc_EEENS_13exception_ptrEv, ptr %i.g, align 8, !tbaa !215
end_hunk_0
begin_hunk_1_@_ZN5boost16exception_detail27get_static_exception_objectINS0_10bad_alloc_EEENS_13exception_ptrEv:.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

.body:                                            ; preds = %.noexc
  %4 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost16exception_detail10bad_alloc_D2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #34
  br label %.body.a

bb.o:                                             ; preds = %bb.f, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN5boost16exception_detail27get_static_exception_objectINS0_10bad_alloc_EEENS_13exception_ptrEv:.noexc
  call void @_ZN5boost16exception_detail10clone_implINS0_10bad_alloc_EED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #34
  br label %.body.a

.body.a:                                          ; preds = %bb.q, %.body
  %.pn8.pn.pn = phi { ptr, i32 } [ %.pn8, %bb.q ], [ %4, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @_ZN5boost16exception_detail10bad_alloc_D2Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
end_hunk_2
begin_hunk_3_@_ZN5boost16exception_detail27get_static_exception_objectINS0_14bad_exception_EEENS_13exception_ptrEv:.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16exception_detail10clone_implINS0_14bad_exception_EEE, i64 72), ptr %i.i, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-40, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_implINS0_14bad_exception_EEE, i64 136), ptr %i.e, align 8, !tbaa !20
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  store ptr @__PRETTY_FUNCTION__._ZN5boost16exception_detail27get_static_exception_objectINS0_14bad_exception_EEENS_13exception_ptrEv, ptr %i.g, align 8, !tbaa !215
end_hunk_3
begin_hunk_4_@_ZN5boost16exception_detail27get_static_exception_objectINS0_14bad_exception_EEENS_13exception_ptrEv:.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

.body:                                            ; preds = %.noexc
  %4 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost16exception_detail14bad_exception_D2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #34
  br label %.body.a

bb.o:                                             ; preds = %bb.f, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_ZN5boost16exception_detail27get_static_exception_objectINS0_14bad_exception_EEENS_13exception_ptrEv:.noexc
  call void @_ZN5boost16exception_detail10clone_implINS0_14bad_exception_EED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #34
  br label %.body.a

.body.a:                                          ; preds = %bb.q, %.body
  %.pn8.pn.pn = phi { ptr, i32 } [ %.pn8, %bb.q ], [ %4, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @_ZN5boost16exception_detail14bad_exception_D2Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
end_hunk_5
