Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_transaction?download=true
inline.NumInlined: 4259
inline.NumDeleted: 2180
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb22DuckTransactionManager17CommitTransactionERNS_13ClientContextERNS_11TransactionE:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !432 ; 2 uses
  %.not5.i.i.i.i.i204 = icmp eq ptr %i.ic, null
  br i1 %.not5.i.i.i.i.i204, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i212, label %.lr.ph.i.i.i.i.i205

.lr.ph.i.i.i.i.i205:                              ; preds = %bb.bx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i210
  %.06.i.i.i.i.i206 = phi ptr [ %i.id, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i210 ], [ %i.ic, %bb.bx ] ; 6 uses
  %i.id = load ptr, ptr %.06.i.i.i.i.i206, align 8, !tbaa !433 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i206, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i206, i64 40
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !238 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i206, i64 56
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i207: ; preds = %.lr.ph.i.i.i.i.i205
  call void @_ZdlPv(ptr noundef %i.ig) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i208: ; preds = %.lr.ph.i.i.i.i.i205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i207
  %i.ij = load ptr, ptr %i.ie, align 8, !tbaa !238 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i206, i64 24
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i208
  call void @_ZdlPv(ptr noundef %i.ij) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i210

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i209
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i206) #33
  %.not.i.i.i.i.i211 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i211, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i212, label %.lr.ph.i.i.i.i.i205, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i212: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i210, %bb.bx
  %i.im = load ptr, ptr %i.ia, align 8, !tbaa !434
  %i.in = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.io = load i64, ptr %i.in, align 8, !tbaa !435
  %i.ip = shl i64 %i.io, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.im, i8 0, i64 %i.ip, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false)
  %i.iq = load ptr, ptr %i.ia, align 8, !tbaa !434 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %21, i64 120
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i213, label %bb.by

bb.by:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i212
  call void @_ZdlPv(ptr noundef %i.iq) #33
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i213

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i213: ; preds = %bb.by, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i212
  %i.it = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !238 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i213
  call void @_ZdlPv(ptr noundef %i.iu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !238 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZN6duckdb9ErrorDataD2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215
  call void @_ZdlPv(ptr noundef %i.iy) #33
  br label %_ZN6duckdb9ErrorDataD2Ev.exit221

_ZN6duckdb9ErrorDataD2Ev.exit221:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.cl

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %bb.bw
  %.pn119278 = phi { ptr, i32 } [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn119279, %bb.bw ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ]
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %21) #31
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bu
  %.pn119.pn = phi { ptr, i32 } [ %.pn119278, %bb.bz ], [ %i.hu, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ay
  %i.jb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6Logger3GetERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %2)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cc:                                            ; preds = %bb.cb
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !242
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull @.str.20, i8 noundef zeroext 20)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.jf, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.jg = load ptr, ptr %i.d, align 8, !tbaa !308, !nonnull !225, !align !297
  invoke void @_ZN6duckdb18TransactionLogType19ConstructLogMessageB5cxx11ERKNS_16AttachedDatabaseEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(408) %i.jg, ptr noundef nonnull @.str.23, i64 noundef %i.ei)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN6duckdb6Logger8WriteLogEPKcNS_8LogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull @.str.20, i8 noundef zeroext 20, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.jh = load ptr, ptr %24, align 8, !tbaa !238  ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.jh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %bb.cj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %.thread354, %bb.az, %bb.cl, %bb.cc, %bb.cb
  %lpad.loopexit.split-lp355 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ch:                                            ; preds = %bb.ce
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.ci:                                            ; preds = %bb.cf
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %24, align 8, !tbaa !238  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.jm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %bb.ch
  %.pn100 = phi { ptr, i32 } [ %i.jk, %bb.ch ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %i.jl, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %.loopexit.split-lp

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %bb.cd
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 48
  store atomic i64 %i.ei, ptr %i.jp seq_cst, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.jr = load atomic i64, ptr %i.jq seq_cst, align 8
  %i.js = load i64, ptr @_ZN6duckdb20TRANSACTION_ID_STARTE, align 8, !tbaa !243
  %.not103 = icmp ult i64 %i.jr, %i.js
  br i1 %.not103, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !954
  %i.jv = add i64 %i.ju, 1                        ; 2 uses
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !954
  store atomic i64 %i.jv, ptr %i.jq seq_cst, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %_ZN6duckdb9ErrorDataD2Ev.exit221
  %i.jw = load ptr, ptr %1, align 8, !tbaa !242
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8
  invoke void %i.jy(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull align 8 dereferenceable(480) %3)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %i.jz = load i8, ptr %8, align 8, !tbaa !303, !range !224, !noundef !225
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kb = load ptr, ptr %6, align 8, !tbaa !413   ; 3 uses
  %.not293 = icmp eq ptr %i.kb, null
  br i1 %.not293, label %bb.co, label %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.cn
  store ptr null, ptr %6, align 8, !tbaa !413
  call void @_ZN6duckdb14StorageLockKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.kb) #31
  call void @_ZdlPv(ptr noundef nonnull %i.kb) #33
  br label %bb.co

