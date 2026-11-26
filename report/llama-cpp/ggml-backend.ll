Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend?download=true
inline.NumInlined: 551
inline.NumDeleted: 239
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL38ggml_backend_sched_backend_from_bufferP18ggml_backend_schedPK11ggml_tensorS3_:bb.a
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.s, null
  br i1 %.not.i.i21, label %bb.i, label %ggml_backend_supports_op.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 635, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24
  unreachable

ggml_backend_supports_op.exit:                    ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull %i.s, ptr noundef %2), !inline_history !123
  br i1 %i.v, label %.loopexit.loopexit.split.loop.exit30, label %bb.j

bb.j:                                             ; preds = %ggml_backend_supports_buft.exit, %ggml_backend_supports_op.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.e, align 4, !tbaa !120
  %i.x = sext i32 %i.w to i64
  %.not19 = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %.not19, label %bb.b, label %.loopexit, !llvm.loop !301

.loopexit.loopexit.split.loop.exit30:             ; preds = %ggml_backend_supports_op.exit
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit.split.loop.exit30, %.preheader, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %.preheader ], [ %i.y, %.loopexit.loopexit.split.loop.exit30 ], [ -1, %bb.j ]
  ret i32 %.1
}

declare ptr @ggml_op_name(i32 noundef) local_unnamed_addr #5

declare ptr @ggml_dup_tensor(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @ggml_log_internal(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define ptr @ggml_backend_sched_get_tensor_backend(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 4
  %i.f = load i64, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.g = urem i64 %i.e, %i.f                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.ab, %bb.g ]
  %.0.fr.i = freeze i64 %.0.i                     ; 6 uses
  %i.k = lshr i64 %.0.fr.i, 5                     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117  ; 2 uses
  %i.n = trunc i64 %.0.fr.i to i32
  %i.o = and i32 %i.n, 31
  %i.p = shl nuw i32 1, %i.o                      ; 2 uses
  %i.q = and i32 %i.p, %i.m
  %.not21.i = icmp eq i32 %i.q, 0
  br i1 %.not21.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.s = or i32 %i.p, %i.m
  store i32 %i.s, ptr %i.r, align 4, !tbaa !117
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0.fr.i
  store ptr %1, ptr %i.u, align 8, !tbaa !113
  br label %_ZL24ggml_hash_find_or_insertP13ggml_hash_setP11ggml_tensor.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.fr.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZL24ggml_hash_find_or_insertP13ggml_hash_setP11ggml_tensor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add i64 %.0.fr.i, 1                      ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.f
  %i.ab = select i1 %i.aa, i64 0, i64 %i.z        ; 2 uses
  %.not.i = icmp eq i64 %i.ab, %i.g
  br i1 %.not.i, label %bb.h, label %bb.d, !llvm.loop !1

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.38, i32 noundef 318, ptr noundef nonnull @.str.39) #24
  unreachable

_ZL24ggml_hash_find_or_insertP13ggml_hash_setP11ggml_tensor.exit: ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.fr.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !117 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZL24ggml_hash_find_or_insertP13ggml_hash_setP11ggml_tensor.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %_ZL24ggml_hash_find_or_insertP13ggml_hash_setP11ggml_tensor.exit, %bb.i
  %.0 = phi ptr [ %i.ai, %bb.i ], [ null, %_ZL24ggml_hash_find_or_insertP13ggml_hash_setP11ggml_tensor.exit ]
  ret ptr %.0
}

declare ptr @ggml_op_desc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZ30ggml_backend_sched_split_graphEN3$_08__invokeEPvP11ggml_tensorS2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<ggml_tensor *, std::pair<ggml_tensor *const, std::vector<ggml_tensor *>>, std::allocator<std::pair<ggml_tensor *const, std::vector<ggml_tensor *>>>, std::__detail::_Select1st, std::equal_to<ggml_tensor *>, std::hash<ggml_tensor *>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %2, %i.o
  br i1 %i.l, label %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.020.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !152 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = urem i64 %i.p, %i.c
  %.not19.i.i.i.i.i = icmp eq i64 %i.q, %i.d
  br i1 %.not19.i.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.d
  br label %.loopexit.i.i.i, !llvm.loop !3

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !303
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 5 uses
  store ptr null, ptr %i.s, align 8, !tbaa !152
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !308
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !171
  %i.v = invoke ptr @_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.s, i64 noundef 1)
          to label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i unwind label %bb.e

