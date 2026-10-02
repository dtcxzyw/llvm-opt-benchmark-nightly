Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_parser?download=true
inline.NumInlined: 8390
inline.NumDeleted: 1479
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5boost5beast4http17basic_parser_test10parsegrindINS1_11test_parserILb1EEENS_4asio12const_bufferEZNS2_10parsegrindIS5_EEvNS_4core17basic_string_viewIcEEEUlRKS5_E_EENSt9enable_ifIXsr3net24is_const_buffer_sequenceIT0_EE5valueEvE4typeERKSG_RKT1_b:bb.a
  br label %.body222

.body222:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i216, %bb.ck
  %eh.lpad-body223 = phi { ptr, i32 } [ %i.oi, %bb.ck ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i216 ] ; 2 uses
  %i.oj = load ptr, ptr %32, align 8, !tbaa !41   ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.ch
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %.body222
  %i.ol = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %.body222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.cj
  %.pn65 = phi { ptr, i32 } [ %i.oh, %bb.cj ], [ %eh.lpad-body223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %eh.lpad-body223, %.body222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.body184

.critedge92:                                      ; preds = %bb.bz, %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit205
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http11test_parserILb1EEE, i64 16), ptr %27, align 8, !tbaa !33
  %i.on = load ptr, ptr %i.bu, align 8, !tbaa !196 ; 2 uses
  %.not5.i.i.i248 = icmp eq ptr %i.on, null
  br i1 %.not5.i.i.i248, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %.critedge92, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254
  %.06.i.i.i250 = phi ptr [ %i.oo, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254 ], [ %i.on, %.critedge92 ] ; 6 uses
  %i.oo = load ptr, ptr %.06.i.i.i250, align 8, !tbaa !197 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 40
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !41 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 56 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i251: ; preds = %.lr.ph.i.i.i249
  %i.ou = load i64, ptr %i.os, align 8, !tbaa !42
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ov) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252: ; preds = %.lr.ph.i.i.i249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i251
  %i.ow = load ptr, ptr %i.op, align 8, !tbaa !41 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 24 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !42
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i250, i64 noundef 80) #34
  %.not.i.i.i255 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i255, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256, label %.lr.ph.i.i.i249, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254, %.critedge92
  %i.pb = load ptr, ptr %i.br, align 8, !tbaa !171
  %i.pc = load i64, ptr %i.bt, align 8, !tbaa !172
  %i.pd = shl i64 %i.pc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pb, i8 0, i64 %i.pd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.pe = load ptr, ptr %i.br, align 8, !tbaa !171 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.bs
  br i1 %i.pf, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256
  %i.pg = load i64, ptr %i.bt, align 8, !tbaa !172
  %i.ph = shl i64 %i.pg, 3
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256, %bb.cl
  %i.pi = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.bo
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259
  %i.pk = load i64, ptr %i.bo, align 8, !tbaa !42
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #34, !inline_history !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231
  %i.pm = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.bl
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232
  %i.po = load i64, ptr %i.bl, align 8, !tbaa !42
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #34, !inline_history !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i233
  %i.pq = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.bi
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234
  %i.ps = load i64, ptr %i.bi, align 8, !tbaa !42
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #34, !inline_history !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i235
  %i.pu = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.bf
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236
  %i.pw = load i64, ptr %i.bf, align 8, !tbaa !42
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #34, !inline_history !198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i237
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb1EEE, i64 16), ptr %27, align 8, !tbaa !33
  %i.py = load ptr, ptr %i.ci, align 8, !tbaa !199 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i239, label %_ZN5boost5beast4http11test_parserILb1EED2Ev.exit245, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i240

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238
  call void @_ZdaPv(ptr noundef nonnull %i.py) #34, !inline_history !200
  br label %_ZN5boost5beast4http11test_parserILb1EED2Ev.exit245

_ZN5boost5beast4http11test_parserILb1EED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  %i.pz = add nuw i64 %.044332, 1                 ; 2 uses
  %exitcond334.not = icmp eq i64 %i.pz, %i.e
  br i1 %exitcond334.not, label %._crit_edge, label %.lr.ph.i166.preheader, !llvm.loop !642

