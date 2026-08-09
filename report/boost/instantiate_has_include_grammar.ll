inline.NumInlined: 2538
inline.NumDeleted: 1188
begin_hunk_0_@_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEC2ISt20_List_const_iteratorISI_EvEET_SR_RKSM_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !66 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  tail call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  %i.d = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !43, !range !111, !noundef !64
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !112
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !116
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !117
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !118
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.f) #28
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !122
  store ptr %i.i, ptr %.09.i, align 8, !tbaa !123
  store ptr %.09.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !122
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !244

_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8allocateEm(i64 noundef %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  %i.a = icmp eq i64 %0, 1
  %i.b = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !43, !range !111, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !112
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !116
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !117
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !118
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i: ; preds = %bb.c, %bb.b
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #28
  unreachable

_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !122 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !123
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !122
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE6mallocEv.exit

bb.f:                                             ; preds = %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i
  %i.h = invoke noundef ptr @_ZN5boost4poolINS_33default_user_allocator_new_deleteEE18malloc_need_resizeEv(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40))
          to label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE6mallocEv.exit unwind label %bb.g

common.resume:                                    ; preds = %bb.n, %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.m, %bb.k ], [ %i.r, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  br label %common.resume

bb.h:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i6, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !112
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !116
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !117
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !118
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i6

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i6: ; preds = %bb.i, %bb.h
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i7, label %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i8, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i6
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #28
  unreachable

_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i8: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i6
  %i.l = invoke noundef ptr @_ZN5boost4poolINS_33default_user_allocator_new_deleteEE14ordered_mallocEm(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), i64 noundef %0)
          to label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE6mallocEv.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i8
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  br label %common.resume

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE6mallocEv.exit: ; preds = %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i8, %bb.f, %bb.e
  %i.o = phi ptr [ %i.h, %bb.f ], [ %i.e, %bb.e ], [ %i.l, %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i8 ] ; 2 uses
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE6mallocEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %1, align 8, !tbaa !56
  invoke void @_ZN5boost15throw_exceptionISt9bad_allocEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %common.resume

bb.o:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE6mallocEv.exit
  ret ptr %i.o
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt9bad_allocEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #27 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.e, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 -1, ptr %i.f, align 4, !tbaa !149
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt9bad_allocEE, ptr nonnull @_ZN5boost10wrapexceptISt9bad_allocED2Ev) #28
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4poolINS_33default_user_allocator_new_deleteEE18malloc_need_resizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.biased.i = add i64 %i.c, 7
  %.0.i = and i64 %.biased.i, -8                  ; 9 uses
  %i.d = sub i64 0, %.0.i                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117  ; 4 uses
  %i.g = mul i64 %.0.i, %i.f
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.f, 4
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.f, 1                         ; 3 uses
  store i64 %i.l, ptr %i.e, align 8, !tbaa !117
  %i.m = mul i64 %.0.i, %i.l
  %i.n = add i64 %i.m, 16                         ; 2 uses
  %i.o = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.n, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.q = phi i64 [ %i.l, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %.113 = phi i64 [ %i.n, %bb.c ], [ %i.h, %bb.a ] ; 3 uses
  %.1 = phi ptr [ %i.o, %bb.c ], [ %i.i, %bb.a ]  ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !118  ; 3 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = shl i64 %i.q, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.u = mul i64 %i.q, %.0.i
  %i.v = udiv i64 %i.u, %i.b
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = shl i64 %i.q, 1
  %i.y = mul i64 %i.s, %i.b
  %i.z = udiv i64 %i.y, %.0.i
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sroa.speculated.sink = phi i64 [ %.sroa.speculated, %bb.g ], [ %i.t, %bb.e ]
  %i.aa = udiv i64 -17, %.0.i
  %.sroa.speculated.i25 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %.sroa.speculated.sink) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i25, ptr %i.ab, align 8, !tbaa !116
  store i64 %.sroa.speculated.i25, ptr %i.e, align 8, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !122
  %reass.sub = sub i64 %.113, %.0.i
  %i.ad = add i64 %reass.sub, -16                 ; 3 uses
  %i.ae = urem i64 %i.ad, %.0.i                   ; 2 uses
  %i.af = sub nuw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 %i.af ; 4 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !123
  %1 = icmp eq i64 %i.ad, %i.ae
  br i1 %1, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not27.i.i = icmp eq i64 %i.af, %.0.i
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.026.i.i = getelementptr inbounds i8, ptr %i.ag, i64 %i.d
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %.022.lcssa.i.i = phi ptr [ %i.ag, %bb.i ], [ %.029.i.i, %.lr.ph.i.i ]
  store ptr %.022.lcssa.i.i, ptr %.1, align 8, !tbaa !123
  br label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.029.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.026.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02228.i.i = phi ptr [ %.029.i.i, %.lr.ph.i.i ], [ %i.ag, %.lr.ph.preheader.i.i ]
  store ptr %.02228.i.i, ptr %.029.i.i, align 8, !tbaa !123
  %.0.i.i = getelementptr inbounds i8, ptr %.029.i.i, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !254

