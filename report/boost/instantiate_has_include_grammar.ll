Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_has_include_grammar?download=true
inline.NumInlined: 2538
inline.NumDeleted: 1188
begin_hunk_0_@_ZNK5boost6spirit7classic7scannerINS_4wave4util20unput_queue_iteratorISt14_List_iteratorINS3_8cpplexer9lex_tokenINS4_13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcSD_EEPcEEEEEEEEESL_NSt7__cxx114listISL_NS_19fast_pool_allocatorISL_NS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEEEENS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyINS1_11alternativeINS1_5chlitINS3_8token_idEEES11_EENS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEdeEv:bb.a
.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i: ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  store ptr %i.s, ptr %i.h, align 8, !tbaa !106
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  %i.t = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  br label %_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev.exit

_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev.exit: ; preds = %_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEC2ERKSG_.exit.thread, %bb.b, %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE8_M_eraseESt14_List_iteratorISI_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !167
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !167
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #27
  %i.e = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58, !range !94, !noundef !71
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !98
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !99
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !101
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #28
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  store ptr %i.j, ptr %1, align 8, !tbaa !106
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.e) #27
  %i.g = load i8, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58, !range !94, !noundef !71
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 80, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !98
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !99
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !101
  br label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i

_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i: ; preds = %bb.f, %bb.e
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.i) #28
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit: ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  store ptr %i.l, ptr %i.e, align 8, !tbaa !106
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit, %bb.c, %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !104    ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !104
  %.not8 = icmp eq ptr %i.n, null
  br i1 %.not8, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = atomicrmw add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6insertISt20_List_const_iteratorISI_EvEESt14_List_iteratorISI_ESQ_T_ST_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 10 uses
  %5 = alloca %"class.boost::fast_pool_allocator.87", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58, !range !94, !noundef !71
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !98
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !99
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !101
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZNKSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE13get_allocatorEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #28
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNKSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE13get_allocatorEv.exit: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj8ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  call void @_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEC2ISt20_List_const_iteratorISI_EvEET_SR_RKSM_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.g = load ptr, ptr %4, align 8, !tbaa !74     ; 4 uses
  %i.h = icmp eq ptr %i.g, %4
  br i1 %i.h, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev.exit, label %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6spliceESt20_List_const_iteratorISI_ERSN_.exit

_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6spliceESt20_List_const_iteratorISI_ERSN_.exit: ; preds = %_ZNKSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE13get_allocatorEv.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !167
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !167
  store i64 0, ptr %i.i, align 8, !tbaa !167
  %.pre = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6spliceESt20_List_const_iteratorISI_ERSN_.exit, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i.i
  %.09.i.i = phi ptr [ %i.n, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i.i ], [ %.pre, %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6spliceESt20_List_const_iteratorISI_ERSN_.exit ] ; 4 uses
  %i.n = load ptr, ptr %.09.i.i, align 8, !tbaa !74 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #27
  %i.p = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58, !range !94, !noundef !71
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !98
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !99
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !101
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.r = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.r) #28
          to label %.noexc.i.i.i unwind label %bb.g

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i.i: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  store ptr %i.u, ptr %.09.i.i, align 8, !tbaa !106
  store ptr %.09.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !105
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  %.not.i.i = icmp eq ptr %i.n, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i.i, %_ZNKSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE13get_allocatorEv.exit, %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6spliceESt20_List_const_iteratorISI_ERSN_.exit
  %.sroa.05.016 = phi ptr [ %1, %_ZNKSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE13get_allocatorEv.exit ], [ %i.g, %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE6spliceESt20_List_const_iteratorISI_ERSN_.exit ], [ %i.g, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.sroa.05.016
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !345, !range !94, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = add i8 %i.g, -1                          ; 2 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !34
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !170  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !346  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %reass.sub = sub i64 %i.o, %i.n
  %i.p = add i64 %reass.sub, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #30
  br label %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit

_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = add i8 %i.t, -1                          ; 2 uses
  store i8 %i.u, ptr %i.s, align 1, !tbaa !34
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !170  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !346  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %reass.sub5 = sub i64 %i.ab, %i.aa
  %i.ac = add i64 %reass.sub5, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ac) #30
  br label %_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev.exit

_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev.exit: ; preds = %_ZN5boost8optionalINS_4wave4util13file_positionINS2_11flex_stringIcSt11char_traitsIcESaIcENS2_9CowStringINS2_22AllocatorStringStorageIcS7_EEPcEEEEEEED2Ev.exit, %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !34
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit

bb.g:                                             ; preds = %_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev.exit
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !170 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !346 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %reass.sub6 = sub i64 %i.ao, %i.an
  %i.ap = add i64 %reass.sub6, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ap) #30
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit

_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit: ; preds = %_ZN5boost4wave4util13file_positionINS1_11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS6_EEPcEEEEED2Ev.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEEC2ISt20_List_const_iteratorISI_EvEET_SR_RKSM_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58, !range !94, !noundef !71
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !98
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !99
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !101
  br label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i

_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEC2ISI_EERKNS0_IT_SK_SL_Lj32ELj0EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #28
  unreachable

_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEC2ISI_EERKNS0_IT_SK_SL_Lj32ELj0EEE.exit: ; preds = %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #27 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !348
  store ptr %0, ptr %0, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !349
  %.not4.i = icmp eq ptr %1, %2
  br i1 %.not4.i, label %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE22_M_initialize_dispatchISt20_List_const_iteratorISI_EEEvT_SR_St12__false_type.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEC2ISI_EERKNS0_IT_SK_SL_Lj32ELj0EEE.exit, %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE12emplace_backIJRKSI_EEERSI_DpOT_.exit.i
  %.sroa.01.05.i = phi ptr [ %i.o, %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE12emplace_backIJRKSI_EEERSI_DpOT_.exit.i ], [ %1, %_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEC2ISI_EERKNS0_IT_SK_SL_Lj32ELj0EEE.exit ] ; 2 uses
  %i.g = invoke noundef ptr @_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8allocateEm(i64 noundef 1)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !104  ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !104
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE12emplace_backIJRKSI_EEERSI_DpOT_.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = atomicrmw add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE12emplace_backIJRKSI_EEERSI_DpOT_.exit.i

_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE12emplace_backIJRKSI_EEERSI_DpOT_.exit.i: ; preds = %bb.d, %.noexc
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  %i.m = load i64, ptr %i.f, align 8, !tbaa !167
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.f, align 8, !tbaa !167
  %i.o = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %2
  br i1 %.not.i, label %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE22_M_initialize_dispatchISt20_List_const_iteratorISI_EEEvT_SR_St12__false_type.exit, label %.lr.ph.i, !llvm.loop !347

_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE22_M_initialize_dispatchISt20_List_const_iteratorISI_EEEvT_SR_St12__false_type.exit: ; preds = %_ZNSt7__cxx114listIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE12emplace_backIJRKSI_EEERSI_DpOT_.exit.i, %_ZN5boost19fast_pool_allocatorISt10_List_nodeINS_4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEC2ISI_EERKNS0_IT_SK_SL_Lj32ELj0EEE.exit
  ret void

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1110_List_baseIN5boost4wave8cpplexer9lex_tokenINS2_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEENS1_19fast_pool_allocatorISI_NS1_33default_user_allocator_new_deleteESt5mutexLj32ELj0EEEE11_M_put_nodeEPSt10_List_nodeISI_E.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  tail call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  %i.d = load i8, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58, !range !94, !noundef !71
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !98
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !99
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !100
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_23fast_pool_allocator_tagELj24ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !101
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
end_hunk_0
