Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_http?download=true
inline.NumInlined: 5857
inline.NumDeleted: 2212
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_assignIRKSM_NSA_17_ReuseOrAllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_:bb.a
  %.027 = load ptr, ptr %.02736, align 8, !tbaa !36 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !355

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %.026) #24 ; 0 uses
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br i1 %.not.not, label %bb.o, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef %i.aj) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

bb.q:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.p, %bb.o, %bb.n
  invoke void @__cxa_rethrow() #32
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.am

.loopexit:                                        ; preds = %bb.m, %bb.h, %bb.f
  ret void

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #34
  unreachable

bb.t:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !352    ; 2 uses
  %.not5.i = icmp eq ptr %i.a, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.06.i, align 8, !tbaa !36 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.e) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.h) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #33
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !37

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !352    ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  store ptr %i.b, ptr %0, align 8, !tbaa !352
  store ptr null, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.e) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #24 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.j

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 4 uses
  store ptr null, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #33
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit: ; preds = %bb.e, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.0 = phi ptr [ %i.a, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ], [ %i.o, %bb.e ]
  ret ptr %.0

bb.j:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

bb.k:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib6detail5splitEPKcS2_cmSt8functionIFvS2_S2_EE(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %.not = icmp eq ptr %1, null
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br i1 %.not, label %.split59.us, label %.split59

.split59.us:                                      ; preds = %bb.a
  %i.j = load i8, ptr %0, align 1, !tbaa !83      ; 2 uses
  %.not56.us72 = icmp eq i8 %i.j, 0
  br i1 %.not56.us72, label %.split61.us.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %.split59.us, %bb.e
  %i.k = phi i8 [ %i.z, %bb.e ], [ %i.j, %.split59.us ]
  %.0.us75 = phi i64 [ %.1.us, %bb.e ], [ 1, %.split59.us ] ; 3 uses
  %.032.us74 = phi i64 [ %.133.us, %bb.e ], [ 0, %.split59.us ] ; 3 uses
  %.034.us73 = phi i64 [ %.pre-phi, %bb.e ], [ 0, %.split59.us ] ; 4 uses
  %i.l = icmp eq i8 %i.k, %2
  %i.m = icmp ult i64 %.0.us75, %3
  %or.cond.us = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.us, label %.critedge.i.us, label %.lr.ph76._crit_edge

.lr.ph76._crit_edge:                              ; preds = %.lr.ph76
  %.pre = add i64 %.034.us73, 1
  br label %bb.e

.critedge.i.us:                                   ; preds = %.lr.ph76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.032.us74
  %.not16.i.us = icmp eq i64 %.034.us73, 0
  br i1 %.not16.i.us, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us

.lr.ph18.i.us:                                    ; preds = %.critedge.i.us, %bb.b
  %.017.i.us = phi i64 [ %i.r, %bb.b ], [ %.034.us73, %.critedge.i.us ] ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 %.017.i.us
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !83
  switch i8 %i.q, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph18.i.us, %.lr.ph18.i.us
  %i.r = add i64 %.017.i.us, -1                   ; 2 uses
  %.not.i.us = icmp eq i64 %i.r, 0
  br i1 %.not.i.us, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us, !llvm.loop !356

_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us: ; preds = %.lr.ph18.i.us, %bb.b, %.critedge.i.us
  %.0.lcssa.i.us = phi i64 [ 0, %.critedge.i.us ], [ 0, %bb.b ], [ %.017.i.us, %.lr.ph18.i.us ] ; 2 uses
  %i.s = icmp ult i64 %.032.us74, %.0.lcssa.i.us
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.c, align 8, !tbaa !7
  store ptr %i.t, ptr %i.d, align 8, !tbaa !7
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !12
  %.not.i.i.us = icmp eq ptr %i.u, null
  br i1 %.not.i.i.us, label %.split64.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us:      ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !357
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us, %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us
  %i.w = add i64 %.034.us73, 1                    ; 2 uses
  %i.x = add i64 %.0.us75, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph76._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %.lr.ph76._crit_edge ], [ %i.w, %bb.d ] ; 3 uses
  %.133.us = phi i64 [ %.032.us74, %.lr.ph76._crit_edge ], [ %i.w, %bb.d ] ; 2 uses
  %.1.us = phi i64 [ %.0.us75, %.lr.ph76._crit_edge ], [ %i.x, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83    ; 2 uses
  %.not56.us = icmp eq i8 %i.z, 0
  br i1 %.not56.us, label %.split61.us, label %.lr.ph76, !llvm.loop !360

.split59:                                         ; preds = %bb.a
  %i.aa = icmp ult ptr %0, %1
  br i1 %i.aa, label %.lr.ph, label %.split61.us.thread

.lr.ph:                                           ; preds = %.split59, %.split
  %.070 = phi i64 [ %.1, %.split ], [ 1, %.split59 ] ; 3 uses
  %.03269 = phi i64 [ %.133, %.split ], [ 0, %.split59 ] ; 4 uses
  %.03467 = phi i64 [ %.pre-phi83, %.split ], [ 0, %.split59 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.03467
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !83
  %i.ad = icmp eq i8 %i.ac, %2
  %i.ae = icmp ult i64 %.070, %3
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.f, label %.lr.ph..split_crit_edge

.lr.ph..split_crit_edge:                          ; preds = %.lr.ph
  %.pre82 = add i64 %.03467, 1
  br label %.split

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.03269 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %1
  br i1 %i.ag, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.ah = phi ptr [ %i.ak, %bb.g ], [ %i.af, %bb.f ]
  %.01213.i = phi i64 [ %i.aj, %bb.g ], [ %.03269, %bb.f ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !83
  switch i8 %i.ai, label %.critedge.i [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.aj = add i64 %.01213.i, 1                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %exitcond.not = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph.i, !llvm.loop !361

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.012.lcssa.i = phi i64 [ %.03269, %bb.f ], [ %i.g, %bb.g ], [ %.01213.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i64 %.03467, 0
  br i1 %.not16.i, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.critedge.i, %bb.h
  %.017.i = phi i64 [ %i.ao, %bb.h ], [ %.03467, %.critedge.i ] ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 %.017.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !83
  switch i8 %i.an, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph18.i, %.lr.ph18.i
  %i.ao = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i, !llvm.loop !356

_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit:    ; preds = %.lr.ph18.i, %bb.h, %.critedge.i
  %.0.lcssa.i = phi i64 [ 0, %.critedge.i ], [ 0, %bb.h ], [ %.017.i, %.lr.ph18.i ] ; 2 uses
  %i.ap = icmp ult i64 %.012.lcssa.i, %.0.lcssa.i
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !7
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !7
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !12
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.split64.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit

.split64.us:                                      ; preds = %bb.i, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit:         ; preds = %bb.i
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !357
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit, %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit
  %i.au = add i64 %.03467, 1                      ; 2 uses
  %i.av = add i64 %.070, 1
  br label %.split

.split:                                           ; preds = %.lr.ph..split_crit_edge, %bb.j
  %.pre-phi83 = phi i64 [ %.pre82, %.lr.ph..split_crit_edge ], [ %i.au, %bb.j ] ; 2 uses
  %.133 = phi i64 [ %.03269, %.lr.ph..split_crit_edge ], [ %i.au, %bb.j ] ; 2 uses
  %.1 = phi i64 [ %.070, %.lr.ph..split_crit_edge ], [ %i.av, %bb.j ]
  %exitcond.not.a = icmp eq i64 %.pre-phi83, %i.g
  br i1 %exitcond.not.a, label %.split61.us, label %.lr.ph, !llvm.loop !360

.split61.us:                                      ; preds = %.split, %bb.e
  %.us-phi = phi i64 [ %.pre-phi, %bb.e ], [ %i.g, %.split ] ; 2 uses
  %.us-phi62 = phi i64 [ %.133.us, %bb.e ], [ %.133, %.split ] ; 3 uses
  %.not40 = icmp eq i64 %.us-phi, 0
  br i1 %.not40, label %.split61.us.thread, label %bb.k

bb.k:                                             ; preds = %.split61.us
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.us-phi62 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %1
  br i1 %i.ax, label %.lr.ph.i51, label %.critedge.i41

.lr.ph.i51:                                       ; preds = %bb.k, %bb.l
  %i.ay = phi ptr [ %i.bb, %bb.l ], [ %i.aw, %bb.k ]
  %.01213.i52 = phi i64 [ %i.ba, %bb.l ], [ %.us-phi62, %bb.k ] ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !83
  switch i8 %i.az, label %.critedge.i41 [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i51, %.lr.ph.i51
  %i.ba = add i64 %.01213.i52, 1                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %1
  br i1 %i.bc, label %.lr.ph.i51, label %.critedge.i41, !llvm.loop !361

.critedge.i41:                                    ; preds = %bb.l, %.lr.ph.i51, %bb.k
  %.012.lcssa.i42 = phi i64 [ %.us-phi62, %bb.k ], [ %i.g, %bb.l ], [ %.01213.i52, %.lr.ph.i51 ] ; 2 uses
  br label %.lr.ph18.i44

.lr.ph18.i44:                                     ; preds = %.critedge.i41, %bb.m
  %.017.i45 = phi i64 [ %i.bg, %bb.m ], [ %.us-phi, %.critedge.i41 ] ; 3 uses
  %i.bd = getelementptr i8, ptr %0, i64 %.017.i45
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !83
  switch i8 %i.bf, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit53 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph18.i44, %.lr.ph18.i44
  %i.bg = add i64 %.017.i45, -1                   ; 2 uses
  %.not.i46 = icmp eq i64 %i.bg, 0
  br i1 %.not.i46, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit53, label %.lr.ph18.i44, !llvm.loop !356

_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit53:  ; preds = %.lr.ph18.i44, %bb.m
  %.0.lcssa.i47 = phi i64 [ 0, %bb.m ], [ %.017.i45, %.lr.ph18.i44 ] ; 2 uses
  %i.bh = icmp ult i64 %.012.lcssa.i42, %.0.lcssa.i47
  br i1 %i.bh, label %bb.n, label %.split61.us.thread

bb.n:                                             ; preds = %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit53
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i42
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !7
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !7
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !12
  %.not.i.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i54, label %bb.o, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55:       ; preds = %bb.n
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !357
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.split61.us.thread

.split61.us.thread:                               ; preds = %.split59, %.split59.us, %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit53, %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55, %.split61.us
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib21decode_path_componentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i64 0, ptr %i.c, align 8, !tbaa !94
  store i8 0, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !94
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %.preheader83 unwind label %bb.b

.preheader83:                                     ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader83
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.c:                                             ; preds = %.lr.ph, %bb.be
  %i.j = phi i64 [ %i.f, %.lr.ph ], [ %i.fj, %bb.be ] ; 2 uses
  %.086 = phi i64 [ 0, %.lr.ph ], [ %i.fi, %bb.be ] ; 10 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !23     ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.086
  %i.m = load i8, ptr %i.l, align 1, !tbaa !83    ; 2 uses
  %i.n = icmp eq i8 %i.m, 37
  br i1 %i.n, label %bb.d, label %bb.bb

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i64 %.086, 1                     ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %bb.e, label %bb.bb

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !tbaa !83    ; 5 uses
  switch i8 %i.r, label %bb.am [
    i8 117, label %bb.f
    i8 0, label %bb.az
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i64 %.086, 2                     ; 2 uses
  %.not.i = icmp ult i64 %i.s, %i.j
  br i1 %.not.i, label %.preheader.preheader, label %.loopexit

end_hunk_0
