Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VisitedTable?download=true
inline.NumInlined: 399
inline.NumDeleted: 254
begin_hunk_0_@_ZNK5faiss15VisitedTableSet3getEm:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !46 ; 4 uses
  %i.d = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.d, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp eq i64 %1, %i.f
  br i1 %i.g, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, label %bb.c, !llvm.loop !52

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = urem i64 %1, %i.j                        ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp eq i64 %1, %i.q
  br i1 %i.r, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %1, %i.v
  br i1 %i.s, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !54

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !46 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = urem i64 %i.v, %i.j
  %.not19.i.i.i.i.i = icmp eq i64 %i.w, %i.k
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !54

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit, !llvm.loop !54

_ZNKSt13unordered_setImSt4hashImESt8equal_toImESaImEE5countERKm.exit: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %..loopexit_crit_edge21.i.i.i.i.i
  %.sroa.06.1.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i ], [ null, %bb.c ], [ %i.o, %bb.f ], [ null, %bb.e ], [ %.sroa.06.0.i.i.i, %bb.d ], [ null, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.g ]
  %.not.i.i = icmp ne ptr %.sroa.06.1.i.i.i, null
  ret i1 %.not.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5faiss15VisitedTableSet8prefetchEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss15VisitedTableSet7reserveEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = uitofp i64 %1 to double
  %i.d = load float, ptr %i.b, align 8, !tbaa !38
  %i.e = fpext float %i.d to double
  %i.f = fdiv double %i.c, %i.e
  %i.g = tail call double @llvm.ceil.f64(double %i.f)
  %i.h = fptoui double %i.g to i64
  tail call void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss15VisitedTableSet7advanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !46 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #16
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !47

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread35

.thread35:                                        ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !22     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.j, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !46 ; 4 uses
  %i.l = icmp eq ptr %.sroa.028.0, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !55

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = urem i64 %i.k, %i.q
  br label %.critedge

bb.f:                                             ; preds = %.thread35
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !46 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %i.aa = urem i64 %i.z, %i.e
  %.not19.i.i = icmp eq i64 %i.aa, %i.f
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !56

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread35
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.f, %.thread35 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ac = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread35 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !22
  %i.af = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 16) #16
  resume { ptr, i32 } %i.ag

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.af, %.critedge ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #13 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !57
  invoke void @__cxa_rethrow() #18
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
  tail call void @__clang_call_terminate(ptr %i.q) #19
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !37
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  store ptr %i.w, ptr %3, align 8, !tbaa !46
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !53
  store ptr %3, ptr %i.x, align 8, !tbaa !46
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  store ptr %i.z, ptr %3, align 8, !tbaa !46
  store ptr %3, ptr %i.y, align 8, !tbaa !45
  %i.aa = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !37
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !53
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !51
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !51
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !59
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !45
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !46 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !45
  store ptr %i.o, ptr %.02530, align 8, !tbaa !46
  store ptr %.02530, ptr %i.g, align 8, !tbaa !45
  store ptr %i.g, ptr %i.m, align 8, !tbaa !53
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !46
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !53
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !46
  store ptr %i.r, ptr %.02530, align 8, !tbaa !46
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !53
  store ptr %.02530, ptr %i.s, align 8, !tbaa !46
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  store i64 %1, ptr %i.z, align 8, !tbaa !37
  store ptr %.0.i, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51
  %i.f = add i64 %i.e, 1
  %i.g = uitofp i64 %i.f to double
  %i.h = load float, ptr %i.a, align 8, !tbaa !38
  %i.i = fpext float %i.h to double
  %i.j = fdiv double %i.g, %i.i
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptoui double %i.k to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.l)
  %i.m = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.speculated) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %.not = icmp eq i64 %i.m, %i.o
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.m)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #13 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !57
  invoke void @__cxa_rethrow() #18
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #19
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.b, align 8, !tbaa !57
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b, %bb.h
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5faiss12VisitedTable12get_reusableEmSt8optionalIbE(i64 noundef %0, i16 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load i64, ptr @_ZN5faiss31visited_table_hashset_thresholdE, align 8, !tbaa !22
  %i.c = icmp uge i64 %0, %i.b
  %i.d = and i16 %1, 256
  %.not = icmp eq i16 %i.d, 0
  %i.e = trunc i16 %1 to i1
  %.0.i = select i1 %.not, i1 %i.c, i1 %i.e
  br i1 %.0.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @_ZGVZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, align 1
  br i1 %.b, label %bb.d, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss15VisitedTableSetE, i64 16), ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, i64 56), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, i64 8), align 8, !tbaa !29
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, i64 16), align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, i64 24), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, i64 40), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, i64 48), i8 0, i64 16, i1 false)
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN5faiss15VisitedTableSetD2Ev, ptr nonnull @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, ptr nonnull @__dso_handle) #13 ; 0 uses
  store i1 true, ptr @_ZGVZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_set) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not5.i.i.i.i, label %_ZN5faiss15VisitedTableSet7advanceEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #16
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss15VisitedTableSet7advanceEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !47