bb.co:                                            ; preds = %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %bb.cn, %bb.cm
  %.2 = phi i8 [ %.163, %bb.cm ], [ 0, %_ZN6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EE5resetEPS1_.exit ], [ %.163, %bb.cn ]
  %i.kc = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !415, !range !224, !noundef !225
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.kf = load i8, ptr %i.ke, align 2, !range !224
  %i.kg = trunc nuw i8 %i.kf to i1
  %or.cond10 = select i1 %i.kd, i1 true, i1 %i.kg
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 11
  %i.ki = load i8, ptr %i.kh, align 1, !range !224
  %i.kj = trunc nuw i8 %i.ki to i1
  %i.kk = select i1 %or.cond10, i1 true, i1 %i.kj
  br i1 %i.kk, label %33, label %30

30:                                               ; preds = %bb.co
  %31 = load i8, ptr %0, align 8, !tbaa !439, !range !224, !noundef !225
  %32 = trunc nuw i8 %31 to i1
  br label %33

33:                                               ; preds = %30, %bb.co
  %34 = phi i1 [ true, %bb.co ], [ %32, %30 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @_ZN6duckdb22DuckTransactionManager17RemoveTransactionERNS_15DuckTransactionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.340") align 8 %25, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(480) %3, i1 noundef zeroext %34) #31
  %35 = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15DuckCleanupInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cp unwind label %bb.cu     ; 2 uses

bb.cp:                                            ; preds = %33
  %i.kl = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !165
  %i.kn = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !165
  %.not294 = icmp eq ptr %i.km, %i.ko
  br i1 %.not294, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.kq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.kp) #31 ; 2 uses
  %.not.i.i229 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i229, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.kq) #32
          to label %.noexc230 unwind label %bb.cv

.noexc230:                                        ; preds = %bb.cr
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.cq
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !445 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !446
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -8
  %.not.i.i231 = icmp eq ptr %i.ks, %i.kv
  br i1 %.not.i.i231, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.kw = load i64, ptr %25, align 8, !tbaa !428
  store i64 %i.kw, ptr %i.ks, align 8, !tbaa !428
  store ptr null, ptr %25, align 8, !tbaa !428
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kx, ptr %i.kr, align 8, !tbaa !445
  br label %_ZNSt5queueIN6duckdb10unique_ptrINS0_15DuckCleanupInfoESt14default_deleteIS2_ELb1EEESt5dequeIS5_SaIS5_EEE7emplaceIJS5_EEEvDpOT_.exit

bb.ct:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_ZNSt5dequeIN6duckdb10unique_ptrINS0_15DuckCleanupInfoESt14default_deleteIS2_ELb1EEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ky, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZNSt5queueIN6duckdb10unique_ptrINS0_15DuckCleanupInfoESt14default_deleteIS2_ELb1EEESt5dequeIS5_SaIS5_EEE7emplaceIJS5_EEEvDpOT_.exit unwind label %bb.cw

_ZNSt5queueIN6duckdb10unique_ptrINS0_15DuckCleanupInfoESt14default_deleteIS2_ELb1EEESt5dequeIS5_SaIS5_EEE7emplaceIJS5_EEEvDpOT_.exit: ; preds = %bb.cs, %bb.ct
  %i.kz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.kp) #31 ; 0 uses
  br label %bb.cx

bb.cu:                                            ; preds = %bb.db, %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit, %33
  %.sroa.9264.2 = phi i1 [ false, %bb.db ], [ false, %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit ], [ true, %33 ]
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.cv:                                            ; preds = %bb.cr
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.cw:                                            ; preds = %bb.ct
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.kp) #31 ; 0 uses
  br label %bb.dx

bb.cx:                                            ; preds = %_ZNSt5queueIN6duckdb10unique_ptrINS0_15DuckCleanupInfoESt14default_deleteIS2_ELb1EEESt5dequeIS5_SaIS5_EEE7emplaceIJS5_EEEvDpOT_.exit, %bb.cp
  %i.le = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #31 ; 0 uses
  %i.lf = trunc nuw i8 %.2 to i1                  ; 2 uses
  br i1 %i.lf, label %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lg = load ptr, ptr %9, align 8, !tbaa !291   ; 3 uses
  store ptr null, ptr %9, align 8, !tbaa !291
  %.not.i.i.i236 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i236, label %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit, label %_ZNKSt14default_deleteISt10lock_guardISt5mutexEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteISt10lock_guardISt5mutexEEclEPS2_.exit.i.i.i: ; preds = %bb.cy
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !296, !nonnull !225, !align !297
  %i.li = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.lh) #31 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.lg) #33
  br label %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit

_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit: ; preds = %_ZNKSt14default_deleteISt10lock_guardISt5mutexEEclEPS2_.exit.i.i.i, %bb.cy, %bb.cx
  invoke void @_ZN6duckdb22DuckTransactionManager19CleanupTransactionsEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.cz unwind label %bb.cu

bb.cz:                                            ; preds = %_ZN6duckdb10unique_ptrISt10lock_guardISt5mutexESt14default_deleteIS3_ELb1EE5resetEPS3_.exit
  %i.lj = load i8, ptr %8, align 8, !tbaa !303, !range !224, !noundef !225
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.da, label %bb.du

bb.da:                                            ; preds = %bb.cz
  %i.ll = load ptr, ptr %6, align 8, !tbaa !413
  %.not295 = icmp eq ptr %i.ll, null
  br i1 %.not295, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14StorageLockKeyESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.dc unwind label %bb.cu

bb.dc:                                            ; preds = %bb.db
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !957
  %.not112 = icmp eq i32 %i.lo, 1
  br i1 %.not112, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.lp = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.de unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  invoke void @__cxa_throw(ptr nonnull %i.lp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.eb unwind label %bb.dg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread: ; preds = %bb.dd
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0 = phi i1 [ false, %bb.df ], [ true, %bb.de ] ; 2 uses
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ls = load ptr, ptr %26, align 8, !tbaa !238  ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.dg
  call void @_ZdlPv(ptr noundef %i.ls) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br i1 %.0, label %bb.dh, label %bb.dx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br i1 %.0, label %bb.dh, label %bb.dx

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %.pn117282 = phi { ptr, i32 } [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ]
  call void @__cxa_free_exception(ptr %i.lp) #31
  br label %bb.dx

bb.di:                                            ; preds = %bb.dc
  %i.lv = load i64, ptr @_ZN6duckdb18MAX_TRANSACTION_IDE, align 8, !tbaa !243
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !307
  %i.ly = load ptr, ptr %9, align 8, !tbaa !291
  %i.lz = load ptr, ptr %i.d, align 8, !tbaa !308, !nonnull !225, !align !297
  %i.ma = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb16AttachedDatabase17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408) %i.lz)
          to label %bb.dj unwind label %bb.dt     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  store i32 1, ptr %28, align 8, !tbaa !422
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !424
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %i.lx, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !425
  %.sroa.9256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 %i.lv, ptr %.sroa.9256.0..sroa_idx, align 8, !tbaa !243
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %i.ly, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !291
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !242
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.md = load ptr, ptr %i.mc, align 8
  invoke void %i.md(ptr noundef nonnull align 8 dereferenceable(224) %i.ma, ptr nonnull %2, ptr noundef nonnull byval(%"struct.duckdb::CheckpointOptions") align 8 %28)
          to label %bb.du unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.me = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.mf = extractvalue { ptr, i32 } %i.me, 1
  %i.mg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.mh = icmp eq i32 %i.mf, %i.mg
  br i1 %i.mh, label %bb.dl, label %bb.dx

bb.dl:                                            ; preds = %bb.dk
  %i.mi = extractvalue { ptr, i32 } %i.me, 0
  %i.mj = call ptr @__cxa_begin_catch(ptr %i.mi) #31
  br i1 %i.lf, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.mj)
          to label %bb.dn unwind label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN6duckdb9ErrorData5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %29)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  br label %bb.ds

bb.dp:                                            ; preds = %bb.dm
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dn
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %29) #31
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn113 = phi { ptr, i32 } [ %i.ml, %bb.dq ], [ %i.mk, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  invoke void @__cxa_end_catch()
          to label %bb.dx unwind label %bb.ea

bb.ds:                                            ; preds = %bb.do, %bb.dl
  invoke void @__cxa_end_catch()
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %bb.di, %bb.ds
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.du:                                            ; preds = %bb.dj, %bb.ds, %bb.cz
  %i.mn = load ptr, ptr %25, align 8, !tbaa !428  ; 4 uses
  %.not.i240 = icmp eq ptr %i.mn, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6duckdb15DuckCleanupInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !264 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !265 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.mp, %i.mr
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15DuckTransactionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dv, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15DuckTransactionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.mw, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15DuckTransactionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.mp, %bb.dv ] ; 2 uses
  %i.ms = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15DuckTransactionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15DuckTransactionEEclEPS1_.exit.i.i.i.i.i.i.i.i
end_hunk_0
