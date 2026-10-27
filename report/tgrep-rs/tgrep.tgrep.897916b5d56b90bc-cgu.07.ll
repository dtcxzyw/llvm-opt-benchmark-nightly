Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.07?download=true
inline.NumInlined: 1120
inline.NumDeleted: 506
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs2_Cs8sO4Nh65sHq_10rayon_coreNtB6_17ThreadPoolBuilder11thread_nameNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds3_0EB1d_:bb.a
bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #19
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  store ptr @1, ptr %i.b, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs8sO4Nh65sHq_10rayon_core17ThreadPoolBuilderECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #25
          to label %bb.i unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.d, %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  store ptr @1, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !28, !inline_history !27 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !28, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !28, !noundef !5
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !28
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef dereferenceable_or_null(2) null), !inline_history !29 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB19_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB2b_E3get0jECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB19_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB2b_E9put_value0jECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !31 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtNtB3j_6marker4SendNtB48_13RefUnwindSafeNtB4N_4SyncEL_EE3get0jECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !32 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtNtB3j_6marker4SendNtB48_13RefUnwindSafeNtB4N_4SyncEL_EE9put_value0jECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !33 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, ptr } @_RINvMs4_Cs30WoLBgco1_6ignoreINtB6_5MatchRNtNtB6_9gitignore4GlobE3mapNtNtB6_9overrides4GlobNCINvMs_B16_NtB16_8Override7matchedReE0ECsbNLsQi0JuJ4_5tgrep(i64 noundef range(i64 0, 3) %0, ptr %1) unnamed_addr #1 {
.sink.split:
  %i.a = icmp eq i64 %0, 0
  %spec.select = select i1 %i.a, ptr undef, ptr %1
  %i.b = insertvalue { i64, ptr } poison, i64 %0, 0
  %i.c = insertvalue { i64, ptr } %i.b, ptr %spec.select, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvMNtB8_11thread_poolNtB1h_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB3K_5error5ErrorEE0B34_EB27_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 10 uses
  %.sroa.7.i = alloca [104 x i8], align 8         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !noalias !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !44
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvMNtB7_11thread_poolNtB2t_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB4W_5error5ErrorEE0B4g_E00B4g_ENtB5_3Job7executeB3j_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !noalias !44

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !44, !noundef !5
  invoke void @_RNvMs3_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.e, !noalias !44

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !44 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !44 ; 3 uses
  %i.g = icmp ne i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808 ; 2 uses
  %i.i = icmp ult i64 %i.h, 3
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.d [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5f_5error5ErrorEE0B4z_E0B4z_EB3C_.exit.i
    i64 2, label %.noexc6.i.i.i
  ], !prof !9

bb.d:                                             ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !44
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.k = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.l = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l) #28, !noalias !44
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvMNtBG_11thread_poolNtB2X_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5a_5error5ErrorEE0B4K_E00B4K_EEB3N_.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB1K_5error5ErrorEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvMNtBG_11thread_poolNtB2X_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5a_5error5ErrorEE0B4K_E00B4K_EEB3N_.exit.i.i.i unwind label %bb.f, !noalias !44

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !44
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5f_5error5ErrorEE0B4z_E0B4z_EB3C_.exit.i: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i.i.i, i64 104, i1 false), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -2
  br i1 %i.n, label %bb.g, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2I_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5b_5error5ErrorEE0B4v_E0B4v_EB3y_.exit, !prof !8

bb.g:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5f_5error5ErrorEE0B4z_E0B4z_EB3C_.exit.i
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !noalias !47
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2I_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5b_5error5ErrorEE0B4v_E0B4v_EB3y_.exit: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB5f_5error5ErrorEE0B4z_E0B4z_EB3C_.exit.i
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !43
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !43
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.i, i64 104, i1 false), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvMNtB8_11thread_poolNtB1h_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB32_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2Y_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4D_11FileVersionEEE0B2X_EB25_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !noalias !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !59
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvMNtB7_11thread_poolNtB2t_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4e_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4a_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5P_11FileVersionEEE0B49_E00B49_ENtB5_3Job7executeB3h_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !noalias !59

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !59, !noundef !5
  invoke void @_RNvMs3_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.e, !noalias !59

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !59 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !59 ; 3 uses
  %i.g = icmp ne i64 %.sroa.3.0.copyload.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %.sroa.3.0.copyload.i.i.i, -9223372036854775808
  %i.i = icmp slt i64 %.sroa.3.0.copyload.i.i.i, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.d [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4x_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4t_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB68_11FileVersionEEE0B4s_E0B4s_EB3A_.exit.i
    i64 2, label %.noexc6.i.i.i
  ], !prof !9

bb.d:                                             ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !59
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.k = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.l = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l) #28, !noalias !59
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvMNtBG_11thread_poolNtB2X_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4I_6string6StringINtNtB4_6option6OptionTIB4E_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB63_11FileVersionEEE0B4D_E00B4D_EEB3L_.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1p_6string6StringINtNtB4_6option6OptionTIB1l_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2K_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvMNtBG_11thread_poolNtB2X_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4I_6string6StringINtNtB4_6option6OptionTIB4E_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB63_11FileVersionEEE0B4D_E00B4D_EEB3L_.exit.i.i.i unwind label %bb.f, !noalias !59

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !59
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4x_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4t_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB68_11FileVersionEEE0B4s_E0B4s_EB3A_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  %i.n = icmp eq i64 %.sroa.3.0.copyload.i.i.i, -1
  br i1 %i.n, label %bb.g, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2I_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4t_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB64_11FileVersionEEE0B4o_E0B4o_EB3w_.exit, !prof !8

