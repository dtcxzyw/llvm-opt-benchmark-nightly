Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/updategroups?download=true
inline.NumInlined: 1260
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3gmx27computeMaxUpdateGroupRadiusERK10gmx_mtop_tNS_8ArrayRefIKNS_17RangePartitioningEEEf:bb.a
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !173  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 2408
  %i.n = icmp eq i64 %i.e, %i.m
  br i1 %i.n, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %.loopexit29, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.x = fcmp ogt float %3, 0.000000e+00
  %i.y = fpext nnan float %3 to double
  %i.z = fmul nnan double %i.y, f0x3FA98AC26C586BA4 ; 2 uses
  %i.aa = fcmp oge float %3, 0.000000e+00
  %i.ab = fcmp oeq float %3, 0.000000e+00
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx27computeMaxUpdateGroupRadiusERK10gmx_mtop_tNS_8ArrayRefIKNS_17RangePartitioningEEEfENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 769) #28
  unreachable

bb.d:                                             ; preds = %.lr.ph, %_ZN3gmxL27computeMaxUpdateGroupRadiusERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEERKNS_17RangePartitioningEf.exit
  %i.ae = phi ptr [ %i.i, %.lr.ph ], [ %i.ado, %_ZN3gmxL27computeMaxUpdateGroupRadiusERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEERKNS_17RangePartitioningEf.exit ]
  %.082 = phi i64 [ 0, %.lr.ph ], [ %i.adm, %_ZN3gmxL27computeMaxUpdateGroupRadiusERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEERKNS_17RangePartitioningEf.exit ] ; 3 uses
  %.02481 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated, %_ZN3gmxL27computeMaxUpdateGroupRadiusERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEERKNS_17RangePartitioningEf.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw [2408 x i8], ptr %i.ae, i64 %.082 ; 9 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !21  ; 9 uses
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.ai = getelementptr inbounds [24 x i8], ptr %1, i64 %.082 ; 2 uses
  %i.aj = call fastcc noundef zeroext i1 @_ZN3gmxL22hasFlexibleConstraintsERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEE(ptr noundef nonnull align 8 dereferenceable(2408) %i.af, ptr %i.ag)
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL27computeMaxUpdateGroupRadiusERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEERKNS_17RangePartitioningEfENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 625) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 1616
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN3gmx11make_at2conERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEENS_27FlexibleConstraintTreatmentE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ListOfLists") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2408) %i.af, ptr %i.ag, ptr %i.an, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 320 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 328 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38, !noalias !174
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !174
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = shl i64 %i.av, 30
  %i.ax = ashr i64 %i.aw, 32
  store ptr %i.q, ptr %5, align 8, !tbaa !71, !alias.scope !174
  store i64 1, ptr %i.r, align 8, !tbaa !72, !alias.scope !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !174
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !175, !alias.scope !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !174
  %i.ay = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.ax)
          to label %bb.g unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.r, align 8, !tbaa !72, !alias.scope !174
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp eq i64 %i.ay, 1
  br i1 %i.bb, label %bb.i, label %bb.j, !prof !62

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.q, align 8, !tbaa !176, !alias.scope !174
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bc = icmp ugt i64 %i.ay, 1152921504606846975
  br i1 %i.bc, label %bb.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !62

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp ugt i64 %i.ay, 2305843009213693951
  br i1 %i.bd, label %.noexc.i.i.i.i.i.i, label %.noexc7.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i
  unreachable

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i.i.i:                                  ; preds = %.noexc7.i.i.i.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.j
  %i.be = shl nuw nsw i64 %i.ay, 3                ; 2 uses
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc10.i.i.i.i unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc10.i.i.i.i:                                 ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bf, i8 0, i64 %i.be, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %.noexc10.i.i.i.i, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.q, %bb.i ], [ %i.bf, %.noexc10.i.i.i.i ]
  store ptr %.0.i.i.i.i.i, ptr %5, align 8, !tbaa !71, !alias.scope !174
  store i64 %i.ay, ptr %i.r, align 8, !tbaa !72, !alias.scope !174
  br label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i

.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.f, %.noexc7.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #25
  br label %.body.i

_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.g
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !38, !noalias !174
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !174 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i, label %_ZN3gmxL15getAngleIndicesERK13gmx_moltype_t.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i
  %i.bo = phi ptr [ %i.fp, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i ], [ %i.bh, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i ]
  %storemerge15.i.i = phi i32 [ %i.fn, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i ], [ 0, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i ] ; 3 uses
  %i.bp = sext i32 %storemerge15.i.i to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23 ; 3 uses
  %i.bt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %.noexc.i.i unwind label %bb.ar ; 14 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i
  store ptr null, ptr %i.bt, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %.sroa.5.0.insert.ext.i.i = zext i32 %storemerge15.i.i to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bs to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bu, align 8
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !177, !alias.scope !174 ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.preheader.i.i, label %.loopexit.i.i.i.i.i.i

