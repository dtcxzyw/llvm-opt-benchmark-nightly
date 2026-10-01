Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dioph_eq?download=true
inline.NumInlined: 4408
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_17_ReuseOrAllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEEvOT_RKT0_:bb.a
  br i1 %.not.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !278  ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !257

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !326
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !257

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIjLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !279
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = phi ptr [ %.0.i, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ], [ %i.a, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !280  ; 3 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %2, align 8, !tbaa !346    ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !216
  store ptr %i.o, ptr %2, align 8, !tbaa !346
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.p = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %._crit_edge unwind label %bb.q

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !279
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.q = phi ptr [ %i.j, %bb.j ], [ %.pre, %._crit_edge ] ; 2 uses
  %.sink13.i = phi ptr [ %i.n, %bb.j ], [ %i.p, %._crit_edge ] ; 4 uses
  store ptr null, ptr %.sink13.i, align 8, !tbaa !216
  %i.r = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.s = load i32, ptr %i.m, align 4, !tbaa !205  ; 2 uses
  store i32 %i.s, ptr %i.r, align 8, !tbaa !205
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.sink13.i, ptr %i.t, align 8, !tbaa !280
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !278  ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = urem i64 %i.w, %i.v
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.x
  store ptr %i.t, ptr %i.y, align 8, !tbaa !260
  %.02737 = load ptr, ptr %i.l, align 8, !tbaa !216 ; 2 uses
  %.not3038 = icmp eq ptr %.02737, null
  br i1 %.not3038, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %i.z = phi ptr [ %i.af, %bb.s ], [ %i.q, %bb.l ]
  %i.aa = phi i64 [ %i.ag, %bb.s ], [ %i.v, %bb.l ]
  %.02740 = phi ptr [ %.027, %bb.s ], [ %.02737, %bb.l ] ; 2 uses
  %.039 = phi ptr [ %.sink13.i34, %bb.s ], [ %.sink13.i, %bb.l ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02740, i64 8
  %i.ac = load ptr, ptr %2, align 8, !tbaa !346   ; 3 uses
  %.not.i33 = icmp eq ptr %i.ac, null
  br i1 %.not.i33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !216
  store ptr %i.ad, ptr %2, align 8, !tbaa !346
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %._crit_edge41 unwind label %bb.r

._crit_edge41:                                    ; preds = %bb.n
  %.pre42 = load i64, ptr %i.u, align 8, !tbaa !278
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !279
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge41, %bb.m
  %i.af = phi ptr [ %i.z, %bb.m ], [ %.pre43, %._crit_edge41 ] ; 2 uses
  %i.ag = phi i64 [ %i.aa, %bb.m ], [ %.pre42, %._crit_edge41 ] ; 2 uses
  %.sink13.i34 = phi ptr [ %i.ac, %bb.m ], [ %i.ae, %._crit_edge41 ] ; 4 uses
  store ptr null, ptr %.sink13.i34, align 8, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink13.i34, i64 8
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !205 ; 2 uses
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !205
  store ptr %.sink13.i34, ptr %.039, align 8, !tbaa !216
  %i.aj = zext i32 %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !260
  %.not32 = icmp eq ptr %i.am, null
  br i1 %.not32, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store ptr %.039, ptr %i.al, align 8, !tbaa !260
  br label %bb.s

bb.q:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.o
  %.027 = load ptr, ptr %.02740, align 8, !tbaa !216 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !635

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.an, %bb.q ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %.026) #20 ; 0 uses
  tail call void @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  br i1 %.not.not, label %bb.u, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.u:                                             ; preds = %bb.t
  %i.aq = load ptr, ptr %0, align 8, !tbaa !279   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !278
  %i.av = shl i64 %i.au, 3
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.av) #22
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.w:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.v, %bb.u, %bb.t
  invoke void @__cxa_rethrow() #24
          to label %bb.z unwind label %bb.w

bb.x:                                             ; preds = %bb.w
  resume { ptr, i32 } %i.aw

