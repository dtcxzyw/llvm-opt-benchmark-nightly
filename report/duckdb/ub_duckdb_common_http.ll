inline.NumInlined: 5859
inline.NumDeleted: 2214
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_assignIRKSM_NSA_17_ReuseOrAllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_:bb.a

bb.m:                                             ; preds = %bb.j, %bb.i
  %.028 = load ptr, ptr %.02836, align 8, !tbaa !36 ; 2 uses
  %.not30 = icmp eq ptr %.028, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !355

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  %.027 = extractvalue { ptr, i32 } %.pn, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %.027) #24 ; 0 uses
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
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %0 to i64
  %i.e = sub i64 %5, %6                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !tbaa !83      ; 2 uses
  %.not56.us71 = icmp eq i8 %i.h, 0
  br i1 %.not56.us71, label %.split60.us.thread, label %.lr.ph75

.lr.ph75:                                         ; preds = %.split.us, %bb.e
  %i.i = phi i8 [ %i.x, %bb.e ], [ %i.h, %.split.us ]
  %.0.us74 = phi i64 [ %.pre-phi, %bb.e ], [ 0, %.split.us ] ; 4 uses
  %.032.us73 = phi i64 [ %.1.us, %bb.e ], [ 0, %.split.us ] ; 3 uses
  %.033.us72 = phi i64 [ %.134.us, %bb.e ], [ 1, %.split.us ] ; 3 uses
  %i.j = icmp eq i8 %i.i, %2
  %i.k = icmp ult i64 %.033.us72, %3
  %or.cond.us = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.us, label %.critedge.i.us, label %.lr.ph75._crit_edge

.lr.ph75._crit_edge:                              ; preds = %.lr.ph75
  %.pre = add i64 %.0.us74, 1
  br label %bb.e

.critedge.i.us:                                   ; preds = %.lr.ph75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.032.us73
  %.not16.i.us = icmp eq i64 %.0.us74, 0
  br i1 %.not16.i.us, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us

.lr.ph18.i.us:                                    ; preds = %.critedge.i.us, %bb.b
  %.017.i.us = phi i64 [ %i.p, %bb.b ], [ %.0.us74, %.critedge.i.us ] ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 %.017.i.us
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !83
  switch i8 %i.o, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph18.i.us, %.lr.ph18.i.us
  %i.p = add i64 %.017.i.us, -1                   ; 2 uses
  %.not.i.us = icmp eq i64 %i.p, 0
  br i1 %.not.i.us, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us, !llvm.loop !356