.preheader.i.i:                                   ; preds = %.noexc.i.i, %bb.l
  %.sroa.0.0.in.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.l ], [ %i.s, %.noexc.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 8, !tbaa !73 ; 4 uses
  %.not27.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23
  %i.by = icmp eq i32 %i.bx, %i.bs
  br i1 %i.by, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i, !llvm.loop !152

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.l, %.preheader.i.i, %.noexc.i.i
  %.sroa.019.3.i.i.i.i.i.i.i = phi ptr [ null, %.noexc.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.l ], [ null, %.preheader.i.i ] ; 5 uses
  %.sroa.4.3.i.i.i.i.i.i.i = sext i32 %i.bs to i64
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !178
  %i.ca = load i64, ptr %i.r, align 8, !tbaa !72
  %i.cb = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.ca, i64 noundef %i.bv, i64 noundef 1)
          to label %.noexc unwind label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i ; 2 uses

.noexc:                                           ; preds = %.loopexit.i.i.i.i.i.i
  %i.cc = extractvalue { i8, i64 } %i.cb, 0
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %bb.m, label %.noexc._ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge

.noexc._ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge: ; preds = %.noexc
  %.pre = load i64, ptr %i.r, align 8, !tbaa !72
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i

bb.m:                                             ; preds = %.noexc
  %i.ce = extractvalue { i8, i64 } %i.cb, 1       ; 9 uses
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.n, label %bb.o, !prof !62

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.q, align 8, !tbaa !176
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp ugt i64 %i.ce, 1152921504606846975
  br i1 %i.cg, label %bb.p, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.ch = icmp ugt i64 %i.ce, 2305843009213693951
  br i1 %i.ch, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.o
  %i.ci = shl nuw nsw i64 %i.ce, 3                ; 2 uses
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #27
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 0, i64 %i.ci, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc20, %bb.n
  %.0.i.i = phi ptr [ %i.q, %bb.n ], [ %i.cj, %.noexc20 ] ; 5 uses
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !74  ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !74
  %.not67.i = icmp eq ptr %i.ck, null
  br i1 %.not67.i, label %._crit_edge.thread.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i, %bb.y
  %.072.i = phi i8 [ %.2.i, %bb.y ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ]
  %.05271.i = phi ptr [ %.05668.i, %bb.y ], [ null, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %.05370.i = phi i64 [ %i.cp, %bb.y ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.05469.i = phi i64 [ %.155.i, %bb.y ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %.05668.i = phi ptr [ %i.cl, %bb.y ], [ %i.ck, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 13 uses
  %i.cl = load ptr, ptr %.05668.i, align 8, !tbaa !73 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05668.i, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !23
  %i.co = sext i32 %i.cn to i64
  %i.cp = urem i64 %i.co, %i.ce                   ; 6 uses
  %.not62.i = icmp ne ptr %.05271.i, null
  %i.cq = icmp eq i64 %.05370.i, %i.cp
  %or.cond.i15 = and i1 %.not62.i, %i.cq
  br i1 %or.cond.i15, label %bb.q, label %6

bb.q:                                             ; preds = %.lr.ph.i.a
  %i.cr = load ptr, ptr %.05271.i, align 8, !tbaa !73
  store ptr %i.cr, ptr %.05668.i, align 8, !tbaa !73
  store ptr %.05668.i, ptr %.05271.i, align 8, !tbaa !73
  br label %bb.y

6:                                                ; preds = %.lr.ph.i.a
  %7 = trunc nuw i8 %.072.i to i1
  br i1 %7, label %bb.r, label %bb.u

bb.r:                                             ; preds = %6
  %i.cs = load ptr, ptr %.05271.i, align 8, !tbaa !73 ; 2 uses
  %.not63.i = icmp eq ptr %i.cs, null
  br i1 %.not63.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !23
  %i.cv = sext i32 %i.cu to i64
  %i.cw = urem i64 %i.cv, %i.ce                   ; 2 uses
  %.not64.i = icmp eq i64 %i.cw, %.05370.i
  br i1 %.not64.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.cw
  store ptr %.05271.i, ptr %i.cx, align 8, !tbaa !179
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.cp ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !179 ; 2 uses
  %.not65.i = icmp eq ptr %i.cz, null
  br i1 %.not65.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.s, align 8, !tbaa !74
  store ptr %i.da, ptr %.05668.i, align 8, !tbaa !73
  store ptr %.05668.i, ptr %i.s, align 8, !tbaa !74
  store ptr %i.s, ptr %i.cy, align 8, !tbaa !179
  %i.db = load ptr, ptr %.05668.i, align 8, !tbaa !73
  %.not66.i = icmp eq ptr %i.db, null
  br i1 %.not66.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %.05469.i
  store ptr %.05668.i, ptr %i.dc, align 8, !tbaa !179
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !73
  store ptr %i.dd, ptr %.05668.i, align 8, !tbaa !73
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !179
  store ptr %.05668.i, ptr %i.de, align 8, !tbaa !73
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.q
  %.155.i = phi i64 [ %.05469.i, %bb.q ], [ %.05469.i, %bb.x ], [ %i.cp, %bb.w ], [ %i.cp, %bb.v ]
  %.2.i = phi i8 [ 1, %bb.q ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.not.i16 = icmp eq ptr %i.cl, null
  br i1 %.not.i16, label %._crit_edge.i17, label %.lr.ph.i.a, !llvm.loop !153

._crit_edge.i17:                                  ; preds = %bb.y
  %8 = trunc nuw i8 %.2.i to i1
  br i1 %8, label %bb.z, label %._crit_edge.thread.i

bb.z:                                             ; preds = %._crit_edge.i17
  %i.df = load ptr, ptr %.05668.i, align 8, !tbaa !73 ; 2 uses
  %.not60.i = icmp eq ptr %i.df, null
  br i1 %.not60.i, label %._crit_edge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !23
  %i.di = sext i32 %i.dh to i64
  %i.dj = urem i64 %i.di, %i.ce                   ; 2 uses
  %.not61.i = icmp eq i64 %i.dj, %i.cp
  br i1 %.not61.i, label %._crit_edge.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.dj
  store ptr %.05668.i, ptr %i.dk, align 8, !tbaa !179
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.ab, %bb.aa, %bb.z, %._crit_edge.i17, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i
  %i.dl = load ptr, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.q
  br i1 %i.dm, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread.i
  %i.dn = load i64, ptr %i.r, align 8, !tbaa !72
  %i.do = shl i64 %i.dn, 3
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit: ; preds = %._crit_edge.thread.i, %bb.ac
  store i64 %i.ce, ptr %i.r, align 8, !tbaa !72
  store ptr %.0.i.i, ptr %5, align 8, !tbaa !71
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp366 = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %lpad.loopexit.split-lp366, 0
  %i.dq = call ptr @__cxa_begin_catch(ptr %i.dp) #25 ; 0 uses
  store i64 %i.bz, ptr %i.u, align 8, !tbaa !178
  invoke void @__cxa_rethrow() #28
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i.body unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #26
  unreachable

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  unreachable

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i: ; preds = %.noexc._ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit
  %i.du = phi i64 [ %.pre, %.noexc._ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge ], [ %i.ce, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit ] ; 4 uses
  %i.dv = urem i64 %.sroa.4.3.i.i.i.i.i.i.i, %i.du ; 3 uses
  %.not.i11 = icmp eq ptr %.sroa.019.3.i.i.i.i.i.i.i, null
  br i1 %.not.i11, label %bb.ah, label %bb.ag, !prof !63

bb.ag:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.019.3.i.i.i.i.i.i.i, i64 8
  %i.dx = load i32, ptr %i.bu, align 8, !tbaa !23 ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !23
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i, label %bb.ah

_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i: ; preds = %bb.ag
  %i.ea = load ptr, ptr %.sroa.019.3.i.i.i.i.i.i.i, align 8, !tbaa !73
  store ptr %i.ea, ptr %i.bt, align 8, !tbaa !73
  store ptr %i.bt, ptr %.sroa.019.3.i.i.i.i.i.i.i, align 8, !tbaa !73
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i
  %i.eb = load ptr, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dv ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !179 ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i12, label %.loopexit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !73 ; 4 uses
  %i.ef = load i32, ptr %i.bu, align 8, !tbaa !23 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !23
  %i.ei = icmp eq i32 %i.ef, %i.eh
  br i1 %i.ei, label %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i, label %.lr.ph.i.i13

bb.aj:                                            ; preds = %bb.ak
  %i.ej = icmp eq i32 %i.ef, %i.em
  br i1 %i.ej, label %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i, label %.lr.ph.i.i13, !llvm.loop !154

.lr.ph.i.i13:                                     ; preds = %bb.ai, %bb.aj
  %.020.i.i = phi ptr [ %i.ek, %bb.aj ], [ %i.ee, %bb.ai ] ; 2 uses
  %i.ek = load ptr, ptr %.020.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ek, null
  br i1 %.not18.i.i, label %.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i13
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = urem i64 %i.en, %i.du
  %.not19.i.i14 = icmp eq i64 %i.eo, %i.dv
  br i1 %.not19.i.i14, label %bb.aj, label %..loopexit_crit_edge21.i.i, !llvm.loop !154

..loopexit_crit_edge21.i.i:                       ; preds = %bb.ak
  br label %.loopexit.i, !llvm.loop !154

_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i: ; preds = %bb.aj, %bb.ai
  %i.ep = phi ptr [ %i.ee, %bb.ai ], [ %i.ek, %bb.aj ]
  %i.eq = phi ptr [ %i.ed, %bb.ai ], [ %.020.i.i, %bb.aj ] ; 2 uses
  store ptr %i.ep, ptr %i.bt, align 8, !tbaa !73
  store ptr %i.bt, ptr %i.eq, align 8, !tbaa !73
  %i.er = icmp eq ptr %i.eq, %.sroa.019.3.i.i.i.i.i.i.i
  br i1 %i.er, label %bb.al, label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i, !prof !180

bb.al:                                            ; preds = %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i, %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i
  %i.es = phi i32 [ %i.dx, %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i ], [ %i.ef, %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i ]
  %i.et = load ptr, ptr %i.bt, align 8, !tbaa !73 ; 2 uses
  %.not36.i = icmp eq ptr %i.et, null
  br i1 %.not36.i, label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  %i.ew = icmp eq i32 %i.es, %i.ev
  br i1 %i.ew, label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = sext i32 %i.ev to i64
  %i.ey = urem i64 %i.ex, %i.du                   ; 2 uses
  %.not37.i = icmp eq i64 %i.ey, %i.dv
  br i1 %.not37.i, label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ez = load ptr, ptr %5, align 8, !tbaa !71
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ey
  store ptr %i.bt, ptr %i.fa, align 8, !tbaa !179
  br label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i13, %..loopexit_crit_edge21.i.i
  store ptr %i.ee, ptr %i.bt, align 8, !tbaa !73
  %i.fb = load ptr, ptr %i.ec, align 8, !tbaa !179
  store ptr %i.bt, ptr %i.fb, align 8, !tbaa !73
  br label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i

.loopexit.thread.i:                               ; preds = %bb.ah
  %i.fc = load ptr, ptr %i.s, align 8, !tbaa !74  ; 3 uses
  store ptr %i.fc, ptr %i.bt, align 8, !tbaa !73
  store ptr %i.bt, ptr %i.s, align 8, !tbaa !74
  %.not11.i.i = icmp eq ptr %i.fc, null
  br i1 %.not11.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit.thread.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = sext i32 %i.fe to i64
  %i.fg = urem i64 %i.ff, %i.du
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fg
  store ptr %i.bt, ptr %i.fh, align 8, !tbaa !179
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit.thread.i
  store ptr %i.s, ptr %i.ec, align 8, !tbaa !179
  br label %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i.body

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i.body: ; preds = %bb.ad, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.fi, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i ], [ %i.dr, %bb.ad ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 16) #24
  br label %.body8.i.i

_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i: ; preds = %bb.aq, %.loopexit.i, %bb.ao, %bb.an, %bb.am, %bb.al, %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i
  %i.fj = load i64, ptr %i.v, align 8, !tbaa !177
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.v, align 8, !tbaa !177
  %i.fl = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 336), align 8, !tbaa !40, !noalias !174
  %i.fm = add i32 %storemerge15.i.i, 1
  %i.fn = add i32 %i.fm, %i.fl                    ; 2 uses
  %i.fo = load ptr, ptr %i.aq, align 8, !tbaa !38, !noalias !174
  %i.fp = load ptr, ptr %i.ap, align 8, !tbaa !39, !noalias !174 ; 3 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = lshr exact i64 %i.fs, 2
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = icmp slt i32 %i.fn, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i, label %_ZN3gmxL15getAngleIndicesERK13gmx_moltype_t.exit.i, !llvm.loop !155

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i

.body8.i.i:                                       ; preds = %bb.ar, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i.body
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %i.fw, %bb.ar ], [ %eh.lpad-body, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit9.i.i.i.i.i.i.body ]
  call void @_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #25
  br label %.body.i

_ZN3gmxL15getAngleIndicesERK13gmx_moltype_t.exit.i: ; preds = %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i
  %i.fx = phi ptr [ %i.bh, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEC2EmRKS1_RKS3_RKS7_.exit.i.i ], [ %i.fp, %_ZNSt18unordered_multimapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE6insertEOS6_.exit.i.i ] ; 16 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !38
  %i.ga = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = lshr exact i64 %i.gd, 2                 ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
end_hunk_0