.loopexit:                                        ; preds = %bb.s, %bb.l, %bb.h
  ret void

bb.y:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

bb.z:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8dioph_eq3imp20tighten_terms_with_SEv(ptr noundef nonnull align 8 dereferenceable(1328) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %2 = alloca %"class.std::vector.6", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !249  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not97 = icmp eq i32 %i.d, 0
  br i1 %.not97, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !271   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = icmp eq ptr %.pre, %i.di
  br i1 %i.o, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = ptrtoint ptr %i.di to i64
  %i.q = ptrtoint ptr %.pre to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = xor i64 %i.u, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEElNS0_5__ops15_Iter_comp_iterIZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EEEvT_SF_T0_T1_(ptr %.pre, ptr %i.di, i64 noundef %i.v, ptr nonnull %0)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  %i.w = icmp sgt i64 %i.r, 64
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 64 ; 2 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEENS0_5__ops15_Iter_comp_iterIZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EEEvT_SF_T0_(ptr %.pre, ptr nonnull %i.x, ptr nonnull %0)
          to label %.noexc39 unwind label %bb.u

.noexc39:                                         ; preds = %bb.c
  invoke void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEENS0_5__ops15_Iter_comp_iterIZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EEEvT_SF_T0_(ptr nonnull %i.x, ptr %i.di, ptr nonnull %0)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split unwind label %bb.u

bb.d:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEENS0_5__ops15_Iter_comp_iterIZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EEEvT_SF_T0_(ptr %.pre, ptr %i.di, ptr nonnull %0)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split unwind label %bb.u

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.dg, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 10 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.dh, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.di, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 5 uses
  %.02598 = phi ptr [ %i.c, %.lr.ph ], [ %i.dj, %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit ] ; 2 uses
  %i.ab = load i32, ptr %.02598, align 4, !tbaa !205 ; 8 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !176, !nonnull !45, !align !46
  %i.ad = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ac)
          to label %bb.f unwind label %.loopexit  ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !221
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !220
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 24
  %i.am = trunc i64 %i.al to i32
  %.not35 = icmp ult i32 %i.ab, %i.am
  br i1 %.not35, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !176, !nonnull !45, !align !46
  %i.ao = invoke noundef zeroext i1 @_ZNK2lp10lar_solver15column_has_termEj(ptr noundef nonnull align 8 dereferenceable(152) %i.an, i32 noundef %i.ab)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  br i1 %i.ao, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !176, !nonnull !45, !align !46
  %i.aq = invoke noundef zeroext i1 @_ZNK2lp10lar_solver14column_is_freeEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ap, i32 noundef %i.ab)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  br i1 %i.aq, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !310, !nonnull !45, !align !46
  %i.as = invoke noundef zeroext i1 @_ZNK2lp10int_solver13column_is_intEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i32 noundef %i.ab)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  br i1 %i.as, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !200 ; 6 uses
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !298
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ab, ptr %i.at, align 4, !tbaa !205
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.av, ptr %i.l, align 8, !tbaa !200
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

bb.o:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %2, align 8, !tbaa !201   ; 7 uses
  %i.ax = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %.invoke, label %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.o, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bg)
          to label %.noexc44 unwind label %.loopexit ; 8 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIj13std_allocatorIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i32 %i.ab, ptr %i.bi, align 4, !tbaa !205
  %.not10.i.i.i.i.i = icmp eq ptr %i.aw, %i.at
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc44
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %i.bk = add i64 %i.ax, -4
  %i.bl = sub i64 %i.bk, %i.ay                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 28
  %i.bo = sub i64 %i.ay, %i.bj
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond161 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond161, label %.lr.ph.i.i.i.i.i.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.aw, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.aw, i64 %i.bs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.bt = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !205, !alias.scope !647, !noalias !646
  %wide.load142 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !205, !alias.scope !647, !noalias !646
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !205, !alias.scope !646, !noalias !647
  store <4 x i32> %wide.load142, ptr %i.bu, align 4, !tbaa !205, !alias.scope !646, !noalias !647
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader163

