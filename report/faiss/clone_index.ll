Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/clone_index?download=true
inline.NumInlined: 1480
inline.NumDeleted: 884
begin_hunk_0_@_ZN5faiss8IndexIVFD2Ev

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !167
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168  ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !172
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !167
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !204  ; 3 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.j unwind label %bb.m       ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !169
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !204
  %i.p = load ptr, ptr %0, align 8, !tbaa !167
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168
  %i.s = load i64, ptr %i.n, align 8, !tbaa !170
  %i.t = urem i64 %i.s, %i.r
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t
  store ptr %i.o, ptr %i.u, align 8, !tbaa !191
  %.02734 = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %.not3035 = icmp eq ptr %.02734, null
  br i1 %.not3035, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.o
  %.02737 = phi ptr [ %.027, %bb.o ], [ %.02734, %bb.j ] ; 2 uses
  %.036 = phi ptr [ %i.v, %bb.o ], [ %i.l, %bb.j ] ; 2 uses
  %i.v = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.k unwind label %bb.n       ; 4 uses

bb.k:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.02737, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store ptr %i.v, ptr %.036, align 8, !tbaa !169
  %i.y = load i64, ptr %i.q, align 8, !tbaa !168
  %i.z = load i64, ptr %i.x, align 8, !tbaa !170
  %i.aa = urem i64 %i.z, %i.y
  %i.ab = load ptr, ptr %0, align 8, !tbaa !167
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !191
  %.not32 = icmp eq ptr %i.ad, null
  br i1 %.not32, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  store ptr %.036, ptr %i.ac, align 8, !tbaa !191
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.k
  %.027 = load ptr, ptr %.02737, align 8, !tbaa !169 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !341

bb.p:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ae, %bb.m ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %.026) #24 ; 0 uses
  tail call void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br i1 %.not.not, label %bb.q, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %0, align 8, !tbaa !167   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !168
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #27
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

bb.s:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.r, %bb.q, %bb.p
  invoke void @__cxa_rethrow() #26
          to label %bb.v unwind label %bb.s

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.an

.loopexit:                                        ; preds = %bb.o, %bb.j, %bb.h
  ret void

bb.u:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

bb.v:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_deallocate_nodesEPS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !169 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 24) #27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_deallocate_nodesEPS5_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_deallocate_nodesEPS5_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !168
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIfEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !346    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775760
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIfEEE8allocateEmPKv.exit.i.i.i, !prof !24

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIfEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIfEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIfEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !346
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !345
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !347
  %i.m = load ptr, ptr %1, align 8, !tbaa !348    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !348  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIfEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN5faiss16MaybeOwnedVectorIfEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 80 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIfEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !342

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIfEEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.013.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIfEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIfEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !345
  ret void

.body:                                            ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !346    ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIfEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !347
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIfEESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIfEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss16MaybeOwnedVectorIfEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIfEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.y, %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIfEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !198
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !349
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !349
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIfEEEvPT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #27
  br label %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIfEEEvPT_.exit.i

_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIfEEEvPT_.exit.i: ; preds = %bb.h, %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss16MaybeOwnedVectorIfEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !350

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss16MaybeOwnedVectorIfEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIfEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16MaybeOwnedVectorIfEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !352
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.e = load i8, ptr %1, align 8, !tbaa !352, !range !88, !noundef !89
  store i8 %i.e, ptr %0, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.b unwind label %bb.n       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !353
  store ptr %i.i, ptr %i.b, align 8, !tbaa !353
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !354
  store i64 %i.k, ptr %i.c, align 8, !tbaa !354
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !199
  store ptr %i.m, ptr %i.d, align 8, !tbaa !199
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !195  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i = icmp eq ptr %i.p, null
end_hunk_0
begin_hunk_1_@_ZN5faiss20clone_IndexNNDescentEPKNS_14IndexNNDescentE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss18IndexNNDescentFlatE, i64 16), ptr %i.c, align 8, !tbaa !18
  br label %bb.v

bb.j:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 8 dereferenceable(28) %i.ah, i64 28, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss14IndexNNDescentE, i64 16), ptr %i.c, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.ai, i64 40, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !23 ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %.noexc5.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  %i.as = icmp ugt i64 %i.ar, 9223372036854775804
  br i1 %i.as, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !24

.noexc.i.i.i.i:                                   ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i25 unwind label %bb.o

.noexc.i.i25:                                     ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #25
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge unwind label %bb.o

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre34 = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %.pre35 = load ptr, ptr %i.am, align 8, !tbaa !25
  %.pre36 = ptrtoint ptr %.pre35 to i64
  %.pre37 = ptrtoint ptr %.pre34 to i64
  br label %.noexc5.i.i

