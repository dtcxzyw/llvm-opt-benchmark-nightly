Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Tristate?download=true
inline.NumInlined: 6058
inline.NumDeleted: 1349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_17_ReuseOrAllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_:bb.a
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !305  ; 3 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %2, align 8, !tbaa !412    ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !278
  store ptr %i.n, ptr %2, align 8, !tbaa !412
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink13.i = phi ptr [ %i.m, %bb.h ], [ %i.o, %bb.i ] ; 4 uses
  store ptr null, ptr %.sink13.i, align 8, !tbaa !278
  %i.p = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.q = load i64, ptr %i.l, align 4              ; 2 uses
  store i64 %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.sink13.i, ptr %i.r, align 8, !tbaa !305
  %i.s = load ptr, ptr %0, align 8, !tbaa !195
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !196
  %sext = shl i64 %i.q, 32
  %i.v = ashr exact i64 %sext, 32
  %i.w = urem i64 %i.v, %i.u
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  store ptr %i.r, ptr %i.x, align 8, !tbaa !413
  %.02737 = load ptr, ptr %i.k, align 8, !tbaa !278 ; 2 uses
  %.not3038 = icmp eq ptr %.02737, null
  br i1 %.not3038, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.q
  %.02740 = phi ptr [ %.027, %bb.q ], [ %.02737, %bb.j ] ; 2 uses
  %.039 = phi ptr [ %.sink13.i34, %bb.q ], [ %.sink13.i, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02740, i64 8
  %i.z = load ptr, ptr %2, align 8, !tbaa !412    ; 3 uses
  %.not.i33 = icmp eq ptr %i.z, null
  br i1 %.not.i33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !278
  store ptr %i.aa, ptr %2, align 8, !tbaa !412
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ab = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink13.i34 = phi ptr [ %i.z, %bb.k ], [ %i.ab, %bb.l ] ; 4 uses
  store ptr null, ptr %.sink13.i34, align 8, !tbaa !278
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink13.i34, i64 8
  %i.ad = load i64, ptr %i.y, align 4             ; 2 uses
  store i64 %i.ad, ptr %i.ac, align 8
  store ptr %.sink13.i34, ptr %.039, align 8, !tbaa !278
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !196
  %sext45 = shl i64 %i.ad, 32
  %i.af = ashr exact i64 %sext45, 32
  %i.ag = urem i64 %i.af, %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !195
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !413
  %.not32 = icmp eq ptr %i.aj, null
  br i1 %.not32, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr %.039, ptr %i.ai, align 8, !tbaa !413
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.m
  %.027 = load ptr, ptr %.02740, align 8, !tbaa !278 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !876

bb.r:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.al, %bb.p ], [ %i.ak, %bb.o ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %.026) #24 ; 0 uses
  tail call void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br i1 %.not.not, label %bb.s, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %0, align 8, !tbaa !195   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !196
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.as) #25
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.u:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.t, %bb.s, %bb.r
  invoke void @__cxa_rethrow() #27
          to label %bb.x unwind label %bb.u

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %i.at

.loopexit:                                        ; preds = %bb.q, %bb.j, %bb.f
  ret void

bb.w:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #29
  unreachable

