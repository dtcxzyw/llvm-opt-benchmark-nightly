inline.NumInlined: 4282
inline.NumDeleted: 1948
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft7SLPTreeC2ERNS2_5GraphEPNS2_17WasmRevecAnalyzerEPNS0_4ZoneE:bb.a
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef 0) #21 ; 5 uses
  %i.m = load i64, ptr %i.h, align 8
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.g, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.q = icmp ult i64 %i.l, 2305843009213693951
  br i1 %i.q, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = shl nuw i64 %i.l, 3                      ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexEPNS7_8PackNodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexEPNS7_8PackNodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexEPNS7_8PackNodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.y = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.r, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexEPNS7_8PackNodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.z, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexEPNS7_8PackNodeEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %i.f, align 8
  store i64 %i.l, ptr %i.h, align 8
  br label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit: ; preds = %bb.a, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 %i.e, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef 0) #21 ; 5 uses
  %i.aj = load i64, ptr %i.ae, align 8
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

bb.h:                                             ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit
  %i.al = icmp eq i64 %i.ai, 1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !20

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.an = icmp ult i64 %i.ai, 2305843009213693951
  br i1 %i.an, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = shl nuw i64 %i.ai, 3                    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = sub i64 %i.aq, %i.as
  %i.au = icmp ugt i64 %i.ao, %i.at
  br i1 %i.au, label %bb.m, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 noundef %i.ao) #21
  %.pre.i.i.i.i.i.i.i.i.i7 = load i64, ptr %i.ar, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.av = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i7, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = add i64 %i.av, %i.ao
  store i64 %i.ax, ptr %i.ar, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ao, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.i
  %.0.i.i.i.i6 = phi ptr [ %i.ad, %bb.i ], [ %i.aw, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_8compiler10turboshaft7OpIndexENS2_10ZoneVectorIPNS7_8PackNodeEEEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i6, ptr %i.ac, align 8
  store i64 %i.ai, ptr %i.ae, align 8
  br label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_NS1_10ZoneVectorIPNS3_8PackNodeEEEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = load ptr, ptr %i.b, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef 0) #21 ; 5 uses
  %i.bi = load i64, ptr %i.bd, align 8
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.n, label %_ZN2v88internal16ZoneUnorderedSetINS0_8compiler10turboshaft7OpIndexENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

bb.n:                                             ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit
  %i.bk = icmp eq i64 %i.bh, 1
  br i1 %i.bk, label %bb.o, label %bb.p, !prof !20

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.bc, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.bm = icmp ult i64 %i.bh, 2305843009213693951
  br i1 %i.bm, label %bb.r, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = shl nuw i64 %i.bh, 3                    ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = icmp ugt i64 %i.bn, %i.bs
  br i1 %i.bt, label %bb.s, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !20

bb.s:                                             ; preds = %bb.r
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 noundef %i.bn) #21
  %.pre.i.i.i.i.i.i.i.i.i9 = load i64, ptr %i.bq, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.bu = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i9, %bb.s ], [ %i.br, %bb.r ] ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = add i64 %i.bu, %i.bn
  store i64 %i.bw, ptr %i.bq, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bn, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.o
  %.0.i.i.i.i8 = phi ptr [ %i.bc, %bb.o ], [ %i.bv, %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeINS2_8compiler10turboshaft7OpIndexELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i8, ptr %i.bb, align 8
  store i64 %i.bh, ptr %i.bd, align 8
  br label %_ZN2v88internal16ZoneUnorderedSetINS0_8compiler10turboshaft7OpIndexENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

_ZN2v88internal16ZoneUnorderedSetINS0_8compiler10turboshaft7OpIndexENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit: ; preds = %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexENS0_10ZoneVectorIPNS3_8PackNodeEEENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit, %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"class.absl::flat_hash_set.181", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv, i32 noundef 1525) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.64) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 1, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.d

._crit_edge.i:                                    ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"
  %.pre51.i = load i64, ptr %4, align 8           ; 3 uses
  %i.q = icmp ne i64 %.pre51.i, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp ult i64 %.pre51.i, 2
  br i1 %i.r, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i: ; preds = %._crit_edge.i
  %i.s = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.t = and i64 %i.s, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.u = icmp ne i64 %i.t, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.pre51.i, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.u)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"