.noexc5.i.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge, %.noexc.i
  %.pre-phi38 = phi i64 [ %.pre37, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge ], [ %i.aq, %.noexc.i ]
  %.pre-phi = phi i64 [ %.pre36, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge ], [ %i.ap, %.noexc.i ]
  %i.au = phi ptr [ %.pre34, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge ], [ %i.ao, %.noexc.i ] ; 2 uses
  %i.av = phi ptr [ %i.at, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i..noexc5.i.i_crit_edge ], [ null, %.noexc.i ] ; 6 uses
  store ptr %i.av, ptr %i.ak, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !26
  %i.az = sub i64 %.pre-phi, %.pre-phi38          ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 4
  br i1 %i.ba, label %bb.l, label %bb.m, !prof !27

bb.l:                                             ; preds = %.noexc5.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.au, i64 %i.az, i1 false)
  br label %_ZN5faiss14IndexNNDescentC2ERKS0_.exit

bb.m:                                             ; preds = %.noexc5.i.i
  %i.bb = icmp eq i64 %i.az, 4
  br i1 %i.bb, label %bb.n, label %_ZN5faiss14IndexNNDescentC2ERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !28
  store i32 %i.bc, ptr %i.av, align 4, !tbaa !28
  br label %_ZN5faiss14IndexNNDescentC2ERKS0_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  br label %.body.i

bb.p:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.be, %bb.p ], [ %i.bd, %bb.o ]
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(144) %i.c) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 144) #27
  br label %bb.w

_ZN5faiss14IndexNNDescentC2ERKS0_.exit:           ; preds = %bb.l, %bb.m, %bb.n
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20clone_IndexNNDescentEPKNS_14IndexNNDescentE, ptr noundef nonnull @.str.1, i32 noundef 158)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.x unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i1 [ false, %bb.s ], [ true, %bb.r ]  ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.u, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32 = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bi) #24
  br label %bb.w

bb.v:                                             ; preds = %_ZN5faiss14IndexNNDescentC2ERKS0_.exit, %_ZN5faiss18IndexNNDescentFlatC2ERKS0_.exit
  ret ptr %i.c

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.i, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body.i.i
  %.pn23 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i, %.body.i ], [ %.pn32, %bb.u ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn23

bb.x:                                             ; preds = %bb.s
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5faiss14IndexNNDescentD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss18IndexNNDescentFlatD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss14IndexNNDescentD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #27
  ret void
}