.body184:                                         ; preds = %bb.bp, %bb.cf, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %bb.by, %bb.bt
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.mm, %bb.bt ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %i.my, %bb.by ], [ %i.lv, %bb.bp ], [ %i.mn, %bb.bu ], [ %i.nq, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  call void @_ZN5boost5beast4http11test_parserILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %bb.cm

bb.cm:                                            ; preds = %.body184, %bb.bj
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.bj ], [ %.pn65.pn, %.body184 ]
  resume { ptr, i32 } %.pn76.pn.pn
}

declare void @_ZN5boost5beast4http12basic_parserILb1EE4skipEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit:
  %3 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %4 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 6 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %7 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %8 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !235, !noalias !667 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !667 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.6.16.copyload = load ptr, ptr %i.g, align 8, !tbaa !238 ; 3 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8, !tbaa !231
  %.sroa.3.sroa.2.0.copyload.fr.i.i = freeze ptr %.sroa.9.16.copyload ; 2 uses
  %i.h = icmp eq ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %i.i = icmp eq ptr %i.e, %.sroa.6.16.copyload   ; 2 uses
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %bb.a, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i

bb.a:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.sroa.6.16.copyload   ; 2 uses
  %i.n = select i1 %i.h, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, label %bb.b

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.e, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39 ; 2 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !229
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.q = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.q)
  %i.r = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.p, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.b:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i
  %i.s = icmp eq ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %.not3.i.us16.i.i.i.not = select i1 %i.s, i1 %i.i, i1 false
  br i1 %.not3.i.us16.i.i.i.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i: ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load i64, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i.us.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i, align 8, !tbaa !39
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.us.i.peel.i.i, i64 %i.t) ; 2 uses
  %spec.select.i12.us.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.u) ; 2 uses
  br i1 %i.m, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %i.v = sub i64 %i.c, %i.u
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i
  %.0.us19.i.i.i = phi i64 [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ]
  %.sroa.4.0.us18.i.i.i = phi i64 [ %i.y, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %i.v, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.7.0.us17.i.i.i = phi ptr [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %i.l, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.us.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.i.i, align 8, !tbaa !39 ; 2 uses
  %spec.select.i12.us.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.us18.i.i.i, i64 %.sroa.4.0.copyload.i.i.us.i.i.i)
  %i.w = add i64 %spec.select.i12.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 16 ; 2 uses
  %i.y = sub i64 %.sroa.4.0.us18.i.i.i, %.sroa.4.0.copyload.i.i.us.i.i.i
  %.not.i.i.i = icmp eq ptr %i.x, %.sroa.6.16.copyload
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, !llvm.loop !5

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %.0.lcssa.us.i.i.i = phi i64 [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i ], [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ] ; 7 uses
  %i.z = icmp ult i64 %.0.lcssa.us.i.i.i, 8193
  br i1 %i.z, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, label %bb.c

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread: ; preds = %bb.b, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %.0.lcssa.us.i.i.i41 = phi i64 [ %.0.lcssa.us.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.a, ptr %7, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8192, ptr %i.aa, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %5, align 8, !tbaa !244, !alias.scope !668
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.ac, align 8, !tbaa !245, !alias.scope !668
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.ad, align 8, !alias.scope !668
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.ae, align 8, !alias.scope !668
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  store ptr %1, ptr %6, align 8, !tbaa !244, !alias.scope !671
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !671
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !245, !alias.scope !671
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.ai = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ab, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %5, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %6, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.aj = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %.0.lcssa.us.i.i.i41, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.f

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !247
  %i.am = icmp ugt i64 %.0.lcssa.us.i.i.i, %i.al
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.lcssa.us.i.i.i) #36, !noalias !672
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !199
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.d
  store i64 %.0.lcssa.us.i.i.i, ptr %i.ak, align 8, !tbaa !247
  %.pre = load i64, ptr %i.b, align 8, !tbaa !235, !noalias !673
  %.pre43 = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !673
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.c
  %i.aq = phi ptr [ %.pre43, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.e, %bb.c ]
  %i.ar = phi i64 [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !199
  store ptr %i.at, ptr %8, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.lcssa.us.i.i.i, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  store ptr %1, ptr %3, align 8, !tbaa !244, !alias.scope !673
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !245, !alias.scope !673
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aq, ptr %i.ax, align 8, !alias.scope !673
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.ay, align 8, !alias.scope !673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  store ptr %1, ptr %4, align 8, !tbaa !244, !alias.scope !678
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !678
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !245, !alias.scope !678
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.bc = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.av, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %4, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !199
  %i.be = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bd, i64 %.0.lcssa.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, %bb.e, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.r, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit ], [ %i.aj, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread ], [ %i.be, %bb.e ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  switch i64 %i.d, label %_ZNK5boost6system10error_code8categoryEv.exit.thread [
    i64 1, label %bb.b
    i64 0, label %_ZNK5boost6system10error_code5valueEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !686 ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !211, !noalias !686
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !33, !noalias !686
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !686
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g), !inline_history !681
  br label %bb.f

_ZNK5boost6system10error_code5valueEv.exit:       ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !689
  %i.l = call ptr @strerror_r(i32 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 128) #31, !noalias !689 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !37, !alias.scope !689
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #33
  unreachable

bb.c:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !689
  store i64 %i.o, ptr %i.a, align 8, !tbaa !39, !noalias !689
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !41, !alias.scope !689
  %i.r = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !689
  store i64 %i.r, ptr %i.m, align 8, !tbaa !42, !alias.scope !689
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !42
  store i8 %i.t, ptr %i.s, align 1, !tbaa !42
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !689 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !43, !alias.scope !689
  %i.w = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !689
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http17basic_parser_test10parsegrindINS1_11test_parserILb0EEENS_4asio12const_bufferEZNS2_10parsegrindIS5_EEvNS_4core17basic_string_viewIcEEEUlRKS5_E_EENSt9enable_ifIXsr3net24is_const_buffer_sequenceIT0_EE5valueEvE4typeERKSG_RKT1_b:bb.a
  br label %.body222

.body222:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i216, %bb.ck
  %eh.lpad-body223 = phi { ptr, i32 } [ %i.oi, %bb.ck ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i216 ] ; 2 uses
  %i.oj = load ptr, ptr %32, align 8, !tbaa !41   ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.ch
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %.body222
  %i.ol = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %.body222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.cj
  %.pn65 = phi { ptr, i32 } [ %i.oh, %bb.cj ], [ %eh.lpad-body223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %eh.lpad-body223, %.body222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.body184

.critedge92:                                      ; preds = %bb.bz, %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit205
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http11test_parserILb0EEE, i64 16), ptr %27, align 8, !tbaa !33
  %i.on = load ptr, ptr %i.bu, align 8, !tbaa !196 ; 2 uses
  %.not5.i.i.i248 = icmp eq ptr %i.on, null
  br i1 %.not5.i.i.i248, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %.critedge92, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254
  %.06.i.i.i250 = phi ptr [ %i.oo, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254 ], [ %i.on, %.critedge92 ] ; 6 uses
  %i.oo = load ptr, ptr %.06.i.i.i250, align 8, !tbaa !197 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 40
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !41 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 56 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i251: ; preds = %.lr.ph.i.i.i249
  %i.ou = load i64, ptr %i.os, align 8, !tbaa !42
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ov) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252: ; preds = %.lr.ph.i.i.i249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i251
  %i.ow = load ptr, ptr %i.op, align 8, !tbaa !41 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.06.i.i.i250, i64 24 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !42
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i250, i64 noundef 80) #34
  %.not.i.i.i255 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i255, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256, label %.lr.ph.i.i.i249, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i254, %.critedge92
  %i.pb = load ptr, ptr %i.br, align 8, !tbaa !171
  %i.pc = load i64, ptr %i.bt, align 8, !tbaa !172
  %i.pd = shl i64 %i.pc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pb, i8 0, i64 %i.pd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.pe = load ptr, ptr %i.br, align 8, !tbaa !171 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.bs
  br i1 %i.pf, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256
  %i.pg = load i64, ptr %i.bt, align 8, !tbaa !172
  %i.ph = shl i64 %i.pg, 3
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i256, %bb.cl
  %i.pi = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.bo
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259
  %i.pk = load i64, ptr %i.bo, align 8, !tbaa !42
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231
  %i.pm = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.bl
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232
  %i.po = load i64, ptr %i.bl, align 8, !tbaa !42
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i233
  %i.pq = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.bi
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234
  %i.ps = load i64, ptr %i.bi, align 8, !tbaa !42
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i235
  %i.pu = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.bf
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236
  %i.pw = load i64, ptr %i.bf, align 8, !tbaa !42
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #34, !inline_history !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i237
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb0EEE, i64 16), ptr %27, align 8, !tbaa !33
  %i.py = load ptr, ptr %i.ci, align 8, !tbaa !199 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i239, label %_ZN5boost5beast4http11test_parserILb0EED2Ev.exit245, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i240

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238
  call void @_ZdaPv(ptr noundef nonnull %i.py) #34, !inline_history !210
  br label %_ZN5boost5beast4http11test_parserILb0EED2Ev.exit245