_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit: ; preds = %bb.h, %._crit_edge.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !255
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 %.113 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !157
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !256
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !15
  store ptr %.1, ptr %i.ah, align 8, !tbaa !157
  store i64 %.113, ptr %i.al, align 8, !tbaa !15
  %i.ao = load ptr, ptr %.1, align 8, !tbaa !123
  store ptr %i.ao, ptr %0, align 8, !tbaa !122
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit
  %.016 = phi ptr [ %.1, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.016
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4poolINS_33default_user_allocator_new_deleteEE14ordered_mallocEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.biased.i.i = add i64 %i.c, 7
  %.0.i.i = and i64 %.biased.i.i, -8              ; 17 uses
  %i.d = udiv i64 -17, %.0.i.i                    ; 2 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %i.b, %1                         ; 2 uses
  %i.g = udiv i64 %i.f, %.0.i.i
  %i.h = urem i64 %i.f, %.0.i.i
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j               ; 7 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit, label %.preheader14.i.preheader

.preheader14.i.preheader:                         ; preds = %bb.b
  %i.m = add nsw i64 %i.k, -1                     ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.m, 0
  br label %.preheader14.i

.preheader14.i:                                   ; preds = %.preheader14.i.preheader, %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i
  %.012.i = phi ptr [ %.113.i, %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i ], [ %0, %.preheader14.i.preheader ] ; 3 uses
  %i.n = load ptr, ptr %.012.i, align 8, !tbaa !123 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader14.i
  br i1 %.not.i.i126, label %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.p = add i64 %i.q, -1                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.q = phi i64 [ %i.p, %.preheader.i ], [ %i.m, %.preheader.i.preheader ]
  %.012.i.i127 = phi ptr [ %i.r, %.preheader.i ], [ %i.n, %.preheader.i.preheader ] ; 3 uses
  %i.r = load ptr, ptr %.012.i.i127, align 8, !tbaa !123 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i127, i64 %.0.i.i
  %.not17.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not17.i.i, label %.preheader.i, label %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i

_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i: ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.113.i = phi ptr [ %.012.i, %.preheader.i.preheader ], [ %.012.i, %.preheader.i ], [ %.012.i.i127, %.lr.ph ] ; 3 uses
  %.2.i.i = phi ptr [ %i.n, %.preheader.i.preheader ], [ %i.r, %.preheader.i ], [ null, %.lr.ph ] ; 2 uses
  %i.t = icmp eq ptr %.2.i.i, null
  br i1 %i.t, label %.preheader14.i, label %bb.c, !llvm.loop !257

bb.c:                                             ; preds = %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i
  %i.u = load ptr, ptr %.113.i, align 8, !tbaa !123
  %i.v = load ptr, ptr %.2.i.i, align 8, !tbaa !123
  store ptr %i.v, ptr %.113.i, align 8, !tbaa !123
  br label %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit

_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit: ; preds = %.preheader14.i, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.b ], [ %i.u, %bb.c ], [ null, %.preheader14.i ] ; 2 uses
  %i.w = icmp ne ptr %.1.i, null
  %i.x = icmp eq i64 %1, 0
  %or.cond = or i1 %i.x, %i.w
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %.sroa.speculated82 = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.k) ; 4 uses
  store i64 %.sroa.speculated82, ptr %i.y, align 8, !tbaa !117
  %i.aa = mul i64 %.sroa.speculated82, %.0.i.i
  %i.ab = add i64 %i.aa, 16                       ; 2 uses
  %i.ac = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ab, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %i.z, %i.k
  br i1 %i.ae, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.af = lshr i64 %.sroa.speculated82, 1
  %.sroa.speculated79 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.k) ; 3 uses
  store i64 %.sroa.speculated79, ptr %i.y, align 8, !tbaa !117
  %i.ag = mul i64 %.sroa.speculated79, %.0.i.i
  %i.ah = add i64 %i.ag, 16                       ; 2 uses
  %i.ai = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ah, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ak = phi i64 [ %.sroa.speculated79, %bb.f ], [ %.sroa.speculated82, %bb.d ] ; 4 uses
  %.130 = phi i64 [ %i.ah, %bb.f ], [ %i.ab, %bb.d ] ; 5 uses
  %.128 = phi ptr [ %i.ai, %bb.f ], [ %i.ac, %bb.d ] ; 9 uses
  %i.al = icmp ugt i64 %i.ak, %i.k
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.am = mul i64 %i.k, %.0.i.i                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.128, i64 %i.am ; 8 uses
  %reass.sub = sub i64 %.130, %i.am
  %i.ao = add i64 %reass.sub, -16                 ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !122   ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = icmp ugt ptr %i.ap, %i.an
  %or.cond.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %bb.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.0.i.i37 = phi ptr [ %i.as, %.preheader.i.i ], [ %i.ap, %bb.h ] ; 4 uses
  %i.as = load ptr, ptr %.0.i.i37, align 8, !tbaa !123 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  %i.au = icmp ugt ptr %i.as, %i.an
  %or.cond12.i.i = or i1 %i.at, %i.au
  br i1 %or.cond12.i.i, label %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i, label %.preheader.i.i, !llvm.loop !258