declare void @_ZN5faiss14IndexNNDescent5trainElPKf(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss14IndexNNDescent3addElPKf(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss14IndexNNDescent6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss5Index12range_searchElPKffPNS_17RangeSearchResultEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss14IndexNNDescent5resetEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #7

declare void @_ZNK5faiss14IndexNNDescent11reconstructElPf(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5faiss9nndescent5NhoodEE8allocateEmPKv.exit.i.i.i, !prof !24

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN5faiss9nndescent5NhoodEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss9nndescent5NhoodEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5faiss9nndescent5NhoodEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !210
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !212
  %i.m = load ptr, ptr %1, align 8, !tbaa !364    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !364  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent5NhoodESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN5faiss9nndescent5NhoodC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 168 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent5NhoodESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !363

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #24 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %i.i, ptr noundef nonnull %.013.i.i.i.i)
          to label %_ZSt8_DestroyIPN5faiss9nndescent5NhoodEEvT_S4_.exit.i.i.i.i unwind label %bb.e

_ZSt8_DestroyIPN5faiss9nndescent5NhoodEEvT_S4_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodEEvT_S4_.exit.i.i.i.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss9nndescent5NhoodESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN5faiss9nndescent5NhoodEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !210
  ret void

.body:                                            ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !211    ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !212
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !211
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !211    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #27
  br label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss9nndescent5NhoodES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable
}

declare void @_ZN5faiss9nndescent5NhoodC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss9nndescent5NhoodEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit
  %.05 = phi ptr [ %i.aj, %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit ], [ %0, %bb.a ] ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i:             ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i:             ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i:             ; preds = %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !368 ; 3 uses
  %.not.i.i.i7.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7.i.i.i, label %_ZSt8_DestroyIN5faiss9nndescent5NhoodEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
end_hunk_1
begin_hunk_2_@_ZN5faiss16ZnSphereCodecAltD2Ev:bb.a
_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !241
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !243
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i:       ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !194
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !193 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2.i, label %_ZN5faiss16ZnSphereCodecRecD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZN5faiss16ZnSphereCodecRecD2Ev.exit

_ZN5faiss16ZnSphereCodecRecD2Ev.exit:             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss13ZnSphereCodecE, i64 16), ptr %0, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !244 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !245 ; 2 uses
  %.not4.i.i.i.i1 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i.i1, label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN5faiss16ZnSphereCodecRecD2Ev.exit, %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i3 = phi ptr [ %i.ar, %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i ], [ %i.ah, %_ZN5faiss16ZnSphereCodecRecD2Ev.exit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !248 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !249
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #27
  br label %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i2
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 48 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.ar, %i.aj
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !5

_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i.i
  %.pr.i.i5 = load ptr, ptr %i.ag, align 8, !tbaa !244
  br label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN5faiss16ZnSphereCodecRecD2Ev.exit
  %i.as = phi ptr [ %.pr.i.i5, %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ah, %_ZN5faiss16ZnSphereCodecRecD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i6, label %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #27
  br label %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN5faiss13ZnSphereCodecD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !64
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #27
  br label %_ZN5faiss13ZnSphereCodecD2Ev.exit

_ZN5faiss13ZnSphereCodecD2Ev.exit:                ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5faiss13ZnSphereCodecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, !prof !24

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !64
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.q, i64 %i.u, i1 false)
  br label %_ZN5faiss14ZnSphereSearchC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.u, 4
  br i1 %i.w, label %bb.f, label %_ZN5faiss14ZnSphereSearchC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load float, ptr %i.q, align 4, !tbaa !65
  store float %i.x, ptr %i.m, align 4, !tbaa !65
  br label %_ZN5faiss14ZnSphereSearchC2ERKS0_.exit

_ZN5faiss14ZnSphereSearchC2ERKS0_.exit:           ; preds = %bb.d, %bb.e, %bb.f
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss17EnumeratedVectorsE, i64 16), ptr %0, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss13ZnSphereCodecE, i64 16), ptr %0, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !245 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !244 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss14ZnSphereSearchC2ERKS0_.exit
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775776
  br i1 %i.aj, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5faiss13ZnSphereCodec11CodeSegmentEE8allocateEmPKv.exit.i.i.i.i, !prof !24

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5faiss13ZnSphereCodec11CodeSegmentEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #25
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIN5faiss13ZnSphereCodec11CodeSegmentEE8allocateEmPKv.exit.i.i.i.i, %_ZN5faiss14ZnSphereSearchC2ERKS0_.exit
  %i.al = phi ptr [ null, %_ZN5faiss14ZnSphereSearchC2ERKS0_.exit ], [ %i.ak, %_ZNSt15__new_allocatorIN5faiss13ZnSphereCodec11CodeSegmentEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !244
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !245
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !250
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !425
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !425
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss13ZnSphereCodec11CodeSegmentESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ap, ptr %i.aq, ptr noundef %i.al)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc6
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !244 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !250
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #27
  br label %.body

bb.j:                                             ; preds = %.noexc6
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !245
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss13ZnSphereCodec11CodeSegmentEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.as, %bb.i ], [ %i.as, %bb.h ]
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i7, label %_ZN5faiss14ZnSphereSearchD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.body
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #27
  br label %_ZN5faiss14ZnSphereSearchD2Ev.exit

_ZN5faiss14ZnSphereSearchD2Ev.exit:               ; preds = %.body, %bb.l
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5faiss16ZnSphereCodecRecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss17EnumeratedVectorsE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16ZnSphereCodecRecE, i64 16), ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !192  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !193  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %.noexc12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !24

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
  br label %.noexc12

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !193
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !194
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !185  ; 3 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !185
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.o, ptr align 8 %i.s, i64 %i.w, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc12
  %i.y = icmp eq i64 %i.w, 8
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.s, align 8, !tbaa !170
  store i64 %i.z, ptr %i.o, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 %i.w
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !193 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i13 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i13, label %.noexc17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i15, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i14, !prof !24

.noexc.i.i15:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc16 unwind label %bb.p

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i14: ; preds = %bb.g
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #25
          to label %.noexc17 unwind label %bb.p

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i14, %bb.f
  %i.al = phi ptr [ null, %bb.f ], [ %i.ak, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i14 ] ; 6 uses
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !193
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !192
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !194
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !185 ; 3 uses
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !185
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %bb.h, label %bb.i, !prof !27