_ZN5boost5beast4http11test_parserILb0EED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i238, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  %i.pz = add nuw i64 %.044332, 1                 ; 2 uses
  %exitcond334.not = icmp eq i64 %i.pz, %i.e
  br i1 %exitcond334.not, label %._crit_edge, label %.lr.ph.i166.preheader, !llvm.loop !766

.body184:                                         ; preds = %bb.bp, %bb.cf, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %bb.by, %bb.bt
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.mm, %bb.bt ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %i.my, %bb.by ], [ %i.lv, %bb.bp ], [ %i.mn, %bb.bu ], [ %i.nq, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  call void @_ZN5boost5beast4http11test_parserILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %bb.cm

bb.cm:                                            ; preds = %.body184, %bb.bj
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.bj ], [ %.pn65.pn, %.body184 ]
  resume { ptr, i32 } %.pn76.pn.pn
}

declare void @_ZN5boost5beast4http12basic_parserILb0EE4skipEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit:
  %3 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %4 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 6 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %7 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %8 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !235, !noalias !791 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !791 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.6.16.copyload = load ptr, ptr %i.g, align 8, !tbaa !238 ; 3 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8, !tbaa !231
  %.sroa.3.sroa.2.0.copyload.fr.i.i = freeze ptr %.sroa.9.16.copyload ; 2 uses
  %i.h = icmp eq ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %i.i = icmp eq ptr %i.e, %.sroa.6.16.copyload   ; 2 uses
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %bb.a, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i

