Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/sequence_file_reader?download=true
inline.NumInlined: 641
inline.NumDeleted: 382
begin_hunk_0_@_ZN7rocksdb20SequentialFileReader4ReadEmPNS_5SliceEPcNS_3Env10IOPriorityE:bb.a
_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i104: ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.gi) #20
  %.pre = load ptr, ptr %i.fh, align 8, !tbaa !53
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit105

_ZN7rocksdb8IOStatusaSEOS0_.exit105:              ; preds = %bb.az, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i104
  %i.gj = phi ptr [ %.pre157, %bb.az ], [ %.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i104 ] ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i106, label %_ZN7rocksdb6StatusD2Ev.exit108, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i107

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i107: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit105
  call void @_ZdaPv(ptr noundef nonnull %i.gj) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit108

_ZN7rocksdb6StatusD2Ev.exit108:                   ; preds = %bb.ba, %_ZN7rocksdb8IOStatusaSEOS0_.exit105, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.gk = load ptr, ptr %i.eu, align 8, !tbaa !83
  %i.gl = load ptr, ptr %i.ev, align 8, !tbaa !83
  %.not137 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not137, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.gm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18
  store i64 %i.gm, ptr %15, align 8
  %i.gn = load i64, ptr %i.ex, align 8, !tbaa !146
  %i.go = atomicrmw add ptr %i.fi, i64 %i.gn seq_cst, align 8
  %i.gp = load i64, ptr %i.ex, align 8, !tbaa !146
  invoke void @_ZNK7rocksdb20SequentialFileReader22NotifyOnFileReadFinishEmmRKSt4pairINSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEENS3_INS4_12steady_clockES9_EEERKSC_RKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(169) %1, i64 noundef %i.go, i64 noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bf

bb.bd:                                            ; preds = %_ZNK7rocksdb19FSSequentialFilePtrptEv.exit101
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bg

bb.bf:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit108, %bb.bc
  %i.gs = load i64, ptr %i.ex, align 8, !tbaa !146 ; 2 uses
  %i.gt = add i64 %i.gs, %.048152                 ; 3 uses
  %i.gu = load i8, ptr %0, align 8, !tbaa !20
  %i.gv = icmp eq i8 %i.gu, 0
  %i.gw = icmp uge i64 %i.gs, %.0
  %or.cond135.not215 = select i1 %i.gv, i1 %i.gw, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gx = icmp ult i64 %i.gt, %2
  %or.cond212 = select i1 %or.cond135.not215, i1 %i.gx, i1 false
  br i1 %or.cond212, label %bb.aq, label %.loopexit142

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.bd ], [ %i.gr, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bm

.loopexit142:                                     ; preds = %bb.bf, %bb.ap
  %.1 = phi i64 [ 0, %bb.ap ], [ %i.gt, %bb.bf ]
  store ptr %4, ptr %3, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !147
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit142, %_ZN7rocksdb13AlignedBufferD2Ev.exit
  %.not.i109 = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null
  br i1 %.not.i109, label %_ZTWN7rocksdb15iostats_contextE.exit, label %_ZTWN7rocksdb15iostats_contextE.exit.thread

_ZTWN7rocksdb15iostats_contextE.exit:             ; preds = %bb.bh
  %i.gy = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE) ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 216
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !157, !range !115, !noundef !116
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.bk, label %bb.bi

_ZTWN7rocksdb15iostats_contextE.exit.thread:      ; preds = %bb.bh
  call void @_ZTHN7rocksdb15iostats_contextE()
  %i.hc = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE) ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 216
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !157, !range !115, !noundef !116
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %_ZTWN7rocksdb15iostats_contextE.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !146
  br label %_ZTWN7rocksdb15iostats_contextE.exit111

bb.bj:                                            ; preds = %_ZTWN7rocksdb15iostats_contextE.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !146
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit111

_ZTWN7rocksdb15iostats_contextE.exit111:          ; preds = %bb.bi, %bb.bj
  %i.hk = phi i64 [ %i.hh, %bb.bi ], [ %i.hj, %bb.bj ]
  %i.hl = phi ptr [ %i.gy, %bb.bi ], [ %i.hc, %bb.bj ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !160
  %i.ho = add i64 %i.hn, %i.hk
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !160
  br label %bb.bk

bb.bk:                                            ; preds = %_ZTWN7rocksdb15iostats_contextE.exit.thread, %_ZTWN7rocksdb15iostats_contextE.exit111, %_ZTWN7rocksdb15iostats_contextE.exit
  %i.hp = load ptr, ptr %i.k, align 8, !tbaa !161 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.hq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.hp, %bb.bk ] ; 6 uses
  %i.hq = load ptr, ptr %.06.i.i.i, align 8, !tbaa !162 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !56 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !44
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !56 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !44
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #20
  %.not.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !163

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.bk
  %i.id = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.ie = load i64, ptr %i.j, align 8, !tbaa !111
  %i.if = shl i64 %i.ie, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.id, i8 0, i64 %i.if, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.ig = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.i
  br i1 %i.ih, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.ii = load i64, ptr %i.j, align 8, !tbaa !111
  %i.ij = shl i64 %i.ii, 3
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #20
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.bm:                                            ; preds = %bb.at, %bb.bg, %bb.n, %bb.an, %bb.m
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.m ], [ %i.cd, %bb.n ], [ %.pn82, %bb.an ], [ %.pn, %bb.bg ], [ %i.fp, %bb.at ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ik = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i112, label %_ZN7rocksdb6StatusD2Ev.exit114, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i113

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i113: ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.ik) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit114

