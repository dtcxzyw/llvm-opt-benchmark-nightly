inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZN6duckdb19RemoveUnusedColumns13VisitOperatorERNS_15LogicalOperatorE:bb.a
  %.06.i.i.i.i = phi ptr [ %i.adp, %.lr.ph.i.i.i.i477 ], [ %i.ado, %bb.ir ] ; 2 uses
  %i.adp = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #34
  %.not.i.i.i.i478 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i.i478, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i477, !llvm.loop !1956

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i477, %bb.ir
  %i.adq = load ptr, ptr %36, align 8, !tbaa !1952
  %i.adr = load i64, ptr %i.to, align 8, !tbaa !1951
  %i.ads = shl i64 %i.adr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.adq, i8 0, i64 %i.ads, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false)
  %i.adt = load ptr, ptr %36, align 8, !tbaa !1952 ; 2 uses
  %i.adu = icmp eq ptr %i.adt, %i.tn
  br i1 %i.adu, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.is

bb.is:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.adt) #34
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @_ZN6duckdb19RemoveUnusedColumnsD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %35) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br label %.loopexit630

bb.it:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ii, %bb.iq, %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.fi
  %.pn234 = phi { ptr, i32 } [ %i.ur, %bb.fi ], [ %.pn226.pn.pn.pn.pn.pn, %bb.ii ], [ %.pn218, %bb.iq ], [ %.pn216604, %bb.fm ], [ %i.uu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.uu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %36) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.fg
  %.pn234.pn = phi { ptr, i32 } [ %.pn234, %bb.it ], [ %i.uo, %bb.fg ]
  call void @_ZN6duckdb19RemoveUnusedColumnsD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %35) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br label %bb.km

bb.iv:                                            ; preds = %bb.a
  %i.adv = tail call noundef nonnull align 8 dereferenceable(177) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalCTERefEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #33
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !2495, !nonnull !61, !align !186
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 112
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !2496 ; 2 uses
  store ptr %i.adz, ptr %46, align 8
  %.not617 = icmp eq ptr %i.adz, null
  br i1 %.not617, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.aea, align 8, !tbaa !2443
  br label %bb.jm

bb.ix:                                            ; preds = %bb.iv
  call void @_ZNK6duckdb12optional_ptrISt13unordered_mapImNS_19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %i.aeb = load ptr, ptr %46, align 8, !tbaa !2546 ; 6 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adv, i64 136 ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !2548
  %.not.not.i.i479 = icmp eq i64 %i.aee, 0
  br i1 %.not.not.i.i479, label %bb.iy, label %bb.jb

bb.iy:                                            ; preds = %bb.ix
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aeg = load i64, ptr %i.aec, align 8
  br label %bb.iz

bb.iz:                                            ; preds = %bb.ja, %bb.iy
  %.sroa.06.0.in.i.i487 = phi ptr [ %i.aef, %bb.iy ], [ %.sroa.06.0.i.i488, %bb.ja ]
  %.sroa.06.0.i.i488 = load ptr, ptr %.sroa.06.0.in.i.i487, align 8, !tbaa !168 ; 4 uses
  %.not.i.i489 = icmp eq ptr %.sroa.06.0.i.i488, null
  br i1 %.not.i.i489, label %.loopexit655, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i488, i64 8
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !66
  %i.aej = icmp eq i64 %i.aeg, %i.aei
  br i1 %i.aej, label %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %bb.iz, !llvm.loop !2549

bb.jb:                                            ; preds = %bb.ix
  %i.aek = load i64, ptr %i.aec, align 8, !tbaa !66 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aem = load i64, ptr %i.ael, align 8, !tbaa !2502 ; 2 uses
  %i.aen = urem i64 %i.aek, %i.aem                ; 2 uses
  %i.aeo = load ptr, ptr %i.aeb, align 8, !tbaa !2500
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %i.aen
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i480 = icmp eq ptr %i.aeq, null
  br i1 %.not.i.i.i.i480, label %.loopexit655, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !168 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !66
  %i.aeu = icmp eq i64 %i.aek, %i.aet
  br i1 %i.aeu, label %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i481