_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i

bb.e:                                             ; preds = %.loopexit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.w

_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i, %bb.b
  %.pn.i.i.i = phi ptr [ %i.v, %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i ], [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16 ; 2 uses
  %i.x = load ptr, ptr %.1.i.i.i, align 8, !tbaa !148 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148  ; 6 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 9 uses
  %i.ad = ashr i64 %i.ac, 5                       ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i
  %i.af = and i64 %i.ac, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.af ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.as, %bb.j ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.ar, %bb.j ] ; 9 uses
  %i.ag = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !113
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !113
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.as = add nsw i64 %.052.i.i.i.i, -1
  %i.at = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.at, label %bb.f, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !302

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.aa, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ac, %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.x, %_ZNSt13unordered_mapIP11ggml_tensorSt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEEixERSA_.exit.i ] ; 5 uses
  %i.au = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.au, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !113
  %i.aw = icmp eq ptr %i.av, %1
  br i1 %i.aw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ax, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ay = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !113
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ba, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bb = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !113
  %i.bc = icmp eq ptr %i.bb, %1
  %spec.select.i.i.i.i = select i1 %i.bc, ptr %.sroa.032.2.i.i.i.i, ptr %i.z
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit28: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit30: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i: ; preds = %bb.f, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit28, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit30, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.k ], [ %i.bf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit30 ], [ %i.bd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.be, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit28 ], [ %.sroa.032.051.i.i.i.i, %bb.f ]
  %i.bg = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.z
  br i1 %i.bg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i, label %"_ZZ30ggml_backend_sched_split_graphENK3$_0clEPvP11ggml_tensorS2_.exit"

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, %._crit_edge.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !163
  %.not.i.i = icmp eq ptr %i.z, %i.bi
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i
  store ptr %1, ptr %i.z, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !150
  br label %"_ZZ30ggml_backend_sched_split_graphENK3$_0clEPvP11ggml_tensorS2_.exit"

bb.o:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i
  %i.bk = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.bk, label %bb.p, label %_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #24
  unreachable

_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bl = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #25 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.ac ; 2 uses
  store ptr %1, ptr %i.bs, align 8, !tbaa !113
  %i.bt = icmp sgt i64 %i.ac, 0
  br i1 %i.bt, label %bb.q, label %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIP11ggml_tensorSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP11ggml_tensorSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #26
  br label %_ZNSt6vectorIP11ggml_tensorSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP11ggml_tensorSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIP11ggml_tensorSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.br, ptr %.1.i.i.i, align 8, !tbaa !151
  store ptr %i.bu, ptr %i.y, align 8, !tbaa !150
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bv, ptr %i.bh, align 8, !tbaa !163
  br label %"_ZZ30ggml_backend_sched_split_graphENK3$_0clEPvP11ggml_tensorS2_.exit"

"_ZZ30ggml_backend_sched_split_graphENK3$_0clEPvP11ggml_tensorS2_.exit": ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, %bb.n, %_ZNSt6vectorIP11ggml_tensorSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !309
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !160
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !309
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !146
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  store ptr %i.w, ptr %3, align 8, !tbaa !152
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !161
  store ptr %3, ptr %i.x, align 8, !tbaa !152
  br label %_ZNSt10_HashtableIP11ggml_tensorSt4pairIKS1_St6vectorIS1_SaIS1_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !147
  store ptr %i.z, ptr %3, align 8, !tbaa !152
  store ptr %3, ptr %i.y, align 8, !tbaa !147
  %i.aa = load ptr, ptr %3, align 8, !tbaa !152   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !146
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

end_hunk_0