_ZN5faiss15VisitedTableSet7advanceEv.exit:        ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.b3 = load i1, ptr @_ZGVZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec, align 1
  br i1 %.b3, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss18VisitedTableVectorE, i64 16), ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec, i64 8), i8 0, i64 24, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec, i64 32), align 8, !tbaa !15
  %i.p = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN5faiss18VisitedTableVectorD2Ev, ptr nonnull @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec, ptr nonnull @__dso_handle) #13 ; 0 uses
  store i1 true, ptr @_ZGVZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5faiss12VisitedTable12get_reusableEmSt8optionalIbEE7tls_vec) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, %0
  br i1 %i.y, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i, label %_ZN5faiss18VisitedTableVector11ensure_sizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i:          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1, !tbaa !14
  %i.z = sub nuw i64 %0, %i.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.t, i64 noundef %i.z, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN5faiss18VisitedTableVector11ensure_sizeEm.exit

_ZN5faiss18VisitedTableVector11ensure_sizeEm.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !15  ; 2 uses
  %i.ac = icmp ult i8 %i.ab, -2
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5faiss18VisitedTableVector11ensure_sizeEm.exit
  %i.ad = add nuw i8 %i.ab, 1
  br label %_ZN5faiss18VisitedTableVector7advanceEv.exit

bb.i:                                             ; preds = %_ZN5faiss18VisitedTableVector11ensure_sizeEm.exit
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !9   ; 2 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %_ZN5faiss18VisitedTableVector7advanceEv.exit

_ZN5faiss18VisitedTableVector7advanceEv.exit:     ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ 1, %bb.i ], [ %i.ad, %bb.h ]
  store i8 %storemerge.i, ptr %i.aa, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %_ZN5faiss18VisitedTableVector7advanceEv.exit, %_ZN5faiss15VisitedTableSet7advanceEv.exit
  %.0 = phi ptr [ %i.g, %_ZN5faiss15VisitedTableSet7advanceEv.exit ], [ %i.q, %_ZN5faiss18VisitedTableVector7advanceEv.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !14      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !62

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !14
  store i8 %i.q, ptr %i.d, align 1, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !21
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !62

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.z, ptr %i.y, align 1, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !21
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !62

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !9     ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !62

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !14
  store i8 %i.az, ptr %i.au, align 1, !tbaa !14
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !62

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #16
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !9
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !13
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 16}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !7, i64 32}
!16 = !{!"_ZTSN5faiss18VisitedTableVectorE", !17, i64 0, !18, i64 8, !7, i64 32}
!17 = !{!"_ZTSN5faiss12VisitedTableE"}
!18 = !{!"_ZTSSt6vectorIhSaIhEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !10, i64 0}
!21 = !{!10, !11, i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZSt11make_uniqueIN5faiss15VisitedTableSetEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!26 = distinct !{!26, !"_ZSt11make_uniqueIN5faiss15VisitedTableSetEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !31, i64 0, !23, i64 8, !33, i64 16, !23, i64 24, !35, i64 32, !34, i64 48}
!31 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !32, i64 0}
!32 = !{!"any p2 pointer", !12, i64 0}
!33 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!34 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!35 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !36, i64 0, !23, i64 8}
!36 = !{!"float", !7, i64 0}
!37 = !{!30, !23, i64 8}
!38 = !{!35, !36, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZSt11make_uniqueIN5faiss18VisitedTableVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!41 = distinct !{!41, !"_ZSt11make_uniqueIN5faiss18VisitedTableVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPN5faiss12VisitedTableELb0EE", !44, i64 0}
!44 = !{!"p1 _ZTSN5faiss12VisitedTableE", !12, i64 0}
!45 = !{!30, !34, i64 16}
!46 = !{!33, !34, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEEE", !12, i64 0}
!51 = !{!30, !23, i64 24}
!52 = distinct !{!52, !48}
!53 = !{!34, !34, i64 0}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = !{!35, !23, i64 8}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!30, !34, i64 48}
!60 = distinct !{!60, !48}
!61 = !{!"branch_weights", i32 1023, i32 1}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
