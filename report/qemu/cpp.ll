Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpp?download=true
inline.NumInlined: 552
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZZN6Plugin8tb_transEP14qemu_plugin_tbENKUlvE_clEv:bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.aa, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i ]
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.thread, %bb.f
  %i.ag = phi ptr [ %i.ab, %.thread ], [ %i.ac, %bb.f ]
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  ret ptr %i.ag
}

declare void @qemu_plugin_register_vcpu_tb_exec_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #19 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %3, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %3, ptr %i.z, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  store ptr %3, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %i.ac, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.d, align 8
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = urem i64 %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah
  store ptr %3, ptr %i.ai, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.0
  store ptr %i.aa, ptr %i.ak, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.al = load i64, ptr %i.f, align 8
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.f, align 8
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmS2_ISt6atomicImEP6PluginEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmS2_ISt6atomicImEP6PluginEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmS2_ISt6atomicImEP6PluginEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmS2_ISt6atomicImEP6PluginEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.02530, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.02530, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #21
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr void @_ZZN6Plugin8tb_transEP14qemu_plugin_tbENUljPvE_8__invokeEjS2_(i32 noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  %i.a = atomicrmw add ptr %1, i64 1 seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define internal void @"_ZZ19qemu_plugin_installEN3$_18__invokeEPv"(ptr noundef nonnull %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6Plugin7at_exitEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i.i.i.i, align 8  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 32) #21
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %"_ZZ19qemu_plugin_installENK3$_1clEPv.exit", label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.k = load i64, ptr %i.e, align 8
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %"_ZZ19qemu_plugin_installENK3$_1clEPv.exit"

"_ZZ19qemu_plugin_installENK3$_1clEPv.exit":      ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #21
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZN6Plugin7at_exitEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i, %bb.a
  %.sroa.065.0.a = phi ptr [ null, %bb.a ], [ %.sroa.065.1.a, %bb.i ] ; 17 uses
  %.sroa.12.0.a = phi ptr [ null, %bb.a ], [ %.sroa.12.1, %bb.i ] ; 14 uses
  %.sroa.18.0 = phi ptr [ null, %bb.a ], [ %.sroa.18.1, %bb.i ] ; 5 uses
  %.sroa.062.0.in = phi ptr [ %i.b, %bb.a ], [ %.sroa.062.0, %bb.i ]
  %.sroa.062.0 = load ptr, ptr %.sroa.062.0.in, align 8 ; 4 uses
  %i.c = icmp eq ptr %.sroa.062.0, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %i.d = icmp eq ptr %.sroa.065.0.a, %.sroa.12.0.a ; 2 uses
  br i1 %i.d, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6Plugin7at_exitEvEUlRKT_RKT0_E_EvSA_SA_SD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %.sroa.12.0.a to i64
  %i.f = ptrtoint ptr %.sroa.065.0.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_T1_(ptr %.sroa.065.0.a, ptr %.sroa.12.0.a, i64 noundef %i.k)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_(ptr %.sroa.065.0.a, ptr %.sroa.12.0.a)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6Plugin7at_exitEvEUlRKT_RKT0_E_EvSA_SA_SD_.exit unwind label %bb.l

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.062.0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.062.0, i64 16
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8              ; 2 uses
  %.not.i50 = icmp eq ptr %.sroa.12.0.a, %.sroa.18.0
  br i1 %.not.i50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.o, ptr %.sroa.12.0.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0.a, i64 8
  store i64 %i.n, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %.sroa.12.0.a to i64
  %i.q = ptrtoint ptr %.sroa.065.0.a to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i51 = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i51)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #18
          to label %.noexc53 unwind label %.loopexit ; 5 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %i.o, ptr %i.aa, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.n, ptr %.sroa.6.0..sroa_idx59, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.065.0.a, %.sroa.12.0.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc53, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc53 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.sroa.065.0.a, %.noexc53 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %.sroa.12.0.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc53
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc53 ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.065.0.a, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.065.0.a, i64 noundef %i.r) #21
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %.sroa.065.1.a = phi ptr [ %i.z, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.065.0.a, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12.0.a, %bb.e ]
  %.sroa.18.1 = phi ptr [ %i.ad, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.0, %bb.e ]
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.065.1.a, %.sroa.12.1
  br i1 %i.ae, label %bb.j, label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.9, i32 noundef 1235, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairImmESaIS1_EE4backEv, ptr noundef nonnull @.str.10) #22
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6Plugin7at_exitEvEUlRKT_RKT0_E_EvSA_SA_SD_.exit: ; preds = %bb.b, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %1, i8 0, i64 392, i1 false), !annotation !18
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6Plugin7at_exitEvEUlRKT_RKT0_E_EvSA_SA_SD_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.4, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.k
  br i1 %i.d, label %.critedge, label %.lr.ph