bb.g:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4x_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4t_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB68_11FileVersionEEE0B4s_E0B4s_EB3A_.exit.i
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !noalias !61
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2I_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4t_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB64_11FileVersionEEE0B4o_E0B4o_EB3w_.exit: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvMNtBY_11thread_poolNtB2M_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4x_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4t_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB68_11FileVersionEEE0B4s_E0B4s_EB3A_.exit.i
  store i64 %.sroa.3.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !58
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !58
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1N_10filter_map17FilterMapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB5p_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB6V_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB1G_s_0INtB4E_13CollectResultB5k_EB9c_E0TB9c_B9c_EEB87_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73
  store ptr %i.b, ptr %i.a, align 8, !noalias !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !noalias !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !73
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2Z_10filter_map17FilterMapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB6B_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB87_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2S_s_0INtB5Q_13CollectResultB6w_EBao_E0TBao_Bao_EE00BaV_ENtB5_3Job7executeB9j_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !73, !inline_history !71

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !73, !noundef !5
  invoke void @_RNvMs3_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !73, !inline_history !71

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !73
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !73 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerNtNtBa_4path7PathBufEINtNtB3e_10filter_map17FilterMapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB6B_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB87_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB37_s_0INtB5Q_13CollectResultB6w_EBao_E0TBao_Bao_EE0BaV_EB9j_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !9

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !73, !inline_history !71
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #28, !noalias !73, !inline_history !71
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3t_10filter_map17FilterMapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB75_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB8l_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB3m_s_0INtB6k_13CollectResultB70_EBaC_E0TBaC_BaC_EE00Bb9_EEB9x_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2u_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3K_11FileVersionEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3t_10filter_map17FilterMapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB75_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB8l_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB3m_s_0INtB6k_13CollectResultB70_EBaC_E0TBaC_BaC_EE00Bb9_EEB9x_.exit.i.i.i unwind label %bb.e, !noalias !73, !inline_history !71

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !73, !inline_history !71
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerNtNtBa_4path7PathBufEINtNtB3e_10filter_map17FilterMapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB6B_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB87_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB37_s_0INtB5Q_13CollectResultB6w_EBao_E0TBao_Bao_EE0BaV_EB9j_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !72
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1N_10filter_map17FilterMapConsumerNtNtB1N_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB1G_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6r_3vec3VecTNtNtB6r_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB7o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB8N_11FileVersionEEEB6k_E0TB6k_B6k_EEB5f_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  store ptr %i.b, ptr %i.a, align 8, !noalias !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !noalias !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !87
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2Z_10filter_map17FilterMapConsumerNtNtB2Z_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2S_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7D_3vec3VecTNtNtB7D_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB8A_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9Z_11FileVersionEEEB7w_E0TB7w_B7w_EE00Bba_ENtB5_3Job7executeB6r_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !87, !inline_history !85

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !87, !noundef !5
  invoke void @_RNvMs3_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !87, !inline_history !85

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !87
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !87 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerNtNtBa_4path7PathBufEINtNtB3e_10filter_map17FilterMapConsumerNtNtB3e_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB37_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7D_3vec3VecTNtNtB7D_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB8A_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9Z_11FileVersionEEEB7w_E0TB7w_B7w_EE0Bba_EB6r_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !9

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !87, !inline_history !85
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #28, !noalias !87, !inline_history !85
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3t_10filter_map17FilterMapConsumerNtNtB3t_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB3m_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB87_3vec3VecTNtNtB87_6string6StringINtNtB4_6option6OptionTIB94_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtBad_11FileVersionEEEB80_E0TB80_B80_EE00Bbo_EEB6V_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringINtNtB4_6option6OptionTIB2p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3y_11FileVersionEEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3t_10filter_map17FilterMapConsumerNtNtB3t_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB3m_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB87_3vec3VecTNtNtB87_6string6StringINtNtB4_6option6OptionTIB94_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtBad_11FileVersionEEEB80_E0TB80_B80_EE00Bbo_EEB6V_.exit.i.i.i unwind label %bb.e, !noalias !87, !inline_history !85

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !87, !inline_history !85
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerNtNtBa_4path7PathBufEINtNtB3e_10filter_map17FilterMapConsumerNtNtB3e_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB37_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7D_3vec3VecTNtNtB7D_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB8A_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9Z_11FileVersionEEEB7w_E0TB7w_B7w_EE0Bba_EB6r_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !86
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB3s_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB1N_3map11MapConsumerIB53_INtNtB1N_10while_some17WhileSomeConsumerINtNtNtB1N_7collect8consumer15CollectConsumerNtB4k_16FileSearchResultEENCINvNvXs2_NtB1P_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1N_20FromParallelIteratorIB7J_ppEE13from_par_iter2okB6U_B3o_E0ENCNvB4k_13handle_searchs2_0EE0NCB1G_s_0INtB6e_13CollectResultB6U_EBa5_E0TBa5_Ba5_EEB4m_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr %i.b, ptr %i.a, align 8, !noalias !101
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !noalias !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !101
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4E_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2Z_3map11MapConsumerIB6f_INtNtB2Z_10while_some17WhileSomeConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerNtB5w_16FileSearchResultEENCINvNvXs2_NtB31_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB8V_ppEE13from_par_iter2okB86_B4A_E0ENCNvB5w_13handle_searchs2_0EE0NCB2S_s_0INtB7q_13CollectResultB86_EBbh_E0TBbh_Bbh_EE00BbO_ENtB5_3Job7executeB5y_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !101, !inline_history !99

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !101, !noundef !5
  invoke void @_RNvMs3_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !101, !inline_history !99

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !101 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4T_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3e_3map11MapConsumerIB6u_INtNtB3e_10while_some17WhileSomeConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtB5L_16FileSearchResultEENCINvNvXs2_NtB3g_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB3e_20FromParallelIteratorIB9a_ppEE13from_par_iter2okB8l_B4P_E0ENCNvB5L_13handle_searchs2_0EE0NCB37_s_0INtB7F_13CollectResultB8l_EBbw_E0TBbw_Bbw_EE0Bc3_EB5N_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !9

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !101, !inline_history !99
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #28, !noalias !101, !inline_history !99
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB58_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3t_3map11MapConsumerIB6J_INtNtB3t_10while_some17WhileSomeConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtB60_16FileSearchResultEENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB9p_ppEE13from_par_iter2okB8A_B54_E0ENCNvB60_13handle_searchs2_0EE0NCB3m_s_0INtB7U_13CollectResultB8A_EBbv_E0TBbv_Bbv_EE00Bc2_EEB62_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEB1l_EEEB2t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB58_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3t_3map11MapConsumerIB6J_INtNtB3t_10while_some17WhileSomeConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtB60_16FileSearchResultEENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB9p_ppEE13from_par_iter2okB8A_B54_E0ENCNvB60_13handle_searchs2_0EE0NCB3m_s_0INtB7U_13CollectResultB8A_EBbv_E0TBbv_Bbv_EE00Bc2_EEB62_.exit.i.i.i unwind label %bb.e, !noalias !101, !inline_history !99

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !101, !inline_history !99
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4T_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3e_3map11MapConsumerIB6u_INtNtB3e_10while_some17WhileSomeConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtB5L_16FileSearchResultEENCINvNvXs2_NtB3g_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB3e_20FromParallelIteratorIB9a_ppEE13from_par_iter2okB8l_B4P_E0ENCNvB5L_13handle_searchs2_0EE0NCB37_s_0INtB7F_13CollectResultB8l_EBbw_E0TBbw_Bbw_EE0Bc3_EB5N_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !100
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB3s_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB1N_3map11MapConsumerIB53_INtNtB1N_10while_some17WhileSomeConsumerNtNtB1N_6extend15ListVecConsumerENCINvNvXs2_NtB1P_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1N_20FromParallelIteratorIB77_ppEE13from_par_iter2okNtB4k_16FileSearchResultB3o_E0ENCNvB4k_13handle_searchs2_0EE0NCB1G_s_0INtNtNtB3s_11collections11linked_list10LinkedListINtNtB3s_3vec3VecB8F_EEB9N_E0TB9N_B9N_EEB4m_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store ptr %i.b, ptr %i.a, align 8, !noalias !115
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !noalias !116
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !115
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4E_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2Z_3map11MapConsumerIB6f_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB8j_ppEE13from_par_iter2okNtB5w_16FileSearchResultB4A_E0ENCNvB5w_13handle_searchs2_0EE0NCB2S_s_0INtNtNtB4E_11collections11linked_list10LinkedListINtNtB4E_3vec3VecB9R_EEBaZ_E0TBaZ_BaZ_EE00Bcf_ENtB5_3Job7executeB5y_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !115, !inline_history !113

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !115, !noundef !5
  invoke void @_RNvMs3_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !115, !inline_history !113

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !115
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !115 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4T_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3e_3map11MapConsumerIB6u_INtNtB3e_10while_some17WhileSomeConsumerNtNtB3e_6extend15ListVecConsumerENCINvNvXs2_NtB3g_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB3e_20FromParallelIteratorIB8y_ppEE13from_par_iter2okNtB5L_16FileSearchResultB4P_E0ENCNvB5L_13handle_searchs2_0EE0NCB37_s_0INtNtNtB4T_11collections11linked_list10LinkedListINtNtB4T_3vec3VecBa6_EEBbe_E0TBbe_Bbe_EE0Bcu_EB5N_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !9

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !115, !inline_history !113
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #28, !noalias !115, !inline_history !113
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB58_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3t_3map11MapConsumerIB6J_INtNtB3t_10while_some17WhileSomeConsumerNtNtB3t_6extend15ListVecConsumerENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB8N_ppEE13from_par_iter2okNtB60_16FileSearchResultB54_E0ENCNvB60_13handle_searchs2_0EE0NCB3m_s_0INtNtNtB58_11collections11linked_list10LinkedListINtNtB58_3vec3VecBa5_EEBbd_E0TBbd_Bbd_EE00Bct_EEB62_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1l_EEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB58_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3t_3map11MapConsumerIB6J_INtNtB3t_10while_some17WhileSomeConsumerNtNtB3t_6extend15ListVecConsumerENCINvNvXs2_NtB3v_6resultINtNtB4_6result6ResultppEINtB3t_20FromParallelIteratorIB8N_ppEE13from_par_iter2okNtB60_16FileSearchResultB54_E0ENCNvB60_13handle_searchs2_0EE0NCB3m_s_0INtNtNtB58_11collections11linked_list10LinkedListINtNtB58_3vec3VecBa5_EEBbd_E0TBbd_Bbd_EE00Bct_EEB62_.exit.i.i.i unwind label %bb.e, !noalias !115, !inline_history !113

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !115, !inline_history !113
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtCs8sO4Nh65sHq_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4T_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3e_3map11MapConsumerIB6u_INtNtB3e_10while_some17WhileSomeConsumerNtNtB3e_6extend15ListVecConsumerENCINvNvXs2_NtB3g_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB3e_20FromParallelIteratorIB8y_ppEE13from_par_iter2okNtB5L_16FileSearchResultB4P_E0ENCNvB5L_13handle_searchs2_0EE0NCB37_s_0INtNtNtB4T_11collections11linked_list10LinkedListINtNtB4T_3vec3VecBa6_EEBbe_E0TBbe_Bbe_EE0Bcu_EB5N_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !114
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvMNtB8_11thread_poolNtB1i_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB3L_5error5ErrorEE0B35_EB28_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvMNtB7_11thread_poolNtB2c_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB4F_5error5ErrorEE0B3Z_E0B3Z_ENtB5_3Job7executeB32_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808 ; 2 uses
  %i.l = icmp ult i64 %i.k, 3
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc11
  ], !prof !9

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !123
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !alias.scope !123
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx15, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvMNtBG_11thread_poolNtB2F_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB4S_5error5ErrorEE0B4s_E0B4s_EEB3v_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB1K_5error5ErrorEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvMNtBG_11thread_poolNtB2F_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB4S_5error5ErrorEE0B4s_E0B4s_EEB3v_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvMNtB8_11thread_poolNtB1i_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB33_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2Z_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4E_11FileVersionEEE0B2Y_EB26_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 -9223372036854775808, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvMNtB7_11thread_poolNtB2c_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB3X_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB3T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5y_11FileVersionEEE0B3S_E0B3S_ENtB5_3Job7executeB30_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  %i.j = icmp ne i64 %.sroa.3.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.sroa.3.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.3.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc11
  ], !prof !9

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  store i64 %.sroa.3.0.copyload, ptr %0, align 8, !alias.scope !129
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvMNtBG_11thread_poolNtB2F_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4q_6string6StringINtNtB4_6option6OptionTIB4m_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5L_11FileVersionEEE0B4l_E0B4l_EEB3t_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1p_6string6StringINtNtB4_6option6OptionTIB1l_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2K_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvMNtBG_11thread_poolNtB2F_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4q_6string6StringINtNtB4_6option6OptionTIB4m_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5L_11FileVersionEEE0B4l_E0B4l_EEB3t_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1O_10filter_map17FilterMapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB5q_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB6W_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB1H_s_0INtB4F_13CollectResultB5l_EB9d_E0TB9d_B9d_EEB88_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2I_10filter_map17FilterMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB6k_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB7Q_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2B_s_0INtB5z_13CollectResultB6f_EBa7_E0TBa7_Ba7_EE0BaE_ENtB5_3Job7executeB92_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !135
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3b_10filter_map17FilterMapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB6N_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB83_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB34_s_0INtB62_13CollectResultB6I_EBak_E0TBak_Bak_EE0BaR_EEB9f_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2u_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3K_11FileVersionEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3b_10filter_map17FilterMapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB6N_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB83_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB34_s_0INtB62_13CollectResultB6I_EBak_E0TBak_Bak_EE0BaR_EEB9f_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1O_10filter_map17FilterMapConsumerNtNtB1O_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB1H_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6s_3vec3VecTNtNtB6s_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB7p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB8O_11FileVersionEEEB6l_E0TB6l_B6l_EEB5g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2I_10filter_map17FilterMapConsumerNtNtB2I_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2B_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7m_3vec3VecTNtNtB7m_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB8j_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9I_11FileVersionEEEB7f_E0TB7f_B7f_EE0BaT_ENtB5_3Job7executeB6a_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !141
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3b_10filter_map17FilterMapConsumerNtNtB3b_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB34_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7P_3vec3VecTNtNtB7P_6string6StringINtNtB4_6option6OptionTIB8M_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9V_11FileVersionEEEB7I_E0TB7I_B7I_EE0Bb6_EEB6D_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringINtNtB4_6option6OptionTIB2p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3y_11FileVersionEEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3b_10filter_map17FilterMapConsumerNtNtB3b_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB34_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7P_3vec3VecTNtNtB7P_6string6StringINtNtB4_6option6OptionTIB8M_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9V_11FileVersionEEEB7I_E0TB7I_B7I_EE0Bb6_EEB6D_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB3t_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB1O_3map11MapConsumerIB54_INtNtB1O_10while_some17WhileSomeConsumerINtNtNtB1O_7collect8consumer15CollectConsumerNtB4l_16FileSearchResultEENCINvNvXs2_NtB1Q_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1O_20FromParallelIteratorIB7K_ppEE13from_par_iter2okB6V_B3p_E0ENCNvB4l_13handle_searchs2_0EE0NCB1H_s_0INtB6f_13CollectResultB6V_EBa6_E0TBa6_Ba6_EEB4n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %3, i64 152, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4n_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2I_3map11MapConsumerIB5Y_INtNtB2I_10while_some17WhileSomeConsumerINtNtNtB2I_7collect8consumer15CollectConsumerNtB5f_16FileSearchResultEENCINvNvXs2_NtB2K_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2I_20FromParallelIteratorIB8E_ppEE13from_par_iter2okB7P_B4j_E0ENCNvB5f_13handle_searchs2_0EE0NCB2B_s_0INtB79_13CollectResultB7P_EBb0_E0TBb0_Bb0_EE0Bbx_ENtB5_3Job7executeB5h_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !147
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4Q_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3b_3map11MapConsumerIB6r_INtNtB3b_10while_some17WhileSomeConsumerINtNtNtB3b_7collect8consumer15CollectConsumerNtB5I_16FileSearchResultEENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB97_ppEE13from_par_iter2okB8i_B4M_E0ENCNvB5I_13handle_searchs2_0EE0NCB34_s_0INtB7C_13CollectResultB8i_EBbd_E0TBbd_Bbd_EE0BbK_EEB5K_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEB1l_EEEB2t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4Q_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3b_3map11MapConsumerIB6r_INtNtB3b_10while_some17WhileSomeConsumerINtNtNtB3b_7collect8consumer15CollectConsumerNtB5I_16FileSearchResultEENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB97_ppEE13from_par_iter2okB8i_B4M_E0ENCNvB5I_13handle_searchs2_0EE0NCB34_s_0INtB7C_13CollectResultB8i_EBbd_E0TBbd_Bbd_EE0BbK_EEB5K_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB3t_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB1O_3map11MapConsumerIB54_INtNtB1O_10while_some17WhileSomeConsumerNtNtB1O_6extend15ListVecConsumerENCINvNvXs2_NtB1Q_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1O_20FromParallelIteratorIB78_ppEE13from_par_iter2okNtB4l_16FileSearchResultB3p_E0ENCNvB4l_13handle_searchs2_0EE0NCB1H_s_0INtNtNtB3t_11collections11linked_list10LinkedListINtNtB3t_3vec3VecB8G_EEB9O_E0TB9O_B9O_EEB4n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4n_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2I_3map11MapConsumerIB5Y_INtNtB2I_10while_some17WhileSomeConsumerNtNtB2I_6extend15ListVecConsumerENCINvNvXs2_NtB2K_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2I_20FromParallelIteratorIB82_ppEE13from_par_iter2okNtB5f_16FileSearchResultB4j_E0ENCNvB5f_13handle_searchs2_0EE0NCB2B_s_0INtNtNtB4n_11collections11linked_list10LinkedListINtNtB4n_3vec3VecB9A_EEBaI_E0TBaI_BaI_EE0BbY_ENtB5_3Job7executeB5h_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !153
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4Q_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3b_3map11MapConsumerIB6r_INtNtB3b_10while_some17WhileSomeConsumerNtNtB3b_6extend15ListVecConsumerENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB8v_ppEE13from_par_iter2okNtB5I_16FileSearchResultB4M_E0ENCNvB5I_13handle_searchs2_0EE0NCB34_s_0INtNtNtB4Q_11collections11linked_list10LinkedListINtNtB4Q_3vec3VecB9N_EEBaV_E0TBaV_BaV_EE0Bcb_EEB5K_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1l_EEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4Q_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB3b_3map11MapConsumerIB6r_INtNtB3b_10while_some17WhileSomeConsumerNtNtB3b_6extend15ListVecConsumerENCINvNvXs2_NtB3d_6resultINtNtB4_6result6ResultppEINtB3b_20FromParallelIteratorIB8v_ppEE13from_par_iter2okNtB5I_16FileSearchResultB4M_E0ENCNvB5I_13handle_searchs2_0EE0NCB34_s_0INtNtNtB4Q_11collections11linked_list10LinkedListINtNtB4Q_3vec3VecB9N_EEBaV_E0TBaV_BaV_EE0Bcb_EEB5K_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.715.i = alloca [16 x i8], align 8        ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 5 uses
  %i.h = alloca [640 x i8], align 128             ; 19 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 4 uses
  %i.k = alloca [384 x i8], align 128             ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [104 x i8], align 16              ; 13 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [88 x i8], align 8                ; 16 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.539 = alloca [27 x i8], align 1          ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 12 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs2_Cs8sO4Nh65sHq_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsbNLsQi0JuJ4_5tgrep.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvNtCs5Xr050g3D4S_3std3env3varReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 17)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.b
  %i.ae = load i64, ptr %i.g, align 8, !range !11, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.thread4.i, label %bb.c

