Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend?download=true
inline.NumInlined: 551
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm:bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !113
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !161
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !161
  br label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !160
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !160
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #1

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !311

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !312
  br label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !311

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP11ggml_tensorSt6vectorIS4_SaIS4_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !147
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !147
  store ptr %i.p, ptr %.02530, align 8, !tbaa !152
  store ptr %.02530, ptr %i.g, align 8, !tbaa !147
  store ptr %i.g, ptr %i.n, align 8, !tbaa !161
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !152
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !161
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !152
  store ptr %i.s, ptr %.02530, align 8, !tbaa !152
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !161
  store ptr %.02530, ptr %i.t, align 8, !tbaa !152
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !310

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !146
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #26
  br label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !146
  store ptr %.0.i, ptr %0, align 8, !tbaa !145
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef ptr @ggml_backend_sched_new(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ggml_hash_set, align 8      ; 4 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1859, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %2, 17
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1860, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %ggml_backend_get_device.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 482, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

ggml_backend_get_device.exit:                     ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %.not.i87 = icmp eq ptr %i.h, null
  br i1 %.not.i87, label %bb.g, label %ggml_backend_dev_type.exit

bb.g:                                             ; preds = %ggml_backend_get_device.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 595, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24
  unreachable

ggml_backend_dev_type.exit:                       ; preds = %ggml_backend_get_device.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h), !inline_history !316
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ggml_backend_dev_type.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1861, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58) #24
  unreachable

bb.i:                                             ; preds = %ggml_backend_dev_type.exit
  %i.m = tail call noalias dereferenceable_or_null(1064) ptr @calloc(i64 noundef 1, i64 noundef 1064) #31 ; 27 uses
  %i.n = tail call ptr @getenv(ptr noundef nonnull @.str.59) #28 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 10) #28, !inline_history !313
  %i.p = trunc i64 %i.o to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.q = phi i32 [ %i.p, %bb.j ], [ 0, %bb.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1044
  store i32 %i.q, ptr %i.r, align 4, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1048
  %i.t = tail call ptr @getenv(ptr noundef nonnull @.str.60) #28 ; 2 uses
  %.not85 = icmp eq ptr %i.t, null
  br i1 %.not85, label %.lr.ph94, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.t, ptr noundef null, i32 noundef 10) #28, !inline_history !313
  %i.v = trunc i64 %i.u to i32
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.l, %bb.k
  %i.w = phi i32 [ %i.v, %bb.l ], [ 0, %bb.k ]
  store i32 %i.w, ptr %i.s, align 8, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 %2, ptr %i.x, align 4, !tbaa !120
  %i.y = select i1 %4, i32 4, i32 1               ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 456 ; 2 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @ggml_hash_set_new(ptr dead_on_unwind nonnull writable sret(%struct.ggml_hash_set) align 8 %6, i64 noundef %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 272 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !317
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !173 ; 2 uses
  %i.ac = shl i64 %i.ab, 2
  %i.ad = call noalias ptr @malloc(i64 noundef %i.ac) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 296 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !114
  %i.af = zext nneg i32 %2 to i64
  %i.ag = shl i64 %i.ab, 3
  %i.ah = mul i64 %i.ag, %i.af
  %i.ai = select i1 %4, i64 2, i64 0
  %i.aj = shl i64 %i.ah, %i.ai
  %i.ak = call noalias ptr @malloc(i64 noundef %i.aj) #27
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 304 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !129
  %i.am = mul i64 %3, 61                          ; 4 uses
  %i.an = call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 4) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !159
  %i.ap = call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 4) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !162
  %i.ar = call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 4) #31
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !174
  %i.at = call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 4) #31
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  store ptr %i.at, ptr %i.au, align 8, !tbaa !175
  %i.av = mul i64 %3, 20160
  %i.aw = call i64 @ggml_graph_overhead_custom(i64 noundef %3, i1 noundef zeroext false)
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 1032
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !107
  %i.az = call noalias ptr @malloc(i64 noundef %i.ax) #27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 1024
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !108
  %i.bb = call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 16, i64 noundef 128) #31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 440
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 452
  store i32 16, ptr %i.bd, align 4, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 996
  store i32 30, ptr %i.be, align 4, !tbaa !133
  %i.bf = call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 30, i64 noundef 8) #31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 984
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !134
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.not86 = icmp eq ptr %1, null
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.bj = getelementptr i8, ptr %i.m, i64 472
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bk = zext nneg i32 %i.y to i64
  %i.bl = shl nuw nsw i32 %i.y, 3
  %i.bm = zext nneg i32 %i.bl to i64
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit
  %i.bn = zext i1 %5 to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.bp = call ptr @ggml_gallocr_new_n(ptr noundef nonnull %i.bo, i32 noundef %2)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !176
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 1040
  store i8 %i.bn, ptr %i.br, align 8, !tbaa !164
  %i.bs = load i8, ptr %i.m, align 8, !tbaa !106, !range !165, !noundef !166
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %ggml_backend_sched_reset.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  call void @ggml_hash_set_reset(ptr noundef nonnull %i.aa)
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.bv = load i64, ptr %i.aa, align 8, !tbaa !173
  %i.bw = shl i64 %i.bv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bu, i8 -1, i64 %i.bw, i1 false)
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !129
  %i.by = load i64, ptr %i.aa, align 8, !tbaa !173
  %i.bz = load i32, ptr %i.x, align 4, !tbaa !120
  %i.ca = sext i32 %i.bz to i64
  %i.cb = load i32, ptr %i.z, align 8, !tbaa !130
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl i64 %i.by, 3
  %i.ce = mul i64 %i.cd, %i.ca
  %i.cf = mul i64 %i.ce, %i.cc
  call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %i.cf, i1 false)
  store i8 1, ptr %i.m, align 8, !tbaa !106
  br label %ggml_backend_sched_reset.exit