bb.a:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.sroa.6.16.copyload   ; 2 uses
  %i.n = select i1 %i.h, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, label %bb.b

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.e, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39 ; 2 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !229
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.q = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.q)
  %i.r = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.p, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.b:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i
  %i.s = icmp eq ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %.not3.i.us16.i.i.i.not = select i1 %i.s, i1 %i.i, i1 false
  br i1 %.not3.i.us16.i.i.i.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i: ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load i64, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i.us.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i, align 8, !tbaa !39
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.us.i.peel.i.i, i64 %i.t) ; 2 uses
  %spec.select.i12.us.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.u) ; 2 uses
  br i1 %i.m, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %i.v = sub i64 %i.c, %i.u
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i
  %.0.us19.i.i.i = phi i64 [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ]
  %.sroa.4.0.us18.i.i.i = phi i64 [ %i.y, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %i.v, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.7.0.us17.i.i.i = phi ptr [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %i.l, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.us.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.i.i, align 8, !tbaa !39 ; 2 uses
  %spec.select.i12.us.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.us18.i.i.i, i64 %.sroa.4.0.copyload.i.i.us.i.i.i)
  %i.w = add i64 %spec.select.i12.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 16 ; 2 uses
  %i.y = sub i64 %.sroa.4.0.us18.i.i.i, %.sroa.4.0.copyload.i.i.us.i.i.i
  %.not.i.i.i = icmp eq ptr %i.x, %.sroa.6.16.copyload
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, !llvm.loop !5

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %.0.lcssa.us.i.i.i = phi i64 [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i ], [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ] ; 7 uses
  %i.z = icmp ult i64 %.0.lcssa.us.i.i.i, 8193
  br i1 %i.z, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, label %bb.c

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread: ; preds = %bb.b, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %.0.lcssa.us.i.i.i41 = phi i64 [ %.0.lcssa.us.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.a, ptr %7, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8192, ptr %i.aa, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %5, align 8, !tbaa !244, !alias.scope !792
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.ac, align 8, !tbaa !245, !alias.scope !792
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.ad, align 8, !alias.scope !792
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.ae, align 8, !alias.scope !792
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  store ptr %1, ptr %6, align 8, !tbaa !244, !alias.scope !795
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !795
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !245, !alias.scope !795
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.ai = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ab, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %5, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %6, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.aj = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %.0.lcssa.us.i.i.i41, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.f

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !280
  %i.am = icmp ugt i64 %.0.lcssa.us.i.i.i, %i.al
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.lcssa.us.i.i.i) #36, !noalias !796
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !199
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.d
  store i64 %.0.lcssa.us.i.i.i, ptr %i.ak, align 8, !tbaa !280
  %.pre = load i64, ptr %i.b, align 8, !tbaa !235, !noalias !797
  %.pre43 = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !797
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.c
  %i.aq = phi ptr [ %.pre43, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.e, %bb.c ]
  %i.ar = phi i64 [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !199
  store ptr %i.at, ptr %8, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.lcssa.us.i.i.i, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  store ptr %1, ptr %3, align 8, !tbaa !244, !alias.scope !797
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !245, !alias.scope !797
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aq, ptr %i.ax, align 8, !alias.scope !797
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.ay, align 8, !alias.scope !797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  store ptr %1, ptr %4, align 8, !tbaa !244, !alias.scope !802
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !802
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !245, !alias.scope !802
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.bc = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.av, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %4, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !199
  %i.be = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bd, i64 %.0.lcssa.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, %bb.e, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.r, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit ], [ %i.aj, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread ], [ %i.be, %bb.e ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228  ; 9 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.c, %1
  br i1 %i.e, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit, label %.lr.ph.i.i.i

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit: ; preds = %bb.c
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !39 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !229
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.sroa.4.0.copyload.i) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 %spec.select.i.i
  %i.i = sub i64 %.sroa.4.0.copyload.i, %spec.select.i.i
  %i.j = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.h, i64 %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !39 ; 4 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.l)
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %.09.i.i.i = phi i64 [ %i.n, %.lr.ph.split.i.i.i ], [ %i.m, %.lr.ph.i.i.i ]
  %.sroa.02.08.i.pn.i.i = phi ptr [ %.sroa.02.08.i.i.i, %.lr.ph.split.i.i.i ], [ %i.c, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.02.08.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.pn.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !39
  %i.n = add i64 %.sroa.4.0.copyload.i.i.i.i, %.09.i.i.i ; 8 uses
  %.not.i.i.i = icmp eq ptr %.sroa.02.08.i.i.i, %1
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !4

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i
  %i.o = icmp ult i64 %i.n, 8193
  br i1 %i.o, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i, label %bb.f

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS_4asio12const_bufferEEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %spec.select.i.i.i.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.4.0.copyload.i.i.peel.i.i) ; 2 uses
  %.pn.i.i.i.peel.i = sub nuw i64 %.sroa.4.0.copyload.i.i.peel.i.i, %spec.select.i.i.i.i.peel.i ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.pn.i.i.i.peel.i, i64 8192) ; 3 uses
  %.not.i.i.i.peel.not.i = icmp ugt i64 %.sroa.4.0.copyload.i.i.peel.i.i, %i.l
  br i1 %.not.i.i.i.peel.not.i, label %bb.d, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i

bb.d:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i
  %.sroa.0.0.copyload1.i.i.i.peel.i = load ptr, ptr %i.c, align 8, !tbaa !74
  %.pn3.i.i.i.peel.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.peel.i, i64 %spec.select.i.i.i.i.peel.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.pn3.i.i.i.peel.i, i64 %i.p, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i: ; preds = %bb.d, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i.peel.i
  %.not.i.i.peel.i = icmp ugt i64 %.pn.i.i.i.peel.i, 8191
  br i1 %.not.i.i.peel.i, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_14buffers_suffixINS_4asio12const_bufferEEEEEmmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.split.i.i.peel.next.i

.lr.ph.split.i.i.peel.next.i:                     ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel.i
  %i.q = sub nuw nsw i64 8192, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
end_hunk_1
