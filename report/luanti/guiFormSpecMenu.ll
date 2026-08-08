inline.NumInlined: 8820
inline.NumDeleted: 2296
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE:bb.a
  %.05.i.i.i.i221 = phi ptr [ %i.in, %.lr.ph.i.i.i.i220 ], [ %i.ik, %_ZNSt6vectorIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE5clearEv.exit ] ; 2 uses
  call void @_ZNSt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i221) #32
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i221, i64 216 ; 2 uses
  %.not.i.i.i.i222 = icmp eq ptr %i.in, %i.im
  br i1 %.not.i.i.i.i222, label %_ZSt8_DestroyIPSt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEESC_EvT_SE_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i220, !llvm.loop !261

_ZSt8_DestroyIPSt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEESC_EvT_SE_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i220
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !260
  br label %_ZNSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESaISB_EE5clearEv.exit

_ZNSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESaISB_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEESC_EvT_SE_RSaIT0_E.exit.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !255 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !256 ; 2 uses
  %.not.i.i223 = icmp eq ptr %i.ir, %i.ip
  br i1 %.not.i.i223, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE5clearEv.exit, label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %_ZNSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESaISB_EE5clearEv.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i225 = phi ptr [ %i.ix, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerEEvPT_.exit.i.i.i.i ], [ %i.ip, %_ZNSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESaISB_EE5clearEv.exit ] ; 3 uses
  %i.is = load ptr, ptr %.05.i.i.i.i225, align 8, !tbaa !191 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i225, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i226: ; preds = %.lr.ph.i.i.i.i224
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !190
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i226
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i225, i64 40 ; 2 uses
  %.not.i.i.i.i227 = icmp eq ptr %i.ix, %i.ir
  br i1 %.not.i.i.i.i227, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i224, !llvm.loop !257

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerEEvPT_.exit.i.i.i.i
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !256
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE5clearEv.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESaISB_EE5clearEv.exit, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI9StyleSpecSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.iy) #32
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI9StyleSpecSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.iz) #32
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !239 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !519
  %.not.i.i229 = icmp eq ptr %i.jd, %i.jb
  br i1 %.not.i.i229, label %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN3gui11IGUIElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN3gui11IGUIElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE5clearEv.exit
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !519
  br label %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE5clearEv.exit, %_ZSt8_DestroyIPPN3gui11IGUIElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !280 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.jh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.jg, %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit ] ; 4 uses
  %i.jh = load ptr, ptr %.06.i.i.i, align 8, !tbaa !281 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !191 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !190
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #33
  %.not.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !282

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit
  %i.jo = load ptr, ptr %i.je, align 8, !tbaa !198
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !199
  %i.jr = shl i64 %i.jq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jo, i8 0, i64 %i.jr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !280 ; 2 uses
  %.not5.i.i.i230 = icmp eq ptr %i.ju, null
  br i1 %.not5.i.i.i230, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234
  %.06.i.i.i232 = phi ptr [ %i.jv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234 ], [ %i.ju, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit ] ; 4 uses
  %i.jv = load ptr, ptr %.06.i.i.i232, align 8, !tbaa !281 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.06.i.i.i232, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !191 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.06.i.i.i232, i64 24 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i233: ; preds = %.lr.ph.i.i.i231
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !190
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234: ; preds = %.lr.ph.i.i.i231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i233
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i232, i64 noundef 56) #33
  %.not.i.i.i235 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i235, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237, label %.lr.ph.i.i.i231, !llvm.loop !282

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit
  %i.kc = load ptr, ptr %i.js, align 8, !tbaa !198
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !199
  %i.kf = shl i64 %i.ke, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kc, i8 0, i64 %i.kf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i8 0, i64 16, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !280 ; 2 uses
  %.not5.i.i.i238 = icmp eq ptr %i.ki, null
  br i1 %.not5.i.i.i238, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245, label %.lr.ph.i.i.i239