ggml_backend_sched_reset.exit:                    ; preds = %._crit_edge, %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 0, ptr %i.cg, align 1, !tbaa !177
  ret ptr %i.m

bb.n:                                             ; preds = %.lr.ph94, %.loopexit
  %i.ch = phi i32 [ %i.y, %.lr.ph94 ], [ %i.dq, %.loopexit ]
  %indvars.iv100 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next101, %.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv100 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !122 ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv100
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !122
  br i1 %.not86, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv100
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !124
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %.not.i89 = icmp eq ptr %i.cj, null
  br i1 %.not.i89, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !63 ; 3 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %bb.s, label %ggml_backend_get_default_buffer_type.exit

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 616, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24
  unreachable

ggml_backend_get_default_buffer_type.exit:        ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !67
  %i.cr = call noundef ptr %i.cq(ptr noundef nonnull %i.co), !inline_history !68
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !122
  br label %bb.t

bb.t:                                             ; preds = %ggml_backend_get_default_buffer_type.exit, %bb.o
  %i.cs = phi ptr [ %i.cj, %bb.o ], [ %.pre, %ggml_backend_get_default_buffer_type.exit ] ; 2 uses
  %i.ct = phi ptr [ %i.cm, %bb.o ], [ %i.cr, %ggml_backend_get_default_buffer_type.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv100
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !124
  %.not.i90 = icmp eq ptr %i.cs, null
  br i1 %.not.i90, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !63 ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i91, label %bb.w, label %ggml_backend_supports_buft.exit

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 640, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24
  unreachable

ggml_backend_supports_buft.exit:                  ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !79
  %i.cz = call noundef zeroext i1 %i.cy(ptr noundef nonnull %i.cw, ptr noundef %i.ct), !inline_history !167
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %ggml_backend_supports_buft.exit
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1907, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.61) #24
  unreachable

bb.y:                                             ; preds = %ggml_backend_supports_buft.exit
  %i.da = icmp sgt i32 %i.ch, 1
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.y
  %i.db = getelementptr [32 x i8], ptr %i.bj, i64 %indvars.iv100 ; 2 uses
  %i.dc = load ptr, ptr %i.ci, align 8, !tbaa !122
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 136
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, i8 0, i64 %i.bm, i1 false), !tbaa !179
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %ggml_backend_event_new.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %ggml_backend_event_new.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.dg = load ptr, ptr %i.ci, align 8, !tbaa !122
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 136
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !63 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %ggml_backend_event_new.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !84 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %ggml_backend_event_new.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = call noundef ptr %i.dl(ptr noundef nonnull %i.di), !inline_history !318
  br label %ggml_backend_event_new.exit