bb.i:                                             ; preds = %bb.h
  %i.av = sub i64 %i.ao, %.0.i.i                  ; 3 uses
  %i.aw = urem i64 %i.av, %.0.i.i                 ; 2 uses
  %i.ax = sub nuw i64 %i.av, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax ; 4 uses
  store ptr %i.ap, ptr %i.ay, align 8, !tbaa !123
  %2 = icmp eq i64 %i.av, %i.aw
  br i1 %2, label %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = sub i64 0, %.0.i.i                      ; 2 uses
  %.not27.i.i.i = icmp eq i64 %i.ax, %.0.i.i
  br i1 %.not27.i.i.i, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %.026.i.i.i = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.029.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.026.i.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.02228.i.i.i = phi ptr [ %.029.i.i.i, %.lr.ph.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i ]
  store ptr %.02228.i.i.i, ptr %.029.i.i.i, align 8, !tbaa !123
  %.0.i.i.i = getelementptr inbounds i8, ptr %.029.i.i.i, i64 %i.az ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.an
  br i1 %.not.i.i.i, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.i.i.i, !llvm.loop !254

_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i: ; preds = %.preheader.i.i
  %i.ba = sub i64 %i.ao, %.0.i.i                  ; 3 uses
  %i.bb = urem i64 %i.ba, %.0.i.i                 ; 2 uses
  %i.bc = sub nuw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bc ; 4 uses
  store ptr %i.as, ptr %i.bd, align 8, !tbaa !123
  %3 = icmp eq i64 %i.ba, %i.bb
  br i1 %3, label %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i
  %i.be = sub i64 0, %.0.i.i                      ; 2 uses
  %.not27.i.i = icmp eq i64 %i.bc, %.0.i.i
  br i1 %.not27.i.i, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %.026.i.i = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.029.i.i = phi ptr [ %.0.i10.i, %.lr.ph.i.i ], [ %.026.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02228.i.i = phi ptr [ %.029.i.i, %.lr.ph.i.i ], [ %i.bd, %.lr.ph.preheader.i.i ]
  store ptr %.02228.i.i, ptr %.029.i.i, align 8, !tbaa !123
  %.0.i10.i = getelementptr inbounds i8, ptr %.029.i.i, i64 %i.be ; 2 uses
  %.not.i.i38 = icmp eq ptr %.0.i10.i, %i.an
  br i1 %.not.i.i38, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.i.i, !llvm.loop !254

_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %bb.k, %bb.j
  %.022.lcssa.i.sink.i = phi ptr [ %.029.i.i.i, %.lr.ph.i.i.i ], [ %i.ay, %bb.j ], [ %i.bd, %bb.k ], [ %.029.i.i, %.lr.ph.i.i ]
  %.0.i.lcssa.sink.ph.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %0, %bb.j ], [ %.0.i.i37, %bb.k ], [ %.0.i.i37, %.lr.ph.i.i ]
  store ptr %.022.lcssa.i.sink.i, ptr %i.an, align 8, !tbaa !123
  br label %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit

_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit: ; preds = %bb.i, %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i
  %.0.i.lcssa.sink.i = phi ptr [ %.0.i.i37, %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i ], [ %0, %bb.i ], [ %.0.i.lcssa.sink.ph.i, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i ]
  store ptr %i.an, ptr %.0.i.lcssa.sink.i, align 8, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !118 ; 3 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = shl i64 %i.ak, 1
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.bi = mul i64 %i.ak, %.0.i.i
  %i.bj = udiv i64 %i.bi, %i.b
  %i.bk = icmp ult i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = shl i64 %i.ak, 1
  %i.bm = mul i64 %i.bg, %i.b
  %i.bn = udiv i64 %i.bm, %.0.i.i
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bl)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o
  %.sroa.speculated.sink = phi i64 [ %.sroa.speculated, %bb.o ], [ %i.bh, %bb.m ]
  %.sroa.speculated.i43 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %.sroa.speculated.sink) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i43, ptr %i.bo, align 8, !tbaa !116
  store i64 %.sroa.speculated.i43, ptr %i.y, align 8, !tbaa !117
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !255 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  %i.bs = icmp ugt ptr %i.bq, %.128
  %or.cond94 = or i1 %i.br, %i.bs
  br i1 %or.cond94, label %.critedge, label %bb.q

.critedge:                                        ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.128, i64 %.130 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16
  store ptr %i.bq, ptr %i.bu, align 8, !tbaa !157
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !256
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !15
  store ptr %.128, ptr %i.bp, align 8, !tbaa !157
  store i64 %.130, ptr %i.bv, align 8, !tbaa !15
  br label %.thread

bb.q:                                             ; preds = %bb.p
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.sroa.047.0 = phi ptr [ %i.bq, %bb.q ], [ %i.ca, %bb.r ]
  %.sroa.10.0.in = phi ptr [ %.sroa.10.0..sroa_idx, %bb.q ], [ %i.cd, %bb.r ]
  %.sroa.10.0 = load i64, ptr %.sroa.10.0.in, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 %.sroa.10.0 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !157 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = icmp ugt ptr %i.ca, %.128
  %or.cond95 = or i1 %i.cb, %i.cc
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 3 uses
  br i1 %or.cond95, label %.critedge3, label %bb.r, !llvm.loop !259

.critedge3:                                       ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 -16
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %.128, i64 %.130 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -16
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !157
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -8
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !15
  store ptr %.128, ptr %i.ce, align 8, !tbaa !157
  store i64 %.130, ptr %i.cd, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit, %bb.f, %.critedge3, %.critedge, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.1.i, %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit ], [ %.128, %.critedge ], [ null, %bb.f ], [ %.128, %.critedge3 ], [ null, %bb.e ]
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !151 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt9bad_allocE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !150
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %.body, !inline_history !260

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #27, !inline_history !261
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #27, !inline_history !262
  br label %bb.d
end_hunk_0