.thread4.i:                                       ; preds = %.noexc
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %.noexc60 unwind label %bb.ai

.noexc60:                                         ; preds = %.thread4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k

bb.c:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.017.0.copyload.i = load i64, ptr %i.ag, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not27.i = icmp eq i64 %.sroa.017.0.copyload.i, -1
  br i1 %.not27.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false)
  store i64 %.sroa.017.0.copyload.i, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ah = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !226, !nonnull !5, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !226, !noundef !5 ; 2 uses
  switch i64 %i.aj, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ah, align 1, !alias.scope !227, !noalias !226, !noundef !5 ; 2 uses
  switch i8 %i.ak, label %bb.f [
    i8 43, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.d
  %.pr.i.i.i = load i8, ptr %i.ah, align 1, !alias.scope !227, !noalias !226
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i.i, %bb.e
  %i.al = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ak, %bb.e ]
  %cond.i.i.i = icmp eq i8 %i.al, 43              ; 2 uses
  %i.am = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aj, %i.am    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.an = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.an, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.f
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i209, i64 1
  %i.ap = add nsw i64 %.sroa.15.1.i.i.i208, -1    ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.f, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i209 = phi ptr [ %i.ao, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i.i208 = phi i64 [ %i.ap, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.f ]
  %.sroa.042.0.i.i.i207 = phi i64 [ %i.ay, %.preheader56.i.i.i ], [ 0, %bb.f ]
  %i.aq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i207, i64 10) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.g, !prof !8

bb.g:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.as = extractvalue { i64, i1 } %i.aq, 0       ; 2 uses
  %i.at = load i8, ptr %.sroa.0.1.i.i.i209, align 1, !alias.scope !227, !noalias !226, !noundef !5
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 9
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = add i64 %i.as, %i.ax                    ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.as
  %or.cond.i.i = select i1 %i.aw, i1 true, i1 %i.az, !prof !12
  br i1 %or.cond.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !12

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.sroa.0.269.i.i.i = phi ptr [ %i.bg, %bb.h ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.bf, %bb.h ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.bi, %bb.h ], [ 0, %.preheader.i.i.i ]
  %i.ba = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !227, !noalias !226, !noundef !5
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10                  ; 3 uses
  br i1 %i.bd, label %bb.h, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.be = mul i64 %.sroa.042.267.i.i.i, 10
  %i.bf = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = add i64 %i.be, %i.bh                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.g, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.h, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i ], [ %i.bi, %bb.h ], [ undef, %bb.g ], [ %i.ay, %.preheader56.i.i.i ], [ undef, %.preheader56.i.i.i.preheader ] ; 2 uses
  %not..sink.i.i.i = phi i1 [ false, %bb.e ], [ true, %.preheader.i.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ %i.bd, %bb.h ], [ %i.bd, %.lr.ph.i.i.i ], [ false, %bb.g ], [ true, %.preheader56.i.i.i ], [ false, %.preheader56.i.i.i.preheader ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvMs2_Cs8sO4Nh65sHq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body61 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNCNvMs2_Cs8sO4Nh65sHq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc63 unwind label %bb.ai
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerIB14_INtNtB7_10while_some17WhileSomeConsumerNtNtB7_6extend15ListVecConsumerENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB34_ppEE13from_par_iter2okNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCNvB4D_13handle_searchs2_0EEINtB5_16ProducerCallbackRTB5n_INtNtB5r_4sync3ArcNtB4D_11DecodedFileEEE8callbackINtNtB9_5slice12IterProducerB6U_EEB4F_:bb.a
  call fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5l_ppEE13from_par_iter2okNtB2C_16FileSearchResultB1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef %spec.store.select.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1651
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1b_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0INtNtCsf3Ta7LF998c_4core6result6ResultB1A_NtNtB9_4mpsc16RecvTimeoutErrorEEs0_0CsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr nofree captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.0.val, i64 32, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0CsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !1669, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !1669
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !1673, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1673
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit8

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit8

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit8: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB4y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB64_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCBR_s_0INtB3O_13CollectResultB4t_EB8k_E0B7g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [128 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB2Y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4u_11FileVersionEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_ENtB5_3Job7executeB8J_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !10

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !8

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.077.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.478.0.copyload = load ptr, ptr %.sroa.478.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.680.sroa.0.0.copyload = load i64, ptr %.sroa.680.0..sroa_idx, align 8
  %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = load i64, ptr %.sroa.077.0.copyload, align 8, !noalias !1693, !noundef !5
  %i.ac = load i64, ptr %.sroa.478.0.copyload, align 8, !noalias !1693, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.478.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1693, !noundef !5
  %i.af = inttoptr i64 %.sroa.579.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB3F_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5b_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %.sroa.680.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f, !inline_history !1677

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1693
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.590.0.copyload, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #28
          to label %bb.ao unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.q, %bb.r, %bb.s, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ag, %bb.al
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

bb.j:                                             ; preds = %bb.h, %bb.r
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit123, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.d, align 8, !range !16, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit123:                                     ; preds = %bb.j, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.3.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8 ; 3 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB2Y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4u_11FileVersionEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E11into_resultB8J_.exit
    i64 2, label %bb.o
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %.loopexit123
  unreachable

bb.n:                                             ; preds = %.loopexit123
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
          to label %.noexc43 unwind label %bb.am

.noexc43:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.464.0.copyload), "nonnull"(ptr %.sroa.565.0.copyload) ]
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.464.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.565.0.copyload) #28
          to label %.noexc44 unwind label %bb.am

.noexc44:                                         ; preds = %bb.o
  unreachable

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB2Y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4u_11FileVersionEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_ENtB5_3Job7executeB8J_)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.t
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.az)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.f, align 8, !alias.scope !1694 ; 2 uses
  %.not.i47 = icmp eq ptr %.sroa.0.0.copyload.i46, null
  br i1 %.not.i47, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1695
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1695, !nonnull !5, !noundef !5
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1695, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1695, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  %i.bg = load i64, ptr %.sroa.0.0.copyload.i46, align 8, !noalias !1696, !noundef !5
  %i.bh = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !1696, !noundef !5
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !1696, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !1696, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB3F_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5b_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.bi, i1 noundef zeroext %3, i64 noundef %i.bj, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.z unwind label %bb.x, !inline_history !1687

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
          to label %bb.y unwind label %bb.x, !noalias !1697, !inline_history !1688

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2S_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB48_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bn) #25
          to label %.thread117 unwind label %bb.ah, !noalias !1695, !inline_history !1688

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1696
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %i.bp = load i64, ptr %i.bo, align 8, !range !16, !alias.scope !1700, !noundef !5
  switch i64 %i.bp, label %bb.aa [
    i64 0, label %bb.ai
    i64 1, label %bb.ag
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1700 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val1.i.i = load ptr, ptr %i.br, align 8, !alias.scope !1700, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.bs = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !1700 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bs(ptr noundef nonnull %.val.i.i)
          to label %bb.ac unwind label %bb.ae, !noalias !1700

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !6, !invariant.load !5, !noalias !1700 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !7, !invariant.load !5, !noalias !1700
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #19, !noalias !1700
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !6, !invariant.load !5, !noalias !1700 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.thread117, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !7, !invariant.load !5, !noalias !1700
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ca, i64 noundef range(i64 1, 536870913) %i.cd) #19, !noalias !1700
  br label %.thread117

