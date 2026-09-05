Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_parser?download=true
inline.NumInlined: 8390
inline.NumDeleted: 1479
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5boost5beast4http17basic_parser_test10parsegrindINS1_11test_parserILb1EEENS_4asio12const_bufferEZNS2_10parsegrindIS5_EEvNS_4core17basic_string_viewIcEEEUlRKS5_E_EENSt9enable_ifIXsr3net24is_const_buffer_sequenceIT0_EE5valueEvE4typeERKSG_RKT1_b:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %.critedge91
  %i.of = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %.critedge91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.critedge92

bb.cj:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit208.thread
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.ck:                                            ; preds = %bb.cg
  %i.oi = landingpad { ptr, i32 }
          cleanup
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !667 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.6.16.copyload = load ptr, ptr %i.g, align 8, !tbaa !238 ; 4 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8, !tbaa !231
  %.sroa.3.sroa.2.0.copyload.fr.i.i = freeze ptr %.sroa.9.16.copyload ; 2 uses
  %i.h = icmp eq ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %i.i = icmp eq ptr %i.e, %.sroa.6.16.copyload
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %bb.a, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19

bb.a:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = icmp eq ptr %scevgep, %.sroa.6.16.copyload ; 2 uses
  %i.m = select i1 %i.h, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, label %bb.b

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.e, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39 ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !229
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.p = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.p)
  %i.q = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.o, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.b:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19
  %i.r = icmp ne ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %i.s = icmp ne ptr %i.e, %.sroa.6.16.copyload
  %.not3.i.us16.i.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %.not3.i.us16.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i: ; preds = %bb.b
  %i.t = xor i1 %i.r, true
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i.us.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i, align 8, !tbaa !39
  %i.v = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.us.i.peel.i.i, i64 %i.u) ; 2 uses
  %spec.select.i12.us.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.v) ; 2 uses
  br i1 %i.l, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %i.w = sub i64 %i.c, %i.v
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i
  %.0.us19.i.i.i = phi i64 [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ]
  %.sroa.4.0.us18.i.i.i = phi i64 [ %i.z, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.7.0.us17.i.i.i = phi ptr [ %i.y, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %scevgep, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.us.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.i.i, align 8, !tbaa !39 ; 2 uses
  %spec.select.i12.us.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.us18.i.i.i, i64 %.sroa.4.0.copyload.i.i.us.i.i.i)
  %i.x = add i64 %spec.select.i12.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 16 ; 2 uses
  %i.z = sub i64 %.sroa.4.0.us18.i.i.i, %.sroa.4.0.copyload.i.i.us.i.i.i
  %.not.i.i.i = icmp eq ptr %i.y, %.sroa.6.16.copyload
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, !llvm.loop !5

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %.0.lcssa.us.i.i.i = phi i64 [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i ], [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ] ; 7 uses
  %i.aa = icmp ult i64 %.0.lcssa.us.i.i.i, 8193
  br i1 %i.aa, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, label %bb.c

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread: ; preds = %bb.b, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %.0.lcssa.us.i.i.i41 = phi i64 [ %.0.lcssa.us.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.a, ptr %7, align 8, !tbaa !240
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8192, ptr %i.ab, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %5, align 8, !tbaa !244, !alias.scope !668
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !245, !alias.scope !668
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.ae, align 8, !alias.scope !668
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.af, align 8, !alias.scope !668
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  store ptr %1, ptr %6, align 8, !tbaa !244, !alias.scope !671
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !671
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !245, !alias.scope !671
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.aj = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ac, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %5, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %6, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ak = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %.0.lcssa.us.i.i.i41, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.f

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !247
  %i.an = icmp ugt i64 %.0.lcssa.us.i.i.i, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.lcssa.us.i.i.i) #36, !noalias !672
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !199
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.aq) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.d
  store i64 %.0.lcssa.us.i.i.i, ptr %i.al, align 8, !tbaa !247
  %.pre = load i64, ptr %i.b, align 8, !tbaa !235, !noalias !673
  %.pre44 = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !673
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.c
  %i.ar = phi ptr [ %.pre44, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.e, %bb.c ]
  %i.as = phi i64 [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199
  store ptr %i.au, ptr %8, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.lcssa.us.i.i.i, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  store ptr %1, ptr %3, align 8, !tbaa !244, !alias.scope !673
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.as, ptr %i.ax, align 8, !tbaa !245, !alias.scope !673
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ar, ptr %i.ay, align 8, !alias.scope !673
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.az, align 8, !alias.scope !673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  store ptr %1, ptr %4, align 8, !tbaa !244, !alias.scope !678
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !678
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !245, !alias.scope !678
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.bd = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.aw, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %4, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !199
  %i.bf = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.be, i64 %.0.lcssa.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, %bb.e, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.q, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit ], [ %i.ak, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread ], [ %i.bf, %bb.e ]
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
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http17basic_parser_test10parsegrindINS1_11test_parserILb0EEENS_4asio12const_bufferEZNS2_10parsegrindIS5_EEvNS_4core17basic_string_viewIcEEEUlRKS5_E_EENSt9enable_ifIXsr3net24is_const_buffer_sequenceIT0_EE5valueEvE4typeERKSG_RKT1_b:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %.critedge91
  %i.of = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %.critedge91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.critedge92