bb.d:                                             ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", %.lr.ph.i
  %.sroa.02.029.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.gm, %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.029.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  store ptr %i.w, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %4, align 8                ; 6 uses
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp ugt i64 %i.z, 131071
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = icmp eq ptr %i.aa, %i.w                 ; 2 uses
  %or.cond.i = select i1 %.not.i.i.i.i.i4.i, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread8.i

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ac = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.ac, 48
  %i.ad = ashr exact i64 %sext.i.i.i.i, 48
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = xor i64 %i.ae, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ag = zext i64 %i.af to i128
  %i.ah = mul nuw nsw i128 %i.ag, 8779197792823184629 ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64
  %i.al = xor i64 %i.ad, %i.ak                    ; 4 uses
  %i.am = lshr i64 %i.al, 57
  %i.an = trunc nuw nsw i64 %i.am to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i7.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ %i.bh, %bb.j ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bg, %bb.j ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.x ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1      ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.017.048.i.i.i.i.i = phi i16 [ %i.bd, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i.i.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.x
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread6.i, label %bb.i, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread6.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = add i16 %.sroa.017.048.i.i.i.i.i, -1
  %i.bd = and i16 %i.bc, %.sroa.017.048.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.be = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bf = bitcast <16 x i1> %i.be to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not44.i.i.i.i.i, label %bb.j, label %bb.n, !prof !20

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bg = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.6.0.i.i.i.i.i
  br label %bb.h, !llvm.loop !21

.thread8.i:                                       ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.z, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread8.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !103
  br label %bb.q

bb.l:                                             ; preds = %.thread8.i
  br i1 %i.ab, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !103
  store ptr %4, ptr %3, align 8, !noalias !103
  store ptr %i.b, ptr %i.k, align 8, !noalias !103
  %i.bi = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !103
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !103
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bi
  br label %bb.q

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !122
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i = phi i64 [ %i.al, %bb.n ], [ %i.ch, %bb.p ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.n ], [ %i.cg, %bb.p ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i, %i.x         ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bk, i32 0, i32 3, i32 1), !noalias !122
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i
  %i.bm = load <16 x i8>, ptr %i.bl, align 1, !noalias !122 ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.ap, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not65.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not65.i.i, label %.critedge19.i.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.o, %.critedge.i6.i
  %.sroa.035.066.i.i = phi i16 [ %i.bx, %.critedge.i6.i ], [ %i.bo, %bb.o ] ; 3 uses
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.7.0.i.i, %i.bq
  %i.bs = and i64 %i.br, %i.x
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !122
  %i.bv = icmp eq ptr %i.bu, %i.w
  br i1 %i.bv, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %.critedge.i6.i, !prof !19

.critedge.i6.i:                                   ; preds = %.lr.ph.i5.i
  %i.bw = add i16 %.sroa.035.066.i.i, -1
  %i.bx = and i16 %i.bw, %.sroa.035.066.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i, label %.critedge19.i.i, label %.lr.ph.i5.i

.critedge19.i.i:                                  ; preds = %.critedge.i6.i, %bb.o
  %i.by = icmp eq <16 x i8> %i.bm, splat (i8 -128)
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  %i.dn = lshr i32 %i.dj, 4                       ; 2 uses
  %i.do = xor i32 %i.dn, -1
  %i.dp = shl i32 %i.dn, 15
  %i.dq = add i32 %i.dp, %i.do                    ; 2 uses
  %i.dr = lshr i32 %i.dq, 12
  %i.ds = xor i32 %i.dr, %i.dq
  %i.dt = mul i32 %i.ds, 5                        ; 2 uses
  %i.du = lshr i32 %i.dt, 4
  %i.dv = xor i32 %i.du, %i.dt
  %i.dw = mul i32 %i.dv, 2057                     ; 2 uses
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = xor i32 %i.dx, %i.dw
  %i.dz = zext i32 %i.dy to i64                   ; 3 uses
  %i.ea = urem i64 %i.dz, %i.dh                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.ec, align 8            ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = icmp eq i64 %i.eg, %i.dz
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i.i = load i32, ptr %i.ee, align 8
  %i.ei = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i.i.i
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.el = icmp eq i64 %i.eq, %i.dz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ek, align 8
  %i.em = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  br i1 %i.en, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.x, %bb.y
  %.021.i.i.i.i.i.i.i = phi ptr [ %i.eo, %bb.y ], [ %i.ed, %bb.x ]
  %i.eo = load ptr, ptr %.021.i.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = urem i64 %i.eq, %i.dh
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.er, %i.ea
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.y, label %..loopexit_crit_edge22.i.i.i.i.i.i.i, !llvm.loop !16

..loopexit_crit_edge22.i.i.i.i.i.i.i:             ; preds = %bb.z
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, !llvm.loop !16

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i: ; preds = %bb.y, %bb.v
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i, %bb.v ], [ %i.eo, %bb.y ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  %.not37.i.i = icmp eq ptr %i.et, null
  br i1 %.not37.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %bb.aa

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i: ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %.not3774.i.i = icmp eq ptr %i.ev, null
  br i1 %.not3774.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i

bb.aa:                                            ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i
  br i1 %.not.not.i.i.i.i.i, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %bb.aa, %.preheader.i.i
  %.sroa.07.0.in.i.i.i57.i.i = phi ptr [ %.sroa.07.0.i.i.i58.i.i, %.preheader.i.i ], [ %i.g, %bb.aa ]
  %.sroa.07.0.i.i.i58.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i57.i.i, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i58.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i59.i.i = load i32, ptr %i.ew, align 4
  %i.ex = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i59.i.i
  br i1 %i.ex, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, label %.preheader.i.i, !llvm.loop !14

.thread.i.i:                                      ; preds = %bb.aa
  %.pre106.i.i = lshr i32 %i.dj, 4                ; 2 uses
  %.pre107.i.i = xor i32 %.pre106.i.i, -1
  %.pre109.i.i = shl i32 %.pre106.i.i, 15
  %.pre111.i.i = add i32 %.pre109.i.i, %.pre107.i.i ; 2 uses
  %.pre113.i.i = lshr i32 %.pre111.i.i, 12
  %.pre115.i.i = xor i32 %.pre113.i.i, %.pre111.i.i
  %.pre117.i.i = mul i32 %.pre115.i.i, 5          ; 2 uses
  %.pre119.i.i = lshr i32 %.pre117.i.i, 4
  %.pre121.i.i = xor i32 %.pre119.i.i, %.pre117.i.i
  %.pre123.i.i = mul i32 %.pre121.i.i, 2057       ; 2 uses
  %.pre125.i.i = lshr i32 %.pre123.i.i, 16
  %.pre127.i.i = xor i32 %.pre125.i.i, %.pre123.i.i
  %.pre129.i.i = zext i32 %.pre127.i.i to i64     ; 3 uses
  %.pre131.i.i = urem i64 %.pre129.i.i, %i.dh     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.pre131.i.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre46.i = load ptr, ptr %.pre.i, align 8      ; 4 uses
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %.pre46.i, i64 24
  %.pre48.i = load i64, ptr %.phi.trans.insert47.i, align 8
  %.phi.trans.insert49.i = getelementptr inbounds nuw i8, ptr %.pre46.i, i64 8
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i47.i.pre.i = load i32, ptr %.phi.trans.insert49.i, align 8
  %i.ey = icmp eq i64 %.pre48.i, %.pre129.i.i
  %i.ez = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i47.i.pre.i
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, label %.lr.ph.i.i.i.i.i48.i.i

.lr.ph.i.i.i.i.i48.i.i:                           ; preds = %.thread.i.i, %.lr.ph.i.i.i.i.i48.i.i
  %.021.i.i.i.i.i49.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i48.i.i ], [ %.pre46.i, %.thread.i.i ]
  %i.fb = load ptr, ptr %.021.i.i.i.i.i49.i.i, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %i.fe = urem i64 %i.fd, %i.dh
  %.not19.i.i.i.i.i51.i.i = icmp eq i64 %i.fe, %.pre131.i.i
  call void @llvm.assume(i1 %.not19.i.i.i.i.i51.i.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = icmp eq i64 %i.fd, %.pre129.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i54.i.i = load i32, ptr %i.ff, align 8
  %i.fh = icmp eq i32 %i.dj, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i54.i.i
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, label %.lr.ph.i.i.i.i.i48.i.i, !llvm.loop !16

_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i: ; preds = %.lr.ph.i.i.i.i.i48.i.i, %.preheader.i.i, %.thread.i.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i
  %.sroa.07.1.i.i.i56.i.i = phi ptr [ %.sroa.07.0.i.i.i58.i.i, %.preheader.i.i ], [ %.pre46.i, %.thread.i.i ], [ %i.ed, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i ], [ %i.fb, %.lr.ph.i.i.i.i.i48.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i56.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 44
  %i.fm = load i8, ptr %i.fl, align 4
  switch i8 %i.fm, label %bb.ac [
    i8 4, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i
    i8 1, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i
  ]

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i: ; preds = %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread72.i.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.i.i, %bb.w, %.lr.ph.i.i.i.i.i.i.i, %.preheader91.i.i, %..loopexit_crit_edge22.i.i.i.i.i.i.i
  %i.fn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.ab, label %.loopexit79.sink.split.i.i

bb.ab:                                            ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @"__func__._ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE", i32 noundef 1563) #21
  %i.fp = lshr i32 %i.dj, 4
  %i.fq = load ptr, ptr %i.l, align 8, !nonnull !13, !align !70
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = zext i32 %i.dj to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.fx) #21
  %.sroa.0.0.copyload.i61.i.i = load i32, ptr %i.cy, align 4 ; 2 uses
  %i.fz = lshr i32 %.sroa.0.0.copyload.i61.i.i, 4
  %i.ga = load ptr, ptr %i.l, align 8, !nonnull !13, !align !70
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = zext i32 %.sroa.0.0.copyload.i61.i.i to i64
  %i.gf = add i64 %i.gd, %i.ge
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load i8, ptr %i.gg, align 4
  %i.gi = call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.gh) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.78, i32 noundef %i.fp, ptr noundef %i.fy, i32 noundef %i.fz, ptr noundef %i.gi) #21
  br label %.loopexit79.sink.split.i.i

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i55.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.03588.i.i, i64 4 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.gj, %i.df
  br i1 %.not36.i.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.u