bb.ag:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1h_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2N_11FileVersionEENtNtNtB1U_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !1695, !inline_history !1688
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.z, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB2Y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4u_11FileVersionEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E11into_resultB8J_.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ak:                                            ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.ch = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ci = icmp eq i64 %i.ch, 3
  br i1 %i.ci, label %.loopexit123, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit123 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.o, %bb.n
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1h_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2N_11FileVersionEENtNtNtB1U_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.aq unwind label %bb.an

_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB2Y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4u_11FileVersionEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E11into_resultB8J_.exit: ; preds = %.loopexit123
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.464.0.copyload, ptr %i.ck, align 8
  %.sroa.4.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.565.0.copyload, ptr %.sroa.4.0..sroa_idx61, align 8
  %.sroa.5.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx62, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

bb.an:                                            ; preds = %.thread117, %bb.am, %bb.ap
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread117:                                       ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.ae, %bb.af
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ae ], [ false, %bb.x ], [ false, %bb.af ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %i.bm, %bb.x ], [ %i.by, %bb.af ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1h_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2N_11FileVersionEENtNtNtB1U_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit51 unwind label %bb.an

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit51: ; preds = %.thread117
  br i1 %.sroa.019.2.lpad-body, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.i
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit51, %.thread
  %.pn38110 = phi { ptr, i32 } [ %i.q, %.thread ], [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit51 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB3r_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4H_11FileVersionEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B2i_EEB8W_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.i) #25
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.am, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit51, %bb.ap
  %.pn38109 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit51 ], [ %.pn38110, %bb.ap ], [ %i.cj, %bb.am ]
  resume { ptr, i32 } %.pn38109
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5z_3vec3VecTNtNtB5z_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB6w_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB7V_11FileVersionEEEB5s_E0B4o_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 16               ; 9 uses
  %i.g = alloca [112 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.j = load i64, ptr %i.i, align 128, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.n = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.m)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_ENtB5_3Job7executeB8Y_, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.h, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 472
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 496
  %i.s = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.r)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.t = and i64 %i.s, 65535                      ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.n, label %bb.e, label %.sink.split.i, !prof !10

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.q, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i64 %i.s, 16
  %i.w = and i64 %i.v, 65535
  %i.x = icmp eq i64 %i.w, %i.t
  br i1 %i.x, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !8

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.077.0.copyload = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.478.0.copyload = load ptr, ptr %.sroa.478.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.680.sroa.0.0.copyload = load i64, ptr %.sroa.680.0..sroa_idx, align 8
  %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.680.sroa.4.0.copyload = load ptr, ptr %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = load i64, ptr %.sroa.077.0.copyload, align 8, !noalias !1720, !noundef !5
  %i.aa = load i64, ptr %.sroa.478.0.copyload, align 8, !noalias !1720, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.478.0.copyload, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1720, !noundef !5
  %i.ad = inttoptr i64 %.sroa.579.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB3v_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext %3, i64 noundef %i.aa, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ad, i64 noundef %.sroa.680.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.680.sroa.4.0.copyload)
          to label %bb.h unwind label %bb.f, !inline_history !1704

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 16
  %i.ai = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.ai, ptr %i.f, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.590.0.copyload, ptr %.sroa.513.0..sroa_idx, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.am = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.ag, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am), "nonnull"(ptr %i.an) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.k, ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an) #28
          to label %bb.am unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.q, %bb.r, %bb.s, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.af, %bb.aj
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

bb.j:                                             ; preds = %bb.h, %bb.r
  %i.ao = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ap = icmp eq i64 %i.ao, 3
  br i1 %i.ap, label %.loopexit123, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.m)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.as = load i64, ptr %i.b, align 8, !range !16, !noundef !5
  switch i64 %i.as, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.at = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.au = load ptr, ptr %i.al, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.au, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.at, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.aw = insertvalue { ptr, ptr } %i.av, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit123:                                     ; preds = %bb.j, %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.063.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8 ; 3 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.063.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E11into_resultB8Y_.exit
    i64 2, label %bb.o
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %.loopexit123
  unreachable

bb.n:                                             ; preds = %.loopexit123
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
          to label %.noexc43 unwind label %bb.ak

.noexc43:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.464.0.copyload), "nonnull"(ptr %.sroa.565.0.copyload) ]
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.464.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.565.0.copyload) #28
          to label %.noexc44 unwind label %bb.ak

.noexc44:                                         ; preds = %bb.o
  unreachable

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.aq, %.noexc41 ], [ %i.aw, %.loopexit.i ] ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ay = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, null                 ; 2 uses
  br i1 %.not, label %bb.ai, label %bb.p

bb.p:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.az = icmp eq ptr %i.g, %i.ay
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_ENtB5_3Job7executeB8Y_)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.t
  invoke void %i.ax(ptr noundef %i.ay)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.bb = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.ax)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.bd, align 8, !alias.scope !1721 ; 2 uses
  %.not.i47 = icmp eq ptr %.sroa.0.0.copyload.i46, null
  br i1 %.not.i47, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.3.i.sroa.7.0.copyload = load ptr, ptr %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1722 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1722
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1722, !nonnull !5, !noundef !5
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1722, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1722, !nonnull !5, !noundef !5
  %i.be = load i64, ptr %.sroa.0.0.copyload.i46, align 8, !noalias !1723, !noundef !5
  %i.bf = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !1723, !noundef !5
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !1723, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !1723, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.i.sroa.7.0.copyload) ]
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB3v_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.bg, i1 noundef zeroext %3, i64 noundef %i.bh, i64 noundef %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.3.i.sroa.7.0.copyload)
          to label %_RNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtB15_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB22_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3r_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4H_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4F_10filter_map17FilterMapConsumerNtNtB4F_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B87_.exit unwind label %bb.x, !inline_history !1714

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
          to label %bb.y unwind label %bb.x, !noalias !1724, !inline_history !1715

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtB1Q_6string6StringINtNtB4_6option6OptionTIB2N_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3W_11FileVersionEEEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.d) #25
          to label %.thread117 unwind label %bb.ag, !noalias !1722, !inline_history !1715

bb.y:                                             ; preds = %bb.w
  unreachable

_RNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtB15_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB22_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3r_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4H_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4F_10filter_map17FilterMapConsumerNtNtB4F_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B87_.exit: ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.bl = load i64, ptr %i.d, align 8, !range !16, !alias.scope !1727, !noundef !5
  switch i64 %i.bl, label %bb.z [
    i64 0, label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E10run_inlineB8Y_.exit
    i64 1, label %bb.af
  ]

bb.z:                                             ; preds = %_RNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtB15_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB22_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3r_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4H_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4F_10filter_map17FilterMapConsumerNtNtB4F_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B87_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1727 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !1727, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.bo = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !1727 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bo(ptr noundef nonnull %.val.i.i)
          to label %bb.ab unwind label %bb.ad, !noalias !1727

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !6, !invariant.load !5, !noalias !1727 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E10run_inlineB8Y_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !7, !invariant.load !5, !noalias !1727
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #19, !noalias !1727
  br label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E10run_inlineB8Y_.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !6, !invariant.load !5, !noalias !1727 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread117, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !7, !invariant.load !5, !noalias !1727
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #19, !noalias !1727
  br label %.thread117

bb.af:                                            ; preds = %_RNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtB15_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB22_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3r_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4H_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4F_10filter_map17FilterMapConsumerNtNtB4F_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B87_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB1c_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2z_11FileVersionEEENtNtNtB1S_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E10run_inlineB8Y_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !1724, !inline_history !1715
  unreachable

_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E10run_inlineB8Y_.exit: ; preds = %bb.af, %_RNCINvNvNtCs8sO4Nh65sHq_10rayon_core4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtB15_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB22_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3r_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4H_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4F_10filter_map17FilterMapConsumerNtNtB4F_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B87_.exit, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E11into_resultB8Y_.exit, %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E10run_inlineB8Y_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ai:                                            ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cd = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ce = icmp eq i64 %i.cd, 3
  br i1 %i.ce, label %.loopexit123, label %bb.aj, !prof !10

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit123 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.o, %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB1c_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2z_11FileVersionEEENtNtNtB1S_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ao unwind label %bb.al

_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_E11into_resultB8Y_.exit: ; preds = %.loopexit123
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.464.0.copyload, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.565.0.copyload, ptr %.sroa.4.0..sroa_idx61, align 8
  %.sroa.5.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx62, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.al:                                            ; preds = %.thread117, %bb.ak, %bb.an
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread117:                                       ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.ad, %bb.ae
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ad ], [ false, %bb.x ], [ false, %bb.ae ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.ad ], [ %i.bk, %bb.x ], [ %i.bu, %bb.ae ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB1c_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2z_11FileVersionEEENtNtNtB1S_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringINtNtB4_6option6OptionTIB1F_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2M_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit51 unwind label %bb.al

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringINtNtB4_6option6OptionTIB1F_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2M_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit51: ; preds = %.thread117
  br i1 %.sroa.019.2.lpad-body, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.i
  unreachable

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringINtNtB4_6option6OptionTIB1F_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2M_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit51, %.thread
  %.pn38110 = phi { ptr, i32 } [ %i.o, %.thread ], [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringINtNtB4_6option6OptionTIB1F_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2M_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit51 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtB2p_6string6StringINtNtB4_6option6OptionTIB3m_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4v_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5L_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5J_10filter_map17FilterMapConsumerNtNtB5J_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B2i_EEB9b_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.g) #25
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringINtNtB4_6option6OptionTIB1F_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2M_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit51, %bb.an
  %.pn38109 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringINtNtB4_6option6OptionTIB1F_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2M_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit51 ], [ %.pn38110, %bb.an ], [ %i.cf, %bb.ak ]
  resume { ptr, i32 } %.pn38109
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB2D_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtBY_3map11MapConsumerIB4e_INtNtBY_10while_some17WhileSomeConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtB3v_16FileSearchResultEENCINvNvXs2_NtB10_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtBY_20FromParallelIteratorIB6R_ppEE13from_par_iter2okB62_B2z_E0ENCNvB3v_13handle_searchs2_0EE0NCBR_s_0INtB5n_13CollectResultB62_EB9b_E0B3x_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB57_4sync3ArcNtB2V_11DecodedFileEEEINtNtB1W_3map11MapConsumerIB6k_INtNtB1W_10while_some17WhileSomeConsumerINtB1S_15CollectConsumerB2T_EENCINvNvXs2_NtB1Y_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1W_20FromParallelIteratorIB8l_ppEE13from_par_iter2okB2T_B53_E0ENCNvB2V_13handle_searchs2_0EEs_0E0B1P_ENtB5_3Job7executeB2X_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !10

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !8

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.077.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.478.0.copyload = load ptr, ptr %.sroa.478.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.680.sroa.0.0.copyload = load i64, ptr %.sroa.680.0..sroa_idx, align 8
  %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = load i64, ptr %.sroa.077.0.copyload, align 8, !noalias !1747, !noundef !5
  %i.ac = load i64, ptr %.sroa.478.0.copyload, align 8, !noalias !1747, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.478.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1747, !noundef !5
  %i.af = inttoptr i64 %.sroa.579.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtB2C_16FileSearchResultEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5X_ppEE13from_par_iter2okB59_B1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %.sroa.680.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.h unwind label %bb.f, !inline_history !1731

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1747
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.590.0.copyload, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #28
          to label %bb.ao unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.q, %bb.r, %bb.s, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ag, %bb.al
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