.lr.ph.i.i.i239:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242
  %.06.i.i.i240 = phi ptr [ %i.kj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242 ], [ %i.ki, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237 ] ; 4 uses
  %i.kj = load ptr, ptr %.06.i.i.i240, align 8, !tbaa !281 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.06.i.i.i240, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !191 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.06.i.i.i240, i64 24 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i241: ; preds = %.lr.ph.i.i.i239
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !190
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242: ; preds = %.lr.ph.i.i.i239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i240, i64 noundef 56) #33
  %.not.i.i.i243 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i243, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245, label %.lr.ph.i.i.i239, !llvm.loop !282

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237
  %i.kq = load ptr, ptr %i.kg, align 8, !tbaa !198
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !199
  %i.kt = shl i64 %i.ks, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kq, i8 0, i64 %i.kt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, i8 0, i64 16, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 1996
  %i.kv = load i8, ptr %i.ku, align 4, !tbaa !217, !range !248, !noundef !249
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1997
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !218
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2008
  store i8 1, ptr %i.kx, align 8, !tbaa !696
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 2009
  store i8 0, ptr %i.ky, align 1, !tbaa !697
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 7 uses
  store i16 1, ptr %i.kz, align 8, !tbaa !224
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 2012
  store i32 -1946157056, ptr %i.la, align 4, !tbaa !347
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 2232
  store i32 0, ptr %i.lb, align 8, !tbaa !231
  %i.lc = load ptr, ptr @g_settings, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ld, ptr %5, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i64 28, ptr %i.d, align 8, !tbaa !192
  %i.le = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc248 unwind label %bb.be ; 2 uses

.noexc248:                                        ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245
  store ptr %i.le, ptr %5, align 8, !tbaa !191
  %i.lf = load i64, ptr %i.d, align 8, !tbaa !192 ; 3 uses
  store i64 %i.lf, ptr %i.ld, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.le, ptr noundef nonnull align 1 dereferenceable(28) @.str.138, i64 28, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !189
  %i.lh = load ptr, ptr %5, align 8, !tbaa !191
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.lj = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aq unwind label %bb.bf     ; 2 uses

bb.aq:                                            ; preds = %.noexc248
  %i.lk = extractvalue { <2 x float>, i64 } %i.lj, 0
  %i.ll = extractvalue { <2 x float>, i64 } %i.lj, 1 ; 2 uses
  %.sroa.5486.sroa.0.0.extract.trunc = trunc i64 %i.ll to i32
  %i.lm = bitcast i32 %.sroa.5486.sroa.0.0.extract.trunc to float
  %i.ln = and i64 %i.ll, 4294967296
  %.not515 = icmp eq i64 %i.ln, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not515, float 0.000000e+00, float %i.lm
  %.sroa.02.0.i = select i1 %.not515, <2 x float> zeroinitializer, <2 x float> %i.lk ; 2 uses
  %i.lo = load ptr, ptr %5, align 8, !tbaa !191   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ld
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.aq
  %i.lq = load i64, ptr %i.ld, align 8, !tbaa !190
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ls = load ptr, ptr @g_settings, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.lt, ptr %6, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 30, ptr %i.c, align 8, !tbaa !192
  %i.lu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc254 unwind label %bb.bg ; 2 uses

.noexc254:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  store ptr %i.lu, ptr %6, align 8, !tbaa !191
  %i.lv = load i64, ptr %i.c, align 8, !tbaa !192 ; 3 uses
  store i64 %i.lv, ptr %i.lt, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.lu, ptr noundef nonnull align 1 dereferenceable(30) @.str.139, i64 30, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !189
  %i.lx = load ptr, ptr %6, align 8, !tbaa !191
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lv
  store i8 0, ptr %i.ly, align 1, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.lz = invoke noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ar unwind label %bb.bh