.loopexit79.sink.split.i.i:                       ; preds = %bb.ab, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i, %bb.s, %bb.r
  %.sink.in.i.i.sroa.speculated = phi ptr [ %i.c, %bb.r ], [ %i.d, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread.i.i ], [ %i.d, %bb.ab ], [ %i.d, %bb.s ] ; 2 uses
  %i.gk = load i32, ptr %.sink.in.i.i.sroa.speculated, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %.sink.in.i.i.sroa.speculated, align 4
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %bb.ac, %.loopexit79.sink.split.i.i, %.critedge.i.i, %bb.t, %bb.r, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread6.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.gm = load ptr, ptr %.sroa.02.029.i, align 8  ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %._crit_edge.i, label %bb.d

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit": ; preds = %bb.c, %._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1 = load ptr, ptr %i.go, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i2 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %i.gp = icmp eq ptr %.val1, null
  br i1 %i.gp, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0..0..promoted71 = load i32, ptr %i.d, align 4
  br label %bb.ad

._crit_edge21.i:                                  ; preds = %._crit_edge.i32
  store i32 %.lcssa7072, ptr %i.d, align 4
  %i.gt = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp ult i64 %6, 2
  br i1 %i.gu, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i38

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i38: ; preds = %._crit_edge21.i
  %i.gv = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %i.gw = and i64 %i.gv, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i36 = load ptr, ptr %i.gq, align 8
  %i.gx = icmp ne i64 %i.gw, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %6, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i36, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.gx)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"