bb.j:                                             ; preds = %bb.h, %bb.r
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit123, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.d, align 8, !range !16, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit123:                                     ; preds = %bb.j, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.063.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8 ; 3 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.063.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB57_4sync3ArcNtB2V_11DecodedFileEEEINtNtB1W_3map11MapConsumerIB6k_INtNtB1W_10while_some17WhileSomeConsumerINtB1S_15CollectConsumerB2T_EENCINvNvXs2_NtB1Y_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1W_20FromParallelIteratorIB8l_ppEE13from_par_iter2okB2T_B53_E0ENCNvB2V_13handle_searchs2_0EEs_0E0B1P_E11into_resultB2X_.exit
    i64 2, label %bb.o
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %.loopexit123
  unreachable

bb.n:                                             ; preds = %.loopexit123
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
          to label %.noexc43 unwind label %bb.am

.noexc43:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.464.0.copyload), "nonnull"(ptr %.sroa.565.0.copyload) ]
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.464.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.565.0.copyload) #28
          to label %.noexc44 unwind label %bb.am

.noexc44:                                         ; preds = %bb.o
  unreachable

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB57_4sync3ArcNtB2V_11DecodedFileEEEINtNtB1W_3map11MapConsumerIB6k_INtNtB1W_10while_some17WhileSomeConsumerINtB1S_15CollectConsumerB2T_EENCINvNvXs2_NtB1Y_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1W_20FromParallelIteratorIB8l_ppEE13from_par_iter2okB2T_B53_E0ENCNvB2V_13handle_searchs2_0EEs_0E0B1P_ENtB5_3Job7executeB2X_)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.t
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.az)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.bf, align 8, !alias.scope !1748 ; 2 uses
  %.not.i47 = icmp eq ptr %.sroa.0.0.copyload.i46, null
  br i1 %.not.i47, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1749
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1749, !nonnull !5, !noundef !5
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1749, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1749, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  %i.bh = load i64, ptr %.sroa.0.0.copyload.i46, align 8, !noalias !1750, !noundef !5
  %i.bi = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !1750, !noundef !5
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !1750, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !1750, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtB2C_16FileSearchResultEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5X_ppEE13from_par_iter2okB59_B1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.bj, i1 noundef zeroext %3, i64 noundef %i.bk, i64 noundef %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.z unwind label %bb.x, !inline_history !1741

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
          to label %bb.y unwind label %bb.x, !noalias !1751, !inline_history !1742

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.f) #25
          to label %.thread117 unwind label %bb.ah, !noalias !1749, !inline_history !1742

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1750
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.bo = load i64, ptr %i.f, align 8, !range !16, !alias.scope !1754, !noundef !5
  switch i64 %i.bo, label %bb.aa [
    i64 0, label %bb.ai
    i64 1, label %bb.ag
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !1754 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1754, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.br = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !1754 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.br(ptr noundef nonnull %.val.i.i)
          to label %bb.ac unwind label %bb.ae, !noalias !1754

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !6, !invariant.load !5, !noalias !1754 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !7, !invariant.load !5, !noalias !1754
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bt, i64 noundef range(i64 1, 536870913) %i.bw) #19, !noalias !1754
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !6, !invariant.load !5, !noalias !1754 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.thread117, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !7, !invariant.load !5, !noalias !1754
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #19, !noalias !1754
  br label %.thread117

bb.ag:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !1749, !inline_history !1742
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.z, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB57_4sync3ArcNtB2V_11DecodedFileEEEINtNtB1W_3map11MapConsumerIB6k_INtNtB1W_10while_some17WhileSomeConsumerINtB1S_15CollectConsumerB2T_EENCINvNvXs2_NtB1Y_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1W_20FromParallelIteratorIB8l_ppEE13from_par_iter2okB2T_B53_E0ENCNvB2V_13handle_searchs2_0EEs_0E0B1P_E11into_resultB2X_.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ak:                                            ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ch = icmp eq i64 %i.cg, 3
  br i1 %i.ch, label %.loopexit123, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit123 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.o, %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.aq unwind label %bb.an

_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB57_4sync3ArcNtB2V_11DecodedFileEEEINtNtB1W_3map11MapConsumerIB6k_INtNtB1W_10while_some17WhileSomeConsumerINtB1S_15CollectConsumerB2T_EENCINvNvXs2_NtB1Y_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1W_20FromParallelIteratorIB8l_ppEE13from_par_iter2okB2T_B53_E0ENCNvB2V_13handle_searchs2_0EEs_0E0B1P_E11into_resultB2X_.exit: ; preds = %.loopexit123
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.464.0.copyload, ptr %i.cj, align 8
  %.sroa.4.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.565.0.copyload, ptr %.sroa.4.0..sroa_idx61, align 8
  %.sroa.5.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx62, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

bb.an:                                            ; preds = %.thread117, %bb.am, %bb.ap
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread117:                                       ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.ae, %bb.af
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ae ], [ false, %bb.x ], [ false, %bb.af ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.ae ], [ %i.bn, %bb.x ], [ %i.bx, %bb.af ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit51 unwind label %bb.an

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit51: ; preds = %.thread117
  br i1 %.sroa.019.2.lpad-body, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.i
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit51, %.thread
  %.pn38110 = phi { ptr, i32 } [ %i.q, %.thread ], [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit51 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB5A_4sync3ArcNtB3o_11DecodedFileEEEINtNtB2p_3map11MapConsumerIB6N_INtNtB2p_10while_some17WhileSomeConsumerINtB2l_15CollectConsumerB3m_EENCINvNvXs2_NtB2r_6resultINtNtB4_6result6ResultppEINtB2p_20FromParallelIteratorIB8O_ppEE13from_par_iter2okB3m_B5w_E0ENCNvB3o_13handle_searchs2_0EEs_0E0B2i_EEB3q_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.i) #25
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.am, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit51, %bb.ap
  %.pn38109 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit51 ], [ %.pn38110, %bb.ap ], [ %i.ci, %bb.am ]
  resume { ptr, i32 } %.pn38109
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB2D_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtBY_3map11MapConsumerIB4e_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtBY_20FromParallelIteratorIB6f_ppEE13from_par_iter2okNtB3v_16FileSearchResultB2z_E0ENCNvB3v_13handle_searchs2_0EE0NCBR_s_0INtNtNtB2D_11collections11linked_list10LinkedListINtNtB2D_3vec3VecB7M_EEB8T_E0B3x_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [128 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB48_5slice12IterProducerTNtNtB1W_6string6StringINtNtB1W_4sync3ArcNtB3b_11DecodedFileEEEINtNtB46_3map11MapConsumerIB6I_INtNtB46_10while_some17WhileSomeConsumerNtNtB46_6extend15ListVecConsumerENCINvNvXs2_NtB48_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB46_20FromParallelIteratorIB8M_ppEE13from_par_iter2okB39_B5H_E0ENCNvB3b_13handle_searchs2_0EEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !10

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !8

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.077.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.478.0.copyload = load ptr, ptr %.sroa.478.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.680.sroa.0.0.copyload = load i64, ptr %.sroa.680.0..sroa_idx, align 8
  %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.680.sroa.4.0..sroa.680.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = load i64, ptr %.sroa.077.0.copyload, align 8, !noalias !1774, !noundef !5
  %i.ac = load i64, ptr %.sroa.478.0.copyload, align 8, !noalias !1774, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.478.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1774, !noundef !5
  %i.af = inttoptr i64 %.sroa.579.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5l_ppEE13from_par_iter2okNtB2C_16FileSearchResultB1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %.sroa.680.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f, !inline_history !1758

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1774
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.590.0.copyload, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #28
          to label %bb.ao unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.q, %bb.r, %bb.s, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ag, %bb.al
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

bb.j:                                             ; preds = %bb.h, %bb.r
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit123, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.d, align 8, !range !16, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit123:                                     ; preds = %bb.j, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.3.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.464.0.copyload = load ptr, ptr %.sroa.464.0..sroa_idx, align 8 ; 3 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB48_5slice12IterProducerTNtNtB1W_6string6StringINtNtB1W_4sync3ArcNtB3b_11DecodedFileEEEINtNtB46_3map11MapConsumerIB6I_INtNtB46_10while_some17WhileSomeConsumerNtNtB46_6extend15ListVecConsumerENCINvNvXs2_NtB48_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB46_20FromParallelIteratorIB8M_ppEE13from_par_iter2okB39_B5H_E0ENCNvB3b_13handle_searchs2_0EEs_0E0B1P_E11into_resultB3d_.exit
    i64 2, label %bb.o
  ], !prof !9

default.unreachable1.i.i:                         ; preds = %.loopexit123
  unreachable

bb.n:                                             ; preds = %.loopexit123
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
          to label %.noexc43 unwind label %bb.am

.noexc43:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.464.0.copyload), "nonnull"(ptr %.sroa.565.0.copyload) ]
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.464.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.565.0.copyload) #28
          to label %.noexc44 unwind label %bb.am

