inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdbL18GetAllNeighborSetsENS_6vectorImLb1ESaImEEE:bb.a
  store i64 0, ptr %i.u, align 8, !tbaa !700
  store i64 1, ptr %i.p, align 8, !tbaa !164
  store ptr null, ptr %i.t, align 8, !tbaa !680
  store ptr %i.t, ptr %6, align 8, !tbaa !162
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %i.bk, ptr %i.n, align 8, !tbaa !682
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit
  invoke void @_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit unwind label %bb.r

_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.i
  %.pre223 = load ptr, ptr %i.q, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre223, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.pre223, %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %i.bl = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit
  %i.bm = load ptr, ptr %6, align 8, !tbaa !162
  %i.bn = load i64, ptr %i.p, align 8, !tbaa !164
  %i.bo = shl i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %i.bo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.bp = load ptr, ptr %6, align 8, !tbaa !162   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.t
  br i1 %i.bq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bp) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.br = load i64, ptr %.sroa.0127.0198, align 8, !tbaa !19
  store i64 %i.br, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKmEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit30 unwind label %bb.t

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit30: ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !682 ; 9 uses
  %i.bt = load ptr, ptr %i.x, align 8, !tbaa !699
  %.not.i.i31 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i31, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit30
  %i.bu = load ptr, ptr %10, align 8, !tbaa !162  ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !162
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.y, align 8, !tbaa !164 ; 2 uses
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !164
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !167 ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ca = load i64, ptr %i.aa, align 8, !tbaa !236
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !236
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !544
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 4 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !680
  %i.cd = icmp eq ptr %i.bu, %i.ac
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !162
  %i.ce = load ptr, ptr %i.ac, align 8, !tbaa !680
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !680
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cf = phi ptr [ %i.cc, %bb.l ], [ %i.bu, %bb.k ]
  %.not.i.i.i.i.i.i32 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i32, label %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !19
  %i.ci = urem i64 %i.ch, %i.bw
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ci
  store ptr %i.bx, ptr %i.cj, align 8, !tbaa !78
  br label %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35.thread

_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35.thread: ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.ad, align 8, !tbaa !700
  store i64 1, ptr %i.y, align 8, !tbaa !164
  store ptr null, ptr %i.ac, align 8, !tbaa !680
  store ptr %i.ac, ptr %10, align 8, !tbaa !162
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !682
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store ptr %i.cl, ptr %i.w, align 8, !tbaa !682
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i40

bb.o:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit30
  invoke void @_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35 unwind label %bb.u

_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35: ; preds = %bb.o
  %.pre224 = load ptr, ptr %i.z, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i36 = icmp eq ptr %.pre224, null
  br i1 %.not5.i.i.i.i36, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i40, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35, %.lr.ph.i.i.i.i37
  %.06.i.i.i.i38 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i37 ], [ %.pre224, %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35 ] ; 2 uses
  %i.cm = load ptr, ptr %.06.i.i.i.i38, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i38) #27
  %.not.i.i.i.i39 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i39, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i40, label %.lr.ph.i.i.i.i37, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i40: ; preds = %.lr.ph.i.i.i.i37, %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35.thread, %_ZNSt6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEESaIS6_EE9push_backEOS6_.exit35
  %i.cn = load ptr, ptr %10, align 8, !tbaa !162
  %i.co = load i64, ptr %i.y, align 8, !tbaa !164
  %i.cp = shl i64 %i.co, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.cp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.cq = load ptr, ptr %10, align 8, !tbaa !162  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ac
  br i1 %i.cr, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit41, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i40
  call void @_ZdlPv(ptr noundef %i.cq) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit41

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit41: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i40, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0127.0198, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cs, %.pre222
  br i1 %.not, label %.preheader140.loopexit, label %bb.d