bb.ad:                                            ; preds = %._crit_edge.i32, %.lr.ph20.i
  %.lcssa7073 = phi i32 [ %.0..0..promoted71, %.lr.ph20.i ], [ %.lcssa7072, %._crit_edge.i32 ] ; 2 uses
  %.pre24.i = phi i64 [ 1, %.lr.ph20.i ], [ %.pre2427.i, %._crit_edge.i32 ] ; 3 uses
  %5 = phi i64 [ 1, %.lr.ph20.i ], [ %6, %._crit_edge.i32 ]
  %.sroa.02.018.i = phi ptr [ %.val1, %.lr.ph20.i ], [ %i.hc, %._crit_edge.i32 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.02.018.i, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.02.018.i, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.gz, %i.hb
  br i1 %.not16.i, label %._crit_edge.i32, label %.lr.ph.i3

._crit_edge.i32:                                  ; preds = %bb.aq, %bb.ad
  %.lcssa7072 = phi i32 [ %.lcssa7073, %bb.ad ], [ %i.js, %bb.aq ] ; 2 uses
  %.pre2427.i = phi i64 [ %.pre24.i, %bb.ad ], [ %.pre2428.i, %bb.aq ]
  %6 = phi i64 [ %5, %bb.ad ], [ %9, %bb.aq ]     ; 4 uses
  %i.hc = load ptr, ptr %.sroa.02.018.i, align 8  ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %._crit_edge21.i, label %bb.ad

.lr.ph.i3:                                        ; preds = %bb.ad, %bb.aq
  %i.he = phi i32 [ %i.js, %bb.aq ], [ %.lcssa7073, %bb.ad ] ; 3 uses
  %.pre2425.i = phi i64 [ %.pre2428.i, %bb.aq ], [ %.pre24.i, %bb.ad ] ; 4 uses
  %7 = phi i64 [ %9, %bb.aq ], [ %.pre24.i, %bb.ad ] ; 10 uses
  %.017.i = phi ptr [ %i.jt, %bb.aq ], [ %i.gz, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.hf = load ptr, ptr %.017.i, align 8          ; 5 uses
  store ptr %i.hf, ptr %i.a, align 8
  %i.hg = icmp ult i64 %7, 2
  br i1 %i.hg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i3
  %i.hh = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8 ; 2 uses
  %.not.i.i.i.i.i10.i = icmp ugt i64 %i.hh, 131071
  %i.hi = load ptr, ptr %i.gq, align 8
  %i.hj = icmp eq ptr %i.hi, %i.hf                ; 2 uses
  %or.cond.i39 = select i1 %.not.i.i.i.i.i10.i, i1 %i.hj, i1 false
  br i1 %or.cond.i39, label %bb.aq, label %.thread9.i

bb.af:                                            ; preds = %.lr.ph.i3
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4 = load ptr, ptr %i.gq, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i32 0, i32 1, i32 1)
  %i.hk = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %sext.i.i.i.i5 = shl i64 %i.hk, 48
  %i.hl = ashr exact i64 %sext.i.i.i.i5, 48
  %i.hm = ptrtoint ptr %i.hf to i64
  %i.hn = xor i64 %i.hm, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ho = zext i64 %i.hn to i128
  %i.hp = mul nuw nsw i128 %i.ho, 8779197792823184629 ; 2 uses
  %i.hq = lshr i128 %i.hp, 64
  %i.hr = xor i128 %i.hq, %i.hp
  %i.hs = trunc i128 %i.hr to i64
  %i.ht = xor i64 %i.hl, %i.hs                    ; 4 uses
  %i.hu = lshr i64 %i.ht, 57
  %i.hv = trunc nuw nsw i64 %i.hu to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6 = load ptr, ptr %i.gr, align 8 ; 4 uses
  %i.hw = insertelement <16 x i8> poison, i8 %i.hv, i64 0
  %i.hx = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %.pn.i7.i.i.i.i7 = phi i64 [ %i.ht, %bb.af ], [ %i.ip, %bb.ai ]
  %.sroa.13.0.i.i.i.i.i8 = phi i64 [ 0, %bb.af ], [ %i.io, %bb.ai ]
  %.sroa.6.0.i.i.i.i.i9 = and i64 %.pn.i7.i.i.i.i7, %7 ; 4 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %.sroa.6.0.i.i.i.i.i9
  call void @llvm.prefetch.p0(ptr %i.hy, i32 0, i32 3, i32 1)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i64 %.sroa.6.0.i.i.i.i.i9
  %i.ia = load <16 x i8>, ptr %i.hz, align 1      ; 2 uses
  %i.ib = icmp eq <16 x i8> %i.hx, %i.ia
  %i.ic = bitcast <16 x i1> %i.ib to i16          ; 2 uses
  %.not47.i.i.i.i.i10 = icmp eq i16 %i.ic, 0
  br i1 %.not47.i.i.i.i.i10, label %._crit_edge.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %bb.ag, %bb.ah
  %.sroa.017.048.i.i.i.i.i12 = phi i16 [ %i.il, %bb.ah ], [ %i.ic, %bb.ag ] ; 3 uses
  %i.id = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i12, i1 true)
  %i.ie = zext nneg i16 %i.id to i64
  %i.if = add i64 %.sroa.6.0.i.i.i.i.i9, %i.ie
  %i.ig = and i64 %i.if, %7
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = icmp eq ptr %i.ii, %i.hf
  br i1 %i.ij, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, label %bb.ah, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i: ; preds = %.lr.ph.i.i.i.i.i11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4) ]
  br label %bb.aq

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i11
  %i.ik = add i16 %.sroa.017.048.i.i.i.i.i12, -1
  %i.il = and i16 %i.ik, %.sroa.017.048.i.i.i.i.i12 ; 2 uses
  %.not.i.i.i.i.i13 = icmp eq i16 %i.il, 0
  br i1 %.not.i.i.i.i.i13, label %._crit_edge.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i11