_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us: ; preds = %.lr.ph18.i.us, %bb.b, %.critedge.i.us
  %.0.lcssa.i.us = phi i64 [ 0, %.critedge.i.us ], [ 0, %bb.b ], [ %.017.i.us, %.lr.ph18.i.us ] ; 2 uses
  %i.q = icmp ult i64 %.032.us73, %.0.lcssa.i.us
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.c, align 8, !tbaa !7
  store ptr %i.r, ptr %i.d, align 8, !tbaa !7
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not.i.i.us = icmp eq ptr %i.s, null
  br i1 %.not.i.i.us, label %.split63.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us:      ; preds = %bb.c
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !357
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us, %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit.us
  %i.u = add i64 %.0.us74, 1                      ; 2 uses
  %i.v = add i64 %.033.us72, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph75._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %.lr.ph75._crit_edge ], [ %i.u, %bb.d ] ; 3 uses
  %.134.us = phi i64 [ %.033.us72, %.lr.ph75._crit_edge ], [ %i.v, %bb.d ]
  %.1.us = phi i64 [ %.032.us73, %.lr.ph75._crit_edge ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  %i.x = load i8, ptr %i.w, align 1, !tbaa !83    ; 2 uses
  %.not56.us = icmp eq i8 %i.x, 0
  br i1 %.not56.us, label %.split60.us, label %.lr.ph75, !llvm.loop !360

.split:                                           ; preds = %bb.a
  %i.y = icmp ult ptr %0, %1
  br i1 %i.y, label %.lr.ph, label %.split60.us.thread

.lr.ph:                                           ; preds = %.split, %bb.k
  %.068 = phi i64 [ %.pre-phi82, %bb.k ], [ 0, %.split ] ; 5 uses
  %.03267 = phi i64 [ %.1, %bb.k ], [ 0, %.split ] ; 4 uses
  %.03366 = phi i64 [ %.134, %bb.k ], [ 1, %.split ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.068
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !83
  %i.ab = icmp eq i8 %i.aa, %2
  %i.ac = icmp ult i64 %.03366, %3
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.f, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre81 = add i64 %.068, 1
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.03267 ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %1
  br i1 %i.ae, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.af = phi ptr [ %i.ai, %bb.g ], [ %i.ad, %bb.f ]
  %.01213.i = phi i64 [ %i.ah, %bb.g ], [ %.03267, %bb.f ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !83
  switch i8 %i.ag, label %.critedge.i [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ah = add i64 %.01213.i, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %1
  br i1 %i.aj, label %.lr.ph.i, label %.critedge.i, !llvm.loop !361

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.012.lcssa.i = phi i64 [ %.03267, %bb.f ], [ %i.e, %bb.g ], [ %.01213.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i64 %.068, 0
  br i1 %.not16.i, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.critedge.i, %bb.h
  %.017.i = phi i64 [ %i.an, %bb.h ], [ %.068, %.critedge.i ] ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 %.017.i
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !83
  switch i8 %i.am, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph18.i, %.lr.ph18.i
  %i.an = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i, !llvm.loop !356

_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit:    ; preds = %.lr.ph18.i, %bb.h, %.critedge.i
  %.0.lcssa.i = phi i64 [ 0, %.critedge.i ], [ 0, %bb.h ], [ %.017.i, %.lr.ph18.i ] ; 2 uses
  %i.ao = icmp ult i64 %.012.lcssa.i, %.0.lcssa.i
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !7
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !7
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %.split63.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit

.split63.us:                                      ; preds = %bb.i, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit:         ; preds = %bb.i
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !357
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit, %_ZN14duckdb_httplib6detail4trimEPKcS2_mm.exit
  %i.at = add i64 %.068, 1                        ; 2 uses
  %i.au = add i64 %.03366, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph._crit_edge, %bb.j
  %.pre-phi82 = phi i64 [ %.pre81, %.lr.ph._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %.134 = phi i64 [ %.03366, %.lr.ph._crit_edge ], [ %i.au, %bb.j ]
  %.1 = phi i64 [ %.03267, %.lr.ph._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi82, %i.e
  br i1 %exitcond.not, label %.split60.us, label %.lr.ph, !llvm.loop !360

.split60.us:                                      ; preds = %bb.k, %bb.e
  %.us-phi = phi i64 [ %.1.us, %bb.e ], [ %.1, %bb.k ] ; 3 uses
  %.us-phi61 = phi i64 [ %.pre-phi, %bb.e ], [ %i.e, %bb.k ] ; 2 uses
  %.not40 = icmp eq i64 %.us-phi61, 0
  br i1 %.not40, label %.split60.us.thread, label %bb.l

bb.l:                                             ; preds = %.split60.us
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.us-phi ; 2 uses
  %i.aw = icmp ult ptr %i.av, %1
  br i1 %i.aw, label %.lr.ph.i51, label %.critedge.i41

.lr.ph.i51:                                       ; preds = %bb.l, %bb.m
  %i.ax = phi ptr [ %i.ba, %bb.m ], [ %i.av, %bb.l ]
  %.01213.i52 = phi i64 [ %i.az, %bb.m ], [ %.us-phi, %bb.l ] ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !83
  switch i8 %i.ay, label %.critedge.i41 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i51, %.lr.ph.i51
  %i.az = add i64 %.01213.i52, 1                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN14duckdb_httplib8DataSink19data_sink_streambuf6xsputnEPKcl:bb.a

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14duckdb_httplib6detail10compressorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib6detail13from_i_to_hexB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !94
  store i8 0, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = and i64 %.0, 15
  %i.g = getelementptr inbounds nuw i8, ptr @.str.110, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.h, ptr %i.a, align 1, !tbaa !83, !noalias !425
  %i.i = load ptr, ptr %0, align 8, !tbaa !23, !noalias !425
  %i.j = load i64, ptr %i.c, align 8, !tbaa !94, !noalias !425 ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !93, !alias.scope !428
  store i64 0, ptr %i.e, align 8, !tbaa !94, !alias.scope !428
  store i8 0, ptr %i.d, align 8, !tbaa !83, !alias.scope !428
  %i.k = add i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.k)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !tbaa !94, !alias.scope !428
  %i.m = icmp eq i64 %i.l, 4611686018427387903
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = load i64, ptr %i.e, align 8, !tbaa !94, !alias.scope !428
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #32
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.i, i64 noundef %i.j)
          to label %bb.e unwind label %.loopexit  ; 0 uses

.loopexit:                                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !23, !alias.scope !428 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.s) #33
  br label %.body

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = load ptr, ptr %0, align 8, !tbaa !23     ; 6 uses
  %i.v = icmp eq ptr %i.u, %i.b
  %i.w = load ptr, ptr %2, align 8, !tbaa !23     ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.d                   ; 2 uses
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.x, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = load i64, ptr %i.e, align 8, !tbaa !94   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !84

bb.g:                                             ; preds = %bb.f
  switch i64 %i.y, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !83
  store i8 %i.aa, ptr %i.u, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !94
  %i.ac = load ptr, ptr %0, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !83
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !23
  %i.ae = load <2 x i64>, ptr %i.e, align 8, !tbaa !83
  store <2 x i64> %i.ae, ptr %i.c, align 8, !tbaa !83
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.b, align 8, !tbaa !83
  store ptr %i.w, ptr %0, align 8, !tbaa !23
  %i.ag = load <2 x i64>, ptr %i.e, align 8, !tbaa !83
  store <2 x i64> %i.ag, ptr %i.c, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.u, ptr %2, align 8, !tbaa !23
  store i64 %i.af, ptr %i.d, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %2, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ah = phi ptr [ %i.u, %bb.j ], [ %i.d, %bb.k ], [ %i.w, %bb.f ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !94
  store i8 0, ptr %i.ah, align 1, !tbaa !83
  %i.ai = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ak = lshr i64 %.0, 4                         ; 2 uses
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.l, label %bb.b, !llvm.loop !431

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.al = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.al) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %lpad.phi

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14duckdb_httplib6detail12parse_headerIZNS0_12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_NS0_11case_ignore4hashENSB_8equal_toESaISt4pairIKSA_SA_EEEEUlRSF_SK_E_EEbPKcSN_T_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = icmp ult ptr %0, %1
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sub i64 %4, %3
  %scevgep = getelementptr i8, ptr %1, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge161
  %.046162 = phi ptr [ %i.f, %.backedge161 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.046162, i64 -1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !83
  switch i8 %i.g, label %.critedge.loopexit [
    i8 32, label %.backedge161
    i8 9, label %.backedge161
  ]

.backedge161:                                     ; preds = %.lr.ph, %.lr.ph
  %i.h = icmp ult ptr %0, %i.f
  br i1 %i.h, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph, %.backedge161
  %.046.lcssa.ph = phi ptr [ %scevgep, %.backedge161 ], [ %.046162, %.lr.ph ] ; 2 uses
  %.pre181 = ptrtoaddr ptr %.046.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.046.lcssa176.pre-phi = phi i64 [ %.pre181, %.critedge.loopexit ], [ %3, %bb.a ] ; 2 uses
  %.046.lcssa = phi ptr [ %.046.lcssa.ph, %.critedge.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.i = icmp ult ptr %0, %.046.lcssa
  br i1 %i.i, label %.lr.ph166.preheader, label %.critedge2

.lr.ph166.preheader:                              ; preds = %.critedge
  %i.j = sub i64 %.046.lcssa176.pre-phi, %4
  %scevgep177 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.b
  %.060165 = phi ptr [ %i.l, %bb.b ], [ %0, %.lr.ph166.preheader ] ; 3 uses
  %i.k = load i8, ptr %.060165, align 1, !tbaa !83
  %.not = icmp eq i8 %i.k, 58
  br i1 %.not, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %.lr.ph166
  %i.l = getelementptr inbounds nuw i8, ptr %.060165, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.l, %scevgep177
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph166, !llvm.loop !432

.critedge2:                                       ; preds = %.lr.ph166, %bb.b, %.critedge
  %.060.lcssa = phi ptr [ %0, %.critedge ], [ %scevgep177, %bb.b ], [ %.060165, %.lr.ph166 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %11 = ptrtoint ptr %.060.lcssa to i64           ; 2 uses
  %12 = ptrtoint ptr %0 to i64
  %i.o = sub i64 %11, %12                         ; 7 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !10
  %i.p = icmp ugt i64 %i.o, 15                    ; 2 uses
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge2
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !23
  %i.r = load i64, ptr %i.c, align 8, !tbaa !10
  store i64 %i.r, ptr %i.m, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge2
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.m, %.critedge2 ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %0, align 1, !tbaa !83
  store i8 %i.t, ptr %i.s, align 1, !tbaa !83
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %0, i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.u = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !tbaa !94
  %i.v = load ptr, ptr %5, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.x = load i64, ptr %i.n, align 8, !tbaa !94   ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %.pre181.a = load ptr, ptr %5, align 8, !tbaa !23 ; 7 uses
  br i1 %i.y, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pre181.a, i64 %i.x
  br label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %.sroa.09.013.i.i = phi ptr [ %i.aa, %bb.f ], [ %.pre181.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.sroa.09.013.i.i, align 1, !tbaa !83 ; 4 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isalnum(i32 noundef %i.ac) #37
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = add i8 %i.ab, -45
  %i.ag = icmp ult i8 %i.af, 2
  %i.ah = add i8 %i.ab, -94
  %i.ai = icmp ult i8 %i.ah, 3
  %i.aj = insertelement <4 x i8> poison, i8 %i.ab, i64 0
  %i.ak = shufflevector <4 x i8> %i.aj, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.al = and <4 x i8> %i.ak, <i8 -3, i8 -4, i8 -2, i8 -3>
  %i.am = icmp eq <4 x i8> %i.al, <i8 33, i8 36, i8 42, i8 124>
  %i.an = bitcast <4 x i1> %i.am to i4
  %i.ao = icmp ne i4 %i.an, 0
  %op.rdx = or i1 %i.ao, %i.ag
  %op.rdx207 = or i1 %i.ai, %i.ae
  %op.rdx208 = or i1 %op.rdx, %op.rdx207
  br i1 %op.rdx208, label %bb.f, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  %i.ap = icmp eq ptr %.060.lcssa, %.046.lcssa
  br i1 %i.ap, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load i8, ptr %.060.lcssa, align 1, !tbaa !83
  %.not62 = icmp eq i8 %i.aq, 58
  br i1 %.not62, label %.preheader, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

.preheader:                                       ; preds = %bb.g
  %.161170 = getelementptr inbounds nuw i8, ptr %.060.lcssa, i64 1 ; 3 uses
  %i.ar = icmp ult ptr %.161170, %.046.lcssa
  br i1 %i.ar, label %.lr.ph172.preheader, label %.critedge4

.lr.ph172.preheader:                              ; preds = %.preheader
  %i.as = sub i64 %.046.lcssa176.pre-phi, %11
  %scevgep179 = getelementptr i8, ptr %.060.lcssa, i64 %i.as ; 2 uses
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %.backedge
  %.161171 = phi ptr [ %.161, %.backedge ], [ %.161170, %.lr.ph172.preheader ] ; 3 uses
  %i.at = load i8, ptr %.161171, align 1, !tbaa !83
  switch i8 %i.at, label %.critedge4 [
    i8 32, label %.backedge
    i8 9, label %.backedge
  ]

.backedge:                                        ; preds = %.lr.ph172, %.lr.ph172
  %.161 = getelementptr inbounds nuw i8, ptr %.161171, i64 1 ; 2 uses
  %exitcond180.not = icmp eq ptr %.161, %scevgep179
  br i1 %exitcond180.not, label %.critedge4, label %.lr.ph172

.critedge4:                                       ; preds = %.backedge, %.lr.ph172, %.preheader
  %.161.lcssa = phi ptr [ %.161170, %.preheader ], [ %.161171, %.lr.ph172 ], [ %scevgep179, %.backedge ] ; 4 uses
  %.not63 = icmp ugt ptr %.161.lcssa, %.046.lcssa
  %.not64 = icmp eq ptr %.060.lcssa, %0
  %or.cond81 = or i1 %.not64, %.not63
  br i1 %or.cond81, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.av, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.o, ptr %i.b, align 8, !tbaa !10
  br i1 %i.p, label %.noexc.i83, label %._crit_edge.i.i82

.noexc.i83:                                       ; preds = %bb.h
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i82.thread unwind label %bb.s ; 2 uses

._crit_edge.i.i82.thread:                         ; preds = %.noexc.i83
  store ptr %i.aw, ptr %6, align 8, !tbaa !23
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !10
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !83
  br label %bb.j

._crit_edge.i.i82:                                ; preds = %bb.h
  %cond = icmp eq i64 %i.o, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i82
  %i.ay = load i8, ptr %0, align 1, !tbaa !83
  store i8 %i.ay, ptr %i.au, align 8, !tbaa !83
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i82.thread, %._crit_edge.i.i82
  %i.az = phi ptr [ %i.aw, %._crit_edge.i.i82.thread ], [ %i.au, %._crit_edge.i.i82 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %0, i64 %i.o, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !94
  %i.bb = load ptr, ptr %6, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bd, ptr %7, align 8, !tbaa !93
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.be, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %13 = ptrtoint ptr %.046.lcssa to i64
  %i.bf = ptrtoint ptr %.161.lcssa to i64
  %i.bg = sub i64 %13, %i.bf                      ; 4 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !10
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %.noexc.i87, label %._crit_edge.i.i86

.noexc.i87:                                       ; preds = %bb.k
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc88 unwind label %bb.t   ; 2 uses

.noexc88:                                         ; preds = %.noexc.i87
  store ptr %i.bi, ptr %7, align 8, !tbaa !23
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !83
  br label %._crit_edge.i.i86

._crit_edge.i.i86:                                ; preds = %.noexc88, %bb.k
  %i.bk = phi ptr [ %i.bi, %.noexc88 ], [ %i.bd, %bb.k ] ; 2 uses
  switch i64 %i.bg, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i86
  %i.bl = load i8, ptr %.161.lcssa, align 1, !tbaa !83
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !83
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %.161.lcssa, i64 %i.bg, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i86
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !94
  %i.bn = load ptr, ptr %7, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !94 ; 2 uses
  switch i64 %i.bp, label %bb.q [
    i64 0, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread158
    i64 1, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i64 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !83  ; 2 uses
  %i.bs = add i8 %i.br, -33
  %i.bt = icmp ult i8 %i.bs, 94
  %i.bu = icmp slt i8 %i.br, 0
  %spec.select.i23.i.i = or i1 %i.bu, %i.bt
  br i1 %spec.select.i23.i.i, label %bb.p, label %_ZZN14duckdb_httplib6detail12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS0_11case_ignore4hashENSA_8equal_toESaISt4pairIKS9_S9_EEEENKUlRSE_SJ_E_clESJ_SJ_.exit

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !83  ; 2 uses
  %i.bx = add i8 %i.bw, -33
  %i.by = icmp ult i8 %i.bx, 94
  %i.bz = icmp slt i8 %i.bw, 0
  %spec.select.i24.i.i = or i1 %i.bz, %i.by
  br i1 %spec.select.i24.i.i, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread158, label %_ZZN14duckdb_httplib6detail12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS0_11case_ignore4hashENSA_8equal_toESaISt4pairIKS9_S9_EEEENKUlRSE_SJ_E_clESJ_SJ_.exit

bb.q:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %7, align 8, !tbaa !23    ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !83  ; 2 uses
  %i.cc = add i8 %i.cb, -33
  %i.cd = icmp ult i8 %i.cc, 94
  %i.ce = icmp slt i8 %i.cb, 0
  %spec.select.i25.i.i = or i1 %i.ce, %i.cd
  br i1 %spec.select.i25.i.i, label %.lr.ph.preheader.i.i92, label %_ZZN14duckdb_httplib6detail12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS0_11case_ignore4hashENSA_8equal_toESaISt4pairIKS9_S9_EEEENKUlRSE_SJ_E_clESJ_SJ_.exit

.lr.ph.preheader.i.i92:                           ; preds = %bb.q
  %i.cf = add i64 %i.bp, -1                       ; 2 uses
  br label %.lr.ph.i.i93

.lr.ph.i.i93:                                     ; preds = %.critedge.i.i, %.lr.ph.preheader.i.i92
  %.02229.i.i = phi i64 [ %i.cg, %.critedge.i.i ], [ 1, %.lr.ph.preheader.i.i92 ] ; 2 uses
  %i.cg = add nuw i64 %.02229.i.i, 1              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.02229.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !83  ; 3 uses
  switch i8 %i.ci, label %bb.r [
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
  ]

bb.r:                                             ; preds = %.lr.ph.i.i93
  %i.cj = add i8 %i.ci, -33
  %i.ck = icmp ult i8 %i.cj, 94
  %i.cl = icmp slt i8 %i.ci, 0
  %spec.select.i26.i.i = or i1 %i.cl, %i.ck
  br i1 %spec.select.i26.i.i, label %.critedge.i.i, label %_ZZN14duckdb_httplib6detail12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS0_11case_ignore4hashENSA_8equal_toESaISt4pairIKS9_S9_EEEENKUlRSE_SJ_E_clESJ_SJ_.exit, !llvm.loop !433

.critedge.i.i:                                    ; preds = %bb.r, %.lr.ph.i.i93, %.lr.ph.i.i93
  %exitcond.not.i.i = icmp eq i64 %i.cg, %i.cf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i94, label %.lr.ph.i.i93

._crit_edge.i.i94:                                ; preds = %.critedge.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !83  ; 2 uses
  %i.co = add i8 %i.cn, -33
  %i.cp = icmp ult i8 %i.co, 94
  %i.cq = icmp slt i8 %i.cn, 0
  %spec.select.i27.i.i = or i1 %i.cq, %i.cp
  br i1 %spec.select.i27.i.i, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread158, label %_ZZN14duckdb_httplib6detail12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS0_11case_ignore4hashENSA_8equal_toESaISt4pairIKS9_S9_EEEENKUlRSE_SJ_E_clESJ_SJ_.exit

_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n
  %i.cr = load ptr, ptr %7, align 8, !tbaa !23
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !83  ; 2 uses
  %i.ct = add i8 %i.cs, -33
  %i.cu = icmp ult i8 %i.ct, 94
  %i.cv = icmp slt i8 %i.cs, 0
  %spec.select.i.i.i91 = or i1 %i.cv, %i.cu
  br i1 %spec.select.i.i.i91, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread158, label %_ZZN14duckdb_httplib6detail12read_headersERNS_6StreamERSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS0_11case_ignore4hashENSA_8equal_toESaISt4pairIKS9_S9_EEEENKUlRSE_SJ_E_clESJ_SJ_.exit

bb.s:                                             ; preds = %.noexc.i83
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.t:                                             ; preds = %.noexc.i87
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread158: ; preds = %bb.n, %._crit_edge.i.i94, %bb.p, %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.cz, ptr %8, align 8, !tbaa !93
  store i64 7957695015157985100, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.da, align 8, !tbaa !94
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.db, align 8, !tbaa !83
  %i.dc = load i64, ptr %i.av, align 8, !tbaa !94 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 8
  br i1 %i.dd, label %.lr.ph.i.preheader.i, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.preheader.i:                             ; preds = %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread158
  %i.de = load ptr, ptr %6, align 8, !tbaa !23    ; 8 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !83
  %i.dg = load i8, ptr %i.cz, align 8, !tbaa !83
  %i.dh = zext i8 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !83
  %i.dk = zext i8 %i.dg to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !83
  %i.dn = icmp eq i8 %i.dj, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i98.1, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.1:                                   ; preds = %.lr.ph.i.preheader.i
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 17
  %.sroa.03.07.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dp = load i8, ptr %.sroa.03.07.i.i.ptr.1, align 1, !tbaa !83
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !83
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83
  %i.du = zext i8 %i.dq to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !83
  %i.dx = icmp eq i8 %i.dt, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i98.2, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.2:                                   ; preds = %.lr.ph.i.i98.1
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 18
  %.sroa.03.07.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dz = load i8, ptr %.sroa.03.07.i.i.ptr.2, align 1, !tbaa !83
  %i.ea = load i8, ptr %i.dy, align 2, !tbaa !83
  %i.eb = zext i8 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !83
  %i.ee = zext i8 %i.ea to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !83
  %i.eh = icmp eq i8 %i.ed, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i98.3, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.3:                                   ; preds = %.lr.ph.i.i98.2
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 19
  %.sroa.03.07.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  %i.ej = load i8, ptr %.sroa.03.07.i.i.ptr.3, align 1, !tbaa !83
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !83
  %i.el = zext i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !83
  %i.eo = zext i8 %i.ek to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !83
  %i.er = icmp eq i8 %i.en, %i.eq
  br i1 %i.er, label %.lr.ph.i.i98.4, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.4:                                   ; preds = %.lr.ph.i.i98.3
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.03.07.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
end_hunk_1
begin_hunk_2_@_ZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  %i.ml = icmp eq ptr %i.mh, %8
  br i1 %i.ml, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %.thread236, %bb.du
  %.pn130.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn241 = phi { ptr, i32 } [ %i.id, %.thread236 ], [ %.pn130.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.du ], [ %.pn130.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEE19prohibited_trailersB5cxx11) #24
  br label %bb.eg

bb.dv:                                            ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.mm = landingpad { ptr, i32 }
          cleanup
  %i.mn = load ptr, ptr %39, align 8, !tbaa !23   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.gw
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.dv
  call void @_ZdlPv(ptr noundef %i.mn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %_ZNSt14_Function_baseD2Ev.exit217

bb.dw:                                            ; preds = %._crit_edge.i.i190
  %i.mp = landingpad { ptr, i32 }
          cleanup
  %i.mq = load ptr, ptr %40, align 8, !tbaa !23   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.hb
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.dw
  call void @_ZdlPv(ptr noundef %i.mq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %_ZNSt14_Function_baseD2Ev.exit217

.body200:                                         ; preds = %bb.br, %bb.bs
  %i.ms = load ptr, ptr %i.hi, align 8, !tbaa !12 ; 2 uses
  %.not.i216 = icmp eq ptr %i.ms, null
  br i1 %.not.i216, label %_ZNSt14_Function_baseD2Ev.exit217, label %bb.dx

bb.dx:                                            ; preds = %.body200
  %i.mt = invoke noundef zeroext i1 %i.ms(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit217 unwind label %bb.dy ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit203:                ; preds = %bb.bv, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i64 0, ptr %i.j, align 8, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %sub_0243

sub_0243:                                         ; preds = %bb.eb, %_ZNSt14_Function_baseD2Ev.exit203
  %i.my = load i64, ptr %i.p, align 8, !tbaa !94  ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0                    ; 2 uses
  %i.na = load ptr, ptr %i.k, align 8
  %i.nb = load ptr, ptr %i.n, align 8
  %.0.i218 = select i1 %i.mz, ptr %i.na, ptr %i.nb ; 5 uses
  %i.nc = load i8, ptr %.0.i218, align 1
  %.not256 = icmp eq i8 %i.nc, 13
  br i1 %.not256, label %sub_1244, label %.tail242.thread

sub_1244:                                         ; preds = %sub_0243
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.i218, i64 1
  %i.ne = load i8, ptr %i.nd, align 1
  %.not257 = icmp eq i8 %i.ne, 10
  br i1 %.not257, label %.tail242, label %.tail242.thread

.tail242:                                         ; preds = %sub_1244
  %i.nf = getelementptr inbounds nuw i8, ptr %.0.i218, i64 2
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.ed, label %.tail242.thread

.tail242.thread:                                  ; preds = %sub_1244, %sub_0243, %.tail242
  %i.ni = load i64, ptr %i.m, align 8
  %.0.i219 = select i1 %i.mz, i64 %i.ni, i64 %i.my ; 2 uses
  %i.nj = icmp ugt i64 %.0.i219, 8192
  %i.nk = load i64, ptr %i.j, align 8
  %i.nl = icmp ugt i64 %i.nk, 99
  %or.cond170 = select i1 %i.nj, i1 true, i1 %i.nl
  br i1 %or.cond170, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %.tail242.thread
  %i.nm = getelementptr inbounds nuw i8, ptr %.0.i218, i64 %.0.i219
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 -2
  store ptr %38, ptr %42, align 8, !tbaa !952
  store ptr %1, ptr %i.mw, align 8, !tbaa !116
  store ptr %i.j, ptr %i.mx, align 8, !tbaa !502
  %i.no = invoke noundef zeroext i1 @_ZN14duckdb_httplib6detail12parse_headerIZNS0_20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEEUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_E_EEbSB_SB_S7_(ptr noundef nonnull %.0.i218, ptr noundef nonnull %i.nn, ptr noundef nonnull byval(%class.anon.862) align 8 %42)
          to label %bb.ea unwind label %bb.ec     ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.np = invoke noundef zeroext i1 @_ZN14duckdb_httplib6detail18stream_line_reader7getlineEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.np, label %sub_0243, label %bb.ed, !llvm.loop !954

bb.ec:                                            ; preds = %bb.ea, %bb.dz
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %_ZNSt14_Function_baseD2Ev.exit217

bb.ed:                                            ; preds = %.tail242, %.tail242.thread, %bb.eb
  %.4 = phi i32 [ 0, %.tail242 ], [ 2, %.tail242.thread ], [ 2, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  %i.nr = load ptr, ptr %i.gs, align 8, !tbaa !462 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ed, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ns, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.nr, %bb.ed ] ; 4 uses
  %i.ns = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !23 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.nu) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #33
  %.not.i.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !464

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %bb.ed
  %i.nx = load ptr, ptr %38, align 8, !tbaa !465
  %i.ny = load i64, ptr %i.gr, align 8, !tbaa !466
  %i.nz = shl i64 %i.ny, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.nx, i8 0, i64 %i.nz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i8 0, i64 16, i1 false)
  %i.oa = load ptr, ptr %38, align 8, !tbaa !465  ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.gq
  br i1 %i.ob, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.oa) #33
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.ef

_ZNSt14_Function_baseD2Ev.exit217:                ; preds = %bb.dx, %.body200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %.pn163 = phi { ptr, i32 } [ %i.nq, %bb.ec ], [ %i.mm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.hu, %.body200 ], [ %i.hu, %bb.dx ]
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.eg

bb.ef:                                            ; preds = %.thread, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit, %bb.ai, %bb.b
  %.6 = phi i32 [ 2, %bb.b ], [ %.1.ph, %.thread ], [ %.4, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit ], [ 0, %bb.ai ]
  %i.oc = load ptr, ptr %i.n, align 8, !tbaa !23  ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.o
  br i1 %i.od, label %_ZN14duckdb_httplib6detail18stream_line_readerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ef
  call void @_ZdlPv(ptr noundef %i.oc) #33
  br label %_ZN14duckdb_httplib6detail18stream_line_readerD2Ev.exit

_ZN14duckdb_httplib6detail18stream_line_readerD2Ev.exit: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  ret i32 %.6

bb.eg:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit181, %bb.aj, %.loopexit, %_ZNSt14_Function_baseD2Ev.exit217, %bb.c
  %.pn163.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %.pn163, %_ZNSt14_Function_baseD2Ev.exit217 ], [ %.pn130.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn241, %.loopexit ], [ %i.cl, %bb.aj ], [ %.pn127, %_ZNSt14_Function_baseD2Ev.exit181 ]
  %i.oe = load ptr, ptr %i.n, align 8, !tbaa !23  ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.o
  br i1 %i.of, label %_ZN14duckdb_httplib6detail18stream_line_readerD2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223: ; preds = %bb.eg
  call void @_ZdlPv(ptr noundef %i.oe) #33
  br label %_ZN14duckdb_httplib6detail18stream_line_readerD2Ev.exit225

_ZN14duckdb_httplib6detail18stream_line_readerD2Ev.exit225: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  resume { ptr, i32 } %.pn163.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14duckdb_httplib6detail12parse_headerIZNS0_20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEEUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_E_EEbSB_SB_S7_(ptr noundef %0, ptr noundef %1, ptr noundef byval(%class.anon.862) align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = icmp ult ptr %0, %1
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sub i64 %4, %3
  %scevgep = getelementptr i8, ptr %1, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge162
  %.046163 = phi ptr [ %i.f, %.backedge162 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.046163, i64 -1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !83
  switch i8 %i.g, label %.critedge.loopexit [
    i8 32, label %.backedge162
    i8 9, label %.backedge162
  ]

.backedge162:                                     ; preds = %.lr.ph, %.lr.ph
  %i.h = icmp ult ptr %0, %i.f
  br i1 %i.h, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph, %.backedge162
  %.046.lcssa.ph = phi ptr [ %scevgep, %.backedge162 ], [ %.046163, %.lr.ph ] ; 2 uses
  %.pre182 = ptrtoaddr ptr %.046.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.046.lcssa177.pre-phi = phi i64 [ %.pre182, %.critedge.loopexit ], [ %3, %bb.a ] ; 2 uses
  %.046.lcssa = phi ptr [ %.046.lcssa.ph, %.critedge.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.i = icmp ult ptr %0, %.046.lcssa
  br i1 %i.i, label %.lr.ph167.preheader, label %.critedge2

.lr.ph167.preheader:                              ; preds = %.critedge
  %i.j = sub i64 %.046.lcssa177.pre-phi, %4
  %scevgep178 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.b
  %.060166 = phi ptr [ %i.l, %bb.b ], [ %0, %.lr.ph167.preheader ] ; 3 uses
  %i.k = load i8, ptr %.060166, align 1, !tbaa !83
  %.not = icmp eq i8 %i.k, 58
  br i1 %.not, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %.lr.ph167
  %i.l = getelementptr inbounds nuw i8, ptr %.060166, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.l, %scevgep178
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph167, !llvm.loop !955

.critedge2:                                       ; preds = %.lr.ph167, %bb.b, %.critedge
  %.060.lcssa = phi ptr [ %0, %.critedge ], [ %scevgep178, %bb.b ], [ %.060166, %.lr.ph167 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %11 = ptrtoint ptr %.060.lcssa to i64           ; 2 uses
  %12 = ptrtoint ptr %0 to i64
  %i.o = sub i64 %11, %12                         ; 7 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !10
  %i.p = icmp ugt i64 %i.o, 15                    ; 2 uses
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge2
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !23
  %i.r = load i64, ptr %i.c, align 8, !tbaa !10
  store i64 %i.r, ptr %i.m, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge2
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.m, %.critedge2 ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %0, align 1, !tbaa !83
  store i8 %i.t, ptr %i.s, align 1, !tbaa !83
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %0, i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.u = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !tbaa !94
  %i.v = load ptr, ptr %5, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.x = load i64, ptr %i.n, align 8, !tbaa !94   ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %.pre182.a = load ptr, ptr %5, align 8, !tbaa !23 ; 7 uses
  br i1 %i.y, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pre182.a, i64 %i.x
  br label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %.sroa.09.013.i.i = phi ptr [ %i.aa, %bb.f ], [ %.pre182.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.sroa.09.013.i.i, align 1, !tbaa !83 ; 4 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isalnum(i32 noundef %i.ac) #37
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = add i8 %i.ab, -45
  %i.ag = icmp ult i8 %i.af, 2
  %i.ah = add i8 %i.ab, -94
  %i.ai = icmp ult i8 %i.ah, 3
  %i.aj = insertelement <4 x i8> poison, i8 %i.ab, i64 0
  %i.ak = shufflevector <4 x i8> %i.aj, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.al = and <4 x i8> %i.ak, <i8 -3, i8 -4, i8 -2, i8 -3>
  %i.am = icmp eq <4 x i8> %i.al, <i8 33, i8 36, i8 42, i8 124>
  %i.an = bitcast <4 x i1> %i.am to i4
  %i.ao = icmp ne i4 %i.an, 0
  %op.rdx = or i1 %i.ao, %i.ag
  %op.rdx208 = or i1 %i.ai, %i.ae
  %op.rdx209 = or i1 %op.rdx, %op.rdx208
  br i1 %op.rdx209, label %bb.f, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  %i.ap = icmp eq ptr %.060.lcssa, %.046.lcssa
  br i1 %i.ap, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load i8, ptr %.060.lcssa, align 1, !tbaa !83
  %.not62 = icmp eq i8 %i.aq, 58
  br i1 %.not62, label %.preheader, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

.preheader:                                       ; preds = %bb.g
  %.161171 = getelementptr inbounds nuw i8, ptr %.060.lcssa, i64 1 ; 3 uses
  %i.ar = icmp ult ptr %.161171, %.046.lcssa
  br i1 %i.ar, label %.lr.ph173.preheader, label %.critedge4

.lr.ph173.preheader:                              ; preds = %.preheader
  %i.as = sub i64 %.046.lcssa177.pre-phi, %11
  %scevgep180 = getelementptr i8, ptr %.060.lcssa, i64 %i.as ; 2 uses
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.backedge
  %.161172 = phi ptr [ %.161, %.backedge ], [ %.161171, %.lr.ph173.preheader ] ; 3 uses
  %i.at = load i8, ptr %.161172, align 1, !tbaa !83
  switch i8 %i.at, label %.critedge4 [
    i8 32, label %.backedge
    i8 9, label %.backedge
  ]

.backedge:                                        ; preds = %.lr.ph173, %.lr.ph173
  %.161 = getelementptr inbounds nuw i8, ptr %.161172, i64 1 ; 2 uses
  %exitcond181.not = icmp eq ptr %.161, %scevgep180
  br i1 %exitcond181.not, label %.critedge4, label %.lr.ph173

.critedge4:                                       ; preds = %.backedge, %.lr.ph173, %.preheader
  %.161.lcssa = phi ptr [ %.161171, %.preheader ], [ %.161172, %.lr.ph173 ], [ %scevgep180, %.backedge ] ; 4 uses
  %.not63 = icmp ugt ptr %.161.lcssa, %.046.lcssa
  %.not64 = icmp eq ptr %.060.lcssa, %0
  %or.cond81 = or i1 %.not64, %.not63
  br i1 %or.cond81, label %_ZN14duckdb_httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.av, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.o, ptr %i.b, align 8, !tbaa !10
  br i1 %i.p, label %.noexc.i83, label %._crit_edge.i.i82

.noexc.i83:                                       ; preds = %bb.h
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i82.thread unwind label %bb.s ; 2 uses

._crit_edge.i.i82.thread:                         ; preds = %.noexc.i83
  store ptr %i.aw, ptr %6, align 8, !tbaa !23
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !10
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !83
  br label %bb.j

._crit_edge.i.i82:                                ; preds = %bb.h
  %cond = icmp eq i64 %i.o, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i82
  %i.ay = load i8, ptr %0, align 1, !tbaa !83
  store i8 %i.ay, ptr %i.au, align 8, !tbaa !83
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i82.thread, %._crit_edge.i.i82
  %i.az = phi ptr [ %i.aw, %._crit_edge.i.i82.thread ], [ %i.au, %._crit_edge.i.i82 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %0, i64 %i.o, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !94
  %i.bb = load ptr, ptr %6, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bd, ptr %7, align 8, !tbaa !93
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.be, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %13 = ptrtoint ptr %.046.lcssa to i64
  %i.bf = ptrtoint ptr %.161.lcssa to i64
  %i.bg = sub i64 %13, %i.bf                      ; 4 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !10
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %.noexc.i87, label %._crit_edge.i.i86

.noexc.i87:                                       ; preds = %bb.k
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc88 unwind label %bb.t   ; 2 uses

.noexc88:                                         ; preds = %.noexc.i87
  store ptr %i.bi, ptr %7, align 8, !tbaa !23
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !83
  br label %._crit_edge.i.i86

._crit_edge.i.i86:                                ; preds = %.noexc88, %bb.k
  %i.bk = phi ptr [ %i.bi, %.noexc88 ], [ %i.bd, %bb.k ] ; 2 uses
  switch i64 %i.bg, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i86
  %i.bl = load i8, ptr %.161.lcssa, align 1, !tbaa !83
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !83
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %.161.lcssa, i64 %i.bg, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i86
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !94
  %i.bn = load ptr, ptr %7, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !94 ; 2 uses
  switch i64 %i.bp, label %bb.q [
    i64 0, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread159
    i64 1, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i64 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !83  ; 2 uses
  %i.bs = add i8 %i.br, -33
  %i.bt = icmp ult i8 %i.bs, 94
  %i.bu = icmp slt i8 %i.br, 0
  %spec.select.i23.i.i = or i1 %i.bu, %i.bt
  br i1 %spec.select.i23.i.i, label %bb.p, label %_ZZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_E_clESK_SK_.exit

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !83  ; 2 uses
  %i.bx = add i8 %i.bw, -33
  %i.by = icmp ult i8 %i.bx, 94
  %i.bz = icmp slt i8 %i.bw, 0
  %spec.select.i24.i.i = or i1 %i.bz, %i.by
  br i1 %spec.select.i24.i.i, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread159, label %_ZZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_E_clESK_SK_.exit

bb.q:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %7, align 8, !tbaa !23    ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !83  ; 2 uses
  %i.cc = add i8 %i.cb, -33
  %i.cd = icmp ult i8 %i.cc, 94
  %i.ce = icmp slt i8 %i.cb, 0
  %spec.select.i25.i.i = or i1 %i.ce, %i.cd
  br i1 %spec.select.i25.i.i, label %.lr.ph.preheader.i.i92, label %_ZZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_E_clESK_SK_.exit

.lr.ph.preheader.i.i92:                           ; preds = %bb.q
  %i.cf = add i64 %i.bp, -1                       ; 2 uses
  br label %.lr.ph.i.i93

.lr.ph.i.i93:                                     ; preds = %.critedge.i.i, %.lr.ph.preheader.i.i92
  %.02229.i.i = phi i64 [ %i.cg, %.critedge.i.i ], [ 1, %.lr.ph.preheader.i.i92 ] ; 2 uses
  %i.cg = add nuw i64 %.02229.i.i, 1              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.02229.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !83  ; 3 uses
  switch i8 %i.ci, label %bb.r [
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
  ]

bb.r:                                             ; preds = %.lr.ph.i.i93
  %i.cj = add i8 %i.ci, -33
  %i.ck = icmp ult i8 %i.cj, 94
  %i.cl = icmp slt i8 %i.ci, 0
  %spec.select.i26.i.i = or i1 %i.cl, %i.ck
  br i1 %spec.select.i26.i.i, label %.critedge.i.i, label %_ZZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_E_clESK_SK_.exit, !llvm.loop !433

.critedge.i.i:                                    ; preds = %bb.r, %.lr.ph.i.i93, %.lr.ph.i.i93
  %exitcond.not.i.i = icmp eq i64 %i.cg, %i.cf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i94, label %.lr.ph.i.i93

._crit_edge.i.i94:                                ; preds = %.critedge.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !83  ; 2 uses
  %i.co = add i8 %i.cn, -33
  %i.cp = icmp ult i8 %i.co, 94
  %i.cq = icmp slt i8 %i.cn, 0
  %spec.select.i27.i.i = or i1 %i.cq, %i.cp
  br i1 %spec.select.i27.i.i, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread159, label %_ZZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_E_clESK_SK_.exit

_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n
  %i.cr = load ptr, ptr %7, align 8, !tbaa !23
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !83  ; 2 uses
  %i.ct = add i8 %i.cs, -33
  %i.cu = icmp ult i8 %i.ct, 94
  %i.cv = icmp slt i8 %i.cs, 0
  %spec.select.i.i.i91 = or i1 %i.cv, %i.cu
  br i1 %spec.select.i.i.i91, label %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread159, label %_ZZN14duckdb_httplib6detail20read_content_chunkedINS_8ResponseEEENS0_17ReadContentResultERNS_6StreamERT_mSt8functionIFbPKcmmmEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_E_clESK_SK_.exit

bb.s:                                             ; preds = %.noexc.i83
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.t:                                             ; preds = %.noexc.i87
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.u:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread159: ; preds = %bb.n, %._crit_edge.i.i94, %bb.p, %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.cz, ptr %8, align 8, !tbaa !93
  store i64 7957695015157985100, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.da, align 8, !tbaa !94
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.db, align 8, !tbaa !83
  %i.dc = load i64, ptr %i.av, align 8, !tbaa !94 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 8
  br i1 %i.dd, label %.lr.ph.i.preheader.i, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.preheader.i:                             ; preds = %_ZN14duckdb_httplib6detail6fields14is_field_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread159
  %i.de = load ptr, ptr %6, align 8, !tbaa !23    ; 8 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !83
  %i.dg = load i8, ptr %i.cz, align 8, !tbaa !83
  %i.dh = zext i8 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !83
  %i.dk = zext i8 %i.dg to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !83
  %i.dn = icmp eq i8 %i.dj, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i98.1, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.1:                                   ; preds = %.lr.ph.i.preheader.i
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 17
  %.sroa.03.07.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dp = load i8, ptr %.sroa.03.07.i.i.ptr.1, align 1, !tbaa !83
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !83
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83
  %i.du = zext i8 %i.dq to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !83
  %i.dx = icmp eq i8 %i.dt, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i98.2, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.2:                                   ; preds = %.lr.ph.i.i98.1
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 18
  %.sroa.03.07.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dz = load i8, ptr %.sroa.03.07.i.i.ptr.2, align 1, !tbaa !83
  %i.ea = load i8, ptr %i.dy, align 2, !tbaa !83
  %i.eb = zext i8 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !83
  %i.ee = zext i8 %i.ea to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !83
  %i.eh = icmp eq i8 %i.ed, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i98.3, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.3:                                   ; preds = %.lr.ph.i.i98.2
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 19
  %.sroa.03.07.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  %i.ej = load i8, ptr %.sroa.03.07.i.i.ptr.3, align 1, !tbaa !83
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !83
  %i.el = zext i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !83
  %i.eo = zext i8 %i.ek to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !83
  %i.er = icmp eq i8 %i.en, %i.eq
  br i1 %i.er, label %.lr.ph.i.i98.4, label %_ZN14duckdb_httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.lr.ph.i.i98.4:                                   ; preds = %.lr.ph.i.i98.3
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.03.07.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib6detail24prepare_content_receiverINS3_8ResponseEZNS4_12read_contentIS6_EEbRNS3_6StreamERT_mRiSt8functionIFbmmEESD_IS2_EbEUlRKSG_E_EEbSB_SC_SG_bT0_EUlS1_mmmE0_E9_M_invokeERKSt9_Any_dataOS1_OmSR_SR_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !7
  store i64 %i.f, ptr %i.b, align 8, !tbaa !10
  store i64 %i.g, ptr %i.c, align 8, !tbaa !10
  store i64 %i.h, ptr %i.d, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZSt10__invoke_rIbRZN14duckdb_httplib6detail24prepare_content_receiverINS0_8ResponseEZNS1_12read_contentIS3_EEbRNS0_6StreamERT_mRiSt8functionIFbmmEESA_IFbPKcmmmEEbEUlRKSG_E_EEbS8_S9_SG_bT0_EUlSE_mmmE0_JSE_mmmEENSt9enable_ifIXntsr7is_voidIS7_EE5valueES7_E4typeEOSK_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZSt10__invoke_rIbRZN14duckdb_httplib6detail24prepare_content_receiverINS0_8ResponseEZNS1_12read_contentIS3_EEbRNS0_6StreamERT_mRiSt8functionIFbmmEESA_IFbPKcmmmEEbEUlRKSG_E_EEbS8_S9_SG_bT0_EUlSE_mmmE0_JSE_mmmEENSt9enable_ifIXntsr7is_voidIS7_EE5valueES7_E4typeEOSK_DpOT1_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !733
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib6detail24prepare_content_receiverINS3_8ResponseEZNS4_12read_contentIS6_EEbRNS3_6StreamERT_mRiSt8functionIFbmmEESD_IS2_EbEUlRKSG_E_EEbSB_SC_SG_bT0_EUlS1_mmmE0_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail24prepare_content_receiverINS1_8ResponseEZNS2_12read_contentIS4_EEbRNS1_6StreamERT_mRiSt8functionIFbmmEESB_IFbPKcmmmEEbEUlRKSH_E_EEbS9_SA_SH_bT0_EUlSF_mmmE0_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN14duckdb_httplib6detail24prepare_content_receiverINS_8ResponseEZNS0_12read_contentIS2_EEbRNS_6StreamERT_mRiSt8functionIFbmmEES9_IFbPKcmmmEEbEUlRKSF_E_EEbS7_S8_SF_bT0_EUlSD_mmmE0_, ptr %0, align 8, !tbaa !372
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail24prepare_content_receiverINS1_8ResponseEZNS2_12read_contentIS4_EEbRNS1_6StreamERT_mRiSt8functionIFbmmEESB_IFbPKcmmmEEbEUlRKSH_E_EEbS9_SA_SH_bT0_EUlSF_mmmE0_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail24prepare_content_receiverINS1_8ResponseEZNS2_12read_contentIS4_EEbRNS1_6StreamERT_mRiSt8functionIFbmmEESB_IFbPKcmmmEEbEUlRKSH_E_EEbS9_SA_SH_bT0_EUlSF_mmmE0_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !927
  store i64 %i.a, ptr %0, align 8, !tbaa !927
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail24prepare_content_receiverINS1_8ResponseEZNS2_12read_contentIS4_EEbRNS1_6StreamERT_mRiSt8functionIFbmmEESB_IFbPKcmmmEEbEUlRKSH_E_EEbS9_SA_SH_bT0_EUlSF_mmmE0_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail24prepare_content_receiverINS1_8ResponseEZNS2_12read_contentIS4_EEbRNS1_6StreamERT_mRiSt8functionIFbmmEESB_IFbPKcmmmEEbEUlRKSH_E_EEbS9_SA_SH_bT0_EUlSF_mmmE0_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbmmEZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E9_M_invokeERKSt9_Any_dataOmSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !204
  %i.b = tail call noundef zeroext i1 @_ZSt13__invoke_implIbRZN14duckdb_httplib10ClientImpl15process_requestERNS0_6StreamERNS0_7RequestERNS0_8ResponseEbRNS0_5ErrorEEUlmmE_JmmEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbmmEZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEEUlmmE_, ptr %0, align 8, !tbaa !372
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %i.a, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !204
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !965
  store ptr %i.c, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !204    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl15process_requestERNS1_6StreamERNS1_7RequestERNS1_8ResponseEbRNS1_5ErrorEEUlmmE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSt13__invoke_implIbRZN14duckdb_httplib10ClientImpl15process_requestERNS0_6StreamERNS0_7RequestERNS0_8ResponseEbRNS0_5ErrorEEUlmmE_JmmEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !10
  %i.e = load i64, ptr %2, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !966  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !968, !nonnull !147, !align !196 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 752
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %.not.i.i.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.not.i, label %_ZZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEENKUlmmE_clEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !969, !nonnull !147
  %i.n = load i8, ptr %i.m, align 1, !tbaa !280, !range !146, !noundef !147
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEENKUlmmE_clEmm.exit, label %_ZNKSt8functionIFbmmEEclEmm.exit.i

_ZNKSt8functionIFbmmEEclEmm.exit.i:               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.d, ptr %i.b, align 8, !tbaa !10
  store i64 %i.e, ptr %i.c, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 776
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.r, label %_ZZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEENKUlmmE_clEmm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbmmEEclEmm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !971, !nonnull !147, !align !532 ; 2 uses
  store i32 7, ptr %i.t, align 4, !tbaa !504
  %i.u = load ptr, ptr %0, align 8, !tbaa !968, !nonnull !147, !align !196
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 840
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 856 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %.not.i.i.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i, label %_ZZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEENKUlmmE_clEmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 768 ; 3 uses
  %i.z = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #24 ; 2 uses
  %.not.i.i4.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i4.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_system_errori(i32 noundef %i.z) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.u, ptr %i.a, align 8, !tbaa !683
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !12
  %.not.i.i5.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i5.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 864
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !685
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.i, !inline_history !686

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #24 ; 0 uses
  br label %_ZZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEENKUlmmE_clEmm.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #24 ; 0 uses
  resume { ptr, i32 } %i.ae

_ZZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorEENKUlmmE_clEmm.exit: ; preds = %bb.a, %bb.b, %_ZNKSt8functionIFbmmEEclEmm.exit.i, %bb.c, %bb.h
  %.0.i = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %_ZNKSt8functionIFbmmEEclEmm.exit.i ], [ false, %bb.c ], [ false, %bb.h ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIllESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !723  ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !346    ; 22 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !724
  %i.j = load ptr, ptr %0, align 8, !tbaa !346    ; 24 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %i.b to i64
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE11_M_allocateEm.exit.i, !prof !84

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseISt4pairIllESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %3, -16
  %i.r = sub i64 %i.q, %2
  %i.s = and i64 %i.r, -16
  %i.t = add i64 %i.s, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIllESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !346
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.u, ptr %i.h, align 8, !tbaa !724
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !723  ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.l                       ; 5 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.g, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.f, -8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.aa
  %scevgep43 = getelementptr i8, ptr %i.c, i64 %i.aa
  %scevgep44 = getelementptr i8, ptr %i.j, i64 8
  %scevgep45 = getelementptr i8, ptr %i.j, i64 %i.f
  %scevgep46 = getelementptr i8, ptr %i.c, i64 8
  %bound0 = icmp ult ptr %i.j, %scevgep43
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %scevgep44, %i.b
  %bound149 = icmp ult ptr %scevgep46, %scevgep45
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775806      ; 3 uses
  %i.ab = and i64 %i.g, 1
  %i.ac = shl i64 %n.vec, 4                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 4                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.af
  %next.gep51 = getelementptr i8, ptr %i.j, i64 %i.ag
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.af
  %next.gep53 = getelementptr i8, ptr %i.c, i64 %i.ag
  %wide.load = load <2 x i64>, ptr %next.gep52, align 8
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load54, ptr %next.gep51, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !972

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader91

.lr.ph.i.i.i.i.i.preheader91:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %i.ai = load <2 x i64>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !10
  store <2 x i64> %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !975

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.ao = ashr exact i64 %i.y, 4                  ; 7 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check72 = icmp ult i64 %i.ao, 14
  br i1 %min.iters.check72, label %.lr.ph.i.i.i.i.i26.preheader90, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.aq = add i64 %i.y, -8                        ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.j, i64 %i.aq
  %scevgep59 = getelementptr i8, ptr %i.c, i64 %i.aq
  %scevgep60 = getelementptr i8, ptr %i.j, i64 8
  %scevgep62 = getelementptr i8, ptr %i.c, i64 8
  %scevgep63 = getelementptr i8, ptr %i.c, i64 %i.y
  %bound064 = icmp ult ptr %i.j, %scevgep59
  %bound165 = icmp ult ptr %i.c, %scevgep58
  %found.conflict66 = and i1 %bound064, %bound165
  %bound067 = icmp ult ptr %scevgep60, %scevgep63
  %bound168 = icmp ult ptr %scevgep62, %i.w
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %found.conflict66, %found.conflict69
  br i1 %conflict.rdx70, label %.lr.ph.i.i.i.i.i26.preheader90, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck57
  %n.vec75 = and i64 %i.ao, 9223372036854775806   ; 3 uses
  %i.ar = and i64 %i.ao, 1
  %i.as = shl i64 %n.vec75, 4                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph73
  %index77 = phi i64 [ 0, %vector.ph73 ], [ %index.next84, %vector.body76 ] ; 2 uses
  %i.av = shl i64 %index77, 4                     ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.j, i64 %i.av
  %next.gep79 = getelementptr i8, ptr %i.j, i64 %i.aw
  %next.gep80 = getelementptr i8, ptr %i.c, i64 %i.av
  %next.gep81 = getelementptr i8, ptr %i.c, i64 %i.aw
  %wide.load82 = load <2 x i64>, ptr %next.gep80, align 8
  %wide.load83 = load <2 x i64>, ptr %next.gep81, align 8
  store <2 x i64> %wide.load82, ptr %next.gep78, align 8
  store <2 x i64> %wide.load83, ptr %next.gep79, align 8
  %index.next84 = add nuw i64 %index77, 2         ; 2 uses
  %i.ax = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.ax, label %middle.block85, label %vector.body76, !llvm.loop !976

middle.block85:                                   ; preds = %vector.body76
  %cmp.n86 = icmp eq i64 %i.ao, %n.vec75
  br i1 %cmp.n86, label %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader90

.lr.ph.i.i.i.i.i26.preheader90:                   ; preds = %vector.memcheck57, %.lr.ph.i.i.i.i.i26.preheader, %middle.block85
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ao, %vector.memcheck57 ], [ %i.ao, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ar, %middle.block85 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %vector.memcheck57 ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.at, %middle.block85 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %vector.memcheck57 ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader90, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %i.ay = load <2 x i64>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !10
  store <2 x i64> %i.ay, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bb = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit, !llvm.loop !977

_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26, %middle.block85, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.w, %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !978

_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !346
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bf = phi ptr [ %i.p, %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIllES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.f
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !723
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIllES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_3
