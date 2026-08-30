Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_cpp_grammar?download=true
inline.NumInlined: 3566
inline.NumDeleted: 1741
begin_hunk_0_@_ZNSt11__copy_moveILb0ELb0ESt20forward_iterator_tagE8__copy_mIN5boost4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEESt15insert_iteratorINSt7__cxx114listISL_NS3_19fast_pool_allocatorISL_NS3_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEEET0_T_SX_SW_:bb.a
  store ptr %i.au, ptr %i.at, align 8, !tbaa !131
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt15insert_iteratorINSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEENS2_19fast_pool_allocatorISJ_NS2_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEaSERKSJ_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEdeEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt15insert_iteratorINSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEENS2_19fast_pool_allocatorISJ_NS2_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEaSERKSJ_.exit

_ZNSt15insert_iteratorINSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEENS2_19fast_pool_allocatorISJ_NS2_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEaSERKSJ_.exit: ; preds = %_ZNK5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEdeEv.exit, %bb.m
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef %.sroa.3.02) #27
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !458
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.c, align 8, !tbaa !458
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !464 ; 2 uses
  tail call void @_ZN5boost6spirit17iterator_policies15split_std_deque6uniqueINS_4wave8cpplexer9lex_tokenINS4_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEE9incrementINS0_10multi_passISt4pairINS5_4impl25lex_iterator_functor_shimISK_EEPNS5_19lex_input_interfaceISK_EEENS1_14default_policyINS1_11ref_countedENS1_8no_checkENS1_19split_functor_inputES2_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ba = tail call noundef zeroext i1 @_ZNK5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEeqERKSY_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.ba, label %._crit_edge, label %bb.b, !llvm.loop !465

._crit_edge:                                      ; preds = %_ZNSt15insert_iteratorINSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEENS2_19fast_pool_allocatorISJ_NS2_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEaSERKSJ_.exit, %bb.a
  %.sroa.3.0.lcssa = phi ptr [ %3, %bb.a ], [ %i.az, %_ZNSt15insert_iteratorINSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEENS2_19fast_pool_allocatorISJ_NS2_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEaSERKSJ_.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0.lcssa, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8allocateEm(i64 noundef %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  %i.a = icmp eq i64 %0, 1
  %i.b = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !121, !range !122, !noundef !123
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !124
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !128
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !130
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i: ; preds = %bb.c, %bb.b
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #28
  unreachable

_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !132 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7details4pool5guardISt5mutexEC2ERS3_.exit.i
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !133
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !132
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
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !124
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !128
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !130
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %1, align 8, !tbaa !66
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
  store i32 -1, ptr %i.e, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 -1, ptr %i.f, align 4, !tbaa !172
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt9bad_allocEE, ptr nonnull @_ZN5boost10wrapexceptISt9bad_allocED2Ev) #28
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4poolINS_33default_user_allocator_new_deleteEE18malloc_need_resizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.biased.i = add i64 %i.c, 7
  %.0.i = and i64 %.biased.i, -8                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !129
  %i.f = mul i64 %.0.i, %i.e
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.g, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.j, 1                         ; 2 uses
  store i64 %i.l, ptr %i.d, align 8, !tbaa !129
  %i.m = load i64, ptr %i.a, align 8, !tbaa !15
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8)
  %.biased.i21 = add i64 %i.n, 7
  %.0.i22 = and i64 %.biased.i21, -8              ; 2 uses
  %i.o = mul i64 %.0.i22, %i.l
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.p, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.115 = phi i64 [ %.0.i22, %bb.c ], [ %.0.i, %bb.a ] ; 7 uses
  %.113 = phi i64 [ %i.p, %bb.c ], [ %i.g, %bb.a ] ; 3 uses
  %.1 = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.a ]  ; 7 uses
  %i.s = sub i64 0, %.115                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !130  ; 3 uses
  %.not = icmp eq i64 %i.u, 0
  %i.v = load i64, ptr %i.d, align 8, !tbaa !129  ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = shl i64 %i.v, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.y = mul i64 %i.v, %.115
  %i.z = udiv i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.z, %i.u
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.v, 1
  %i.ac = mul i64 %i.w, %i.u
  %i.ad = udiv i64 %i.ac, %.115
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ab)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sroa.speculated.sink = phi i64 [ %.sroa.speculated, %bb.g ], [ %i.x, %bb.e ]
  %i.ae = tail call i64 @llvm.umax.i64(i64 %i.w, i64 8)
  %.biased.i.i.i23 = add i64 %i.ae, 7
  %.0.i.i.i24 = and i64 %.biased.i.i.i23, -8
  %i.af = udiv i64 -17, %.0.i.i.i24
  %.sroa.speculated.i25 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.speculated.sink) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i25, ptr %i.ag, align 8, !tbaa !128
  store i64 %.sroa.speculated.i25, ptr %i.d, align 8, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ah = load ptr, ptr %0, align 8, !tbaa !132
  %reass.sub = sub i64 %.113, %.115
  %i.ai = add i64 %reass.sub, -16                 ; 3 uses
  %i.aj = urem i64 %i.ai, %.115
  %i.ak = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ak ; 4 uses
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !133
  %1 = icmp ult i64 %i.ai, %.115
  br i1 %1, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not27.i.i = icmp eq i64 %i.ak, %.115
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.026.i.i = getelementptr inbounds i8, ptr %i.al, i64 %i.s
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %.022.lcssa.i.i = phi ptr [ %i.al, %bb.i ], [ %.029.i.i, %.lr.ph.i.i ]
  store ptr %.022.lcssa.i.i, ptr %.1, align 8, !tbaa !133
  br label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.029.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.026.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02228.i.i = phi ptr [ %.029.i.i, %.lr.ph.i.i ], [ %i.al, %.lr.ph.preheader.i.i ]
  store ptr %.02228.i.i, ptr %.029.i.i, align 8, !tbaa !133
  %.0.i.i = getelementptr inbounds i8, ptr %.029.i.i, i64 %i.s ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !466