bb.h:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.ap, i64 %i.at, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc17
  %i.av = icmp eq i64 %i.at, 8
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !170
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !170
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.at
  store ptr %i.ax, ptr %i.am, align 8, !tbaa !192
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !426
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !426
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !242 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !241 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i19 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i.i.i19, label %.noexc22, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %.noexc.i.i20, label %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, !prof !24

.noexc.i.i20:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc21 unwind label %bb.q

.noexc21:                                         ; preds = %.noexc.i.i20
  unreachable

_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #25
          to label %.noexc22 unwind label %bb.q

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.bl = phi ptr [ null, %bb.k ], [ %i.bk, %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !241
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !242
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !243
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !427
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !427
  %i.br = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIfSaIfEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.bp, ptr %i.bq, ptr noundef %i.bl)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.noexc22
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !243
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #27
  br label %.body

bb.o:                                             ; preds = %.noexc22
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !242
  ret void

bb.p:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i14, %.noexc.i.i15
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.q:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i20
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.n, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.bs, %bb.n ], [ %i.bs, %bb.m ] ; 2 uses
  %i.ca = load ptr, ptr %i.ab, align 8, !tbaa !193 ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !194
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.r, %.body, %bb.p
  %.pn = phi { ptr, i32 } [ %i.by, %bb.p ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.r ]
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !193 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorImSaImEED2Ev.exit25, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !194
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit25

_ZNSt6vectorImSaImEED2Ev.exit25:                  ; preds = %bb.s, %_ZNSt6vectorImSaImEED2Ev.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss13ZnSphereCodecD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss13ZnSphereCodecE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !245  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !248  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !249
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5faiss13ZnSphereCodec11CodeSegmentEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !244
  br label %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27
  br label %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss13ZnSphereCodec11CodeSegmentES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss14ZnSphereSearchD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZN5faiss14ZnSphereSearchD2Ev.exit

_ZN5faiss14ZnSphereSearchD2Ev.exit:               ; preds = %_ZNSt6vectorIN5faiss13ZnSphereCodec11CodeSegmentESaIS2_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17EnumeratedVectorsD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss17EnumeratedVectorsD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5faiss13ZnSphereCodec11CodeSegmentESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.016 = phi ptr [ %i.ac, %bb.f ], [ %2, %bb.a ] ; 7 uses
  %.sroa.09.015 = phi ptr [ %i.ab, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.b = load i32, ptr %.sroa.09.015, align 8, !tbaa !433
  store i32 %i.b, ptr %.016, align 8, !tbaa !433
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !434  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !248  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN5faiss6RepeatEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !24

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %.loopexit.split-lp

end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIfSaIfEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !64
  %i.n = load ptr, ptr %.sroa.09.015, align 8, !tbaa !63 ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp sgt i64 %i.r, 4
  br i1 %i.s, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.t = icmp eq i64 %i.r, 4
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load float, ptr %i.n, align 4, !tbaa !65
  store float %i.u, ptr %i.j, align 4, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  store ptr %i.v, ptr %i.k, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 2 uses
  %i.y = icmp eq ptr %i.w, %1
  br i1 %i.y, label %._crit_edge, label %.lr.ph, !llvm.loop !436

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIfSaIfEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #26
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIfSaIfEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIfSaIfEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #27
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIfSaIfEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIfSaIfEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss13IndexFastScanD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTVN5faiss13IndexFastScanE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223
  tail call void @free(ptr noundef %i.b) #24
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss15ScalarQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss15ScalarQuantizerE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss15ScalarQuantizer16TurboQuantRefineD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZN5faiss15ScalarQuantizer16TurboQuantRefineD2Ev.exit

_ZN5faiss15ScalarQuantizer16TurboQuantRefineD2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5faiss15ScalarQuantizer16TurboQuantRefineD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN5faiss15ScalarQuantizer16TurboQuantRefineD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5faiss18BlockInvertedListsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN5faiss13InvertedListsE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(17) %i.b, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN5faiss18BlockInvertedListsE, i64 16), ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt6vectorIN5faiss12AlignedTableIhLi32EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !437  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !438  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.n, 9223372036854775800
  br i1 %i.o, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIlSaIlEEE8allocateEmPKv.exit.i.i.i.i, !prof !24

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIlSaIlEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt6vectorIlSaIlEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.q = phi ptr [ null, %bb.b ], [ %i.p, %_ZNSt15__new_allocatorISt6vectorIlSaIlEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !438
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !437
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !439
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !440
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !440
  %i.w = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.u, ptr %i.v, ptr noundef %i.q)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc8
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !438  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !439
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #27
  br label %.body

