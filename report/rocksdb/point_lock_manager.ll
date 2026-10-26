Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/point_lock_manager?download=true
inline.NumInlined: 3593
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb16PointLockManager18GetPointLockStatusEv:bb.a

bb.ab:                                            ; preds = %.noexc5.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.eu, ptr align 8 %i.et, i64 %i.ew, i1 false)
  br label %bb.aj

bb.ac:                                            ; preds = %.noexc5.i
  %i.ey = icmp eq i64 %i.ew, 8
  br i1 %i.ey, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load i64, ptr %i.et, align 8, !tbaa !80
  store i64 %i.ez, ptr %i.eu, align 8, !tbaa !80
  br label %bb.aj

.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.au
  br i1 %i.fb, label %.body99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %.loopexit.split-lp178.loopexit.split-lp.loopexit.split-lp
  %i.fc = load i64, ptr %i.au, align 8, !tbaa !45
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #30
  br label %.body99

bb.ae:                                            ; preds = %.lr.ph309, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.fe = phi ptr [ %.pre351, %.lr.ph309 ], [ %i.gi, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.ff = phi ptr [ %.pre, %.lr.ph309 ], [ %i.gj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.sroa.5.0307 = phi i64 [ 0, %.lr.ph309 ], [ %i.gk, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.fg = icmp ult i64 %.sroa.5.0307, 8
  %i.fh = load ptr, ptr %i.eb, align 8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.sroa.5.0307
  %i.fj = load ptr, ptr %i.ds, align 8
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %.sroa.5.0307
  %i.fl = getelementptr i8, ptr %i.fk, i64 -64
  %.0.i.i = select i1 %i.fg, ptr %i.fi, ptr %i.fl ; 2 uses
  %.not.i58 = icmp eq ptr %i.ff, %i.fe
  br i1 %.not.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fm = load i64, ptr %.0.i.i, align 8, !tbaa !80
  store i64 %i.fm, ptr %i.ff, align 8, !tbaa !80
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.ar, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fo = load ptr, ptr %i.ap, align 8, !tbaa !76 ; 4 uses
  %i.fp = ptrtoint ptr %i.fe to i64
  %i.fq = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 5 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.ft = ashr exact i64 %i.fr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i59, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = call i64 @llvm.umin.i64(i64 %i.fu, i64 1152921504606846975)
  %i.fx = select i1 %i.fv, i64 1152921504606846975, i64 %i.fw ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.fx, 0
  call void @llvm.assume(i1 %.not.i.i.i60)
  %i.fy = shl nuw nsw i64 %i.fx, 3
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #29
          to label %.noexc63 unwind label %.loopexit.split-lp167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %i.fr ; 2 uses
  %i.gb = load i64, ptr %.0.i.i, align 8, !tbaa !80
  store i64 %i.gb, ptr %i.ga, align 8, !tbaa !80
  %i.gc = icmp sgt i64 %i.fr, 0
  br i1 %i.gc, label %bb.ah, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.ah:                                            ; preds = %.noexc63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fz, ptr align 8 %i.fo, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.ah, %.noexc63
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %.not.i17.i.i61 = icmp eq ptr %i.fo, null
  br i1 %.not.i17.i.i61, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ge = load ptr, ptr %i.as, align 8, !tbaa !279
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.gg) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.fz, ptr %i.ap, align 8, !tbaa !76
  store ptr %i.gd, ptr %i.ar, align 8, !tbaa !75
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fx ; 2 uses
  store ptr %i.gh, ptr %i.as, align 8, !tbaa !279
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.af
  %i.gi = phi ptr [ %i.gh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.fe, %bb.af ]
  %i.gj = phi ptr [ %i.gd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.fn, %bb.af ]
  %i.gk = add nuw i64 %.sroa.5.0307, 1            ; 2 uses
  %.not = icmp eq i64 %i.gk, %i.ea
  br i1 %.not, label %._crit_edge310, label %bb.ae

.loopexit.split-lp167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %.invoke, %bb.r
  %lpad.loopexit.split-lp519 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp167

bb.aj:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.gl = getelementptr inbounds i8, ptr %i.eu, i64 %i.ew
  store ptr %i.gl, ptr %i.ax, align 8, !tbaa !75
  %i.gm = load i8, ptr %i.aq, align 8, !tbaa !573, !range !92, !noundef !93
  store i8 %i.gm, ptr %i.az, align 8, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !577
  %i.gn = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29
          to label %.noexc101 unwind label %bb.bx ; 20 uses

.noexc101:                                        ; preds = %bb.aj
  store ptr null, ptr %i.gn, align 8, !tbaa !64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 3 uses
  %i.gp = load i32, ptr %7, align 8, !tbaa !576   ; 3 uses
  store i32 %i.gp, ptr %i.go, align 8, !tbaa !576
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 32 ; 3 uses
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !40
  %i.gs = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.au
  br i1 %i.gt, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %.noexc101
  %i.gu = load i64, ptr %i.av, align 8, !tbaa !46 ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nuw nsw i64 %i.gu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.gw, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc101
  store ptr %i.gs, ptr %i.gq, align 8, !tbaa !44
  %i.gx = load i64, ptr %i.au, align 8, !tbaa !45
  store i64 %i.gx, ptr %i.gr, align 8, !tbaa !45
  %.pre.i.i.i = load i64, ptr %i.av, align 8, !tbaa !46
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i

_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.ak
  %i.gy = phi i64 [ %i.gu, %bb.ak ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !46
  store ptr %i.au, ptr %i.at, align 8, !tbaa !44
  store i64 0, ptr %i.av, align 8, !tbaa !46
  store i8 0, ptr %i.au, align 8, !tbaa !45
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.hb = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !318
  store <2 x ptr> %i.hb, ptr %i.ha, align 8, !tbaa !318
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.hd = load ptr, ptr %i.ay, align 8, !tbaa !279
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.hf = load i8, ptr %i.az, align 8, !tbaa !573, !range !92, !noundef !93
  store i8 %i.hf, ptr %i.he, align 8, !tbaa !573
  store ptr %i.gn, ptr %i.ba, align 8, !tbaa !374
  %i.hg = load i64, ptr %i.bb, align 8, !tbaa !578 ; 2 uses
  %.not.not.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not.not.i.i, label %.preheader165, label %.loopexit.i

.preheader165:                                    ; preds = %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i, %bb.al
  %.sroa.0.0.in.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.al ], [ %i.c, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !64 ; 4 uses
  %i.hh = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.hh, label %.loopexit.i, label %bb.al

bb.al:                                            ; preds = %.preheader165
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !166
  %i.hk = icmp eq i32 %i.gp, %i.hj
  br i1 %i.hk, label %.loopexit.i, label %.preheader165, !llvm.loop !567

.loopexit.i:                                      ; preds = %bb.al, %.preheader165, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i
  %.sroa.019.3.i.i = phi ptr [ null, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeC2IJS4_EEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit.i ], [ null, %.preheader165 ], [ %.sroa.0.0.i.i, %bb.al ] ; 5 uses
  %.sroa.4.3.i.i = zext i32 %i.gp to i64
  %i.hl = load i64, ptr %i.e, align 8, !tbaa !375
  %i.hm = load i64, ptr %i.b, align 8, !tbaa !364
  %i.hn = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.hm, i64 noundef %i.hg, i64 noundef 1)
          to label %.noexc107 unwind label %bb.bt ; 2 uses

.noexc107:                                        ; preds = %.loopexit.i
  %i.ho = extractvalue { i8, i64 } %i.hn, 0
  %i.hp = trunc i8 %i.ho to i1
  br i1 %i.hp, label %bb.am, label %.noexc107._ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge

.noexc107._ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge: ; preds = %.noexc107
  %.pre354 = load i64, ptr %i.b, align 8, !tbaa !364
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i

bb.am:                                            ; preds = %.noexc107
  %i.hq = extractvalue { i8, i64 } %i.hn, 1       ; 9 uses
  %i.hr = icmp eq i64 %i.hq, 1
  br i1 %i.hr, label %bb.an, label %bb.ao, !prof !41

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.a, align 8, !tbaa !579
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.hs = icmp ugt i64 %i.hq, 1152921504606846975
  br i1 %i.hs, label %bb.ap, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjN7rocksdb11KeyLockInfoEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !41

bb.ap:                                            ; preds = %bb.ao
  %i.ht = icmp ugt i64 %i.hq, 2305843009213693951
  br i1 %i.ht, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc112 unwind label %.loopexit.split-lp183.loopexit.split-lp

.noexc112:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc113 unwind label %.loopexit.split-lp183.loopexit.split-lp

.noexc113:                                        ; preds = %bb.ar
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjN7rocksdb11KeyLockInfoEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.ao
  %i.hu = shl nuw nsw i64 %i.hq, 3                ; 2 uses
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #29
          to label %.noexc114 unwind label %.loopexit.split-lp183.loopexit.split-lp ; 2 uses

.noexc114:                                        ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjN7rocksdb11KeyLockInfoEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hv, i8 0, i64 %i.hu, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc114, %bb.an
  %.0.i.i110 = phi ptr [ %i.a, %bb.an ], [ %i.hv, %.noexc114 ] ; 5 uses
  %i.hw = load ptr, ptr %i.c, align 8, !tbaa !376 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !376
  %.not67.i = icmp eq ptr %i.hw, null
  br i1 %.not67.i, label %._crit_edge.thread.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i, %bb.ba
  %.072.i = phi i8 [ %.2.i, %bb.ba ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ]
  %.05271.i = phi ptr [ %.05668.i, %bb.ba ], [ null, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %.05370.i = phi i64 [ %i.ib, %bb.ba ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.05469.i = phi i64 [ %.155.i, %bb.ba ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %.05668.i = phi ptr [ %i.hx, %bb.ba ], [ %i.hw, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i ] ; 13 uses
  %i.hx = load ptr, ptr %.05668.i, align 8, !tbaa !64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.05668.i, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !166
  %i.ia = zext i32 %i.hz to i64
  %i.ib = urem i64 %i.ia, %i.hq                   ; 6 uses
  %.not62.i = icmp ne ptr %.05271.i, null
  %i.ic = icmp eq i64 %.05370.i, %i.ib
  %or.cond.i = and i1 %.not62.i, %i.ic
  br i1 %or.cond.i, label %bb.as, label %8

bb.as:                                            ; preds = %.lr.ph.i.a
  %i.id = load ptr, ptr %.05271.i, align 8, !tbaa !64
  store ptr %i.id, ptr %.05668.i, align 8, !tbaa !64
  store ptr %.05668.i, ptr %.05271.i, align 8, !tbaa !64
  br label %bb.ba

8:                                                ; preds = %.lr.ph.i.a
  %9 = trunc nuw i8 %.072.i to i1
  br i1 %9, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %8
  %i.ie = load ptr, ptr %.05271.i, align 8, !tbaa !64 ; 2 uses
  %.not63.i = icmp eq ptr %i.ie, null
  br i1 %.not63.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !166
  %i.ih = zext i32 %i.ig to i64
  %i.ii = urem i64 %i.ih, %i.hq                   ; 2 uses
  %.not64.i = icmp eq i64 %i.ii, %.05370.i
  br i1 %.not64.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i110, i64 %i.ii
  store ptr %.05271.i, ptr %i.ij, align 8, !tbaa !63
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %8
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i110, i64 %i.ib ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !63 ; 2 uses
  %.not65.i = icmp eq ptr %i.il, null
  br i1 %.not65.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.im = load ptr, ptr %i.c, align 8, !tbaa !376
  store ptr %i.im, ptr %.05668.i, align 8, !tbaa !64
  store ptr %.05668.i, ptr %i.c, align 8, !tbaa !376
  store ptr %i.c, ptr %i.ik, align 8, !tbaa !63
  %i.in = load ptr, ptr %.05668.i, align 8, !tbaa !64
  %.not66.i = icmp eq ptr %i.in, null
  br i1 %.not66.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i110, i64 %.05469.i
  store ptr %.05668.i, ptr %i.io, align 8, !tbaa !63
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.ip = load ptr, ptr %i.il, align 8, !tbaa !64
  store ptr %i.ip, ptr %.05668.i, align 8, !tbaa !64
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !63
  store ptr %.05668.i, ptr %i.iq, align 8, !tbaa !64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.as
  %.155.i = phi i64 [ %.05469.i, %bb.as ], [ %.05469.i, %bb.az ], [ %i.ib, %bb.ay ], [ %i.ib, %bb.ax ]
  %.2.i = phi i8 [ 1, %bb.as ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %.not.i111 = icmp eq ptr %i.hx, null
  br i1 %.not.i111, label %._crit_edge.i, label %.lr.ph.i.a, !llvm.loop !568

._crit_edge.i:                                    ; preds = %bb.ba
  %10 = trunc nuw i8 %.2.i to i1
  br i1 %10, label %bb.bb, label %._crit_edge.thread.i

bb.bb:                                            ; preds = %._crit_edge.i
  %i.ir = load ptr, ptr %.05668.i, align 8, !tbaa !64 ; 2 uses
  %.not60.i = icmp eq ptr %i.ir, null
  br i1 %.not60.i, label %._crit_edge.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i32, ptr %i.is, align 4, !tbaa !166
  %i.iu = zext i32 %i.it to i64
  %i.iv = urem i64 %i.iu, %i.hq                   ; 2 uses
  %.not61.i = icmp eq i64 %i.iv, %i.ib
  br i1 %.not61.i, label %._crit_edge.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i110, i64 %i.iv
  store ptr %.05668.i, ptr %i.iw, align 8, !tbaa !63
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bd, %bb.bc, %bb.bb, %._crit_edge.i, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit.i
  %i.ix = load ptr, ptr %0, align 8, !tbaa !363   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.a
  br i1 %i.iy, label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread.i
  %i.iz = load i64, ptr %i.b, align 8, !tbaa !364
  %i.ja = shl i64 %i.iz, 3
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #30
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit

_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit: ; preds = %._crit_edge.thread.i, %bb.be
  store i64 %i.hq, ptr %i.b, align 8, !tbaa !364
  store ptr %.0.i.i110, ptr %0, align 8, !tbaa !363
  br label %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i

.loopexit.split-lp183.loopexit.split-lp:          ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjN7rocksdb11KeyLockInfoEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %bb.ar, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  %i.jc = call ptr @__cxa_begin_catch(ptr %i.jb) #28 ; 0 uses
  store i64 %i.hl, ptr %i.e, align 8, !tbaa !375
  invoke void @__cxa_rethrow() #27
          to label %bb.bh unwind label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp183.loopexit.split-lp
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body108 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #31
  unreachable

bb.bh:                                            ; preds = %.loopexit.split-lp183.loopexit.split-lp
  unreachable

_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i: ; preds = %.noexc107._ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit
  %i.jg = phi i64 [ %.pre354, %.noexc107._ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i_crit_edge ], [ %i.hq, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE.exit ] ; 4 uses
  %i.jh = urem i64 %.sroa.4.3.i.i, %i.jg          ; 3 uses
  %.not.i104 = icmp eq ptr %.sroa.019.3.i.i, null
  br i1 %.not.i104, label %bb.bj, label %bb.bi, !prof !332

bb.bi:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.019.3.i.i, i64 8
  %i.jj = load i32, ptr %i.go, align 8, !tbaa !166 ; 2 uses
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !166
  %i.jl = icmp eq i32 %i.jj, %i.jk
  br i1 %i.jl, label %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i, label %bb.bj

_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i: ; preds = %bb.bi
  %i.jm = load ptr, ptr %.sroa.019.3.i.i, align 8, !tbaa !64
  store ptr %i.jm, ptr %i.gn, align 8, !tbaa !64
  store ptr %i.gn, ptr %.sroa.019.3.i.i, align 8, !tbaa !64
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi, %_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit.i
  %i.jn = load ptr, ptr %0, align 8, !tbaa !363   ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jh ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !63 ; 3 uses
  %.not.i.i105 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i105, label %.loopexit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !64 ; 4 uses
  %i.jr = load i32, ptr %i.go, align 8, !tbaa !166 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !166
  %i.ju = icmp eq i32 %i.jr, %i.jt
  br i1 %i.ju, label %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i, label %.lr.ph.i.i

bb.bl:                                            ; preds = %bb.bm
  %i.jv = icmp eq i32 %i.jr, %i.jy
  br i1 %i.jv, label %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i, label %.lr.ph.i.i, !llvm.loop !569

.lr.ph.i.i:                                       ; preds = %bb.bk, %bb.bl
  %.020.i.i = phi ptr [ %i.jw, %bb.bl ], [ %i.jq, %bb.bk ] ; 2 uses
  %i.jw = load ptr, ptr %.020.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.jw, null
  br i1 %.not18.i.i, label %.loopexit.i106, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !166 ; 2 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = urem i64 %i.jz, %i.jg
  %.not19.i.i = icmp eq i64 %i.ka, %i.jh
  br i1 %.not19.i.i, label %bb.bl, label %..loopexit_crit_edge21.i.i, !llvm.loop !569

..loopexit_crit_edge21.i.i:                       ; preds = %bb.bm
  br label %.loopexit.i106, !llvm.loop !569

_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i: ; preds = %bb.bl, %bb.bk
  %i.kb = phi ptr [ %i.jq, %bb.bk ], [ %i.jw, %bb.bl ]
  %i.kc = phi ptr [ %i.jp, %bb.bk ], [ %.020.i.i, %bb.bl ] ; 2 uses
  store ptr %i.kb, ptr %i.gn, align 8, !tbaa !64
  store ptr %i.gn, ptr %i.kc, align 8, !tbaa !64
  %i.kd = icmp eq ptr %i.kc, %.sroa.019.3.i.i
  br i1 %i.kd, label %bb.bn, label %bb.bu, !prof !580

bb.bn:                                            ; preds = %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i, %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i
  %i.ke = phi i32 [ %i.jj, %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41.i ], [ %i.jr, %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i ]
  %i.kf = load ptr, ptr %i.gn, align 8, !tbaa !64 ; 2 uses
  %.not36.i = icmp eq ptr %i.kf, null
  br i1 %.not36.i, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !166 ; 2 uses
  %i.ki = icmp eq i32 %i.ke, %i.kh
  br i1 %i.ki, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kj = zext i32 %i.kh to i64
  %i.kk = urem i64 %i.kj, %i.jg                   ; 2 uses
  %.not37.i = icmp eq i64 %i.kk, %i.jh
  br i1 %.not37.i, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kl = load ptr, ptr %0, align 8, !tbaa !363
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kk
  store ptr %i.gn, ptr %i.km, align 8, !tbaa !63
  br label %bb.bu

.loopexit.i106:                                   ; preds = %.lr.ph.i.i, %..loopexit_crit_edge21.i.i
  store ptr %i.jq, ptr %i.gn, align 8, !tbaa !64
  %i.kn = load ptr, ptr %i.jo, align 8, !tbaa !63
  store ptr %i.gn, ptr %i.kn, align 8, !tbaa !64
  br label %bb.bu

.loopexit.thread.i:                               ; preds = %bb.bj
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !376 ; 3 uses
  store ptr %i.ko, ptr %i.gn, align 8, !tbaa !64
  store ptr %i.gn, ptr %i.c, align 8, !tbaa !376
  %.not11.i.i = icmp eq ptr %i.ko, null
  br i1 %.not11.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.loopexit.thread.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !166
  %i.kr = zext i32 %i.kq to i64
  %i.ks = urem i64 %i.kr, %i.jg
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.ks
  store ptr %i.gn, ptr %i.kt, align 8, !tbaa !63
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit.thread.i
  store ptr %i.c, ptr %i.jo, align 8, !tbaa !63
  br label %bb.bu

bb.bt:                                            ; preds = %.loopexit.i
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.body108:                                         ; preds = %bb.bf, %bb.bt
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.ku, %bb.bt ], [ %i.jd, %bb.bf ]
  call void @_ZNSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body102

bb.bu:                                            ; preds = %bb.bs, %.loopexit.i106, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %_ZNKSt10_HashtableIjSt4pairIKjN7rocksdb11KeyLockInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.i
  %i.kv = load i64, ptr %i.bb, align 8, !tbaa !578
  %i.kw = add i64 %i.kv, 1
  store i64 %i.kw, ptr %i.bb, align 8, !tbaa !578
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.kx = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ky = load ptr, ptr %i.ay, align 8, !tbaa !279
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.bv, %bb.bu
  %i.lc = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.au
  br i1 %i.ld, label %_ZNSt4pairIKjN7rocksdb11KeyLockInfoEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.le = load i64, ptr %i.au, align 8, !tbaa !45
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #30
  br label %_ZNSt4pairIKjN7rocksdb11KeyLockInfoEED2Ev.exit

_ZNSt4pairIKjN7rocksdb11KeyLockInfoEED2Ev.exit:   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.lg = load ptr, ptr %i.ap, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt4pairIKjN7rocksdb11KeyLockInfoEED2Ev.exit
  %i.lh = load ptr, ptr %i.as, align 8, !tbaa !279
end_hunk_0