._crit_edge.i.i.i.i.i14:                          ; preds = %bb.ah, %bb.ag
  %i.im = icmp eq <16 x i8> %i.ia, splat (i8 -128)
  %i.in = bitcast <16 x i1> %i.im to i16
  %.not44.i.i.i.i.i15 = icmp eq i16 %i.in, 0
  br i1 %.not44.i.i.i.i.i15, label %bb.ai, label %bb.am, !prof !20

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i14
  %i.io = add i64 %.sroa.13.0.i.i.i.i.i8, 16      ; 2 uses
  %i.ip = add i64 %i.io, %.sroa.6.0.i.i.i.i.i9
  br label %bb.ag, !llvm.loop !21

.thread9.i:                                       ; preds = %bb.ae
  %.not.i.i.i.i.i.i.i.i.i.i.i40 = icmp ult i64 %i.hh, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i40, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread9.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8, !noalias !126
  br label %bb.ap

bb.ak:                                            ; preds = %.thread9.i
  br i1 %i.hj, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !126
  store ptr %2, ptr %1, align 8, !noalias !126
  store ptr %i.a, ptr %i.gs, align 8, !noalias !126
  %i.iq = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !126
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i42 = load ptr, ptr %i.gr, align 8, !noalias !126
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i42, i64 %i.iq
  br label %bb.ap

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i14
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i32 0, i32 1, i32 1), !noalias !145
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.pn.i.i16 = phi i64 [ %i.ht, %bb.am ], [ %i.jp, %bb.ao ]
  %.sroa.15.0.i.i17 = phi i64 [ 0, %bb.am ], [ %i.jo, %bb.ao ] ; 2 uses
  %.sroa.7.0.i.i18 = and i64 %.pn.i.i16, %7       ; 5 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %.sroa.7.0.i.i18
  call void @llvm.prefetch.p0(ptr %i.is, i32 0, i32 3, i32 1), !noalias !145
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i64 %.sroa.7.0.i.i18
  %i.iu = load <16 x i8>, ptr %i.it, align 1, !noalias !145 ; 2 uses
  %i.iv = icmp eq <16 x i8> %i.hx, %i.iu
  %i.iw = bitcast <16 x i1> %i.iv to i16          ; 2 uses
  %.not65.i.i19 = icmp eq i16 %i.iw, 0
  br i1 %.not65.i.i19, label %.critedge19.i.i24, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.an, %.critedge.i.i22
  %.sroa.035.066.i.i21 = phi i16 [ %i.jf, %.critedge.i.i22 ], [ %i.iw, %bb.an ] ; 3 uses
  %i.ix = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i21, i1 true)
  %i.iy = zext nneg i16 %i.ix to i64
  %i.iz = add i64 %.sroa.7.0.i.i18, %i.iy
  %i.ja = and i64 %i.iz, %7
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !145
  %i.jd = icmp eq ptr %i.jc, %i.hf
  br i1 %i.jd, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30, label %.critedge.i.i22, !prof !19