bb.cj:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit208.thread
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.ck:                                            ; preds = %bb.cg
  %i.oi = landingpad { ptr, i32 }
          cleanup
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !791 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.6.16.copyload = load ptr, ptr %i.g, align 8, !tbaa !238 ; 4 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8, !tbaa !231
  %.sroa.3.sroa.2.0.copyload.fr.i.i = freeze ptr %.sroa.9.16.copyload ; 2 uses
  %i.h = icmp eq ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %i.i = icmp eq ptr %i.e, %.sroa.6.16.copyload
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %bb.a, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19

bb.a:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = icmp eq ptr %scevgep, %.sroa.6.16.copyload ; 2 uses
  %i.m = select i1 %i.h, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, label %bb.b

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.e, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39 ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !229
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.p = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.p)
  %i.q = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.o, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.b:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS7_.exit19
  %i.r = icmp ne ptr %1, %.sroa.3.sroa.2.0.copyload.fr.i.i ; 2 uses
  %i.s = icmp ne ptr %i.e, %.sroa.6.16.copyload
  %.not3.i.us16.i.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %.not3.i.us16.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i: ; preds = %bb.b
  %i.t = xor i1 %i.r, true
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i.i.us.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i, align 8, !tbaa !39
  %i.v = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.us.i.peel.i.i, i64 %i.u) ; 2 uses
  %spec.select.i12.us.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.v) ; 2 uses
  br i1 %i.l, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %i.w = sub i64 %i.c, %i.v
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i
  %.0.us19.i.i.i = phi i64 [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ]
  %.sroa.4.0.us18.i.i.i = phi i64 [ %i.z, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.7.0.us17.i.i.i = phi ptr [ %i.y, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ], [ %scevgep, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.us.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.i.i, align 8, !tbaa !39 ; 2 uses
  %spec.select.i12.us.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.us18.i.i.i, i64 %.sroa.4.0.copyload.i.i.us.i.i.i)
  %i.x = add i64 %spec.select.i12.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 16 ; 2 uses
  %i.z = sub i64 %.sroa.4.0.us18.i.i.i, %.sroa.4.0.copyload.i.i.us.i.i.i
  %.not.i.i.i = icmp eq ptr %i.y, %.sroa.6.16.copyload
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, !llvm.loop !5

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i
  %.0.lcssa.us.i.i.i = phi i64 [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.lr.ph.i.i.i ], [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS7_.exit.thread.us.i.i.i ] ; 7 uses
  %i.aa = icmp ult i64 %.0.lcssa.us.i.i.i, 8193
  br i1 %i.aa, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, label %bb.c

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread: ; preds = %bb.b, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %.0.lcssa.us.i.i.i41 = phi i64 [ %.0.lcssa.us.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.a, ptr %7, align 8, !tbaa !240
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8192, ptr %i.ab, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %5, align 8, !tbaa !244, !alias.scope !792
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !245, !alias.scope !792
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.ae, align 8, !alias.scope !792
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.af, align 8, !alias.scope !792
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  store ptr %1, ptr %6, align 8, !tbaa !244, !alias.scope !795
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !795
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !245, !alias.scope !795
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.aj = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ac, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %5, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %6, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ak = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %.0.lcssa.us.i.i.i41, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.f

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !280
  %i.an = icmp ugt i64 %.0.lcssa.us.i.i.i, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.lcssa.us.i.i.i) #36, !noalias !796
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !199 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !199
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.aq) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.d
  store i64 %.0.lcssa.us.i.i.i, ptr %i.al, align 8, !tbaa !280
  %.pre = load i64, ptr %i.b, align 8, !tbaa !235, !noalias !797
  %.pre44 = load ptr, ptr %i.d, align 8, !tbaa !228, !noalias !797
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.c
  %i.ar = phi ptr [ %.pre44, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.e, %bb.c ]
  %i.as = phi i64 [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199
  store ptr %i.au, ptr %8, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.lcssa.us.i.i.i, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  store ptr %1, ptr %3, align 8, !tbaa !244, !alias.scope !797
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.as, ptr %i.ax, align 8, !tbaa !245, !alias.scope !797
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ar, ptr %i.ay, align 8, !alias.scope !797
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.az, align 8, !alias.scope !797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  store ptr %1, ptr %4, align 8, !tbaa !244, !alias.scope !802
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !234, !noalias !802
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !245, !alias.scope !802
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !246
  %i.bd = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SF_T0_SG_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.aw, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>::const_iterator") align 8 %4, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !199
  %i.bf = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.be, i64 %.0.lcssa.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread, %bb.e, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.q, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit ], [ %i.ak, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS_4asio12const_bufferEEEEEvEEmRKT_.exit.thread ], [ %i.bf, %bb.e ]
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