.lr.ph.i.i.i.i.i.preheader163:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader163, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader163 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader163 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.bw = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !205, !alias.scope !647, !noalias !646
end_hunk_0
begin_hunk_1_@_ZN2lp8dioph_eq3imp20tighten_terms_with_SEv:bb.a
  %.not.i23.i.i57 = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i57, label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i55
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.y)
          to label %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58 unwind label %.loopexit

_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58: ; preds = %bb.t, %_ZNSt6vectorIj13std_allocatorIjEE11_S_relocateEPjS3_S3_RS1_.exit22.i.i55
  store ptr %i.cm, ptr %1, align 8, !tbaa !201
  store ptr %i.de, ptr %i.j, align 8, !tbaa !200
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  store ptr %i.df, ptr %i.k, align 8, !tbaa !298
  br label %_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit

_ZNSt6vectorIj13std_allocatorIjEE9push_backERKj.exit: ; preds = %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58, %bb.r, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i, %bb.n
  %i.dg = phi ptr [ %i.cm, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58 ], [ %i.y, %bb.r ], [ %i.y, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.y, %bb.n ]
  %i.dh = phi ptr [ %i.df, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58 ], [ %i.z, %bb.r ], [ %i.z, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.z, %bb.n ]
  %i.di = phi ptr [ %i.de, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i58 ], [ %i.cb, %bb.r ], [ %i.aa, %_ZNSt6vectorIj13std_allocatorIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS2_EEDpOT_.exit.i ], [ %i.aa, %bb.n ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02598, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.dj, %i.f
  br i1 %.not, label %._crit_edge, label %bb.e

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split: ; preds = %bb.d, %.noexc39, %._crit_edge.thread
  %.ph = phi ptr [ %i.n, %bb.d ], [ %i.n, %.noexc39 ], [ %i.g, %._crit_edge.thread ]
  %.pr = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split, %._crit_edge
  %i.dk = phi ptr [ %.pr, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split ], [ %.pre, %._crit_edge ] ; 4 uses
  %i.dl = phi ptr [ %.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exitthread-pre-split ], [ %i.n, %._crit_edge ]
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !271 ; 2 uses
  %i.dn = icmp eq ptr %i.dk, %i.dm
  br i1 %i.dn, label %_ZN16indexed_uint_set6removeEj.exit, label %.lr.ph101

.lr.ph101:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.d, %.noexc39, %bb.c, %bb.b
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.v:                                             ; preds = %.lr.ph101, %_ZN2lp4joinENS_8lia_moveES0_.exit.thread
  %.0100 = phi i32 [ 5, %.lr.ph101 ], [ %.1.ph, %_ZN2lp4joinENS_8lia_moveES0_.exit.thread ] ; 10 uses
  %.sroa.077.099 = phi ptr [ %i.dk, %.lr.ph101 ], [ %i.fs, %_ZN2lp4joinENS_8lia_moveES0_.exit.thread ] ; 2 uses
  %i.dq = load i32, ptr %.sroa.077.099, align 4, !tbaa !205 ; 8 uses
  %i.dr = invoke noundef zeroext i1 @_ZN2lp8dioph_eq3imp22is_big_term_or_no_termEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.dq)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %i.dr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !249
  %i.dt = add i32 %i.ds, -1                       ; 2 uses
  store i32 %i.dt, ptr %i.a, align 8, !tbaa !249
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !204 ; 3 uses
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !205 ; 3 uses
  %.not.i63 = icmp eq i32 %i.dq, %i.dx
  br i1 %.not.i63, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !204 ; 2 uses
  %i.dz = zext i32 %i.dq to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !205 ; 2 uses
  %i.ec = zext i32 %i.dx to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ec
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !205
  %i.ee = zext i32 %i.eb to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ee
  store i32 %i.dx, ptr %i.ef, align 4, !tbaa !205
  %i.eg = load i32, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  store i32 %i.eg, ptr %i.ea, align 4, !tbaa !205
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.eh
  store i32 %i.dq, ptr %i.ei, align 4, !tbaa !205
  br label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread

bb.z:                                             ; preds = %bb.v
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aa:                                            ; preds = %bb.w
  %i.ek = invoke noundef i32 @_ZN2lp8dioph_eq3imp30tighten_bounds_for_term_columnEj(ptr noundef nonnull align 8 dereferenceable(1328) %0, i32 noundef %i.dq)
          to label %bb.ab unwind label %bb.al     ; 10 uses

bb.ab:                                            ; preds = %bb.aa
  %i.el = load i32, ptr %i.a, align 8, !tbaa !249
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %i.a, align 8, !tbaa !249
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !204 ; 3 uses
  %i.eo = zext i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !205 ; 3 uses
  %.not.i64 = icmp eq i32 %i.dq, %i.eq
  br i1 %.not.i64, label %_ZN16indexed_uint_set6removeEj.exit65, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.do, align 8, !tbaa !204 ; 2 uses
  %i.es = zext i32 %i.dq to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !205 ; 2 uses
  %i.ev = zext i32 %i.eq to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ev
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !205
  %i.ex = zext i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ex
  store i32 %i.eq, ptr %i.ey, align 4, !tbaa !205
  %i.ez = load i32, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  store i32 %i.ez, ptr %i.et, align 4, !tbaa !205
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fa
  store i32 %i.dq, ptr %i.fb, align 4, !tbaa !205
  br label %_ZN16indexed_uint_set6removeEj.exit65

_ZN16indexed_uint_set6removeEj.exit65:            ; preds = %bb.ab, %bb.ac
  %i.fc = icmp eq i32 %i.ek, %.0100
  %i.fd = icmp eq i32 %i.ek, 5
  %or.cond = or i1 %i.fc, %i.fd
  br i1 %or.cond, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN16indexed_uint_set6removeEj.exit65
  %i.fe = icmp eq i32 %.0100, 5
  br i1 %i.fe, label %_ZN2lp4joinENS_8lia_moveES0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = icmp eq i32 %i.ek, 3
  br i1 %i.ff, label %_ZN16indexed_uint_set6removeEj.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = icmp eq i32 %i.ek, 6
  %i.fh = icmp eq i32 %.0100, 6
  %or.cond3.i = or i1 %i.fh, %i.fg
  br i1 %or.cond3.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = icmp eq i32 %i.ek, 0
  %i.fj = icmp eq i32 %.0100, 0
  %or.cond5.i = or i1 %i.fj, %i.fi
  br i1 %or.cond5.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fk = icmp eq i32 %i.ek, 4
  %i.fl = icmp eq i32 %.0100, 4
  %or.cond7.i = or i1 %i.fl, %i.fk
  br i1 %or.cond7.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = icmp eq i32 %i.ek, 2
  %i.fn = icmp eq i32 %.0100, 2
  %or.cond9.i = or i1 %i.fn, %i.fm
  br i1 %or.cond9.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = icmp eq i32 %i.ek, 1
  %i.fp = icmp eq i32 %.0100, 1
  %or.cond11.i = or i1 %i.fp, %i.fo
  br i1 %or.cond11.i, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.13, i32 noundef 74, ptr noundef nonnull @.str.12)
          to label %.noexc66 unwind label %bb.al

.noexc66:                                         ; preds = %bb.ak
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN2lp4joinENS_8lia_moveES0_.exit unwind label %bb.al

_ZN2lp4joinENS_8lia_moveES0_.exit:                ; preds = %bb.ad, %_ZN16indexed_uint_set6removeEj.exit65, %.noexc66
  %.0.i = phi i32 [ %i.ek, %.noexc66 ], [ %.0100, %_ZN16indexed_uint_set6removeEj.exit65 ], [ %i.ek, %bb.ad ]
  %.0.i.fr = freeze i32 %.0.i                     ; 2 uses
  %i.fq = icmp eq i32 %.0.i.fr, 3
  br i1 %i.fq, label %_ZN16indexed_uint_set6removeEj.exit, label %_ZN2lp4joinENS_8lia_moveES0_.exit.thread