.critedge.i.i22:                                  ; preds = %.lr.ph.i.i20
  %i.je = add i16 %.sroa.035.066.i.i21, -1
  %i.jf = and i16 %i.je, %.sroa.035.066.i.i21     ; 2 uses
  %.not.i.i23 = icmp eq i16 %i.jf, 0
  br i1 %.not.i.i23, label %.critedge19.i.i24, label %.lr.ph.i.i20

.critedge19.i.i24:                                ; preds = %.critedge.i.i22, %bb.an
  %i.jg = icmp eq <16 x i8> %i.iu, splat (i8 -128)
  %i.jh = bitcast <16 x i1> %i.jg to i16          ; 2 uses
  %.not57.i.i25 = icmp eq i16 %i.jh, 0
  br i1 %.not57.i.i25, label %bb.ao, label %.thread.i.i26, !prof !20

.thread.i.i26:                                    ; preds = %.critedge19.i.i24
  %i.ji = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jh, i1 true)
  %i.jj = zext nneg i16 %i.ji to i64
  %i.jk = add i64 %.sroa.7.0.i.i18, %i.jj
  %i.jl = and i64 %i.jk, %7
  %i.jm = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ht, i64 %i.jl, i64 %.sroa.15.0.i.i17) #21, !noalias !145
  %.sroa.0.0.copyload.i.i.i2.i26.i.i28 = load ptr, ptr %i.gr, align 8, !noalias !145
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i28, i64 %i.jm
  br label %bb.ap