bb.jd:                                            ; preds = %bb.je
  %i.aev = icmp eq i64 %i.aek, %i.aey
  br i1 %i.aev, label %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i481, !llvm.loop !2550

.lr.ph.i.i.i.i481:                                ; preds = %bb.jc, %bb.jd
  %.020.i.i.i.i482 = phi ptr [ %i.aew, %bb.jd ], [ %i.aer, %bb.jc ]
  %i.aew = load ptr, ptr %.020.i.i.i.i482, align 8, !tbaa !168 ; 4 uses
  %.not18.i.i.i.i483 = icmp eq ptr %i.aew, null
  br i1 %.not18.i.i.i.i483, label %.loopexit655, label %bb.je

bb.je:                                            ; preds = %.lr.ph.i.i.i.i481
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !66 ; 2 uses
  %i.aez = urem i64 %i.aey, %i.aem
  %.not19.i.i.i.i484 = icmp eq i64 %i.aez, %i.aen
  br i1 %.not19.i.i.i.i484, label %bb.jd, label %..loopexit_crit_edge21.i.i.i.i485, !llvm.loop !2550

..loopexit_crit_edge21.i.i.i.i485:                ; preds = %bb.je
  br label %.loopexit655, !llvm.loop !2550

.loopexit655:                                     ; preds = %.lr.ph.i.i.i.i481, %bb.iz, %..loopexit_crit_edge21.i.i.i.i485, %bb.jb
  %i.afa = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %48)
          to label %bb.jf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492.thread

bb.jf:                                            ; preds = %.loopexit655
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.afa, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.jg unwind label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  invoke void @__cxa_throw(ptr nonnull %i.afa, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.kn unwind label %bb.jh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492.thread: ; preds = %.loopexit655
  %i.afb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #33
  br label %bb.ji

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %.0211 = phi i1 [ false, %bb.jg ], [ true, %bb.jf ] ; 2 uses
  %i.afc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.afd = load ptr, ptr %47, align 8, !tbaa !124 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.aff = icmp eq ptr %i.afd, %i.afe
  br i1 %i.aff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490: ; preds = %bb.jh
  call void @_ZdlPv(ptr noundef %i.afd) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #33
  br i1 %.0211, label %bb.ji, label %bb.jj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492: ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #33
  br i1 %.0211, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  %.pn610 = phi { ptr, i32 } [ %i.afb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492.thread ], [ %i.afc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ], [ %i.afc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490 ]
  call void @__cxa_free_exception(ptr %i.afa) #33
  br label %bb.jj

bb.jj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490, %bb.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  %.pn609 = phi { ptr, i32 } [ %.pn610, %bb.ji ], [ %i.afc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ], [ %i.afc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  br label %bb.km

_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit: ; preds = %bb.jd, %bb.ja, %bb.jc
  %.sroa.06.1.i.i486 = phi ptr [ %.sroa.06.0.i.i488, %bb.ja ], [ %i.aer, %bb.jc ], [ %i.aew, %bb.jd ] ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i486, i64 16
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i486, i64 128 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.adv, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.afh, ptr %4, align 8, !tbaa !1960
  %i.afj = call { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.afh, ptr noundef nonnull align 8 dereferenceable(8) %i.afi, ptr noundef nonnull align 8 dereferenceable(8) %i.afi, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0531.0684 = load ptr, ptr %i.afk, align 8, !tbaa !168 ; 2 uses
  %.not618685 = icmp eq ptr %.sroa.0531.0684, null
  br i1 %.not618685, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.jl, %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit
  %i.afl = getelementptr inbounds nuw i8, ptr %i.adv, i64 144
  %i.afm = getelementptr inbounds nuw i8, ptr %i.adv, i64 152
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !75
  %i.afo = load ptr, ptr %i.afl, align 8, !tbaa !74
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = ptrtoint ptr %i.afo to i64
  %i.afr = sub i64 %i.afp, %i.afq
  %i.afs = sdiv exact i64 %i.afr, 24
  %i.aft = call noundef nonnull align 8 dereferenceable(169) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb19MaterializedCTEInfoEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.aeb, ptr noundef nonnull align 8 dereferenceable(8) %i.aec)
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 24
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !2303
  %i.afw = icmp eq i64 %i.afs, %i.afv
  %i.afx = call noundef nonnull align 8 dereferenceable(169) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb19MaterializedCTEInfoEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.aeb, ptr noundef nonnull align 8 dereferenceable(8) %i.aec)
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 168 ; 2 uses
  %i.afz = load i8, ptr %i.afy, align 8, !tbaa !2503, !range !60, !noundef !61
  %50 = zext i1 %i.afw to i8
  %51 = or i8 %i.afz, %50
  store i8 %51, ptr %i.afy, align 8, !tbaa !2503
  br label %bb.jm

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, %bb.jl
  %.sroa.0531.0686 = phi ptr [ %.sroa.0531.0, %bb.jl ], [ %.sroa.0531.0684, %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit ] ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.0531.0686, i64 8 ; 2 uses
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !2551
  %i.agc = load i64, ptr %i.afi, align 8, !tbaa !642
  %i.agd = icmp eq i64 %i.agb, %i.agc
  br i1 %i.agd, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.lr.ph
  %i.age = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS5_EEES2_INS7_14_Node_iteratorIS5_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.afg, ptr noundef nonnull align 8 dereferenceable(152) %i.aga) ; 0 uses
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %.lr.ph
  %.sroa.0531.0 = load ptr, ptr %.sroa.0531.0686, align 8, !tbaa !168 ; 2 uses
  %.not618 = icmp eq ptr %.sroa.0531.0, null
  br i1 %.not618, label %._crit_edge, label %.lr.ph