_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit: ; preds = %bb.h, %._crit_edge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !467
  %i.ao = getelementptr inbounds nuw i8, ptr %.1, i64 %.113 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !180
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !468
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !15
  store ptr %.1, ptr %i.am, align 8, !tbaa !180
  store i64 %.113, ptr %i.aq, align 8, !tbaa !15
  %i.at = load ptr, ptr %.1, align 8, !tbaa !133
  store ptr %i.at, ptr %0, align 8, !tbaa !132
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.biased.i.i = add i64 %i.c, 7
  %.0.i.i = and i64 %.biased.i.i, -8              ; 19 uses
  %i.d = udiv i64 -17, %.0.i.i
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
  %i.n = load ptr, ptr %.012.i, align 8, !tbaa !133 ; 3 uses
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
  %.011.i.i127 = phi ptr [ %i.r, %.preheader.i ], [ %i.n, %.preheader.i.preheader ] ; 3 uses
  %i.r = load ptr, ptr %.011.i.i127, align 8, !tbaa !133 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i127, i64 %.0.i.i
  %.not17.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not17.i.i, label %.preheader.i, label %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i

_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i: ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.113.i = phi ptr [ %.012.i, %.preheader.i.preheader ], [ %.012.i, %.preheader.i ], [ %.011.i.i127, %.lr.ph ] ; 3 uses
  %.2.i.i = phi ptr [ %i.n, %.preheader.i.preheader ], [ %i.r, %.preheader.i ], [ null, %.lr.ph ] ; 2 uses
  %i.t = icmp eq ptr %.2.i.i, null
  br i1 %i.t, label %.preheader14.i, label %bb.c, !llvm.loop !469

bb.c:                                             ; preds = %_ZN5boost25simple_segregated_storageImE12try_malloc_nERPvmm.exit.i
  %i.u = load ptr, ptr %.113.i, align 8, !tbaa !133
  %i.v = load ptr, ptr %.2.i.i, align 8, !tbaa !133
  store ptr %i.v, ptr %.113.i, align 8, !tbaa !133
  br label %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit

_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit: ; preds = %.preheader14.i, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.b ], [ %i.u, %bb.c ], [ null, %.preheader14.i ] ; 2 uses
  %i.w = icmp ne ptr %.1.i, null
  %i.x = icmp eq i64 %1, 0
  %or.cond = or i1 %i.x, %i.w
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %.sroa.speculated82 = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.k) ; 2 uses
  store i64 %.sroa.speculated82, ptr %i.y, align 8, !tbaa !129
  %i.aa = mul i64 %.sroa.speculated82, %.0.i.i
  %i.ab = add i64 %i.aa, 16                       ; 2 uses
  %i.ac = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ab, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !129 ; 2 uses
  %i.af = icmp ult i64 %i.k, %i.ae
  br i1 %i.af, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ag = lshr i64 %i.ae, 1
  %.sroa.speculated79 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.k) ; 2 uses
  store i64 %.sroa.speculated79, ptr %i.y, align 8, !tbaa !129
  %i.ah = mul i64 %.sroa.speculated79, %.0.i.i
  %i.ai = add i64 %i.ah, 16                       ; 2 uses
  %i.aj = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ai, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.130 = phi i64 [ %i.ai, %bb.f ], [ %i.ab, %bb.d ] ; 5 uses
  %.128 = phi ptr [ %i.aj, %bb.f ], [ %i.ac, %bb.d ] ; 9 uses
  %i.al = load i64, ptr %i.y, align 8, !tbaa !129 ; 4 uses
  %i.am = icmp ugt i64 %i.al, %i.k
  br i1 %i.am, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = mul i64 %i.k, %.0.i.i                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.128, i64 %i.an ; 8 uses
  %reass.sub = sub i64 %.130, %i.an
  %i.ap = add i64 %reass.sub, -16                 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !132   ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = icmp ugt ptr %i.aq, %i.ao
  %or.cond.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i, label %bb.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.0.i.i37 = phi ptr [ %i.at, %.preheader.i.i ], [ %i.aq, %bb.h ] ; 4 uses
  %i.at = load ptr, ptr %.0.i.i37, align 8, !tbaa !133 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = icmp ugt ptr %i.at, %i.ao
  %or.cond12.i.i = or i1 %i.au, %i.av
  br i1 %or.cond12.i.i, label %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i, label %.preheader.i.i, !llvm.loop !470

bb.i:                                             ; preds = %bb.h
  %i.aw = sub i64 %i.ap, %.0.i.i                  ; 3 uses
  %i.ax = urem i64 %i.aw, %.0.i.i
  %i.ay = sub nuw i64 %i.aw, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 4 uses
  store ptr %i.aq, ptr %i.az, align 8, !tbaa !133
  %2 = icmp ult i64 %i.aw, %.0.i.i
  br i1 %2, label %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = sub i64 0, %.0.i.i                      ; 2 uses
  %.not27.i.i.i = icmp eq i64 %i.ay, %.0.i.i
  br i1 %.not27.i.i.i, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %.026.i.i.i = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.029.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.026.i.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.02228.i.i.i = phi ptr [ %.029.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %.lr.ph.preheader.i.i.i ]
  store ptr %.02228.i.i.i, ptr %.029.i.i.i, align 8, !tbaa !133
  %.0.i.i.i = getelementptr inbounds i8, ptr %.029.i.i.i, i64 %i.ba ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.ao
  br i1 %.not.i.i.i, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.i.i.i, !llvm.loop !466

_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i: ; preds = %.preheader.i.i
  %i.bb = sub i64 %i.ap, %.0.i.i                  ; 3 uses
  %i.bc = urem i64 %i.bb, %.0.i.i
  %i.bd = sub nuw i64 %i.bb, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bd ; 4 uses
  store ptr %i.at, ptr %i.be, align 8, !tbaa !133
  %3 = icmp ult i64 %i.bb, %.0.i.i
  br i1 %3, label %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i
  %i.bf = sub i64 0, %.0.i.i                      ; 2 uses
  %.not27.i.i = icmp eq i64 %i.bd, %.0.i.i
  br i1 %.not27.i.i, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %.026.i.i = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.029.i.i = phi ptr [ %.0.i10.i, %.lr.ph.i.i ], [ %.026.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02228.i.i = phi ptr [ %.029.i.i, %.lr.ph.i.i ], [ %i.be, %.lr.ph.preheader.i.i ]
  store ptr %.02228.i.i, ptr %.029.i.i, align 8, !tbaa !133
  %.0.i10.i = getelementptr inbounds i8, ptr %.029.i.i, i64 %i.bf ; 2 uses
  %.not.i.i38 = icmp eq ptr %.0.i10.i, %i.ao
  br i1 %.not.i.i38, label %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i, label %.lr.ph.i.i, !llvm.loop !466

_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %bb.k, %bb.j
  %.022.lcssa.i.sink.i = phi ptr [ %.029.i.i.i, %.lr.ph.i.i.i ], [ %i.az, %bb.j ], [ %i.be, %bb.k ], [ %.029.i.i, %.lr.ph.i.i ]
  %.0.i.lcssa.sink.ph.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %0, %bb.j ], [ %.0.i.i37, %bb.k ], [ %.0.i.i37, %.lr.ph.i.i ]
  store ptr %.022.lcssa.i.sink.i, ptr %i.ao, align 8, !tbaa !133
  br label %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit

_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit: ; preds = %bb.i, %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i
  %.0.i.lcssa.sink.i = phi ptr [ %.0.i.i37, %_ZN5boost25simple_segregated_storageImE9find_prevEPv.exit.i ], [ %0, %bb.i ], [ %.0.i.lcssa.sink.ph.i, %_ZN5boost25simple_segregated_storageImE9add_blockEPvmm.exit.sink.split.i ]
  store ptr %i.ao, ptr %.0.i.lcssa.sink.i, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost25simple_segregated_storageImE17add_ordered_blockEPvmm.exit, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !130 ; 3 uses
  %.not = icmp eq i64 %i.bh, 0
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = shl i64 %i.al, 1
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.bk = mul i64 %i.al, %.0.i.i
  %i.bl = udiv i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bl, %i.bh
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = shl i64 %i.al, 1
  %i.bo = mul i64 %i.bi, %i.bh
  %i.bp = udiv i64 %i.bo, %.0.i.i
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o
  %.sroa.speculated.sink = phi i64 [ %.sroa.speculated, %bb.o ], [ %i.bj, %bb.m ]
  %i.bq = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 8)
  %.biased.i.i.i41 = add i64 %i.bq, 7
  %.0.i.i.i42 = and i64 %.biased.i.i.i41, -8
  %i.br = udiv i64 -17, %.0.i.i.i42
  %.sroa.speculated.i43 = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %.sroa.speculated.sink) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.speculated.i43, ptr %i.bs, align 8, !tbaa !128
  store i64 %.sroa.speculated.i43, ptr %i.y, align 8, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !467 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  %i.bw = icmp ugt ptr %i.bu, %.128
  %or.cond94 = or i1 %i.bv, %i.bw
  br i1 %or.cond94, label %.critedge, label %bb.q

.critedge:                                        ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.128, i64 %.130 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !180
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !468
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 -8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !15
  store ptr %.128, ptr %i.bt, align 8, !tbaa !180
  store i64 %.130, ptr %i.bz, align 8, !tbaa !15
  br label %.thread

bb.q:                                             ; preds = %bb.p
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.sroa.10.0.in = phi ptr [ %.sroa.10.0..sroa_idx, %bb.q ], [ %i.ch, %bb.r ]
  %.sroa.047.0 = phi ptr [ %i.bu, %bb.q ], [ %i.ce, %bb.r ]
  %.sroa.10.0 = load i64, ptr %.sroa.10.0.in, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 %.sroa.10.0 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !180 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  %i.cg = icmp ugt ptr %i.ce, %.128
  %or.cond95 = or i1 %i.cf, %i.cg
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 3 uses
  br i1 %or.cond95, label %.critedge3, label %bb.r, !llvm.loop !471

.critedge3:                                       ; preds = %bb.r
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %.128, i64 %.130 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -16
  store ptr %i.ce, ptr %i.cl, align 8, !tbaa !180
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -8
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !15
  store ptr %.128, ptr %i.ci, align 8, !tbaa !180
  store i64 %.130, ptr %i.ch, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit, %bb.f, %.critedge3, %.critedge, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.1.i, %_ZN5boost25simple_segregated_storageImE8malloc_nEmm.exit ], [ %.128, %.critedge ], [ null, %bb.f ], [ %.128, %.critedge3 ], [ null, %bb.e ]
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !174 ; 0 uses

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
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !173
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %.body, !inline_history !472

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #27, !inline_history !473
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #31
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
end_hunk_0