bb.ao:                                            ; preds = %.critedge19.i.i24
  %i.jo = add i64 %.sroa.15.0.i.i17, 16           ; 2 uses
  %i.jp = add i64 %i.jo, %.sroa.7.0.i.i18
  br label %bb.an

bb.ap:                                            ; preds = %.thread.i.i26, %bb.al, %bb.aj
  %.sroa.4.0.ph.i29 = phi ptr [ %i.jn, %.thread.i.i26 ], [ %i.gq, %bb.aj ], [ %i.ir, %bb.al ]
  %i.jq = load ptr, ptr %i.a, align 8, !noalias !148
  store ptr %i.jq, ptr %.sroa.4.0.ph.i29, align 8
  %.pre.i30 = load i64, ptr %2, align 8           ; 2 uses
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30: ; preds = %.lr.ph.i.i20, %bb.ap, %bb.ak
  %.pre2429.i = phi i64 [ %.pre.i30, %bb.ap ], [ %.pre2425.i, %bb.ak ], [ %.pre2425.i, %.lr.ph.i.i20 ]
  %8 = phi i64 [ %.pre.i30, %bb.ap ], [ %7, %bb.ak ], [ %7, %.lr.ph.i.i20 ]
  %i.jr = add nsw i32 %i.he, 1
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, %bb.ae
  %i.js = phi i32 [ %i.he, %bb.ae ], [ %i.he, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i ], [ %i.jr, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30 ] ; 2 uses
  %.pre2428.i = phi i64 [ %.pre2425.i, %bb.ae ], [ %.pre2425.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i ], [ %.pre2429.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30 ] ; 2 uses
  %9 = phi i64 [ %7, %bb.ae ], [ %7, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i ], [ %8, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i30 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.jt = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %.not.i31 = icmp eq ptr %i.jt, %i.hb
  br i1 %.not.i31, label %._crit_edge.i32, label %.lr.ph.i3

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit": ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit", %._crit_edge21.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ju = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.ar, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge"

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge": ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"
  %.0..0..0.49.pre = load i32, ptr %i.c, align 4
  %.0..0..0.46.pre = load i32, ptr %i.d, align 4
  br label %bb.as

bb.ar:                                            ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit"
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv, i32 noundef 1585) #21
  %.0..0..0.48 = load i32, ptr %i.c, align 4      ; 2 uses
  %.0..0..0. = load i32, ptr %i.d, align 4        ; 2 uses
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.65, i32 noundef %.0..0..0.48, i32 noundef %.0..0..0.) #21
  br label %bb.as