bb.x:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %4 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %5 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %6 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %7 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %8 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %9 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i26 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i26, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit
  %i.h = icmp eq i64 %i.bq, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44, !llvm.loop !877

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i29.lcssa = phi i64 [ %.fr.i26, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i29.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i29.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.s, align 8, !tbaa !392
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !356 ; 2 uses
  %i.t = icmp slt i64 %.010.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !356
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !356
  %i.z = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  %spec.select.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, ptr noundef nonnull align 8 dereferenceable(9) %i.aa, i64 9, i1 false), !tbaa.struct !393
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !878

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.r, ptr noundef nonnull align 8 dereferenceable(9) %i.q, i64 9, i1 false), !tbaa.struct !393
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i.i ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i19 = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i18, align 8, !tbaa !356
  %i.ag = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i.i19, %.sroa.4.0.copyload.i.i
  br i1 %i.ag, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.af, i64 9, i1 false), !tbaa.struct !393
  %i.ai = icmp sgt i64 %.0920.i.i.i.i, %.010.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i, !llvm.loop !879

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %i.aj, align 8, !tbaa !392
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !356
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.ak = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, label %bb.c, !llvm.loop !880

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i
  %10 = icmp sgt i64 %.fr.i29.lcssa, 16
  br i1 %10, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.al, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !392
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !356 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.al, ptr noundef nonnull align 8 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !393
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.a                     ; 3 uses
  %i.ao = ashr exact i64 %i.an, 4                 ; 3 uses
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = icmp sgt i64 %i.ao, 2
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.as = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %i.at
  %i.av = or disjoint i64 %i.as, 1                ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %i.av
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !356
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !356
  %i.ax = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ax, i64 %i.av, i64 %i.at ; 4 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.az, ptr noundef nonnull align 8 dereferenceable(9) %i.ay, i64 9, i1 false), !tbaa.struct !393
  %i.ba = icmp slt i64 %spec.select.i.i.i.i, %i.aq
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !878

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bb = and i64 %i.an, 16
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bd = add nsw i64 %i.ao, -2
  %i.be = ashr exact i64 %i.bd, 1
  %i.bf = icmp eq i64 %.0.lcssa.i.i.i.i, %i.be
  br i1 %i.bf, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bg = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bh = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bj, ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i64 9, i1 false), !tbaa.struct !393
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i89.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i89.i.i.i ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !356
  %i.bl = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.bl, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bm, ptr noundef nonnull align 8 dereferenceable(9) %i.bk, i64 9, i1 false), !tbaa.struct !393
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !879

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.bn, align 8, !tbaa !392
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !356
  %i.bo = icmp sgt i64 %i.an, 16
  br i1 %i.bo, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, !llvm.loop !881

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2743 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02842 = phi i64 [ %i.bq, %bb.b ], [ %2, %.lr.ph ]
  %i.bp = phi i64 [ %i.cf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bq = add nsw i64 %.02842, -1                 ; 3 uses
  %i.br = lshr i64 %i.bp, 1
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %storemerge2743, i64 -16 ; 4 uses
  %.sroa.22.0.copyload.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !356 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !356 ; 3 uses
  %i.bu = icmp ugt i8 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i
  %.sroa.2.0..sroa_idx.i28.i.i = getelementptr inbounds i8, ptr %storemerge2743, i64 -8
  %.sroa.2.0.copyload.i29.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i28.i.i, align 8, !tbaa !356 ; 4 uses
  br i1 %i.bu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.bv = icmp ugt i8 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(9) %9, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bw = icmp ugt i8 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(9) %8, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(9) %7, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph44
  %i.bx = icmp ugt i8 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(9) %6, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.by = icmp ugt i8 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(9) %5, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(9) %4, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.ca, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2743, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.2.0.copyload.i.i14.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i13.i, align 8, !tbaa !356 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i ], [ %i.ca, %bb.t ] ; 9 uses
  %.sroa.22.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  %.sroa.22.0.copyload.i.i16.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i15.i, align 8, !tbaa !356
  %i.bz = icmp ugt i8 %.sroa.22.0.copyload.i.i16.i, %.sroa.2.0.copyload.i.i14.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.t, label %.preheader.i.i, !llvm.loop !882

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.sroa.2.0..sroa_idx.i10.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.sroa.2.0.copyload.i11.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i10.i.i, align 8, !tbaa !356
  %i.cb = icmp ugt i8 %.sroa.2.0.copyload.i.i14.i, %.sroa.2.0.copyload.i11.i.i
  br i1 %i.cb, label %.preheader.i.i, label %bb.u, !llvm.loop !883

bb.u:                                             ; preds = %.preheader.i.i
  %i.cc = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cc, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, i64 16, i1 false), !tbaa.struct !393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !884

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2743, i64 noundef %i.bq)
  %i.cd = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ce = sub i64 %i.cd, %i.a
  %.fr.i = freeze i64 %i.ce                       ; 2 uses
  %i.cf = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 16
  br i1 %i.cg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, !llvm.loop !877

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %3 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %.sroa.22.0.copyload.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !356 ; 4 uses
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !356
  %i.e = icmp ugt i8 %.sroa.22.0.copyload.i.i, %.sroa.2.0.copyload.i.i
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !393
  %i.f = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.f, label %bb.d, label %bb.e, !prof !249

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !393
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !392
  %.sroa.2.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %.sroa.2.0.copyload.i11.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i10.i.i, align 8, !tbaa !356
  %i.h = icmp ugt i8 %.sroa.22.0.copyload.i.i, %.sroa.2.0.copyload.i11.i.i
  br i1 %i.h, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.07.012.i.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.0.0.i.i, i64 9, i1 false), !tbaa.struct !393
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -24
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !356
  %i.i = icmp ugt i8 %.sroa.22.0.copyload.i.i, %.sroa.2.0.copyload.i.i.i
  br i1 %i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i, !llvm.loop !885

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8, !tbaa !392
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store i8 %.sroa.22.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !356
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, label %bb.b, !llvm.loop !886

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.j, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.m, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i16 ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i13 = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !392
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !356 ; 3 uses
  %.sroa.2.0..sroa_idx.i10.i.i14 = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %.sroa.2.0.copyload.i11.i.i15 = load i8, ptr %.sroa.2.0..sroa_idx.i10.i.i14, align 8, !tbaa !356
  %i.k = icmp ugt i8 %.sroa.4.0.copyload.i.i, %.sroa.2.0.copyload.i11.i.i15
  br i1 %i.k, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i16

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i20
  %.sroa.07.012.i.i21 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i20 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i21, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.07.012.i.i21, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.0.0.i.i22, i64 9, i1 false), !tbaa.struct !393
  %.sroa.2.0..sroa_idx.i.i.i23 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i21, i64 -24
  %.sroa.2.0.copyload.i.i.i24 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i23, align 8, !tbaa !356
  %i.l = icmp ugt i8 %.sroa.4.0.copyload.i.i, %.sroa.2.0.copyload.i.i.i24
  br i1 %i.l, label %.lr.ph.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i16, !llvm.loop !885

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i20, %.lr.ph.i12
  %.sroa.07.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i22, %.lr.ph.i.i20 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i13, ptr %.sroa.07.0.lcssa.i.i17, align 8, !tbaa !392
  %.sroa.4.0..sroa_idx5.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i17, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i18, align 8, !tbaa !356
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i19 = icmp eq ptr %i.m, %1
  br i1 %.not.i19, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, label %.lr.ph.i12, !llvm.loop !887