end_hunk_1
begin_hunk_2_@_ZZN5boost5beast4http17basic_parser_test11testPartialEvENKUlRKNS1_11test_parserILb1EEEE_clES6_:._crit_edge.i.i
  br label %bb.ao

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit175, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.fz
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.an
  %i.im = load i64, ptr %i.fz, align 8, !tbaa !42
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn40.pn = phi { ptr, i32 } [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ]
  resume { ptr, i32 } %.pn40.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !274
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !197 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !197 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !1233

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !197 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1233

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #32
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !172  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !171
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !267 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !197 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !269 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !197 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !269 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !43
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !41
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !197 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !269 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 24), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #31
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.25.i = alloca ptr, align 8               ; 4 uses
  %.sroa.25.i.i = alloca ptr, align 8             ; 4 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182, !noalias !1258 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182, !noalias !1259 ; 6 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %3, label %.preheader.preheader

3:                                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.k

.preheader.preheader:                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !146, !noalias !1260
  %i.h = icmp eq ptr %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147  ; 3 uses
  br i1 %i.h, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, label %.lr.ph.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit: ; preds = %.preheader.preheader
  %i.k = icmp eq ptr %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.in.i = select i1 %i.k, ptr %i.l, ptr %i.m
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !tbaa !39 ; 2 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !189
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.6.0.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 %..i.i
  %i.q = sub i64 %.sroa.6.0.i, %..i.i
  %i.r = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.preheader.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.sroa.5.010.i.i.i = phi ptr [ %.sroa.5.0.i.i.i, %.lr.ph.split.i.i.i ], [ %i.c, %.lr.ph.i.i.i ] ; 4 uses
  %.09.i.i.i = phi i64 [ %i.z, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.v = icmp eq ptr %.sroa.5.010.i.i.i, %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.010.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.sroa.6.0.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.x = icmp eq ptr %.sroa.5.010.i.i.i, %i.c
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i, i64 %i.u)
  %.sroa.6.1.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %.sroa.6.0.i.i.i.i
  %i.z = add i64 %.sroa.6.1.i.i.i.i, %.09.i.i.i   ; 8 uses
  %.sroa.5.0.i.i.i = load ptr, ptr %.sroa.5.010.i.i.i, align 8, !tbaa !343 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.0.i.i.i, %i.e
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !17

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i
  %i.aa = icmp ult i64 %i.z, 8193
  br i1 %i.aa, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i)
  store ptr %i.c, ptr %.sroa.25.i.i, align 8, !tbaa !148, !alias.scope !1261
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.b
  %.sroa.5.022.in.i.i.i = phi ptr [ %.sroa.25.i.i, %bb.b ], [ %.sroa.5.022.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ]
  %.sroa.09.020.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.ag, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.6.019.i.i.i = phi i64 [ 8192, %bb.b ], [ %i.ah, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.5.022.i.i.i = load ptr, ptr %.sroa.5.022.in.i.i.i, align 8, !tbaa !343 ; 6 uses
  %.not.i.i20 = icmp eq ptr %.sroa.5.022.i.i.i, %i.e
  br i1 %.not.i.i20, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.c
  %i.ab = icmp eq ptr %.sroa.5.022.i.i.i, %i.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i21 = select i1 %i.ab, ptr %i.s, ptr %i.ac
  %.sroa.6.0.i.i.i.i22 = load i64, ptr %.sroa.6.0.in.i.i.i.i21, align 8, !tbaa !39 ; 3 uses
  %i.ad = icmp eq ptr %.sroa.5.022.i.i.i, %i.c
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.6.0.i.i.i.i22)
  %i.ae = select i1 %i.ad, i64 %..i.i.i.i.i, i64 0 ; 3 uses
  %.sroa.6.1.i.i.i.i23 = sub i64 %.sroa.6.0.i.i.i.i22, %i.ae
  %i.af = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i.i, i64 %.sroa.6.1.i.i.i.i23) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i.i22, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %.sroa.07.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 24
  %.sroa.07.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i.i, ptr nonnull align 1 %.sroa.07.1.i.i.i.i, i64 %i.af, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i.i, i64 %i.af
  %i.ah = sub nuw nsw i64 %.sroa.6.019.i.i.i, %i.af ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i24, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.c, !llvm.loop !18