bb.as:                                            ; preds = %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge", %bb.ar
  %.0..0.46 = phi i32 [ %.0..0..0.46.pre, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge" ], [ %.0..0..0., %bb.ar ]
  %.0..0.49 = phi i32 [ %.0..0..0.49.pre, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer15DecideVectorizeEvE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashIS8_EESt8equal_toIS8_EEE.exit._crit_edge" ], [ %.0..0..0.48, %bb.ar ]
  %i.jw = icmp sgt i32 %.0..0.49, %.0..0.46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.jw
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %7 = alloca %"class.absl::flat_hash_set.181", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZNK2v88internal8compiler10turboshaft8PackNode5PrintEPNS2_5GraphE, i32 noundef 1594) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.66, ptr noundef %1, i64 noundef %i.f) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 1, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.c

._crit_edge.i:                                    ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"
  %.pre.i = load i64, ptr %7, align 8             ; 3 uses
  %i.n = icmp ne i64 %.pre.i, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %.pre.i, 2
  br i1 %i.o, label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit", label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i: ; preds = %._crit_edge.i
  %i.p = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.q = and i64 %i.p, 65536
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.r = icmp ne i64 %i.q, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.pre.i, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.r)
  br label %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_0EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexEPNS2_8PackNodeENS_4base4hashISA_EESt8equal_toISA_EEE.exit"

bb.c:                                             ; preds = %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", %.lr.ph.i
  %.sroa.02.016.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.cx, %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.016.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  store ptr %i.t, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %7, align 8                ; 6 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp ugt i64 %i.w, 131071
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = icmp eq ptr %i.x, %i.t                   ; 2 uses
  %or.cond.i = select i1 %.not.i.i.i.i.i4.i, i1 %i.y, i1 false
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread9.i

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.z, 48
  %i.aa = ashr exact i64 %sext.i.i.i.i, 48
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = xor i64 %i.ab, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 8779197792823184629 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = xor i64 %i.aa, %i.ah                    ; 4 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  %i.al = insertelement <16 x i8> poison, i8 %i.ak, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i7.i.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.be, %bb.i ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bd, %bb.i ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.u ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.an, i32 0, i32 3, i32 1)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.ap = load <16 x i8>, ptr %i.ao, align 1      ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.am, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not47.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.sroa.017.048.i.i.i.i.i = phi i16 [ %i.ba, %bb.h ], [ %i.ar, %bb.g ] ; 3 uses
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.6.0.i.i.i.i.i, %i.at
  %i.av = and i64 %i.au, %i.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, %i.t
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, label %bb.h, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = add i16 %.sroa.017.048.i.i.i.i.i, -1
  %i.ba = and i16 %i.az, %.sroa.017.048.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.bb = icmp eq <16 x i8> %i.ap, splat (i8 -128)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not44.i.i.i.i.i, label %bb.i, label %bb.m, !prof !20

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bd = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.6.0.i.i.i.i.i
  br label %bb.g, !llvm.loop !21

.thread9.i:                                       ; preds = %bb.e
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.w, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread9.i
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !149
  br label %bb.p

bb.k:                                             ; preds = %.thread9.i
  br i1 %i.y, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !149
  store ptr %7, ptr %6, align 8, !noalias !149
  store ptr %i.b, ptr %i.k, align 8, !noalias !149
  %i.bf = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft8PackNodeEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #21, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !149
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !149
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bf
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !168
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i = phi i64 [ %i.ai, %bb.m ], [ %i.ce, %bb.o ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.m ], [ %i.cd, %bb.o ] ; 2 uses
end_hunk_1