.noexc44:                                         ; preds = %bb.o
  unreachable

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB48_5slice12IterProducerTNtNtB1W_6string6StringINtNtB1W_4sync3ArcNtB3b_11DecodedFileEEEINtNtB46_3map11MapConsumerIB6I_INtNtB46_10while_some17WhileSomeConsumerNtNtB46_6extend15ListVecConsumerENCINvNvXs2_NtB48_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB46_20FromParallelIteratorIB8M_ppEE13from_par_iter2okB39_B5H_E0ENCNvB3b_13handle_searchs2_0EEs_0E0B1P_ENtB5_3Job7executeB3d_)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.t
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.az)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.f, align 8, !alias.scope !1775 ; 2 uses
  %.not.i47 = icmp eq ptr %.sroa.0.0.copyload.i46, null
  br i1 %.not.i47, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1776
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1776, !nonnull !5, !noundef !5
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !1776, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1776, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  %i.bg = load i64, ptr %.sroa.0.0.copyload.i46, align 8, !noalias !1777, !noundef !5
  %i.bh = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !1777, !noundef !5
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !1777, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !1777, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5l_ppEE13from_par_iter2okNtB2C_16FileSearchResultB1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.bi, i1 noundef zeroext %3, i64 noundef %i.bj, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.z unwind label %bb.x, !inline_history !1768

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
          to label %bb.y unwind label %bb.x, !noalias !1778, !inline_history !1769

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEEB37_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bn) #25
          to label %.thread117 unwind label %bb.ah, !noalias !1776, !inline_history !1769

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1777
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  %i.bp = load i64, ptr %i.bo, align 8, !range !16, !alias.scope !1781, !noundef !5
  switch i64 %i.bp, label %bb.aa [
    i64 0, label %bb.ai
    i64 1, label %bb.ag
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1781 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val1.i.i = load ptr, ptr %i.br, align 8, !alias.scope !1781, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.bs = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !1781 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bs(ptr noundef nonnull %.val.i.i)
          to label %bb.ac unwind label %bb.ae, !noalias !1781

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !6, !invariant.load !5, !noalias !1781 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !7, !invariant.load !5, !noalias !1781
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #19, !noalias !1781
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !6, !invariant.load !5, !noalias !1781 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.thread117, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !7, !invariant.load !5, !noalias !1781
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ca, i64 noundef range(i64 1, 536870913) %i.cd) #19, !noalias !1781
  br label %.thread117

bb.ag:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !1778, !inline_history !1769
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.z, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB48_5slice12IterProducerTNtNtB1W_6string6StringINtNtB1W_4sync3ArcNtB3b_11DecodedFileEEEINtNtB46_3map11MapConsumerIB6I_INtNtB46_10while_some17WhileSomeConsumerNtNtB46_6extend15ListVecConsumerENCINvNvXs2_NtB48_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB46_20FromParallelIteratorIB8M_ppEE13from_par_iter2okB39_B5H_E0ENCNvB3b_13handle_searchs2_0EEs_0E0B1P_E11into_resultB3d_.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ak:                                            ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.ch = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ci = icmp eq i64 %i.ch, 3
  br i1 %i.ci, label %.loopexit123, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit123 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.o, %bb.n
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.aq unwind label %bb.an

_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB48_5slice12IterProducerTNtNtB1W_6string6StringINtNtB1W_4sync3ArcNtB3b_11DecodedFileEEEINtNtB46_3map11MapConsumerIB6I_INtNtB46_10while_some17WhileSomeConsumerNtNtB46_6extend15ListVecConsumerENCINvNvXs2_NtB48_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB46_20FromParallelIteratorIB8M_ppEE13from_par_iter2okB39_B5H_E0ENCNvB3b_13handle_searchs2_0EEs_0E0B1P_E11into_resultB3d_.exit: ; preds = %.loopexit123
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.464.0.copyload, ptr %i.ck, align 8
  %.sroa.4.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.565.0.copyload, ptr %.sroa.4.0..sroa_idx61, align 8
  %.sroa.5.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx62, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

bb.an:                                            ; preds = %.thread117, %bb.am, %bb.ap
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread117:                                       ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.ae, %bb.af
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ae ], [ false, %bb.x ], [ false, %bb.af ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %i.bm, %bb.x ], [ %i.by, %bb.af ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB1Y_.exit51 unwind label %bb.an

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB1Y_.exit51: ; preds = %.thread117
  br i1 %.sroa.019.2.lpad-body, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.i
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB1Y_.exit51, %.thread
end_hunk_1
begin_hunk_2_@_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTyyEEE3newCsbNLsQi0JuJ4_5tgrep:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEE3newCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvMsd_BQ_BN_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheE3newB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheENCNvMsd_BQ_BN_3new0EB1n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityE3newCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityENCNvMsd_BQ_BN_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceE3newCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceENCNvMsd_BQ_BN_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexE3newCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexENCNvMsd_BQ_BN_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuarduE3newCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 4
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuarduENCNvMsd_BQ_BN_3new0ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs30WoLBgco1_6ignore5ErrorNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  %i.j = load i64, ptr %i.i, align 8, !range !2420, !alias.scope !2419, !noundef !5
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2421
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.h, align 8, !noalias !2421
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2421
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.n, ptr %i.g, align 8, !noalias !2421
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 4, ptr noundef nonnull readonly %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 3, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2421
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.f, align 8, !noalias !2421
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 4, ptr noundef nonnull readonly %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2421
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.t, ptr %i.e, align 8, !noalias !2421
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5, ptr noundef nonnull readonly %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2421
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.w, ptr %i.d, align 8, !noalias !2421
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 8, ptr noundef nonnull readonly %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2421
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.y, ptr %i.c, align 8, !noalias !2421
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 2, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2421
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.ab, ptr %i.b, align 8, !noalias !2421
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4, ptr noundef nonnull readonly %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2421
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ad, ptr %i.a, align 8, !noalias !2421
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2421
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 17), !noalias !2419
  br label %_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.b ], [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.ae, %bb.i ], [ %i.af, %bb.j ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvMNtB7_11thread_poolNtB2t_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB4W_5error5ErrorEE0B4g_E00B4g_ENtB5_3Job7executeB3j_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [104 x i8], align 8           ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !2440, !noundef !5
  %i.e = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.e, label %bb.c, label %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvMNtB1k_11thread_poolNtB4N_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5E_.exit.i, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvMNtB1k_11thread_poolNtB4N_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5E_.exit.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2441, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !2441, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2441, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !2441, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2441, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !2441, !noundef !5
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_files(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef %i.q, i64 noundef 67108864)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvMNtB1k_11thread_poolNtB4N_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5E_.exit.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.s)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.y, %bb.m ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.o

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvMNtB1k_11thread_poolNtB4N_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5E_.exit.i
  %.sroa.0.0.copyload47 = load i64, ptr %i.b, align 8
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.948.0.copyload = load ptr, ptr %.sroa.948.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.16.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.w = extractvalue { ptr, ptr } %i.t, 0
  %i.x = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.0 = phi ptr [ %i.x, %bb.k ], [ %.sroa.14.0.copyload, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.w, %bb.k ], [ %.sroa.948.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ -9223372036854775806, %bb.k ], [ %.sroa.0.0.copyload47, %bb.j ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB1K_5error5ErrorEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(128) %0)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, i64 104, i1 false)
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.z, align 8, !noundef !5
  invoke fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %.val) #30
          to label %_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.h

_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.n
  ret void

bb.o:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvMNtB7_11thread_poolNtB2t_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB4e_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB4a_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5P_11FileVersionEEE0B49_E00B49_ENtB5_3Job7executeB3h_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2465, !noundef !5
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = extractelement <2 x ptr> %i.d, i64 0
  %i.h = extractelement <2 x ptr> %i.d, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h), "nonnull"(ptr %i.g) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2466
  store i64 0, ptr %i.c, align 8, !alias.scope !2467, !noalias !2466
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !2467, !noalias !2466
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !alias.scope !2467, !noalias !2466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2466
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !2468
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2468
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x ptr> %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2468
  invoke void @_RINvXsv_NtNtCsjFxWRWgRcyr_5rayon4iter6extendINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBL_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIBH_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2k_11FileVersionEEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB5w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.m unwind label %bb.e, !noalias !2466

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionTIBC_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1Z_11FileVersionEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %.body unwind label %bb.f, !noalias !2466

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !2466
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.k, %bb.e ]
  %i.n = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.v, %bb.p ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.r

bb.k:                                             ; preds = %bb.q, %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2466
  %.sroa.0.0.copyload40 = load i64, ptr %i.c, align 8
  %.sroa.9.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.14.0.copyload = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2466
  %i.r = inttoptr i64 %.sroa.9.0.copyload to ptr
  br label %bb.o

bb.n:                                             ; preds = %.body
  %i.s = extractvalue { ptr, ptr } %i.o, 0
  %i.t = extractvalue { ptr, ptr } %i.o, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.7.0 = phi ptr [ %i.t, %bb.n ], [ %.sroa.14.0.copyload, %bb.m ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.s, %bb.n ], [ %i.r, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ -9223372036854775806, %bb.n ], [ %.sroa.0.0.copyload40, %bb.m ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1p_6string6StringINtNtB4_6option6OptionTIB1l_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2K_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  br label %bb.j

bb.q:                                             ; preds = %bb.o
  store i64 %.sroa.04.0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.w, align 8, !noundef !5
  invoke fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %.val) #30
          to label %_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.k

_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.q
  ret void

