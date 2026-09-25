Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo25GenerateFileLocationIndexEv:bb.a
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %bb.p, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.eb = load ptr, ptr %i.aq, align 16, !tbaa !274 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.be
  br i1 %i.ec, label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.ed = load i64, ptr %i.bb, align 8, !tbaa !275
  %i.ee = shl i64 %i.ed, 3
  tail call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #43
  br label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i

.loopexit:                                        ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ef = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.eg = tail call ptr @__cxa_begin_catch(ptr %i.ef) #42 ; 0 uses
  store i64 %i.df, ptr %i.bd, align 8, !tbaa !1077
  invoke void @__cxa_rethrow() #44
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #46
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  store i64 %i.dj, ptr %i.bb, align 8, !tbaa !275
  store ptr %.0.i.i, ptr %i.aq, align 16, !tbaa !274
  %i.ek = urem i64 %i.ce, %i.dj
  br label %bb.v

bb.v:                                             ; preds = %.noexc._crit_edge, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i
  %i.el = phi ptr [ %.0.i.i, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i ], [ %.pre55, %.noexc._crit_edge ] ; 2 uses
  %.0.i = phi i64 [ %i.ek, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i ], [ %i.de, %.noexc._crit_edge ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.0.i ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !633 ; 2 uses
  %.not.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !273
  store ptr %i.eo, ptr %i.cf, align 8, !tbaa !273
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !633
  store ptr %i.cf, ptr %i.ep, align 8, !tbaa !273
  br label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit

bb.x:                                             ; preds = %bb.v
  %i.eq = load ptr, ptr %i.bc, align 16, !tbaa !272 ; 3 uses
  store ptr %i.eq, ptr %i.cf, align 8, !tbaa !273
  store ptr %i.cf, ptr %i.bc, align 16, !tbaa !272
  %.not11.i.i = icmp eq ptr %i.eq, null
  br i1 %.not11.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.bb, align 8, !tbaa !275
  %i.et = load i64, ptr %i.er, align 8, !tbaa !533
  %i.eu = urem i64 %i.et, %i.es
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eu
  store ptr %i.cf, ptr %i.ev, align 8, !tbaa !633
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.bc, ptr %i.em, align 8, !tbaa !633
  br label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit

_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit: ; preds = %bb.w, %bb.z
  %i.ew = load i64, ptr %i.ba, align 8, !tbaa !1076
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.ba, align 8, !tbaa !1076
  br label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_S4_EEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit

_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i: ; preds = %.critedge28.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i.body

_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i.body: ; preds = %bb.s, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ey, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i ], [ %i.eh, %bb.s ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #43
  resume { ptr, i32 } %eh.lpad-body

_ZNKSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i: ; preds = %bb.e, %bb.b, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #43
  br label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_S4_EEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit

_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_S4_EEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit, %_ZNKSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i
  %i.ez = add nuw i64 %.01736, 1                  ; 2 uses
  %i.fa = load ptr, ptr %i.az, align 8, !tbaa !241 ; 2 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %indvars.iv52 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !345
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !244 ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = icmp ult i64 %i.ez, %i.fi
  br i1 %i.fj, label %.lr.ph37, label %._crit_edge38.loopexit, !llvm.loop !2116
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7Version13PrepareAppendERKNS_11ReadOptionsEb(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7rocksdb7Version22UpdateAccumulatedStatsERKNS_11ReadOptionsE(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !361
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4600
  tail call void @_ZN7rocksdb18VersionStorageInfo23PrepareForVersionAppendERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE(ptr noundef nonnull align 16 dereferenceable(4288) %i.a, ptr noundef nonnull align 8 dereferenceable(875) %i.d, ptr noundef nonnull align 8 dereferenceable(736) %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7Version22UpdateAccumulatedStatsERKNS_11ReadOptionsE(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !343 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph40, label %._crit_edge49

.lr.ph40:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4248 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4352
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4232 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2120
  %i.j = icmp eq i64 %i.i, 0
  %i.k = icmp sgt i32 %i.bi, 0
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.q = zext nneg i32 %i.bi to i64
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph40, %._crit_edge
  %i.r = phi i32 [ %i.b, %.lr.ph40 ], [ %i.bi, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02437 = phi i32 [ 0, %.lr.ph40 ], [ %.4, %._crit_edge ] ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !344
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !603  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !603  ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.134 = phi i32 [ %.3.ph, %bb.e ], [ %.02437, %bb.b ] ; 4 uses
  %.sroa.027.033 = phi ptr [ %i.bg, %bb.e ], [ %i.u, %bb.b ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.027.033, align 8, !tbaa !347 ; 5 uses
  %i.z = tail call noundef zeroext i1 @_ZN7rocksdb7Version27MaybeInitializeFileMetaDataERKNS_11ReadOptionsEPNS_12FileMetaDataE(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.y)
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !531
  %i.af = load <2 x i64>, ptr %i.ab, align 8, !tbaa !533
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !1045
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !1043 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = load <4 x i64>, ptr %i.e, align 8, !tbaa !533
  %i.ak = insertelement <4 x i64> poison, i64 %i.ae, i64 0
  %i.al = shufflevector <2 x i64> %i.af, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x i64> %i.ak, <4 x i64> %i.al, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.an = insertelement <4 x i64> %i.am, i64 %i.ai, i64 3
  %i.ao = add <4 x i64> %i.aj, %i.an
  store <4 x i64> %i.ao, ptr %i.e, align 8, !tbaa !533
  %i.ap = load <4 x i64>, ptr %i.f, align 8, !tbaa !533
  %i.aq = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 1>, i64 %i.ah, i64 0
  %i.ar = insertelement <4 x i64> %i.aq, i64 %i.ai, i64 1
  %i.as = shufflevector <4 x i64> %i.ar, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.at = add <4 x i64> %i.ap, %i.as
  store <4 x i64> %i.at, ptr %i.f, align 8, !tbaa !533
  %i.au = load ptr, ptr %i.g, align 16, !tbaa !509
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1079
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 504
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2121 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(80) %i.ay)
  %i.bd = icmp eq i64 %i.bc, 4194304
  br i1 %i.bd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = add nsw i32 %.134, 1                    ; 2 uses
  %i.bf = icmp sgt i32 %.134, 18
  br i1 %i.bf, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %.3.ph = phi i32 [ %.134, %.lr.ph ], [ %.134, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.027.033, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.w
  br i1 %i.bh, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d, %bb.e
  %.4.ph = phi i32 [ %.3.ph, %bb.e ], [ %i.be, %bb.d ]
  %.pre = load i32, ptr %i.a, align 16, !tbaa !343
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bi = phi i32 [ %i.r, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.4 = phi i32 [ %.02437, %bb.b ], [ %.4.ph, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  %i.bl = icmp slt i32 %.4, 20
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %bb.b, label %.preheader, !llvm.loop !2117

.loopexit.loopexit:                               ; preds = %bb.h
  %i.bn = icmp eq i64 %i.dl, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %i.bo = phi i1 [ %i.bn, %.loopexit.loopexit ], [ true, %bb.f ]
  %i.bp = icmp sgt i64 %indvars.iv55, 1
  %i.bq = and i1 %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %._crit_edge49, !llvm.loop !2118

._crit_edge49:                                    ; preds = %.loopexit, %bb.a, %.preheader
  ret void

bb.f:                                             ; preds = %.lr.ph48, %.loopexit
  %indvars.iv55 = phi i64 [ %i.q, %.lr.ph48 ], [ %indvars.iv.next56, %.loopexit ] ; 2 uses
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1 ; 4 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !344
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.next56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !345
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !244
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = lshr i64 %i.by, 3                       ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph45.preheader, label %.loopexit

.lr.ph45.preheader:                               ; preds = %bb.f
  %i.cc = and i64 %i.bz, 2147483647
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %bb.h
  %indvars.iv52 = phi i64 [ %i.cc, %.lr.ph45.preheader ], [ %indvars.iv.next53, %bb.h ] ; 2 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 3 uses
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !344
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %indvars.iv.next56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !244
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next53
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !347
  %i.ci = tail call noundef zeroext i1 @_ZN7rocksdb7Version27MaybeInitializeFileMetaDataERKNS_11ReadOptionsEPNS_12FileMetaDataE(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.ch)
  %.pre58 = load i64, ptr %i.h, align 8, !tbaa !1039 ; 2 uses
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph45
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !344
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %indvars.iv.next56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !244
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next53
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !347 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !531
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !808
  %i.cs = load <2 x i64>, ptr %i.n, align 8, !tbaa !533
  %i.ct = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cu = insertelement <2 x i64> %i.ct, i64 %i.cr, i64 1
  %i.cv = add <2 x i64> %i.cs, %i.cu
  store <2 x i64> %i.cv, ptr %i.n, align 8, !tbaa !533
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 160
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !809
  %i.cy = add i64 %.pre58, %i.cx                  ; 2 uses
  store i64 %i.cy, ptr %i.h, align 8, !tbaa !1039
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1045
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !1043 ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc
  %i.de = load <4 x i64>, ptr %i.o, align 16, !tbaa !533
  %i.df = insertelement <4 x i64> poison, i64 %i.dd, i64 0
  %i.dg = insertelement <4 x i64> %i.df, i64 %i.dc, i64 1
  %i.dh = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.di = add <4 x i64> %i.de, %i.dh
  store <4 x i64> %i.di, ptr %i.o, align 16, !tbaa !533
  %i.dj = load i64, ptr %i.p, align 16, !tbaa !805
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.p, align 16, !tbaa !805
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph45, %bb.g
  %i.dl = phi i64 [ %.pre58, %.lr.ph45 ], [ %i.cy, %bb.g ] ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = icmp samesign ugt i64 %indvars.iv52, 1
  %i.do = and i1 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph45, label %.loopexit.loopexit, !llvm.loop !2119
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb7Version27MaybeInitializeFileMetaDataERKNS_11ReadOptionsEPNS_12FileMetaDataE(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.336", align 8 ; 8 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 189 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1088, !range !560, !noundef !561
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1042
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  invoke void @_ZNK7rocksdb7Version18GetTablePropertiesERKNS_11ReadOptionsEPSt10shared_ptrIKNS_15TablePropertiesEEPKNS_12FileMetaDataEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %3, ptr noundef %2, ptr noundef null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 1, !tbaa !1088
  %i.f = load i8, ptr %4, align 8, !tbaa !554
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4352
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !509
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1089
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = and i64 %i.m, 4611686018427387903
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.p = load ptr, ptr %5, align 8, !tbaa !156
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.47, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 32), i64 noundef %i.n, ptr noundef %i.p)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %5, align 8, !tbaa !156    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !157
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit32

bb.i:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !156    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !157
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.x, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !536 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i30, label %_ZN7rocksdb6StatusD2Ev.exit32, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31

bb.k:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %3, align 8, !tbaa !666   ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 128 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !2122
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !1045
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 144 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2123
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !1043
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !tbaa !533
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !tbaa !533
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !2124 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !1044
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !533
  %i.au = call i64 @llvm.umax.i64(i64 %i.at, i64 %i.ar) ; 2 uses
  store i64 %i.au, ptr %i.am, align 8, !tbaa !1043
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !533
  %i.aw = call i64 @llvm.umax.i64(i64 %i.av, i64 %i.au)
  store i64 %i.aw, ptr %i.aj, align 8, !tbaa !1045
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.020 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.l ], [ false, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !536 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.m, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !265 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bb, align 8, !tbaa !267
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !268
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !153
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #42, !inline_history !14
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !153
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #42, !inline_history !14
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !157
  %.not.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.q ], [ %i.bo, %bb.r ]
  %i.bp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bp, label %bb.s, label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !270

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #42
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %bb.t

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit32

_ZN7rocksdb6StatusD2Ev.exit32:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  resume { ptr, i32 } %.pn.pn.pn

bb.t:                                             ; preds = %bb.a, %bb.b, %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.121 = phi i1 [ %.020, %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.121
}

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb18VersionStorageInfo22UpdateAccumulatedStatsEPNS_12FileMetaDataE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = load i64, ptr %i.a, align 8, !tbaa !531
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %3 = load <2 x i64>, ptr %i.c, align 8, !tbaa !533
  %i.f = load i64, ptr %i.d, align 8, !tbaa !1045
  %i.g = load i64, ptr %i.e, align 8, !tbaa !1043 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = load <4 x i64>, ptr %i.b, align 8, !tbaa !533
  %i.j = insertelement <4 x i64> poison, i64 %2, i64 0
  %i.k = shufflevector <2 x i64> %3, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x i64> %i.j, <4 x i64> %i.k, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.m = insertelement <4 x i64> %i.l, i64 %i.h, i64 3
  %i.n = add <4 x i64> %i.i, %i.m
  store <4 x i64> %i.n, ptr %i.b, align 8, !tbaa !533
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4184 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 8, !tbaa !533
  %i.q = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 1>, i64 %i.g, i64 0
  %i.r = insertelement <4 x i64> %i.q, i64 %i.h, i64 1
  %i.s = shufflevector <4 x i64> %i.r, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.t = add <4 x i64> %i.p, %i.s
  store <4 x i64> %i.t, ptr %i.o, align 8, !tbaa !533
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb18VersionStorageInfo18RemoveCurrentStatsEPNS_12FileMetaDataE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1088, !range !560, !noundef !561
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1045
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1043 ; 2 uses
  %.neg = sub i64 %i.g, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !806
  %i.j = add i64 %.neg, %i.i
  store i64 %i.j, ptr %i.h, align 16, !tbaa !806
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4200 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !533
  %i.m = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.g, i64 0
  %i.n = sub <2 x i64> %i.l, %i.m
  store <2 x i64> %i.n, ptr %i.k, align 8, !tbaa !533
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483648, 2147483646) i32 @_ZNK7rocksdb18VersionStorageInfo13MaxInputLevelEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i8, ptr %i.a, align 16, !tbaa !849
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 16
  %i.f = add nsw i32 %i.e, -2
  %.0 = select i1 %i.c, i32 %i.f, i32 0
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0, i1 noundef zeroext %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16
  %.0.v = select i1 %1, i32 -2, i32 -1
  %.0 = add nsw i32 %i.b, %.0.v
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7rocksdb18VersionStorageInfo29EstimateCompactionBytesNeededERKNS_16MutableCFOptionsE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.b = load i8, ptr %i.a, align 16, !tbaa !849
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4216
  store i64 0, ptr %i.c, align 8, !tbaa !1090
  br label %.loopexit68

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241  ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !603  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !603  ; 4 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.j = ptrtoaddr ptr %i.h to i64
  %i.k = ptrtoaddr ptr %i.f to i64
  %i.l = add i64 %i.j, -8
  %i.m = sub i64 %i.l, %i.k                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 4611686018427387888      ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi109 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi110 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi111 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.s = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.s ; 4 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 32
  %i.u = getelementptr i8, ptr %next.gep, i64 64
  %i.v = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !347
  %wide.load112 = load <4 x ptr>, ptr %i.t, align 8, !tbaa !347
  %wide.load113 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !347
  %wide.load114 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !347
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep115 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load112, i64 24
  %wide.gep116 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load113, i64 24
  %wide.gep117 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load114, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather118 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep115, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather119 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep116, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %wide.masked.gather120 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep117, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.w = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.x = add <4 x i64> %wide.masked.gather118, %vec.phi109 ; 2 uses
  %i.y = add <4 x i64> %wide.masked.gather119, %vec.phi110 ; 2 uses
  %i.z = add <4 x i64> %wide.masked.gather120, %vec.phi111 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2125

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.x, %i.w
  %bin.rdx121 = add <4 x i64> %i.y, %bin.rdx
  %bin.rdx122 = add <4 x i64> %i.z, %bin.rdx121
  %i.ab = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx122) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ab, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec123, 3
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi125 = phi <4 x i64> [ %i.ae, %vec.epilog.ph ], [ %i.ag, %vec.epilog.vector.body ]
  %i.af = shl i64 %index124, 3
  %next.gep126 = getelementptr i8, ptr %i.f, i64 %i.af
  %wide.load127 = load <4 x ptr>, ptr %next.gep126, align 8, !tbaa !347
  %wide.gep128 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load127, i64 24
  %wide.masked.gather129 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep128, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !531
  %i.ag = add <4 x i64> %wide.masked.gather129, %vec.phi125 ; 2 uses
  %index.next130 = add nuw i64 %index124, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ag) ; 2 uses
  %cmp.n131 = icmp eq i64 %i.o, %n.vec123
  br i1 %cmp.n131, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03970.ph = phi i64 [ 0, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.sroa.063.069.ph = phi ptr [ %i.f, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.039.lcssa = phi i64 [ 0, %bb.c ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.bb, %.lr.ph ] ; 2 uses
  %i.aj = ptrtoint ptr %i.h to i64
  %i.ak = ptrtoint ptr %i.f to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 3
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1091
  %.not50 = icmp sle i32 %i.ap, %i.an             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 176
end_hunk_0