bb.l:                                             ; preds = %.noexc, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.m:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEZN6Plugin7at_exitEvEUlRKT_RKT0_E_EvSA_SA_SD_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.01691 = phi i64 [ %i.bp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 2 uses
  %.sroa.054.090 = phi ptr [ %i.bq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.065.0.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, -75
  %i.ar = or disjoint i32 %i.aq, 8
  store i32 %i.ar, ptr %i.ao, align 8
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %.lr.ph
  %i.at = load i64, ptr %.sroa.054.090, align 8
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.at)
          to label %bb.o unwind label %bb.r       ; 4 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, -75
  %i.bc = or disjoint i32 %i.bb, 2
  store i32 %i.bc, ptr %i.az, align 8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.054.090, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 noundef %i.bf)
          to label %_ZNSolsEm.exit42 unwind label %bb.r ; 4 uses

_ZNSolsEm.exit42:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSolsEm.exit42
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

bb.q:                                             ; preds = %_ZNSolsEm.exit42
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = add nuw nsw i64 %.01691, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.054.090, i64 16 ; 2 uses
  %i.br = icmp ne ptr %i.bq, %.sroa.12.0.a
  %i.bs = icmp samesign ult i64 %.01691, 9
  %or.cond = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %.lr.ph
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !25, !annotation !18
  store ptr %i.bu, ptr %2, align 8, !alias.scope !25
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bv, align 8, !alias.scope !25
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !25 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !25 ; 2 uses
  %i.ca = icmp ugt ptr %i.bx, %i.bz
  %.08.i.i.i = select i1 %i.ca, ptr %i.bx, ptr %i.bz ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !25 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %2, align 8, !alias.scope !25 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bu
  br i1 %i.cj, label %.body, label %.body.sink.split

bb.u:                                             ; preds = %.critedge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.u, %bb.s
  %i.cl = load ptr, ptr %2, align 8
  invoke void @qemu_plugin_outs(ptr noundef %i.cl)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = load ptr, ptr %2, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bu
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.co = load i64, ptr %i.bu, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cq, ptr %1, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cv, ptr %i.af, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.cz, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cw, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #19
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.de, ptr %1, align 8
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dg = getelementptr i8, ptr %i.de, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
  store ptr %i.df, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.not.i.i.i = icmp eq ptr %.sroa.065.0.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dl = ptrtoint ptr %.sroa.18.0 to i64
  %i.dm = ptrtoint ptr %.sroa.065.0.a to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.065.0.a, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.w
  ret void

bb.x:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %2, align 8               ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bu
  br i1 %i.dq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.t
  %.sink = phi ptr [ %i.ci, %bb.t ], [ %i.dp, %bb.x ]
  %.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %i.do, %bb.x ]
  %i.dr = load i64, ptr %i.bu, align 8
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ds) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %i.do, %bb.x ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %.body, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %.pn, %.body ], [ %i.bt, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.l
  %.sroa.18.095 = phi ptr [ %.sroa.18.0, %bb.l ], [ %.sroa.18.0, %bb.z ], [ %.sroa.12.0.a, %.loopexit ], [ %.sroa.12.0.a, %.loopexit.split-lp ]
  %.pn28 = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn.pn.pn.pn, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i48 = icmp eq ptr %.sroa.065.0.a, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit49, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = ptrtoint ptr %.sroa.18.095 to i64
  %i.du = ptrtoint ptr %.sroa.065.0.a to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.065.0.a, i64 noundef %i.dv) #21
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit49

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit49:      ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @qemu_plugin_outs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #12 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph25
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph25, !llvm.loop !26

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1824 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01923 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.g = add i64 %.01923, -1                      ; 3 uses
  %i.h = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEESC_SC_SC_SF_(ptr %0, ptr %storemerge1824) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_T1_(ptr %i.h, ptr %storemerge1824, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 256
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.08.019.i.idx = phi i64 [ %.sroa.08.019.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn18.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.019.i.idx ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.e, align 8
  %i.i = icmp ugt i64 %i.g, %i.h
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.08.019.i.ptr, align 8 ; 2 uses
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.j = lshr exact i64 %.sroa.08.019.i.idx, 4    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32 ; 2 uses
  %xtraiter56 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i64, ptr %i.l, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !27

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i64, ptr %i.t, align 8
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i64, ptr %i.z, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i64, ptr %i.af, align 8
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8
  store i64 %i.an, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !29

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8
  store i64 %i.g, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ugt i64 %i.g, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %i.au, %bb.c ]
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.019.i.ptr, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  %i.ax = load i64, ptr %.sroa.0.0.i.i, align 8
  store i64 %i.ax, ptr %.sroa.05.08.i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 8
  store i64 %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp ugt i64 %i.g, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i, !llvm.loop !30

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.08.019.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.05.0.lcssa.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %i.bc, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.019.i.add = add nuw nsw i64 %.sroa.08.019.i.idx, 16 ; 2 uses
  %i.bd = icmp eq i64 %.sroa.08.019.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bd, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %bb.b, !llvm.loop !31

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit: ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.lr.ph.i12

end_hunk_0