_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.c, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i)
  %i.ai = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.k

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !247
  %i.al = icmp ugt i64 %i.z, %i.ak
  br i1 %i.al, label %bb.f, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #36, !noalias !1262
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !199
  %.not.i.i.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.z, ptr %i.aj, align 8, !tbaa !247
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !182, !noalias !1263
  %.pre52 = load ptr, ptr %i.d, align 8, !tbaa !182, !noalias !1264
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ap = phi ptr [ %i.e, %bb.e ], [ %.pre52, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.aq = phi ptr [ %i.c, %bb.e ], [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  store ptr %i.aq, ptr %.sroa.25.i, align 8, !tbaa !148, !alias.scope !1263
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.sroa.5.022.in.i.i = phi ptr [ %.sroa.25.i, %.lr.ph.i.i ], [ %.sroa.5.022.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.09.020.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.be, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.bf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.5.022.i.i = load ptr, ptr %.sroa.5.022.in.i.i, align 8, !tbaa !343 ; 6 uses
  %.not.i28 = icmp eq ptr %.sroa.5.022.i.i, %i.ap
  br i1 %.not.i28, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !147
  %i.aw = icmp eq ptr %.sroa.5.022.i.i, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 16
  %.sroa.6.0.in.i.i.i = select i1 %i.aw, ptr %i.s, ptr %i.ax
  %.sroa.6.0.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !39 ; 3 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.az = icmp eq ptr %.sroa.5.022.i.i, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !189
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.sroa.6.0.i.i.i) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 %..i.i.i.i
  %i.bc = sub i64 %.sroa.6.0.i.i.i, %..i.i.i.i
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.07.1.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.6.1.i.i.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.6.0.i.i.i, %bb.h ] ; 2 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i, i64 %.sroa.6.1.i.i.i) ; 3 uses
  %.not.i.i.i29 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i29, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i, ptr nonnull align 1 %.sroa.07.1.i.i.i, i64 %i.bd, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.j, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i, i64 %i.bd
  %i.bf = sub nuw i64 %.sroa.6.019.i.i, %i.bd     ; 2 uses
  %.not.i.i30 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i30, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.g, !llvm.loop !18

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit: ; preds = %bb.g, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !199
  %i.bh = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bg, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, %3
  %.1 = phi i64 [ 0, %3 ], [ %i.r, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit ], [ %i.ai, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.bh, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146, !noalias !1271 ; 2 uses
  %.not6.i = icmp eq ptr %i.b, %i.a
  br i1 %.not6.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !146, !noalias !1272 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !188
  %i.f = add i64 %i.e, 31
  %i.g = and i64 %i.f, -8
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i, i64 noundef %i.g) #34
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i, !llvm.loop !3

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.25.i = alloca ptr, align 8               ; 4 uses
  %.sroa.25.i.i = alloca ptr, align 8             ; 4 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182, !noalias !1297 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182, !noalias !1298 ; 6 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %3, label %.preheader.preheader