bb.r:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2Z_10filter_map17FilterMapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB6B_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB87_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2S_s_0INtB5Q_13CollectResultB6w_EBao_E0TBao_Bao_EE00BaV_ENtB5_3Job7executeB9j_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2473, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc unwind label %bb.e, !inline_history !2472

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2473
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2474
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB4y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB64_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCBR_s_0INtB3O_13CollectResultB4t_EB8k_E0B7g_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.k unwind label %bb.e, !inline_history !2472

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2473
  %.sroa.046.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.063 = phi ptr [ %i.m, %bb.l ], [ %.sroa.046.0.copyload, %bb.k ] ; 2 uses
  %.sroa.939.061 = phi ptr [ %i.n, %bb.l ], [ %.sroa.447.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2u_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3K_11FileVersionEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %.val) #30
          to label %_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2Z_10filter_map17FilterMapConsumerNtNtB2Z_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2S_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7D_3vec3VecTNtNtB7D_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB8A_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9Z_11FileVersionEEEB7w_E0TB7w_B7w_EE00Bba_ENtB5_3Job7executeB6r_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2479, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc unwind label %bb.e, !inline_history !2478

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2479
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2480
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5z_3vec3VecTNtNtB5z_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB6w_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB7V_11FileVersionEEEB5s_E0B4o_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.k unwind label %bb.e, !inline_history !2478

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2479
  %.sroa.046.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.063 = phi ptr [ %i.m, %bb.l ], [ %.sroa.046.0.copyload, %bb.k ] ; 2 uses
  %.sroa.939.061 = phi ptr [ %i.n, %bb.l ], [ %.sroa.447.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringINtNtB4_6option6OptionTIB2p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3y_11FileVersionEEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %.val) #30
          to label %_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4E_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2Z_3map11MapConsumerIB6f_INtNtB2Z_10while_some17WhileSomeConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerNtB5w_16FileSearchResultEENCINvNvXs2_NtB31_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB8V_ppEE13from_par_iter2okB86_B4A_E0ENCNvB5w_13handle_searchs2_0EE0NCB2S_s_0INtB7q_13CollectResultB86_EBbh_E0TBbh_Bbh_EE00BbO_ENtB5_3Job7executeB5y_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [152 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2485, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc unwind label %bb.e, !inline_history !2484

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2485
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2486
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %.sroa.656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 104, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB2D_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtBY_3map11MapConsumerIB4e_INtNtBY_10while_some17WhileSomeConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtB3v_16FileSearchResultEENCINvNvXs2_NtB10_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtBY_20FromParallelIteratorIB6R_ppEE13from_par_iter2okB62_B2z_E0ENCNvB3v_13handle_searchs2_0EE0NCBR_s_0INtB5n_13CollectResultB62_EB9b_E0B3x_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.k unwind label %bb.e, !inline_history !2484

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2485
  %.sroa.046.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.063 = phi ptr [ %i.m, %bb.l ], [ %.sroa.046.0.copyload, %bb.k ] ; 2 uses
  %.sroa.939.061 = phi ptr [ %i.n, %bb.l ], [ %.sroa.447.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEB1l_EEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %.val) #30
          to label %_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4E_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2Z_3map11MapConsumerIB6f_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB8j_ppEE13from_par_iter2okNtB5w_16FileSearchResultB4A_E0ENCNvB5w_13handle_searchs2_0EE0NCB2S_s_0INtNtNtB4E_11collections11linked_list10LinkedListINtNtB4E_3vec3VecB9R_EEBaZ_E0TBaZ_BaZ_EE00Bcf_ENtB5_3Job7executeB5y_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2491, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc unwind label %bb.e, !inline_history !2490

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2491
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2492
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB2D_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtBY_3map11MapConsumerIB4e_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtBY_20FromParallelIteratorIB6f_ppEE13from_par_iter2okNtB3v_16FileSearchResultB2z_E0ENCNvB3v_13handle_searchs2_0EE0NCBR_s_0INtNtNtB2D_11collections11linked_list10LinkedListINtNtB2D_3vec3VecB7M_EEB8T_E0B3x_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.k unwind label %bb.e, !inline_history !2490

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2491
  %.sroa.046.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.063 = phi ptr [ %i.m, %bb.l ], [ %.sroa.046.0.copyload, %bb.k ] ; 2 uses
  %.sroa.939.061 = phi ptr [ %i.n, %bb.l ], [ %.sroa.447.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1l_EEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.939.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %.val) #30
          to label %_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

_RNvXsd_NtCs8sO4Nh65sHq_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvMNtB7_11thread_poolNtB2c_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00INtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB4F_5error5ErrorEE0B3Z_E0B3Z_ENtB5_3Job7executeB32_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.8 = alloca [104 x i8], align 8           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2519, !noundef !5
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvMNtB1k_11thread_poolNtB4M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5D_.exit.i, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %.noexc46 unwind label %bb.d

.noexc46:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvMNtB1k_11thread_poolNtB4M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5D_.exit.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !2520, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !2520, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2520, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !2520, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2520, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !2520, !noundef !5
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_files(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.r, i64 noundef 67108864)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvMNtB1k_11thread_poolNtB4M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5D_.exit.i, %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.t)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.u, %bb.x, %bb.y, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.w, %bb.g ], [ %i.aq, %bb.y ], [ %i.aq, %bb.x ], [ %i.aq, %bb.u ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.w, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCsf3Ta7LF998c_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs8sO4Nh65sHq_10rayon_core3jobINtB1i_9JobResultINtNtB9_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB2v_5error5ErrorEE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvMNtB1k_11thread_poolNtB4M_10ThreadPool7installNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve26stream_merge_stale_changess5_00B25_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5D_.exit.i
  %.sroa.0.0.copyload48 = load i64, ptr %i.b, align 8
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.949.0.copyload = load ptr, ptr %.sroa.949.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.16.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.x = extractvalue { ptr, ptr } %i.u, 0
  %i.y = extractvalue { ptr, ptr } %i.u, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ %i.y, %bb.j ], [ %.sroa.14.0.copyload, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.x, %bb.j ], [ %.sroa.949.0.copyload, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ -9223372036854775806, %bb.j ], [ %.sroa.0.0.copyload48, %bb.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder16FileDeltaOutcomeNtNtB1K_5error5ErrorEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(128) %0)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, i64 104, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load i8, ptr %i.ab, align 8, !range !14, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1                ; 3 uses
  br i1 %i.ad, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !17, !noundef !5
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ag = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.ap, %bb.q ], [ %i.af, %bb.n ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = atomicrmw xchg ptr %i.am, i64 3 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.t, %bb.p
  br i1 %i.ad, label %bb.v, label %bb.aa

bb.t:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.al)
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ad, label %bb.x, label %.body

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.ar = load ptr, ptr %i.c, align 8, !alias.scope !2523, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !2523
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %bb.aa unwind label %bb.g

bb.x:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.au = load ptr, ptr %i.c, align 8, !alias.scope !2526, !nonnull !5, !noundef !5
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !2526
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.y, label %.body

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.v, %bb.s, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ab:                                            ; preds = %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvMNtB7_11thread_poolNtB2c_10ThreadPool7installNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_0INtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB3X_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB3T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5y_11FileVersionEEE0B3S_E0B3S_ENtB5_3Job7executeB30_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x ptr>, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2558, !noundef !5
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %.noexc40 unwind label %bb.g

.noexc40:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = extractelement <2 x ptr> %i.e, i64 0
  %i.i = extractelement <2 x ptr> %i.e, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i), "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2559
  store i64 0, ptr %i.c, align 8, !alias.scope !2560, !noalias !2559
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !2560, !noalias !2559
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !alias.scope !2560, !noalias !2559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2559
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !2561
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2561
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x ptr> %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2561
  invoke void @_RINvXsv_NtNtCsjFxWRWgRcyr_5rayon4iter6extendINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBL_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIBH_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2k_11FileVersionEEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB5w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.l unwind label %bb.e, !noalias !2559

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionTIBC_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1Z_11FileVersionEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %.body41 unwind label %bb.f, !noalias !2559

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !2559
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %.body41