bb.ar:                                            ; preds = %.noexc254
  %.sroa.083.0.vec.extract = extractelement <2 x float> %.sroa.02.0.i, i64 0 ; 2 uses
  %i.ma = fcmp nsz olt float %.sroa.083.0.vec.extract, 0.000000e+00
  %.v.i256 = select i1 %i.ma, float -5.000000e-01, float 5.000000e-01
  %i.mb = fadd nsz float %.sroa.083.0.vec.extract, %.v.i256
  %i.mc = fptosi float %i.mb to i32
  %14 = insertelement <2 x float> %.sroa.02.0.i, float %.sroa.3.0.i.sroa.speculated, i64 0 ; 2 uses
  %15 = fcmp nsz olt <2 x float> %14, zeroinitializer
  %16 = select <2 x i1> %15, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %17 = fadd nsz <2 x float> %14, %16
  %18 = insertelement <4 x i32> poison, i32 %i.mc, i64 2
  %19 = insertelement <4 x i32> %18, i32 %i.lz, i64 3
  %20 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = fptosi <4 x float> %20 to <4 x i32>
  %22 = shufflevector <4 x i32> %21, <4 x i32> %19, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %23 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %22, <4 x i32> zeroinitializer)
  %24 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %23, <4 x i32> splat (i32 255))
  %25 = shl nuw <4 x i32> %24, <i32 0, i32 8, i32 16, i32 24>
  %26 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %25)
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store i32 %26, ptr %i.md, align 8, !tbaa !347
  %i.me = load ptr, ptr %6, align 8, !tbaa !191   ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.lt
  br i1 %i.mf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.ar
  %i.mg = load i64, ptr %i.lt, align 8, !tbaa !190
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 2020 ; 2 uses
  store i32 -9534916, ptr %i.mi, align 4, !tbaa !347
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  store i32 -1, ptr %i.mj, align 8, !tbaa !347
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store <4 x i32> <i32 0, i32 0, i32 110, i32 18>, ptr %7, align 16, !tbaa !347
  %i.mm = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.ml, i64 0, ptr nonnull @.str.22, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null, i32 noundef -1, i1 noundef zeroext false)
          to label %bb.as unwind label %bb.bi     ; 3 uses

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 9 uses
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !9
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 328
  %i.mq = load ptr, ptr %i.mp, align 8
  invoke void %i.mq(ptr noundef nonnull align 8 dereferenceable(308) %i.mm, i1 noundef zeroext true)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %bb.as
  %i.mr = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %.sroa.080.0.copyload = load i32, ptr %i.mi, align 4, !tbaa !347
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !9
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 344
  %i.mu = load ptr, ptr %i.mt, align 8
  invoke void %i.mu(ptr noundef nonnull align 8 dereferenceable(308) %i.mr, i32 %.sroa.080.0.copyload)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.mv = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !9
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 352
  %i.my = load ptr, ptr %i.mx, align 8
  invoke void %i.my(ptr noundef nonnull align 8 dereferenceable(308) %i.mv, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.mz = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !9
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 376
  %i.nc = load ptr, ptr %i.nb, align 8
  invoke void %i.nc(ptr noundef nonnull align 8 dereferenceable(308) %i.mz, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.nd = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %.sroa.079.0.copyload = load i32, ptr %i.mj, align 8, !tbaa !347
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !9
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 304
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(308) %i.nd, i32 %.sroa.079.0.copyload)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.nh = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !9
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 392
  %i.nk = load ptr, ptr %i.nj, align 8
  invoke void %i.nk(ptr noundef nonnull align 8 dereferenceable(308) %i.nh, i32 noundef 2, i32 noundef 2)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.nl = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 400
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(308) %i.nl, i1 noundef zeroext false)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.np = load ptr, ptr %i.mn, align 8, !tbaa !214 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !9
  %i.nr = getelementptr i8, ptr %i.nq, i64 -24
  %i.ns = load i64, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds i8, ptr %i.np, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !295
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 736
  invoke void @_Z5splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.157") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.nx, i8 noundef signext 93)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.ny = load ptr, ptr %8, align 8, !tbaa !355   ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 11 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !355
  %i.ob = icmp eq ptr %i.ny, %i.oa
  br i1 %i.ob, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oc = invoke noundef zeroext i1 @_ZN15GUIFormSpecMenu18parseVersionDirectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ny)
          to label %bb.bc unwind label %.loopexit.split-lp527.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %spec.select = zext i1 %i.oc to i32
  %.pre = load ptr, ptr %i.nz, align 8, !tbaa !244
  %.pre661 = load ptr, ptr %8, align 8, !tbaa !243
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit208
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.be:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.bf:                                            ; preds = %.noexc248
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %5, align 8, !tbaa !191   ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.ld
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.bf
  %i.oi = load i64, ptr %i.ld, align 8, !tbaa !190
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %bb.be
  %.pn161 = phi { ptr, i32 } [ %i.oe, %bb.be ], [ %i.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.of, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.gb

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.bh:                                            ; preds = %.noexc254
  %i.ol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.om = load ptr, ptr %6, align 8, !tbaa !191   ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.lt
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.bh
  %i.oo = load i64, ptr %i.lt, align 8, !tbaa !190
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.bg
  %.pn163 = phi { ptr, i32 } [ %i.ok, %bb.bg ], [ %i.ol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %i.ol, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.gb

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.gb

bb.bj:                                            ; preds = %bb.az
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit526:                                     ; preds = %.lr.ph600
  %lpad.loopexit528 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit:                   ; preds = %.lr.ph593
  %lpad.loopexit531 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit.split-lp.loopexit: ; preds = %.lr.ph586
  %lpad.loopexit534 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph580
  %lpad.loopexit537 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb
  %lpad.loopexit.split-lp538 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_guiFormSpecMenu.cpp:bb.a

bb.d:                                             ; preds = %bb.c
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.c, %bb.b
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !191 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mq, i64 -48 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !190
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.nd = icmp eq ptr %i.mr, %0
  br i1 %i.nd, label %__cxx_global_var_init.exit, label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.f:                                             ; preds = %.noexc445.i
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.g:                                             ; preds = %.noexc453.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.h:                                             ; preds = %.noexc515.i
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.i:                                             ; preds = %.noexc532.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.j:                                             ; preds = %.noexc593.i
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.k:                                             ; preds = %.noexc619.i
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.l:                                             ; preds = %.noexc628.i
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

.thread.loopexit.i:                               ; preds = %.noexc637.i
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mi) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lk) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.la) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kj) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kc) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.js) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.je) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ix) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.iq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ij) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ic) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gn) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gg) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fz) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.er) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ek) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ed) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dw) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dp) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.di) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.db) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cn) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cg) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bz) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.be) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ax) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aj) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ac) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.v) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.o) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #32
  br label %.thread.i