_ZN7rocksdb6StatusD2Ev.exit114:                   ; preds = %bb.bm, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i113
  resume { ptr, i32 } %.pn82.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i64 %4, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = select i1 %.not, i64 %i.c, i64 %4        ; 3 uses
  %i.e = icmp ult i64 %1, %i.d
  %or.cond = select i1 %2, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !130    ; 3 uses
  %i.g = add i64 %1, -1
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = urem i64 %i.h, %i.f
  %i.j = sub nuw i64 %i.h, %i.i                   ; 2 uses
  %i.k = add i64 %i.j, %i.f
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #19 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %6 = load i64, ptr %0, align 8, !tbaa !130      ; 2 uses
  %i.n = add i64 %6, -1
  %i.o = add i64 %i.n, %i.m
  %i.p = sub i64 0, %6
  %i.q = and i64 %i.o, %i.p
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %2, label %bb.c, label %_ZNSt10unique_ptrIvSt8functionIFvPvEEEC2IS3_vEES1_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS7_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.d, i1 false)
  br label %_ZNSt10unique_ptrIvSt8functionIFvPvEEEC2IS3_vEES1_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS7_E4typeE.exit

_ZNSt10unique_ptrIvSt8functionIFvPvEEEC2IS3_vEES1_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS7_E4typeE.exit: ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %i.v, align 8, !tbaa !148
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.j, ptr %i.w, align 8, !tbaa !143
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 2 uses
  store ptr %i.l, ptr %i.y, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEEC2IS3_vEES1_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS7_E4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.z, ptr %i.a, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !154
  %.not.i.i.i.i17 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #21
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !155
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i unwind label %bb.g, !inline_history !156

_ZNKSt8functionIFvPvEEclES0_.exit.i.i:            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #22
  unreachable

_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i:            ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i.i, %_ZNSt10unique_ptrIvSt8functionIFvPvEEEC2IS3_vEES1_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS7_E4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 16, i1 false), !tbaa.struct !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !88
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !88 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvPvEZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlS0_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.ah, align 8, !tbaa !88
  store <2 x ptr> %i.aj, ptr %i.ag, align 8, !tbaa !88
  store ptr @_ZNSt17_Function_handlerIFvPvEZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlS0_E_E9_M_invokeERKSt9_Any_dataOS0_, ptr %i.ai, align 8, !tbaa !88
  %.not.i.i.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i18, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb20SequentialFileReader22NotifyOnFileReadFinishEmmRKSt4pairINSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEENS3_INS4_12steady_clockES9_EEERKSC_RKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(169) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %7 = alloca %"struct.rocksdb::FileOperationInfo", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 0, ptr %7, align 8, !tbaa !165
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !172
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %4, align 8, !tbaa !147
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.d, align 8, !tbaa !147
  %i.e = sub nsw i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i2.i.i
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %3, ptr %i.f, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.h = load <4 x i8>, ptr %5, align 8, !tbaa !44
  store <4 x i8> %i.h, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = load i8, ptr %i.j, align 4, !tbaa !152, !range !115, !noundef !116
  store i8 %i.k, ptr %i.i, align 4, !tbaa !152
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 61
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.n = load i8, ptr %i.m, align 1, !tbaa !153
  store i8 %i.n, ptr %i.l, align 1, !tbaa !153
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull %i.q)
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !53
  br label %_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit

_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit: ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %.pre.i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %1, ptr %i.s, align 8, !tbaa !175
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %2, ptr %i.t, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit
  %i.z = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.r, %_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit ] ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10, label %_ZN7rocksdb17FileOperationInfoD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i11

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i11: ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.z) #20
  br label %_ZN7rocksdb17FileOperationInfoD2Ev.exit

_ZN7rocksdb17FileOperationInfoD2Ev.exit:          ; preds = %._crit_edge, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

.lr.ph:                                           ; preds = %_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit, %bb.c
  %.sroa.015.018 = phi ptr [ %i.ae, %bb.c ], [ %i.v, %_ZN7rocksdb17FileOperationInfoC2ENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt4pairINSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1000000000EEEEEENSC_INSD_12steady_clockESI_EEERKSL_RKNS_6StatusENS_11TemperatureE.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.015.018, align 8, !tbaa !84 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.015.018, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.x
  br i1 %i.af, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !53  ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i12, label %_ZN7rocksdb17FileOperationInfoD2Ev.exit14, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i13

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i13: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #20
  br label %_ZN7rocksdb17FileOperationInfoD2Ev.exit14

_ZN7rocksdb17FileOperationInfoD2Ev.exit14:        ; preds = %bb.d, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %i.ag
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13AlignedBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