bb.q:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.r ], [ %i.ct, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cp

bb.t:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn19 = phi { ptr, i32 } [ %i.cw, %bb.u ], [ %i.cv, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.cp

bb.w:                                             ; preds = %.preheader140, %._crit_edge
  %.val24 = phi ptr [ %.val24.pre, %.preheader140 ], [ %.pre237, %._crit_edge ] ; 3 uses
  %.val = phi ptr [ %.val.pre, %.preheader140 ], [ %.pre236, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !701
  %.not1836.i = icmp eq ptr %.val, %.val24
  br i1 %.not1836.i, label %_ZN6duckdbL12AddSuperSetsERKNS_6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEELb1ESaIS7_EEERKNS0_ImLb1ES6_EE.exit, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.w, %._crit_edge35.i
  %.sroa.010.037.i = phi ptr [ %i.dk, %._crit_edge35.i ], [ %.val, %bb.w ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.037.i, i64 16 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !167, !noalias !701 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZSt11max_elementINSt8__detail20_Node_const_iteratorImLb1ELb0EEEET_S3_S3_.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph39.i
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !33 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not9.i.i.i, label %_ZSt11max_elementINSt8__detail20_Node_const_iteratorImLb1ELb0EEEET_S3_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %15 = phi ptr [ %i.de, %.lr.ph.i.i.i ], [ %i.da, %.preheader.i.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i.a = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.cy, %.preheader.i.i.i ] ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i.a, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !19
  %i.dd = icmp ult i64 %17, %i.dc
  %spec.select.i.i.i = select i1 %i.dd, ptr %15, ptr %.sroa.02.010.i.i.i.a ; 2 uses
  %i.de = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZSt11max_elementINSt8__detail20_Node_const_iteratorImLb1ELb0EEEET_S3_S3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !704

_ZSt11max_elementINSt8__detail20_Node_const_iteratorImLb1ELb0EEEET_S3_S3_.exit.i: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %.lr.ph39.i
  %.sroa.02.2.i.i.i = phi ptr [ null, %.lr.ph39.i ], [ %i.cy, %.preheader.i.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.df = load ptr, ptr %1, align 8, !tbaa !68, !noalias !701 ; 2 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !68, !noalias !701 ; 2 uses
  %.not1932.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not1932.i, label %._crit_edge35.i, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %_ZSt11max_elementINSt8__detail20_Node_const_iteratorImLb1ELb0EEEET_S3_S3_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.037.i, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.010.037.i, i64 8
  br label %bb.x

._crit_edge35.i:                                  ; preds = %.loopexit25.i, %_ZSt11max_elementINSt8__detail20_Node_const_iteratorImLb1ELb0EEEET_S3_S3_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.010.037.i, i64 56 ; 2 uses
  %.not18.i = icmp eq ptr %i.dk, %.val24
  br i1 %.not18.i, label %_ZN6duckdbL12AddSuperSetsERKNS_6vectorISt13unordered_setImSt4hashImESt8equal_toImESaImEELb1ESaIS7_EEERKNS0_ImLb1ES6_EE.exit.loopexit, label %.lr.ph39.i

bb.x:                                             ; preds = %.loopexit25.i, %.lr.ph34.i
  %.sroa.05.033.i = phi ptr [ %i.df, %.lr.ph34.i ], [ %i.le, %.loopexit25.i ] ; 4 uses
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dm = load i64, ptr %.sroa.05.033.i, align 8, !tbaa !19 ; 5 uses
  %.not.i = icmp ult i64 %i.dl, %i.dm
  br i1 %.not.i, label %bb.y, label %.loopexit25.i

bb.y:                                             ; preds = %bb.x
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !236, !noalias !701
  %.not.not.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.not.i.i.i.i, label %.preheader.i, label %bb.aa

.preheader.i:                                     ; preds = %bb.y, %bb.z
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.z ], [ %i.cx, %bb.y ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i45, label %.loopexit24.i, label %bb.z

bb.z:                                             ; preds = %.preheader.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19
  %i.dq = icmp eq i64 %i.dm, %i.dp
  br i1 %i.dq, label %.loopexit25.i, label %.preheader.i, !llvm.loop !705

bb.aa:                                            ; preds = %bb.y
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !164, !noalias !701 ; 2 uses
  %i.ds = urem i64 %i.dm, %i.dr                   ; 2 uses
  %i.dt = load ptr, ptr %.sroa.010.037.i, align 8, !tbaa !162, !noalias !701
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i.i.i42 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i42, label %.loopexit24.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !33 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !19
  %i.dz = icmp eq i64 %i.dm, %i.dy
  br i1 %i.dz, label %.loopexit25.i, label %.lr.ph.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ad
  %i.ea = icmp eq i64 %i.dm, %i.ed
  br i1 %i.ea, label %.loopexit25.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !666

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab, %bb.ac
  %.020.i.i.i.i.i.i = phi ptr [ %i.eb, %bb.ac ], [ %i.dw, %bb.ab ]
  %i.eb = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit24.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !19 ; 2 uses
  %i.ee = urem i64 %i.ed, %i.dr
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ee, %i.ds
  br i1 %.not19.i.i.i.i.i.i, label %bb.ac, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !666

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.ad
  br label %.loopexit24.i, !llvm.loop !666

.loopexit24.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !701
  store ptr %i.af, ptr %4, align 8, !tbaa !162, !noalias !701
  store i64 1, ptr %i.ag, align 8, !tbaa !164, !noalias !701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !noalias !701
  store float 1.000000e+00, ptr %i.ai, align 8, !tbaa !83, !noalias !701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !noalias !701
  %.sroa.01.029.i = load ptr, ptr %i.cx, align 8, !tbaa !33, !noalias !701 ; 2 uses
  %.not2030.i = icmp eq ptr %.sroa.01.029.i, null
  br i1 %.not2030.i, label %._crit_edge.thread.i, label %.lr.ph.i.outer

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.ef = icmp eq i64 %.pre.i, 0
  br i1 %i.ef, label %._crit_edge.thread.i, label %.thread34.i.i

.thread34.i.i:                                    ; preds = %._crit_edge.i
  %i.eg = load i64, ptr %.sroa.05.033.i, align 8, !tbaa !19 ; 6 uses
  %i.eh = load i64, ptr %i.ag, align 8, !tbaa !164, !noalias !701 ; 5 uses
  %i.ei = urem i64 %i.eg, %i.eh                   ; 5 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i31.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i31.i, label %.critedge.i.i, label %bb.ah

._crit_edge.thread.i:                             ; preds = %.loopexit.i.thread, %._crit_edge.i, %.loopexit24.i
  %i.el = load i64, ptr %.sroa.05.033.i, align 8  ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %._crit_edge.thread.i
  %.sroa.028.0.in.i.i = phi ptr [ %i.ah, %._crit_edge.thread.i ], [ %.sroa.028.0.i.i, %bb.af ]
  %.sroa.028.0.i.i = load ptr, ptr %.sroa.028.0.in.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i32.i = icmp eq ptr %.sroa.028.0.i.i, null
  br i1 %.not.i32.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !19
  %i.eo = icmp eq i64 %i.el, %i.en
  br i1 %i.eo, label %.loopexit22.i, label %bb.ae, !llvm.loop !706

bb.ag:                                            ; preds = %bb.ae
  %i.ep = load i64, ptr %i.ag, align 8, !tbaa !164, !noalias !701 ; 2 uses
  %i.eq = urem i64 %i.el, %i.ep
  br label %.critedge.i.i

bb.ah:                                            ; preds = %.thread34.i.i
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !33 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !19
  %i.eu = icmp eq i64 %i.eg, %i.et
  br i1 %i.eu, label %.loopexit22.i, label %.lr.ph.i.i.i.i43

bb.ai:                                            ; preds = %bb.aj
  %i.ev = icmp eq i64 %i.eg, %i.ey
  br i1 %i.ev, label %.loopexit22.i, label %.lr.ph.i.i.i.i43, !llvm.loop !707

.lr.ph.i.i.i.i43:                                 ; preds = %bb.ah, %bb.ai
  %.020.i.i.i.i = phi ptr [ %i.ew, %bb.ai ], [ %i.er, %bb.ah ]
  %i.ew = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not18.i.i.i.i, label %.critedge.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i43
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !19 ; 2 uses
  %i.ez = urem i64 %i.ey, %i.eh
  %.not19.i.i.i.i = icmp eq i64 %i.ez, %i.ei
  br i1 %.not19.i.i.i.i, label %bb.ai, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !707

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.aj
  br label %.critedge.i.i, !llvm.loop !707

.critedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i43, %..loopexit_crit_edge21.i.i.i.i, %bb.ag, %.thread34.i.i
  %i.fa = phi i64 [ 0, %bb.ag ], [ %.pre.i, %.thread34.i.i ], [ %.pre.i, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre.i, %.lr.ph.i.i.i.i43 ]
  %i.fb = phi i64 [ %i.ep, %bb.ag ], [ %i.eh, %.thread34.i.i ], [ %i.eh, %..loopexit_crit_edge21.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i43 ]
  %i.fc = phi i64 [ %i.eq, %bb.ag ], [ %i.ei, %.thread34.i.i ], [ %i.ei, %..loopexit_crit_edge21.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i43 ]
  %i.fd = phi i64 [ %i.el, %bb.ag ], [ %i.eg, %.thread34.i.i ], [ %i.eg, %..loopexit_crit_edge21.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i43 ] ; 2 uses
  %i.fe = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc33.i unwind label %bb.cd ; 8 uses

.noexc33.i:                                       ; preds = %.critedge.i.i
  store ptr null, ptr %i.fe, align 8, !tbaa !33
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !19
  %i.fg = load i64, ptr %i.aj, align 8, !tbaa !700
  %i.fh = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef %i.fb, i64 noundef %i.fa, i64 noundef 1)
          to label %.noexc96 unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i ; 2 uses

.noexc96:                                         ; preds = %.noexc33.i
  %i.fi = extractvalue { i8, i64 } %i.fh, 0
  %i.fj = trunc i8 %i.fi to i1
  br i1 %i.fj, label %bb.ak, label %.noexc96._crit_edge

.noexc96._crit_edge:                              ; preds = %.noexc96
  %.pre230 = load ptr, ptr %4, align 8, !tbaa !162
  br label %bb.ax

bb.ak:                                            ; preds = %.noexc96
  %i.fk = extractvalue { i8, i64 } %i.fh, 1       ; 7 uses
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.al, label %bb.am, !prof !51

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.af, align 8, !tbaa !680
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i106

bb.am:                                            ; preds = %bb.ak
  %i.fm = icmp ugt i64 %i.fk, 1152921504606846975
  br i1 %i.fm, label %bb.an, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i.i105, !prof !51

bb.an:                                            ; preds = %bb.am
  %i.fn = icmp ugt i64 %i.fk, 2305843009213693951
  br i1 %i.fn, label %.noexc.i.i.i118, label %.noexc7.i.i.i117

.noexc.i.i.i118:                                  ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc119 unwind label %.loopexit.split-lp136

.noexc119:                                        ; preds = %.noexc.i.i.i118
  unreachable
end_hunk_0