bb.f:                                             ; preds = %.noexc8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !437
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIlSaIlEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.x, %bb.e ], [ %i.x, %bb.d ]
  tail call void @_ZNSt6vectorIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #24
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  tail call void @_ZN5faiss13InvertedListsD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !254    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775760
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIhEEE8allocateEmPKv.exit.i.i.i, !prof !24

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIhEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIhEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIhEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !255
  %i.m = load ptr, ptr %1, align 8, !tbaa !442    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !442  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIhEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN5faiss16MaybeOwnedVectorIhEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 80 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIhEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !441

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.013.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIhEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIhEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !253
  ret void

.body:                                            ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !254    ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !255
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !446  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !447    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775760
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIlEEE8allocateEmPKv.exit.i.i.i, !prof !24

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIlEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIlEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5faiss16MaybeOwnedVectorIlEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !447
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !448
  %i.m = load ptr, ptr %1, align 8, !tbaa !449    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !449  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIlEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN5faiss16MaybeOwnedVectorIlEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 80 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIlEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !443

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIlEEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.013.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss16MaybeOwnedVectorIlEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN5faiss16MaybeOwnedVectorIlEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !446
  ret void

.body:                                            ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !447    ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !448
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIlEESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !254    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !198
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !450
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !450
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !138  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !139
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i.i

_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i.i: ; preds = %bb.h, %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !254
  br label %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ac = phi ptr [ %.pr, %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !255
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  br label %_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEES2_EvT_S4_RSaIT0_E.exit, %bb.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5faiss13InvertedListsD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5faiss16MaybeOwnedVectorIhEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.y, %_ZSt8_DestroyIN5faiss16MaybeOwnedVectorIhEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 8 uses
end_hunk_3
begin_hunk_4_@_ZN5faiss16MaybeOwnedVectorIlEC2ERKS1_:bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #24
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !184
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #27
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %i.av

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSERKS2_.exit
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !456
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !457
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.sink = phi ptr [ %i.ao, %bb.m ], [ %i.bc, %bb.p ]
  %storemerge = phi i64 [ %i.au, %bb.m ], [ %i.bd, %bb.p ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.bf, align 8, !tbaa !458
  store i64 %storemerge, ptr %i.be, align 8, !tbaa !459
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.c = load ptr, ptr %1, align 8, !tbaa !183    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = load ptr, ptr %0, align 8, !tbaa !183    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !170
  store i64 %i.r, ptr %i.o, align 8, !tbaa !170
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !183    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !183
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !184
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !182  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !170
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !170
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !183
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !182 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !183
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !182
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !170
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !170
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !27

bb.r:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !170
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !170
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !183
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !182
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss12AlignedTableIhLi32EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !257    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5faiss12AlignedTableIhLi32EEEE8allocateEmPKv.exit.i.i.i, !prof !24

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN5faiss12AlignedTableIhLi32EEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5faiss12AlignedTableIhLi32EEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5faiss12AlignedTableIhLi32EEEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !256
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !258
  %i.m = load ptr, ptr %1, align 8, !tbaa !461    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss12AlignedTableIhLi32EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.013.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.c ] ; 6 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i, i8 0, i64 16, i1 false)
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5faiss22AlignedTableTightAllocIhLi32EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !221
  store i64 %i.s, ptr %i.q, align 8, !tbaa !221
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.n
  br i1 %i.v, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss12AlignedTableIhLi32EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !460

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #24 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.013.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !223
  tail call void @free(ptr noundef %i.z) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %.013.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEEEvT_S4_.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5faiss12AlignedTableIhLi32EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.u, %bb.d ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !256
  ret void

.body:                                            ; preds = %bb.f
  %i.ae = load ptr, ptr %0, align 8, !tbaa !257   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !258
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !257    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !256  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !223
  tail call void @free(ptr noundef %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !257
  br label %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !258
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss12AlignedTableIhLi32EEES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.016 = phi ptr [ %i.x, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.015 = phi ptr [ %i.w, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %i.d = load ptr, ptr %.sroa.09.015, align 8, !tbaa !183 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.016, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, !prof !24

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %.016, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !184
  %i.n = load ptr, ptr %.sroa.09.015, align 8, !tbaa !185 ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !185
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp sgt i64 %i.r, 8
  br i1 %i.s, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.n, i64 %i.r, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.t = icmp eq i64 %i.r, 8
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.n, align 8, !tbaa !170
  store i64 %i.u, ptr %i.j, align 8, !tbaa !170
  br label %bb.f

end_hunk_4