bb.h:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %0, %1
  br i1 %i.n, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.016.i26 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i27 = icmp eq ptr %.sroa.0.016.i26, %1
  br i1 %.not17.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %.sroa.2.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i28
  %.sroa.0.019.i30 = phi ptr [ %.sroa.0.016.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i41, %bb.o ] ; 7 uses
  %.pn18.i31 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.019.i30, %bb.o ] ; 4 uses
  %.sroa.22.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 24
  %.sroa.22.0.copyload.i.i33 = load i8, ptr %.sroa.22.0..sroa_idx.i.i32, align 8, !tbaa !356 ; 4 uses
  %.sroa.2.0.copyload.i.i34 = load i8, ptr %.sroa.2.0..sroa_idx.i.i29, align 8, !tbaa !356
  %i.o = icmp ugt i8 %.sroa.22.0.copyload.i.i33, %.sroa.2.0.copyload.i.i34
  br i1 %i.o, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i30, i64 16, i1 false), !tbaa.struct !393
  %i.p = ptrtoint ptr %.sroa.0.019.i30 to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.l, !prof !249

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 32
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i48

bb.l:                                             ; preds = %bb.j
  %i.w = icmp eq i64 %i.q, 16
  br i1 %i.w, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i48

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, ptr noundef nonnull align 8 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !393
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i48

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i48: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %2, i64 9, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i35 = load ptr, ptr %.sroa.0.019.i30, align 8, !tbaa !392
  %.sroa.2.0..sroa_idx.i10.i.i36 = getelementptr inbounds nuw i8, ptr %.pn18.i31, i64 8
  %.sroa.2.0.copyload.i11.i.i37 = load i8, ptr %.sroa.2.0..sroa_idx.i10.i.i36, align 8, !tbaa !356
  %i.y = icmp ugt i8 %.sroa.22.0.copyload.i.i33, %.sroa.2.0.copyload.i11.i.i37
  br i1 %i.y, label %.lr.ph.i.i43, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i38

.lr.ph.i.i43:                                     ; preds = %bb.n, %.lr.ph.i.i43
  %.sroa.07.012.i.i44 = phi ptr [ %.sroa.0.0.i.i45, %.lr.ph.i.i43 ], [ %.sroa.0.019.i30, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i45 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i44, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.07.012.i.i44, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.0.0.i.i45, i64 9, i1 false), !tbaa.struct !393
  %.sroa.2.0..sroa_idx.i.i.i46 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i44, i64 -24
  %.sroa.2.0.copyload.i.i.i47 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i46, align 8, !tbaa !356
  %i.z = icmp ugt i8 %.sroa.22.0.copyload.i.i33, %.sroa.2.0.copyload.i.i.i47
  br i1 %i.z, label %.lr.ph.i.i43, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i38, !llvm.loop !885

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i38: ; preds = %.lr.ph.i.i43, %bb.n
  %.sroa.07.0.lcssa.i.i39 = phi ptr [ %.sroa.0.019.i30, %bb.n ], [ %.sroa.0.0.i.i45, %.lr.ph.i.i43 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i35, ptr %.sroa.07.0.lcssa.i.i39, align 8, !tbaa !392
  %.sroa.4.0..sroa_idx5.i.i40 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i39, i64 8
  store i8 %.sroa.22.0.copyload.i.i33, ptr %.sroa.4.0..sroa_idx5.i.i40, align 8, !tbaa !356
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i38, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i48
  %.sroa.0.0.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i30, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %.sroa.0.0.i41, %1
  br i1 %.not.i42, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit, label %bb.i, !llvm.loop !886

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_.exit.i16, %.preheader.i25, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
end_hunk_0