ggml_backend_event_new.exit:                      ; preds = %.lr.ph.split, %bb.z, %bb.aa
  %.0.i = phi ptr [ %i.dn, %bb.aa ], [ null, %bb.z ], [ null, %.lr.ph.split ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  store ptr %.0.i, ptr %i.do, align 8, !tbaa !179
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.dp, label %.lr.ph.split, label %.loopexit, !llvm.loop !314

.loopexit:                                        ; preds = %ggml_backend_event_new.exit, %.lr.ph.split.us, %bb.y
  %i.dq = phi i32 [ 1, %bb.y ], [ %i.y, %.lr.ph.split.us ], [ %i.y, %ggml_backend_event_new.exit ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !315
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #20

declare void @ggml_hash_set_new(ptr dead_on_unwind writable sret(%struct.ggml_hash_set) align 8, i64 noundef) local_unnamed_addr #5

declare i64 @ggml_graph_overhead_custom(i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @ggml_gallocr_new_n(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @ggml_backend_sched_reset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1954, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !106, !range !165, !noundef !166
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  tail call void @ggml_hash_set_reset(ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = load i64, ptr %i.c, align 8, !tbaa !173
  %i.g = shl i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 -1, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.j = load i64, ptr %i.c, align 8, !tbaa !173
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !120
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.o = load i32, ptr %i.n, align 8, !tbaa !130
  %i.p = sext i32 %i.o to i64
  %i.q = shl i64 %i.j, 3
  %i.r = mul i64 %i.q, %i.m
  %i.s = mul i64 %i.r, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.s, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !177
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define void @ggml_backend_sched_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader32

.preheader32:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !120  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge35

.preheader.lr.ph:                                 ; preds = %.preheader32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load i32, ptr %i.e, align 8, !tbaa !130  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader, label %._crit_edge35

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.i = phi i32 [ %i.w, %._crit_edge ], [ %i.c, %.preheader.lr.ph ]
  %i.j = phi i32 [ %i.x, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %i.k = phi i32 [ %i.y, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv42
  br label %bb.b

._crit_edge35:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !176
  tail call void @ggml_gallocr_free(ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109
  tail call void @ggml_free(ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @ggml_hash_set_free(ptr noundef nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %._crit_edge35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %ggml_backend_event_free.exit
  %.pre48 = load i32, ptr %i.b, align 4, !tbaa !120
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.w = phi i32 [ %.pre48, %._crit_edge.loopexit ], [ %i.i, %.preheader ] ; 2 uses
  %i.x = phi i32 [ %i.ai, %._crit_edge.loopexit ], [ %i.j, %.preheader ]
  %i.y = phi i32 [ %i.ai, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = icmp slt i64 %indvars.iv.next43, %i.z
  br i1 %i.aa, label %.preheader, label %._crit_edge35, !llvm.loop !319

bb.b:                                             ; preds = %.lr.ph, %ggml_backend_event_free.exit
  %i.ab = phi i32 [ %i.j, %.lr.ph ], [ %i.ai, %ggml_backend_event_free.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %ggml_backend_event_free.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %ggml_backend_event_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87
  tail call void %i.ah(ptr noundef %i.af, ptr noundef nonnull %i.ad), !inline_history !322
  %.pre = load i32, ptr %i.e, align 8, !tbaa !130
  br label %ggml_backend_event_free.exit

ggml_backend_event_free.exit:                     ; preds = %bb.b, %bb.c
  %i.ai = phi i32 [ %i.ab, %bb.b ], [ %.pre, %bb.c ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !320

._crit_edge39:                                    ; preds = %bb.d, %._crit_edge35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !125
  tail call void @free(ptr noundef %i.am) #28
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134
  tail call void @free(ptr noundef %i.ao) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.aq) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.as) #28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !159
  tail call void @free(ptr noundef %i.au) #28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !162
  tail call void @free(ptr noundef %i.aw) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !174
  tail call void @free(ptr noundef %i.ay) #28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !175
  tail call void @free(ptr noundef %i.ba) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !108
  tail call void @free(ptr noundef %i.bc) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.be) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.bg) #28
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph38, %bb.d
  %indvars.iv45 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next46, %bb.d ] ; 2 uses
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bh, i64 %indvars.iv45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !136
  tail call void @free(ptr noundef %i.bk) #28
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.bl = load i32, ptr %i.s, align 4, !tbaa !131
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next46, %i.bm
  br i1 %i.bn, label %bb.d, label %._crit_edge39, !llvm.loop !321

bb.e:                                             ; preds = %bb.a, %._crit_edge39
  ret void
end_hunk_0