.body41:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body42 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.l, %bb.e ]
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body42, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body41
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.x, %bb.aa, %bb.ab, %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.w, %bb.o ], [ %i.r, %bb.j ], [ %i.an, %bb.ab ], [ %i.an, %bb.aa ], [ %i.an, %bb.x ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.z, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2559
  %.sroa.0.0.copyload43 = load i64, ptr %i.c, align 8
  %.sroa.9.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.14.0.copyload = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2559
  %i.s = inttoptr i64 %.sroa.9.0.copyload to ptr
  br label %bb.n

bb.m:                                             ; preds = %.body41
  %i.t = extractvalue { ptr, ptr } %i.p, 0
  %i.u = extractvalue { ptr, ptr } %i.p, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.7.0 = phi ptr [ %i.u, %bb.m ], [ %.sroa.14.0.copyload, %bb.l ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.t, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %.sroa.04.0 = phi i64 [ -9223372036854775806, %bb.m ], [ %.sroa.0.0.copyload43, %bb.l ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1p_6string6StringINtNtB4_6option6OptionTIB1l_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2K_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  br label %.body

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.04.0, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load i8, ptr %i.y, align 8, !range !14, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1                 ; 3 uses
  br i1 %i.aa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = load ptr, ptr %i.x, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = load ptr, ptr %i.x, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.am, %bb.t ], [ %i.ac, %bb.q ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = atomicrmw xchg ptr %i.aj, i64 3 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.am, ptr %i.d, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.s
  br i1 %i.aa, label %bb.y, label %bb.ad

bb.w:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ai)
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.aa, label %bb.aa, label %.body

bb.y:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.ao = load ptr, ptr %i.d, align 8, !alias.scope !2564, !nonnull !5, !noundef !5
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !2564
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.ad unwind label %bb.j

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.ar = load ptr, ptr %i.d, align 8, !alias.scope !2567, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !2567
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.ab, label %.body

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.v, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ae:                                            ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2I_10filter_map17FilterMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB6k_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB7Q_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2B_s_0INtB5z_13CollectResultB6f_EBa7_E0TBa7_Ba7_EE0BaE_ENtB5_3Job7executeB92_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2580, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %.noexc39 unwind label %bb.e, !inline_history !2571

.noexc39:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2580
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2581
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB4y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB64_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCBR_s_0INtB3O_13CollectResultB4t_EB8k_E0B7g_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.j unwind label %bb.e, !inline_history !2571

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2580
  %.sroa.050.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.552.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.067 = phi ptr [ %i.m, %bb.k ], [ %.sroa.050.0.copyload, %bb.j ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %i.n, %bb.k ], [ %.sroa.451.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2u_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3K_11FileVersionEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load i8, ptr %i.r, align 8, !range !14, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2584, !nonnull !5, !noundef !5
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2584
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2587, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !2587
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2I_10filter_map17FilterMapConsumerNtNtB2I_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCB2B_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7m_3vec3VecTNtNtB7m_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB8j_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB9I_11FileVersionEEEB7f_E0TB7f_B7f_EE0BaT_ENtB5_3Job7executeB6a_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2600, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %.noexc39 unwind label %bb.e, !inline_history !2591

.noexc39:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2600
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2601
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5z_3vec3VecTNtNtB5z_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB6w_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB7V_11FileVersionEEEB5s_E0B4o_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.j unwind label %bb.e, !inline_history !2591

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2600
  %.sroa.050.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.552.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.067 = phi ptr [ %i.m, %bb.k ], [ %.sroa.050.0.copyload, %bb.j ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %i.n, %bb.k ], [ %.sroa.451.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtB1s_6string6StringINtNtB4_6option6OptionTIB2p_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3y_11FileVersionEEEB1l_EEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i8, ptr %i.r, align 8, !range !14, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2604, !nonnull !5, !noundef !5
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2604
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2607, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !2607
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4n_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2I_3map11MapConsumerIB5Y_INtNtB2I_10while_some17WhileSomeConsumerINtNtNtB2I_7collect8consumer15CollectConsumerNtB5f_16FileSearchResultEENCINvNvXs2_NtB2K_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2I_20FromParallelIteratorIB8E_ppEE13from_par_iter2okB7P_B4j_E0ENCNvB5f_13handle_searchs2_0EE0NCB2B_s_0INtB79_13CollectResultB7P_EBb0_E0TBb0_Bb0_EE0Bbx_ENtB5_3Job7executeB5h_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [152 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2620, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %.noexc39 unwind label %bb.e, !inline_history !2611

.noexc39:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2620
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2621
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %.sroa.660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 104, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB2D_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtBY_3map11MapConsumerIB4e_INtNtBY_10while_some17WhileSomeConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtB3v_16FileSearchResultEENCINvNvXs2_NtB10_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtBY_20FromParallelIteratorIB6R_ppEE13from_par_iter2okB62_B2z_E0ENCNvB3v_13handle_searchs2_0EE0NCBR_s_0INtB5n_13CollectResultB62_EB9b_E0B3x_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.j unwind label %bb.e, !inline_history !2611

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2620
  %.sroa.050.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.552.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.067 = phi ptr [ %i.m, %bb.k ], [ %.sroa.050.0.copyload, %bb.j ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %i.n, %bb.k ], [ %.sroa.451.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEB1l_EEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i8, ptr %i.r, align 8, !range !14, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2624, !nonnull !5, !noundef !5
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2624
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2627, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !2627
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4n_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB2I_3map11MapConsumerIB5Y_INtNtB2I_10while_some17WhileSomeConsumerNtNtB2I_6extend15ListVecConsumerENCINvNvXs2_NtB2K_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2I_20FromParallelIteratorIB82_ppEE13from_par_iter2okNtB5f_16FileSearchResultB4j_E0ENCNvB5f_13handle_searchs2_0EE0NCB2B_s_0INtNtNtB4n_11collections11linked_list10LinkedListINtNtB4n_3vec3VecB9A_EEBaI_E0TBaI_BaI_EE0BbY_ENtB5_3Job7executeB5h_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8sO4Nh65sHq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !2640, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %.noexc39 unwind label %bb.e, !inline_history !2631

.noexc39:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2640
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !2641
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.559.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB2D_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtBY_3map11MapConsumerIB4e_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtBY_20FromParallelIteratorIB6f_ppEE13from_par_iter2okNtB3v_16FileSearchResultB2z_E0ENCNvB3v_13handle_searchs2_0EE0NCBR_s_0INtNtNtB2D_11collections11linked_list10LinkedListINtNtB2D_3vec3VecB7M_EEB8T_E0B3x_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #30
          to label %bb.j unwind label %bb.e, !inline_history !2631

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2640
  %.sroa.050.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.552.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.067 = phi ptr [ %i.m, %bb.k ], [ %.sroa.050.0.copyload, %bb.j ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %i.n, %bb.k ], [ %.sroa.451.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1l_EEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.067, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.943.065, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load i8, ptr %i.r, align 8, !range !14, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2644, !nonnull !5, !noundef !5
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2644
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2647, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !2647
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB48_5slice12IterProducerTNtNtB1W_6string6StringINtNtB1W_4sync3ArcNtB3b_11DecodedFileEEEINtNtB46_3map11MapConsumerIB6I_INtNtB46_10while_some17WhileSomeConsumerNtNtB46_6extend15ListVecConsumerENCINvNvXs2_NtB48_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB46_20FromParallelIteratorIB8M_ppEE13from_par_iter2okB39_B5H_E0ENCNvB3b_13handle_searchs2_0EEs_0E0B1P_ENtB5_3Job7executeB3d_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.sroa.0.0.copyload) ]
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2665, !noundef !5
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2665, !noundef !5
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2665, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2665, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerNtNtB6_6extend15ListVecConsumerENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5l_ppEE13from_par_iter2okNtB2C_16FileSearchResultB1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.5.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c, !inline_history !2654

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.g unwind label %bb.f

.body39:                                          ; preds = %bb.z, %bb.ac, %bb.ad, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ac ], [ %i.ba, %bb.z ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2665
  %.sroa.055.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.557.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.074 = phi ptr [ %i.q, %bb.i ], [ %.sroa.055.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06571 = phi ptr [ %i.r, %bb.i ], [ %.sroa.456.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.557.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  %i.t = load i64, ptr %i.s, align 8, !range !16, !alias.scope !2666, !noundef !5
  switch i64 %i.t, label %bb.k [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2666 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !2666, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !2666 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2666

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5, !noalias !2666 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !5, !noalias !2666
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #19, !noalias !2666
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !invariant.load !5, !noalias !2666 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !5, !noalias !2666
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #19, !noalias !2666
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body39

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !14, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEEB2I_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.az, %bb.v ], [ %i.ap, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.an, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.ac, label %.body39

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !2669, !nonnull !5, !noundef !5
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !2669
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !2672, !nonnull !5, !noundef !5
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !2672
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ad, label %.body39

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body39 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ag:                                            ; preds = %.body39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body39
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2T_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4i_11FileVersionEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB5w_10filter_map17FilterMapConsumerNtNtB5w_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_ENtB5_3Job7executeB8Y_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.sroa.0.0.copyload), "nonnull"(ptr %.sroa.5.sroa.5.sroa.5.0.copyload) ]
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2690, !noundef !5
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2690, !noundef !5
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2690, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2690, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB3v_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.5.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.sroa.5.sroa.5.0.copyload)
          to label %bb.h unwind label %bb.c, !inline_history !2679

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.g unwind label %bb.f

.body39:                                          ; preds = %bb.z, %bb.ac, %bb.ad, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.az, %bb.ad ], [ %i.az, %bb.ac ], [ %i.az, %bb.z ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.055.0.copyload = load ptr, ptr %i.b, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.557.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.074 = phi ptr [ %i.q, %bb.i ], [ %.sroa.055.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06571 = phi ptr [ %i.r, %bb.i ], [ %.sroa.456.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.557.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  %i.s = load i64, ptr %0, align 8, !range !16, !alias.scope !2691, !noundef !5
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2691 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2691, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !2691 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2691

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !6, !invariant.load !5, !noalias !2691 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !7, !invariant.load !5, !noalias !2691
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #19, !noalias !2691
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !6, !invariant.load !5, !noalias !2691 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !7, !invariant.load !5, !noalias !2691
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #19, !noalias !2691
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB1c_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2z_11FileVersionEEENtNtNtB1S_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body39

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !range !14, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtB1r_6string6StringINtNtB4_6option6OptionTIB2o_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEEEECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.ay, %bb.v ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.am, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.ac, label %.body39

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %i.ba = load ptr, ptr %i.c, align 8, !alias.scope !2694, !nonnull !5, !noundef !5
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !2694
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  %i.bd = load ptr, ptr %i.c, align 8, !alias.scope !2697, !nonnull !5, !noundef !5
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !2697
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ad, label %.body39

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %.body39 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ag:                                            ; preds = %.body39
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body39
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB57_4sync3ArcNtB2V_11DecodedFileEEEINtNtB1W_3map11MapConsumerIB6k_INtNtB1W_10while_some17WhileSomeConsumerINtB1S_15CollectConsumerB2T_EENCINvNvXs2_NtB1Y_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1W_20FromParallelIteratorIB8l_ppEE13from_par_iter2okB2T_B53_E0ENCNvB2V_13handle_searchs2_0EEs_0E0B1P_ENtB5_3Job7executeB2X_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.f = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.sroa.0.0.copyload) ]
  %i.g = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2715, !noundef !5
  %i.h = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2715, !noundef !5
  %i.i = sub i64 %i.g, %i.h
  %i.j = load i64, ptr %i.f, align 8, !noalias !2715, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !2715, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1K_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEINtNtB6_3map11MapConsumerIB3l_INtNtB6_10while_some17WhileSomeConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtB2C_16FileSearchResultEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5X_ppEE13from_par_iter2okB59_B1G_E0ENCNvB2C_13handle_searchs2_0EEB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef %i.j, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.5.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.h unwind label %bb.c, !inline_history !2704

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.g unwind label %bb.f

.body39:                                          ; preds = %bb.z, %bb.ac, %bb.ad, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.f ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ac ], [ %i.ba, %bb.z ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2715
  %.sroa.055.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.557.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.r = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.074 = phi ptr [ %i.r, %bb.i ], [ %.sroa.055.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06571 = phi ptr [ %i.s, %bb.i ], [ %.sroa.456.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.557.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  %i.t = load i64, ptr %0, align 8, !range !16, !alias.scope !2716, !noundef !5
  switch i64 %i.t, label %bb.k [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2716 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !2716, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !2716 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2716

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5, !noalias !2716 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !5, !noalias !2716
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #19, !noalias !2716
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !invariant.load !5, !noalias !2716 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !5, !noalias !2716
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #19, !noalias !2716
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body39

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.am = load i8, ptr %i.al, align 8, !range !14, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEEB2s_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.az, %bb.v ], [ %i.ap, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.an, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.ac, label %.body39

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !2719, !nonnull !5, !noundef !5
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !2719
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !2722, !nonnull !5, !noundef !5
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !2722
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ad, label %.body39

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body39 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ag:                                            ; preds = %.body39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body39
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB2Y_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB4u_11FileVersionEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEs_0E0B1P_ENtB5_3Job7executeB8J_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.sroa.0.0.copyload) ]
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2740, !noundef !5
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2740, !noundef !5
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2740, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2740, !noundef !5
  invoke fastcc void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB3F_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB5b_11FileVersionEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds4_00EEB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.5.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c, !inline_history !2729

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
          to label %bb.g unwind label %bb.f

.body39:                                          ; preds = %bb.z, %bb.ac, %bb.ad, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ac ], [ %i.ba, %bb.z ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2740
  %.sroa.055.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.557.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.074 = phi ptr [ %i.q, %bb.i ], [ %.sroa.055.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06571 = phi ptr [ %i.r, %bb.i ], [ %.sroa.456.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.557.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.t = load i64, ptr %i.s, align 8, !range !16, !alias.scope !2741, !noundef !5
  switch i64 %i.t, label %bb.k [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2741 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !2741, !nonnull !5, !align !17, !noundef !5 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !2741 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2741

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5, !noalias !2741 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !5, !noalias !2741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #19, !noalias !2741
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !invariant.load !5, !noalias !2741 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !5, !noalias !2741
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #19, !noalias !2741
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB1h_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2N_11FileVersionEENtNtNtB1U_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body39

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.074, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.06571, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !14, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB2t_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3J_11FileVersionEEEECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.az, %bb.v ], [ %i.ap, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.an, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.ac, label %.body39

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !2744, !nonnull !5, !noundef !5
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !2744
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !2747, !nonnull !5, !noundef !5
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !2747
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ad, label %.body39

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %.body39 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ag:                                            ; preds = %.body39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body39
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCs8sO4Nh65sHq_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexbE4lockCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  %i.c = load i64, ptr %i.b, align 8, !range !11, !alias.scope !2750, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2750
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2750, !nonnull !5, !align !19, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !14, !alias.scope !2750, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !2750
end_hunk_2