3:                                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.k

.preheader.preheader:                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !146, !noalias !1299
  %i.h = icmp eq ptr %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147  ; 3 uses
  br i1 %i.h, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, label %.lr.ph.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit: ; preds = %.preheader.preheader
  %i.k = icmp eq ptr %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.in.i = select i1 %i.k, ptr %i.l, ptr %i.m
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !tbaa !39 ; 2 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !189
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.6.0.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 %..i.i
  %i.q = sub i64 %.sroa.6.0.i, %..i.i
  %i.r = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.preheader.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.sroa.5.010.i.i.i = phi ptr [ %.sroa.5.0.i.i.i, %.lr.ph.split.i.i.i ], [ %i.c, %.lr.ph.i.i.i ] ; 4 uses
  %.09.i.i.i = phi i64 [ %i.z, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.v = icmp eq ptr %.sroa.5.010.i.i.i, %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.010.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.sroa.6.0.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.x = icmp eq ptr %.sroa.5.010.i.i.i, %i.c
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i, i64 %i.u)
  %.sroa.6.1.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %.sroa.6.0.i.i.i.i
  %i.z = add i64 %.sroa.6.1.i.i.i.i, %.09.i.i.i   ; 8 uses
  %.sroa.5.0.i.i.i = load ptr, ptr %.sroa.5.010.i.i.i, align 8, !tbaa !343 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.0.i.i.i, %i.e
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !17

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i
  %i.aa = icmp ult i64 %i.z, 8193
  br i1 %i.aa, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i)
  store ptr %i.c, ptr %.sroa.25.i.i, align 8, !tbaa !148, !alias.scope !1300
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.b
  %.sroa.5.022.in.i.i.i = phi ptr [ %.sroa.25.i.i, %bb.b ], [ %.sroa.5.022.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ]
  %.sroa.09.020.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.ag, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.6.019.i.i.i = phi i64 [ 8192, %bb.b ], [ %i.ah, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.5.022.i.i.i = load ptr, ptr %.sroa.5.022.in.i.i.i, align 8, !tbaa !343 ; 6 uses
  %.not.i.i20 = icmp eq ptr %.sroa.5.022.i.i.i, %i.e
  br i1 %.not.i.i20, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.c
  %i.ab = icmp eq ptr %.sroa.5.022.i.i.i, %i.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i21 = select i1 %i.ab, ptr %i.s, ptr %i.ac
  %.sroa.6.0.i.i.i.i22 = load i64, ptr %.sroa.6.0.in.i.i.i.i21, align 8, !tbaa !39 ; 3 uses
  %i.ad = icmp eq ptr %.sroa.5.022.i.i.i, %i.c
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.6.0.i.i.i.i22)
  %i.ae = select i1 %i.ad, i64 %..i.i.i.i.i, i64 0 ; 3 uses
  %.sroa.6.1.i.i.i.i23 = sub i64 %.sroa.6.0.i.i.i.i22, %i.ae
  %i.af = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i.i, i64 %.sroa.6.1.i.i.i.i23) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i.i22, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %.sroa.07.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 24
  %.sroa.07.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i.i, ptr nonnull align 1 %.sroa.07.1.i.i.i.i, i64 %i.af, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i.i, i64 %i.af
  %i.ah = sub nuw nsw i64 %.sroa.6.019.i.i.i, %i.af ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i24, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.c, !llvm.loop !18

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.c, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i)
  %i.ai = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.k

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !280
  %i.al = icmp ugt i64 %i.z, %i.ak
  br i1 %i.al, label %bb.f, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #36, !noalias !1301
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !199
  %.not.i.i.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.z, ptr %i.aj, align 8, !tbaa !280
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !182, !noalias !1302
  %.pre52 = load ptr, ptr %i.d, align 8, !tbaa !182, !noalias !1303
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ap = phi ptr [ %i.e, %bb.e ], [ %.pre52, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.aq = phi ptr [ %i.c, %bb.e ], [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  store ptr %i.aq, ptr %.sroa.25.i, align 8, !tbaa !148, !alias.scope !1302
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.sroa.5.022.in.i.i = phi ptr [ %.sroa.25.i, %.lr.ph.i.i ], [ %.sroa.5.022.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.09.020.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.be, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.bf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.5.022.i.i = load ptr, ptr %.sroa.5.022.in.i.i, align 8, !tbaa !343 ; 6 uses
  %.not.i28 = icmp eq ptr %.sroa.5.022.i.i, %i.ap
  br i1 %.not.i28, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !147
  %i.aw = icmp eq ptr %.sroa.5.022.i.i, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 16
  %.sroa.6.0.in.i.i.i = select i1 %i.aw, ptr %i.s, ptr %i.ax
  %.sroa.6.0.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !39 ; 3 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.az = icmp eq ptr %.sroa.5.022.i.i, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !189
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.sroa.6.0.i.i.i) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 %..i.i.i.i
  %i.bc = sub i64 %.sroa.6.0.i.i.i, %..i.i.i.i
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.07.1.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.6.1.i.i.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.6.0.i.i.i, %bb.h ] ; 2 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i, i64 %.sroa.6.1.i.i.i) ; 3 uses
  %.not.i.i.i29 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i29, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i, ptr nonnull align 1 %.sroa.07.1.i.i.i, i64 %i.bd, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.j, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i, i64 %i.bd
  %i.bf = sub nuw i64 %.sroa.6.019.i.i, %i.bd     ; 2 uses
  %.not.i.i30 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i30, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.g, !llvm.loop !18

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit: ; preds = %bb.g, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !199
  %i.bh = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bg, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, %3
  %.1 = phi i64 [ 0, %3 ], [ %i.r, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit ], [ %i.ai, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.bh, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit ]
  ret i64 %.1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEC1ERS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.b, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.c, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.d, align 1, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE0_So, i64 24), ptr %0, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE0_So, i64 64), ptr %i.a, align 8, !tbaa !33
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull %i.f)
          to label %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.d

_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 24), ptr %0, align 8, !tbaa !33
end_hunk_2