bb.jm:                                            ; preds = %._crit_edge, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  br label %.loopexit

bb.jn:                                            ; preds = %bb.a, %bb.a
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.agf, align 8, !tbaa !2443
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, %bb.x, %bb.er, %bb.eq, %bb.w, %bb.a, %bb.v, %bb.jn, %bb.jm, %_ZNSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE6insertEOS8_.exit
  call void @_ZN6duckdb22LogicalOperatorVisitor24VisitOperatorExpressionsERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(97) %1)
  call void @_ZN6duckdb22LogicalOperatorVisitor21VisitOperatorChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(97) %1)
  %i.agg = load i8, ptr %i.e, align 8, !tbaa !15
  switch i8 %i.agg, label %.loopexit630 [
    i8 56, label %bb.jo
    i8 51, label %bb.jo
    i8 52, label %bb.jo
  ]

bb.jo:                                            ; preds = %.loopexit, %.loopexit, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !197 ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !197 ; 2 uses
  %.not626735 = icmp eq ptr %i.agi, %i.agk
  %i.agl = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  br i1 %.not626735, label %._crit_edge739.thread, label %.lr.ph738

._crit_edge739.thread:                            ; preds = %bb.jo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agh, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

.lr.ph738:                                        ; preds = %bb.jo
  %i.agm = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  br label %bb.jr

._crit_edge739:                                   ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit
  %.pre782 = load ptr, ptr %i.agh, align 8, !tbaa !1344 ; 4 uses
  %.pre783 = load ptr, ptr %i.agj, align 8, !tbaa !1343 ; 2 uses
  %.pre787 = load ptr, ptr %i.agm, align 16, !tbaa !2086
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ago = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.agp = load <2 x ptr>, ptr %49, align 16, !tbaa !197
  store <2 x ptr> %i.agp, ptr %i.agh, align 8, !tbaa !197
  store ptr %.pre787, ptr %i.agn, align 8, !tbaa !2086
  %.not4.i.i.i.i.i.i = icmp eq ptr %.pre782, %.pre783
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge739, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.agz, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i ], [ %.pre782, %._crit_edge739 ] ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !7
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8
  call void %i.agu(ptr noundef nonnull align 8 dereferenceable(88) %i.agr) #33, !inline_history !2564
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.agv = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.agv, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !7
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8
  call void %i.agy(ptr noundef nonnull align 8 dereferenceable(88) %i.agv) #33, !inline_history !2564
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i493 = icmp eq ptr %i.agz, %.pre783
  br i1 %.not.i.i.i.i.i.i493, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2565

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i, %._crit_edge739.thread, %._crit_edge739
  %i.aha = phi ptr [ %i.agl, %._crit_edge739.thread ], [ %i.ago, %._crit_edge739 ], [ %i.ago, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i ]
  %i.ahb = phi ptr [ %i.agi, %._crit_edge739.thread ], [ %.pre782, %._crit_edge739 ], [ %.pre782, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit, label %bb.jp

bb.jp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ahb) #34
  br label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.jp
  %i.ahc = load ptr, ptr %49, align 16, !tbaa !1344 ; 3 uses
  %i.ahd = load ptr, ptr %i.aha, align 8, !tbaa !1343 ; 2 uses
  %.not4.i.i.i494 = icmp eq ptr %i.ahc, %i.ahd
  br i1 %.not4.i.i.i494, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i495