bb.al:                                            ; preds = %.noexc66, %bb.ak, %bb.aa
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZN2lp4joinENS_8lia_moveES0_.exit.thread:         ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.aj, %bb.y, %bb.x, %_ZN2lp4joinENS_8lia_moveES0_.exit
  %.1.ph = phi i32 [ %.0.i.fr, %_ZN2lp4joinENS_8lia_moveES0_.exit ], [ %.0100, %bb.y ], [ %.0100, %bb.x ], [ 2, %bb.ai ], [ 4, %bb.ah ], [ 0, %bb.ag ], [ 6, %bb.af ], [ 1, %bb.aj ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.077.099, i64 4 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.dm
  br i1 %i.ft, label %_ZN16indexed_uint_set6removeEj.exit, label %bb.v

_ZN16indexed_uint_set6removeEj.exit:              ; preds = %_ZN2lp4joinENS_8lia_moveES0_.exit.thread, %bb.ae, %_ZN2lp4joinENS_8lia_moveES0_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exit
  %.2 = phi i32 [ 5, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIj13std_allocatorIjEEEEZN2lp8dioph_eq3imp20tighten_terms_with_SEvEUljjE_EvT_SC_T0_.exit ], [ 3, %bb.ae ], [ 3, %_ZN2lp4joinENS_8lia_moveES0_.exit ], [ %.1.ph, %_ZN2lp4joinENS_8lia_moveES0_.exit.thread ]
  %i.fu = load ptr, ptr %2, align 8, !tbaa !271   ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !271 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %_ZN16indexed_uint_set6removeEj.exit
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !204 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1064
  br label %bb.aq

._crit_edge107:                                   ; preds = %_ZN16indexed_uint_set6removeEj.exit72, %_ZN16indexed_uint_set6removeEj.exit
  %.not.i.i.i68 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge107
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fu)
          to label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  tail call void @__clang_call_terminate(ptr %i.gb) #21
  unreachable

_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit:       ; preds = %._crit_edge107, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i.i.i69 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit70, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dk)
          to label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit70 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  tail call void @__clang_call_terminate(ptr %i.gd) #21
  unreachable

_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit70:     ; preds = %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i32 %.2

bb.aq:                                            ; preds = %.lr.ph106, %_ZN16indexed_uint_set6removeEj.exit72
  %.sroa.073.0105 = phi ptr [ %i.fu, %.lr.ph106 ], [ %i.gu, %_ZN16indexed_uint_set6removeEj.exit72 ] ; 2 uses
  %3 = load i32, ptr %.sroa.073.0105, align 4, !tbaa !205 ; 3 uses
  %i.ge = load i32, ptr %i.a, align 8, !tbaa !249
  %i.gf = add i32 %i.ge, -1                       ; 2 uses
  store i32 %i.gf, ptr %i.a, align 8, !tbaa !249
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !205 ; 3 uses
  %.not.i71 = icmp eq i32 %3, %i.gi
  br i1 %.not.i71, label %_ZN16indexed_uint_set6removeEj.exit72, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = load ptr, ptr %i.fz, align 8, !tbaa !204 ; 2 uses
  %i.gk = zext i32 %3 to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !205 ; 2 uses
  %i.gn = zext i32 %i.gi to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gn
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !205
  %i.gp = zext i32 %i.gm to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gp
  store i32 %i.gi, ptr %i.gq, align 4, !tbaa !205
  %i.gr = load i32, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  store i32 %i.gr, ptr %i.gl, align 4, !tbaa !205
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gs
  store i32 %3, ptr %i.gt, align 4, !tbaa !205
  br label %_ZN16indexed_uint_set6removeEj.exit72