.preheader.preheader.i:                           ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.44230.i = phi ptr [ %i.js, %bb.i ], [ %i.hb, %bb.g ], [ %i.er, %bb.e ], [ %i.lk, %bb.l ], [ %i.la, %bb.k ], [ %i.kq, %bb.j ], [ %i.hs, %bb.h ], [ %i.fb, %bb.f ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ni, %bb.i ], [ %i.ng, %bb.g ], [ %i.ne, %bb.e ], [ %i.nl, %bb.l ], [ %i.nk, %bb.k ], [ %i.nj, %bb.j ], [ %i.nh, %bb.h ], [ %i.nf, %bb.f ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.nn = phi ptr [ %i.no, %.preheader.i ], [ %.44230.i, %.preheader.preheader.i ]
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -64 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.no) #32
  %i.np = icmp eq ptr %i.no, %0
  br i1 %i.np, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %.preheader.i, %.thread.loopexit.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn762.i = phi { ptr, i32 } [ %i.nm, %.thread.loopexit.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn762.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.nq = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS7_10parserDataERKS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairISB_SE_EEED2Ev, ptr nonnull @_ZN15GUIFormSpecMenu15element_parsersB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH11errorstream() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #28

declare extern_weak void @_ZTH13warningstream() #1

declare extern_weak void @_ZTH10infostream() #1

declare extern_weak void @_ZTH13verbosestream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !32, i64 408}
!12 = !{!"_ZTS15GUIFormSpecMenu", !13, i64 0, !32, i64 408, !48, i64 416, !48, i64 472, !55, i64 528, !27, i64 584, !29, i64 592, !27, i64 600, !27, i64 608, !29, i64 616, !57, i64 624, !65, i64 704, !66, i64 712, !67, i64 720, !68, i64 728, !38, i64 736, !38, i64 768, !69, i64 800, !32, i64 848, !73, i64 856, !78, i64 880, !83, i64 904, !83, i64 960, !83, i64 1016, !85, i64 1072, !90, i64 1096, !95, i64 1120, !100, i64 1144, !109, i64 1192, !114, i64 1216, !119, i64 1240, !124, i64 1264, !129, i64 1288, !134, i64 1312, !72, i64 1320, !32, i64 1322, !141, i64 1328, !156, i64 1624, !32, i64 1625, !72, i64 1626, !141, i64 1632, !157, i64 1928, !32, i64 1952, !162, i64 1960, !23, i64 1968, !32, i64 1976, !23, i64 1984, !6, i64 1992, !32, i64 1996, !32, i64 1997, !32, i64 1998, !44, i64 2000, !32, i64 2008, !32, i64 2009, !163, i64 2012, !163, i64 2016, !163, i64 2020, !163, i64 2024, !164, i64 2032, !165, i64 2040, !38, i64 2048, !72, i64 2080, !166, i64 2088, !171, i64 2128, !32, i64 2136, !32, i64 2137, !24, i64 2144, !172, i64 2152, !38, i64 2160, !173, i64 2192, !6, i64 2216, !178, i64 2224, !6, i64 2232}
!13 = !{!"_ZTS12GUIModalMenu", !14, i64 0, !27, i64 308, !27, i64 316, !44, i64 324, !30, i64 332, !32, i64 336, !45, i64 344, !32, i64 352, !46, i64 360, !32, i64 376, !47, i64 384, !46, i64 392}
!14 = !{!"_ZTSN3gui11IGUIElementE", !15, i64 0, !16, i64 8, !24, i64 32, !25, i64 40, !26, i64 48, !26, i64 64, !26, i64 80, !26, i64 96, !26, i64 112, !28, i64 128, !31, i64 144, !31, i64 152, !32, i64 160, !32, i64 161, !32, i64 162, !32, i64 163, !33, i64 168, !33, i64 200, !37, i64 232, !6, i64 264, !32, i64 268, !6, i64 272, !32, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !42, i64 296, !43, i64 304}
!15 = !{!"_ZTS14IEventReceiver"}
!16 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !17, i64 0}
!17 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !18, i64 0}
!18 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !19, i64 0}
!19 = !{!"_ZTSNSt8__detail17_List_node_headerE", !20, i64 0, !23, i64 16}
!20 = !{!"_ZTSNSt8__detail15_List_node_baseE", !21, i64 0, !21, i64 8}
!21 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p1 _ZTSN3gui11IGUIElementE", !22, i64 0}
!25 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !21, i64 0}
!26 = !{!"_ZTSN4core4rectIiEE", !27, i64 0, !27, i64 8}
!27 = !{!"_ZTSN4core8vector2dIiEE", !6, i64 0, !6, i64 4}
!28 = !{!"_ZTSN4core4rectIfEE", !29, i64 0, !29, i64 8}
!29 = !{!"_ZTSN4core8vector2dIfEE", !30, i64 0, !30, i64 4}
!30 = !{!"float", !7, i64 0}
!31 = !{!"_ZTSN4core11dimension2dIjEE", !6, i64 0, !6, i64 4}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSN4core6stringIwEE", !34, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !35, i64 0, !23, i64 8, !7, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 wchar_t", !22, i64 0}
!37 = !{!"_ZTSN4core6stringIcEE", !38, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !23, i64 8, !7, i64 16}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!40 = !{!"p1 omnipotent char", !22, i64 0}
!41 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !7, i64 0}
!42 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !22, i64 0}
!43 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !7, i64 0}
!44 = !{!"_ZTSN4core8vector2dIjEE", !6, i64 0, !6, i64 4}
!45 = !{!"p1 _ZTS12IMenuManager", !22, i64 0}
!46 = !{!"_ZTS13PointerAction", !27, i64 0, !23, i64 8}
!47 = !{!"_ZTS7irr_ptrIN3gui11IGUIElementEE", !24, i64 0}
!48 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI9StyleSpecSaIS7_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !49, i64 0}
!49 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI9StyleSpecSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !50, i64 0, !23, i64 8, !52, i64 16, !23, i64 24, !54, i64 32, !53, i64 48}
!50 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !51, i64 0}
!51 = !{!"any p2 pointer", !22, i64 0}
!52 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !53, i64 0}
!53 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!54 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !30, i64 0, !23, i64 8}
!55 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !56, i64 0}
!56 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !50, i64 0, !23, i64 8, !52, i64 16, !23, i64 24, !54, i64 32, !53, i64 48}
!57 = !{!"_ZTSSt5stackIN4core8vector2dIfEESt5dequeIS2_SaIS2_EEE", !58, i64 0}
!58 = !{!"_ZTSSt5dequeIN4core8vector2dIfEESaIS2_EE", !59, i64 0}
!59 = !{!"_ZTSSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE", !60, i64 0}
!60 = !{!"_ZTSNSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE11_Deque_implE", !61, i64 0}
!61 = !{!"_ZTSNSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE16_Deque_impl_dataE", !62, i64 0, !23, i64 8, !63, i64 16, !63, i64 48}
!62 = !{!"p2 _ZTSN4core8vector2dIfEE", !51, i64 0}
!63 = !{!"_ZTSSt15_Deque_iteratorIN4core8vector2dIfEERS2_PS2_E", !64, i64 0, !64, i64 8, !64, i64 16, !62, i64 24}
!64 = !{!"p1 _ZTSN4core8vector2dIfEE", !22, i64 0}
!65 = !{!"p1 _ZTS16InventoryManager", !22, i64 0}
!66 = !{!"p1 _ZTS20ISimpleTextureSource", !22, i64 0}
!67 = !{!"p1 _ZTS13ISoundManager", !22, i64 0}
!68 = !{!"p1 _ZTS6Client", !22, i64 0}
!69 = !{!"_ZTS17InventoryLocation", !70, i64 0, !38, i64 8, !71, i64 40}
!70 = !{!"_ZTSN17InventoryLocation4TypeE", !7, i64 0}
!71 = !{!"_ZTSN4core8vector3dIsEE", !72, i64 0, !72, i64 2, !72, i64 4}
!72 = !{!"short", !7, i64 0}
!73 = !{!"_ZTSSt6vectorIP16GUIInventoryListSaIS1_EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIP16GUIInventoryListSaIS1_EE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIP16GUIInventoryListSaIS1_EE12_Vector_implE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIP16GUIInventoryListSaIS1_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!77 = !{!"p2 _ZTS16GUIInventoryList", !51, i64 0}
!78 = !{!"_ZTSSt6vectorIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE", !79, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE12_Vector_implE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!82 = !{!"p1 _ZTSN15GUIFormSpecMenu12ListRingSpecE", !22, i64 0}
!83 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE", !84, i64 0}
!84 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !50, i64 0, !23, i64 8, !52, i64 16, !23, i64 24, !54, i64 32, !53, i64 48}
!85 = !{!"_ZTSSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN15GUIFormSpecMenu9FieldSpecESaIS1_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu9FieldSpecESaIS1_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu9FieldSpecESaIS1_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN15GUIFormSpecMenu9FieldSpecE", !22, i64 0}
!90 = !{!"_ZTSSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE", !91, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE12_Vector_implE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"p1 _ZTSSt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableE", !22, i64 0}
!95 = !{!"_ZTSSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecEPN3gui12IGUICheckBoxEESaIS6_EE", !96, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEPN3gui12IGUICheckBoxEESaIS6_EE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEPN3gui12IGUICheckBoxEESaIS6_EE12_Vector_implE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEPN3gui12IGUICheckBoxEESaIS6_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!99 = !{!"p1 _ZTSSt4pairIN15GUIFormSpecMenu9FieldSpecEPN3gui12IGUICheckBoxEE", !22, i64 0}
!100 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN15GUIFormSpecMenu11TooltipSpecESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !101, i64 0}
!101 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N15GUIFormSpecMenu11TooltipSpecEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !102, i64 0}
!102 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N15GUIFormSpecMenu11TooltipSpecEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !103, i64 0, !105, i64 8}
!103 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !104, i64 0}
!104 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!105 = !{!"_ZTSSt15_Rb_tree_header", !106, i64 0, !23, i64 32}
!106 = !{!"_ZTSSt18_Rb_tree_node_base", !107, i64 0, !108, i64 8, !108, i64 16, !108, i64 24}
!107 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!108 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!109 = !{!"_ZTSSt6vectorISt4pairIPN3gui11IGUIElementEN15GUIFormSpecMenu11TooltipSpecEESaIS6_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseISt4pairIPN3gui11IGUIElementEN15GUIFormSpecMenu11TooltipSpecEESaIS6_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN3gui11IGUIElementEN15GUIFormSpecMenu11TooltipSpecEESaIS6_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN3gui11IGUIElementEN15GUIFormSpecMenu11TooltipSpecEESaIS6_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSSt4pairIPN3gui11IGUIElementEN15GUIFormSpecMenu11TooltipSpecEE", !22, i64 0}
!114 = !{!"_ZTSSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecEP12GUIScrollBarESaIS5_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP12GUIScrollBarESaIS5_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP12GUIScrollBarESaIS5_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP12GUIScrollBarESaIS5_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!118 = !{!"p1 _ZTSSt4pairIN15GUIFormSpecMenu9FieldSpecEP12GUIScrollBarE", !22, i64 0}
!119 = !{!"_ZTSSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESaISB_EE", !120, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEESaISC_EE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEESaISC_EE12_Vector_implE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEESaISC_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!123 = !{!"p1 _ZTSSt4pairIN15GUIFormSpecMenu9FieldSpecESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE", !22, i64 0}
!124 = !{!"_ZTSSt6vectorIPN3gui11IGUIElementESaIS2_EE", !125, i64 0}
!125 = !{!"_ZTSSt12_Vector_baseIPN3gui11IGUIElementESaIS2_EE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIPN3gui11IGUIElementESaIS2_EE12_Vector_implE", !127, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIPN3gui11IGUIElementESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!128 = !{!"p2 _ZTSN3gui11IGUIElementE", !51, i64 0}
!129 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE", !130, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE12_Vector_implE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!133 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerE", !22, i64 0}
!134 = !{!"_ZTSSt10unique_ptrIN16GUIInventoryList8ItemSpecESt14default_deleteIS1_EE", !135, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_dataIN16GUIInventoryList8ItemSpecESt14default_deleteIS1_ELb1ELb1EE", !136, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_implIN16GUIInventoryList8ItemSpecESt14default_deleteIS1_EE", !137, i64 0}
!137 = !{!"_ZTSSt5tupleIJPN16GUIInventoryList8ItemSpecESt14default_deleteIS1_EEE", !138, i64 0}
!138 = !{!"_ZTSSt11_Tuple_implILm0EJPN16GUIInventoryList8ItemSpecESt14default_deleteIS1_EEE", !139, i64 0}
!139 = !{!"_ZTSSt10_Head_baseILm0EPN16GUIInventoryList8ItemSpecELb0EE", !140, i64 0}
!140 = !{!"p1 _ZTSN16GUIInventoryList8ItemSpecE", !22, i64 0}
!141 = !{!"_ZTS9ItemStack", !38, i64 0, !72, i64 32, !72, i64 34, !142, i64 40}
!142 = !{!"_ZTS17ItemStackMetadata", !143, i64 0, !146, i64 72, !151, i64 192}
!143 = !{!"_ZTS14SimpleMetadata", !32, i64 8, !144, i64 16}
!144 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !145, i64 0}
!145 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !50, i64 0, !23, i64 8, !52, i64 16, !23, i64 24, !54, i64 32, !53, i64 48}
!146 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !147, i64 0}
!147 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !148, i64 0}
!148 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !149, i64 0}
!149 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !150, i64 0}
!150 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !7, i64 0, !32, i64 112}
!151 = !{!"_ZTSSt8optionalI13WearBarParamsE", !152, i64 0}
!152 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !153, i64 0}
!153 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !154, i64 0}
!154 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !155, i64 0}
!155 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !7, i64 0, !32, i64 56}
end_hunk_1