.lr.ph.i.i.i495:                                  ; preds = %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i
  %.05.i.i.i496 = phi ptr [ %i.ahn, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i ], [ %i.ahc, %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.05.i.i.i496, i64 8
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i.i497 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i.i.i.i.i497, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i498

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i498: ; preds = %.lr.ph.i.i.i495
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !7
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8
  call void %i.ahi(ptr noundef nonnull align 8 dereferenceable(88) %i.ahf) #33, !inline_history !2566
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i498, %.lr.ph.i.i.i495
  %i.ahj = load ptr, ptr %.05.i.i.i496, align 8, !tbaa !199 ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.ahj, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !7
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8
  call void %i.ahm(ptr noundef nonnull align 8 dereferenceable(88) %i.ahj) #33, !inline_history !2566
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %.05.i.i.i496, i64 24 ; 2 uses
  %.not.i.i.i499 = icmp eq ptr %i.ahn, %i.ahd
  br i1 %.not.i.i.i499, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i495, !llvm.loop !2565

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i
  %.pr.i500 = load ptr, ptr %49, align 16, !tbaa !1344
  br label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit
  %i.aho = phi ptr [ %.pr.i500, %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ahc, %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i501 = icmp eq ptr %i.aho, null
  br i1 %.not.i.i1.i501, label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit, label %bb.jq

bb.jq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aho) #34
  br label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #33
  br label %.loopexit630

bb.jr:                                            ; preds = %.lr.ph738, %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit
  %.sroa.0527.0736 = phi ptr [ %i.agi, %.lr.ph738 ], [ %i.ajr, %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit ] ; 9 uses
  %i.ahp = load ptr, ptr %49, align 16, !tbaa !197 ; 2 uses
  %i.ahq = load ptr, ptr %i.agl, align 8, !tbaa !197 ; 3 uses
  %.not627730 = icmp eq ptr %i.ahp, %i.ahq
  br i1 %.not627730, label %._crit_edge734, label %.lr.ph733

.lr.ph733:                                        ; preds = %bb.jr
  %i.ahr = getelementptr inbounds nuw i8, ptr %.sroa.0527.0736, i64 16
  %i.ahs = getelementptr inbounds nuw i8, ptr %.sroa.0527.0736, i64 8
  br label %bb.js

bb.js:                                            ; preds = %.lr.ph733, %bb.ki
  %.sroa.0523.0731 = phi ptr [ %i.ahp, %.lr.ph733 ], [ %i.ajf, %bb.ki ] ; 4 uses
  %i.aht = load i8, ptr %i.ahr, align 8, !tbaa !201
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.0523.0731, i64 16
  %i.ahv = load i8, ptr %i.ahu, align 8, !tbaa !201
  %i.ahw = icmp eq i8 %i.aht, %i.ahv
  br i1 %i.ahw, label %bb.jt, label %bb.ki

bb.jt:                                            ; preds = %bb.js
  %i.ahx = load ptr, ptr %.sroa.0527.0736, align 8, !tbaa !199 ; 3 uses
  %.not.i502 = icmp eq ptr %i.ahx, null
  br i1 %.not.i502, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !117

.noexc.i:                                         ; preds = %bb.jt
  %i.ahy = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ahz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ahz, ptr %3, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 49, ptr %i.b, align 8, !tbaa !66
  %i.aia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc518 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

end_hunk_0