_ZN16indexed_uint_set6removeEj.exit72:            ; preds = %bb.aq, %bb.ar
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.073.0105, i64 4 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fw
  br i1 %i.gv, label %._crit_edge107, label %bb.aq

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.al, %bb.u
  %.pn36.pn = phi { ptr, i32 } [ %i.dp, %bb.u ], [ %i.ej, %bb.z ], [ %i.fr, %bb.al ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2lp8dioph_eq3imp11rewrite_eqsERSt6vectorIj13std_allocatorIjEE(ptr noundef nonnull align 8 dereferenceable(1328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 21 uses
  %3 = alloca %class.rational, align 8            ; 13 uses
  %4 = alloca %class.rational, align 8            ; 13 uses
  %5 = alloca %"class.std::tuple.287", align 8    ; 14 uses
  %6 = alloca %class.rational, align 8            ; 20 uses
  %7 = alloca %class.rational, align 8            ; 8 uses
  %8 = alloca %class.rational, align 8            ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = load ptr, ptr %1, align 8, !tbaa !201    ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.by, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 0, ptr %2, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !158
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store i32 1, ptr %i.i, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 8 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread154
  %i.af = phi ptr [ %i.c, %.lr.ph ], [ %i.iu, %.thread154 ]
  %i.ag = phi i64 [ 0, %.lr.ph ], [ %i.is, %.thread154 ]
  %.061198 = phi i32 [ 0, %.lr.ph ], [ %i.ir, %.thread154 ] ; 3 uses
  %.062197 = phi i32 [ -1, %.lr.ph ], [ %.365167, %.thread154 ] ; 6 uses
  %.067196 = phi i32 [ 0, %.lr.ph ], [ %.370166, %.thread154 ] ; 7 uses
  %.076194 = phi i32 [ 0, %.lr.ph ], [ %.278164, %.thread154 ] ; 2 uses
  %.084192 = phi i32 [ -1, %.lr.ph ], [ %.387162, %.thread154 ] ; 6 uses
  %i.ah = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.iq, %.thread154 ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !205 ; 8 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !203
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !291
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !290
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !225
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.ak ; 3 uses
  br i1 %i.aq, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %i.as, align 8, !tbaa !157
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread154, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, -4
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.az, align 8, !tbaa !157
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.bb = load i8, ptr %i.ba, align 4
  %i.bc = and i8 %i.bb, -4
  store i8 %i.bc, ptr %i.ba, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.bd, align 8, !tbaa !158
  %i.be = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213
  store i32 0, ptr %3, align 8, !tbaa !157
  store i8 %i.ax, ptr %i.av, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.az, align 8, !tbaa !157
  %i.bf = load i8, ptr %i.ba, align 4
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.ba, align 4
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !165
  %i.bh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.thread, label %bb.f

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.thread: ; preds = %bb.e
  %i.bl = load i32, ptr %3, align 8, !tbaa !157
  store i32 %i.bl, ptr %i.x, align 8, !tbaa !157
  %i.bm = load i8, ptr %i.y, align 4
  %i.bn = and i8 %i.bm, -2
  store i8 %i.bn, ptr %i.y, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.l

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.f
  %.pre216 = load i8, ptr %i.ba, align 4
  %i.bo = and i8 %.pre216, 1
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i.thread, %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.bq = load i32, ptr %i.az, align 8, !tbaa !157
  store i32 %i.bq, ptr %i.z, align 8, !tbaa !157
  %i.br = load i8, ptr %i.aa, align 4
  %i.bs = and i8 %i.br, -2
  store i8 %i.bs, ptr %i.aa, align 4
  br label %_ZN8rationalaSERKS_.exit.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_ZN8rationalaSERKS_.exit.i unwind label %bb.l

_ZN8rationalaSERKS_.exit.i:                       ; preds = %bb.h, %bb.g
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !176, !nonnull !45, !align !46
  %i.bu = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN2lp10lar_solver5statsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bt)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN8rationalaSERKS_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !651
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !651
  %i.by = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !213 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.thread179

bb.k:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZN8rationalaSERKS_.exit.i, %bb.h, %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn100 = phi { ptr, i32 } [ %i.cc, %bb.l ], [ %i.cb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bx
end_hunk_1
