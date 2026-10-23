Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/delete_scheduler?download=true
inline.NumInlined: 1388
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb15DeleteScheduler16CleanupDirectoryEPNS_3EnvEPNS_18SstFileManagerImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #24
  %.not.i.i.i83 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i83, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i82, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.ai
  %i.fc = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.fd = load i64, ptr %i.h, align 8, !tbaa !130
  %i.fe = shl i64 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fc, i8 0, i64 %i.fe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !129 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.g
  br i1 %i.fg, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.fh = load i64, ptr %i.h, align 8, !tbaa !130
  %i.fi = shl i64 %i.fh, 3
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.fj = load ptr, ptr %6, align 8, !tbaa !158   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fj, %i.fl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fj, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit ] ; 3 uses
  %i.fm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !21
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fr, %i.fl
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i77 = load ptr, ptr %6, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %i.fs = phi ptr [ %.pr.i77, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fj, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !160
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.al:                                            ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74
  %.pre156 = phi ptr [ null, %bb.e ], [ %.pre156.pre160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pre156.pre.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread ] ; 2 uses
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn24, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread ] ; 2 uses
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i78 = icmp eq ptr %.pre156, null
  br i1 %.not.i.i78, label %_ZN7rocksdb6StatusD2Ev.exit81, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79: ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %.pre156) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit81

_ZN7rocksdb6StatusD2Ev.exit81:                    ; preds = %.thread212, %bb.al, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79
  %.pn24.pn.pn.pn.pn215 = phi { ptr, i32 } [ %i.ac, %.thread212 ], [ %.pn24.pn.pn, %bb.al ], [ %.pn24.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79 ]
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn215
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7rocksdb3Env13GetFileSystemEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

declare void @_ZN7rocksdb18SstFileManagerImpl9OnAddFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(840), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !158    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !21
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN7rocksdb18SstFileManagerImpl10OnMoveFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_Pm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(840), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15DeleteScheduler20BackgroundEmptyTrashEv(ptr noundef nonnull align 8 dereferenceable(488) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, rocksdb::Status>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, rocksdb::Status>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %2 = alloca %"class.std::unique_ptr.17", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple.108", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.111", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit, %bb.a
  call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %.pre = load i8, ptr %i.f, align 1, !tbaa !86, !range !136 ; 2 uses
  br i1 %i.ae, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.not.not = icmp eq i8 %.pre, 0
  br i1 %.not.not, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.g)
          to label %bb.c unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !241

.critedge:                                        ; preds = %bb.c
  %8 = trunc nuw i8 %.pre to i1
  br i1 %8, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.af = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %bb.g unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ak = load atomic i64, ptr %i.h seq_cst, align 8
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.023171 = phi i64 [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ak, %bb.g ] ; 2 uses
  %.025170 = phi i64 [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ 0, %bb.g ]
  %.027169 = phi i64 [ %.128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.aj, %bb.g ]
  %i.ao = load i8, ptr %i.f, align 1, !tbaa !86, !range !136, !noundef !137
  %.not.not42 = icmp eq i8 %i.ao, 0
  br i1 %.not.not42, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %.lr.ph
  %i.ap = load atomic i64, ptr %i.h seq_cst, align 8
  %.not = icmp eq i64 %.023171, %i.ap
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load atomic i64, ptr %i.h seq_cst, align 8 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %bb.j unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !88
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 1, ptr noundef %i.aw, ptr noundef nonnull @.str.48, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i64 noundef %i.aq)
          to label %bb.k unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.i, %bb.e, %bb.f
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp101

bb.k:                                             ; preds = %bb.j, %bb.h
  %.128 = phi i64 [ %i.av, %bb.j ], [ %.027169, %bb.h ] ; 2 uses
  %.126 = phi i64 [ 0, %bb.j ], [ %.025170, %bb.h ]
  %.124 = phi i64 [ %i.aq, %bb.j ], [ %.023171, %bb.h ] ; 3 uses
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !161, !noalias !247 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.j, ptr %5, align 8, !tbaa !144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !145 ; 8 uses
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp slt i64 %i.ba, 0
  br i1 %i.bc, label %.noexc.i, label %bb.m

.noexc.i:                                         ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #28
          to label %.noexc unwind label %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bd = add nuw i64 %i.ba, 1                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !100

.noexc6.i:                                        ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc53 unwind label %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.m
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #26
          to label %.noexc54 unwind label %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.bf, ptr %5, align 8, !tbaa !20
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc54, %bb.k
  %i.bg = phi ptr [ %i.bf, %.noexc54 ], [ %i.j, %bb.k ] ; 3 uses
  switch i64 %i.ba, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bh = load i8, ptr %i.ay, align 1, !tbaa !21
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !21
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.k, align 8, !tbaa !145
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i8 0, ptr %i.bi, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.l, ptr %6, align 8, !tbaa !144
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !145 ; 8 uses
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %bb.q, label %._crit_edge.i.i55

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp slt i64 %i.bm, 0
  br i1 %i.bo, label %.noexc.i58, label %bb.r

.noexc.i58:                                       ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #28
          to label %.noexc59 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.noexc.i58
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bp = add nuw i64 %i.bm, 1                    ; 2 uses
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %.noexc6.i57, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56, !prof !100

.noexc6.i57:                                      ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc60 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %.noexc6.i57
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56: ; preds = %bb.r
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #26
          to label %.noexc61 unwind label %.loopexit.split-lp111.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc61:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56
  store ptr %i.br, ptr %6, align 8, !tbaa !20
  store i64 %i.bm, ptr %i.l, align 8, !tbaa !21
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc61, %bb.p
  %i.bs = phi ptr [ %i.br, %.noexc61 ], [ %i.l, %bb.p ] ; 3 uses
  switch i64 %i.bm, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i55
  %i.bt = load i8, ptr %i.bk, align 1, !tbaa !21
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !21
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i55
  store i64 %i.bm, ptr %i.m, align 8, !tbaa !145
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bm
  store i8 0, ptr %i.bu, align 1, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !166, !range !136, !noundef !137
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  %i.by = load i64, ptr %i.bx, align 4            ; 2 uses
  %.sroa.094.0.extract.trunc = trunc i64 %i.by to i32 ; 2 uses
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.c)
          to label %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit unwind label %bb.ab

_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit:     ; preds = %bb.u
  %i.bz = trunc nuw i8 %i.bw to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 1, ptr %i.b, align 1, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7rocksdb15DeleteScheduler15DeleteTrashFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_bPmPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.bz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !94
  %i.cb = add i64 %i.ca, %.126                    ; 2 uses
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.c)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cc = load i8, ptr %i.b, align 1, !tbaa !135, !range !136, !noundef !137
  %i.cd = trunc nuw i8 %i.cc to i1                ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !143 ; 3 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 176
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(33) %i.ce, i32 noundef 175, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.x, %bb.y
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !167 ; 7 uses
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !248
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -80
  %.not.i87 = icmp eq ptr %i.ci, %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb15DeleteScheduler15DeleteTrashFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_bPmPb:bb.a
  %i.rd = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.rd, align 8, !tbaa !133, !alias.scope !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 6, i1 false), !alias.scope !277
  br label %_ZN7rocksdb15DeleteScheduler12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZN7rocksdb15DeleteScheduler12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %bb.bq, %bb.bp
  %.not.i148 = icmp eq ptr %0, %29
  br i1 %.not.i148, label %_ZN7rocksdb6StatusaSEOS0_.exit151, label %bb.br

bb.br:                                            ; preds = %_ZN7rocksdb15DeleteScheduler12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.re = load <4 x i8>, ptr %29, align 8, !tbaa !21
  %i.rf = load i8, ptr %29, align 8, !tbaa !134   ; 2 uses
  store <4 x i8> %i.re, ptr %0, align 8, !tbaa !21
  store <4 x i8> zeroinitializer, ptr %29, align 8, !tbaa !21
  %i.rg = getelementptr inbounds nuw i8, ptr %29, i64 4 ; 2 uses
  %i.rh = load i8, ptr %i.rg, align 4, !tbaa !135, !range !136, !noundef !137
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.rh, ptr %i.ri, align 4, !tbaa !138
  store i8 0, ptr %i.rg, align 4, !tbaa !138
  %i.rj = getelementptr inbounds nuw i8, ptr %29, i64 5 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !21
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !139
  store i8 0, ptr %i.rj, align 1, !tbaa !139
  %i.rm = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !112
  store ptr null, ptr %i.rm, align 8, !tbaa !112
  %i.ro = load ptr, ptr %i.r, align 8, !tbaa !112 ; 2 uses
  store ptr %i.rn, ptr %i.r, align 8, !tbaa !112
  %.not.i.i.i.i.i149 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i.i.i149, label %_ZN7rocksdb6StatusaSEOS0_.exit151, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i150

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i150: ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.ro) #24
  br label %_ZN7rocksdb6StatusaSEOS0_.exit151

_ZN7rocksdb6StatusaSEOS0_.exit151:                ; preds = %_ZN7rocksdb15DeleteScheduler12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %bb.br, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i150
  %.pr246251 = phi i8 [ 0, %_ZN7rocksdb15DeleteScheduler12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit ], [ %i.rf, %bb.br ], [ %i.rf, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i150 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !112 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i152, label %bb.bt, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i153

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i153: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit151
  call void @_ZdaPv(ptr noundef nonnull %i.rq) #24
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bp
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.ca

bb.bt:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i153, %_ZN7rocksdb6StatusaSEOS0_.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.rs = icmp eq i8 %.pr246251, 0
  br i1 %i.rs, label %.thread349, label %.thread249

.thread249:                                       ; preds = %bb.bn, %bb.d, %bb.bt
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !88
  %i.rv = load ptr, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %.thread249
  %i.rw = load ptr, ptr %30, align 8, !tbaa !20
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 3, ptr noundef %i.ru, ptr noundef nonnull @.str.54, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.rv, ptr noundef %i.rw)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.rx = load ptr, ptr %30, align 8, !tbaa !20   ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.rz = icmp eq ptr %i.rx, %i.ry
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.bv
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !21
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  store i64 0, ptr %5, align 8, !tbaa !94
  br label %bb.bz

bb.bw:                                            ; preds = %.thread249
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.bx:                                            ; preds = %bb.bu
  %i.sd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.se = load ptr, ptr %30, align 8, !tbaa !20   ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.bx
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !21
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.bw
  %.pn68 = phi { ptr, i32 } [ %i.sc, %bb.bw ], [ %i.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %i.sd, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.ca

.thread349:                                       ; preds = %_ZN7rocksdb6StatusD2Ev.exit100, %bb.bt
  br i1 %4, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.thread349
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sk = load i64, ptr %5, align 8, !tbaa !94
  %i.sl = atomicrmw sub ptr %i.sj, i64 %i.sk seq_cst, align 8 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.by, %.thread349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.ca:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit112, %bb.bb, %_ZNSt10unique_ptrIN7rocksdb11FSDirectoryESt14default_deleteIS1_EED2Ev.exit147, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn53.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit112 ], [ %i.rr, %bb.bs ], [ %i.ob, %bb.bb ], [ %.pn62.pn.pn, %_ZNSt10unique_ptrIN7rocksdb11FSDirectoryESt14default_deleteIS1_EED2Ev.exit147 ] ; 2 uses
  %i.sm = load ptr, ptr %i.r, align 8, !tbaa !112 ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i161, label %_ZN7rocksdb6StatusD2Ev.exit163, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i162

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i162: ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.sm) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit163

_ZN7rocksdb6StatusD2Ev.exit163:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i162, %bb.ca, %bb.u
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.u ], [ %.pn68.pn, %bb.ca ], [ %.pn68.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn68.pn.pn
}

declare void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76), i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11FileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #25
  ret void
}

declare void @_ZN7rocksdb15DirFsyncOptionsC1ENS0_11FsyncReasonE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #7

declare void @_ZN7rocksdb18SstFileManagerImpl12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(840), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15DeleteScheduler17WaitForEmptyTrashEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !77
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.c, align 1, !tbaa !86, !range !136, !noundef !137
  %.not.not = icmp eq i8 %i.g, 0
  br i1 %.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.d)
          to label %bb.b unwind label %bb.e, !llvm.loop !278

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %bb.e
  resume { ptr, i32 } %i.h

.critedge:                                        ; preds = %bb.b, %bb.c
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit2:     ; preds = %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i64 0, 8589934592) i64 @_ZN7rocksdb15DeleteScheduler14NewTrashBucketEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !78   ; 5 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !99
  %i.n = icmp slt i32 %i.m, %i.f                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.n, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i.i, %i.k
  br i1 %i.o, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !99
  %i.r = icmp slt i32 %i.f, %i.q
  br i1 %i.r, label %.critedge.i, label %bb.h

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i, %bb.b
  %.08.lcssa.i.i.i20.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i ], [ %i.k, %bb.b ]
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc3 unwind label %bb.j    ; 5 uses

.noexc3:                                          ; preds = %.critedge.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  store i32 %i.f, ptr %i.t, align 4, !tbaa !279
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %i.u, align 4, !tbaa !150
  %i.v = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.noexc3
  %i.w = extractvalue { ptr, ptr } %i.v, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = extractvalue { ptr, ptr } %i.v, 0
  %.not.i.i.i = icmp ne ptr %i.x, null
  %i.y = icmp eq ptr %i.w, %i.k
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !99
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !99
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ad = phi i1 [ %i.ac, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.s, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !83
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !83
  br label %bb.h

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #24
  br label %.body

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %.thread.i
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.d)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #27
  unreachable

bb.j:                                             ; preds = %.critedge.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ah, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.d)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit2 unwind label %bb.k

bb.k:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #27
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit2:     ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %bb.h, %bb.a
  %.sroa.2.0 = phi i64 [ 0, %bb.a ], [ 4294967296, %bb.h ]
  %.sroa.08.0 = phi i32 [ undef, %bb.a ], [ %i.f, %bb.h ]
  %.sroa.08.0.insert.ext = zext i32 %.sroa.08.0 to i64
  %.sroa.08.0.insert.insert = or disjoint i64 %.sroa.2.0, %.sroa.08.0.insert.ext
  ret i64 %.sroa.08.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15DeleteScheduler23WaitForEmptyTrashBucketEi(ptr noundef nonnull align 8 dereferenceable(488) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.d = load i32, ptr %i.c, align 4, !tbaa !78
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.b, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.h, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !99
  %i.k = icmp slt i32 %i.j, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = icmp eq ptr %.19.i.i.i, %i.h
  br i1 %i.l, label %.critedge, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !99
  %i.o = icmp slt i32 %1, %i.n
  br i1 %i.o, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit16
  %storemerge22 = phi ptr [ %.19.i.i.i, %.lr.ph ], [ %spec.select.i.i14, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit16 ]
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge22, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !150
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.p, align 1, !tbaa !86, !range !136, !noundef !137
  %.not3.not = icmp eq i8 %i.u, 0
  br i1 %.not3.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.q)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %.not10.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i4, label %.critedge, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %bb.f, %.lr.ph.i.i.i5
  %.012.i.i.i6 = phi ptr [ %.1.i.i.i11, %.lr.ph.i.i.i5 ], [ %i.v, %bb.f ] ; 3 uses
  %.0811.i.i.i7 = phi ptr [ %.19.i.i.i8, %.lr.ph.i.i.i5 ], [ %i.h, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = icmp slt i32 %i.x, %1                    ; 2 uses
  %.19.i.i.i8 = select i1 %i.y, ptr %.0811.i.i.i7, ptr %.012.i.i.i6 ; 4 uses
  %.1.in.v.i.i.i9 = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i10 = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 %.1.in.v.i.i.i9
  %.1.i.i.i11 = load ptr, ptr %.1.in.i.i.i10, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %.1.i.i.i11, null
  br i1 %.not.i.i.i12, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i13, label %.lr.ph.i.i.i5, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i13: ; preds = %.lr.ph.i.i.i5
  %i.z = icmp eq ptr %.19.i.i.i8, %i.h
  br i1 %i.z, label %.critedge, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit16

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit16: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i13
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i8, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !99
  %i.ac = icmp slt i32 %1, %i.ab                  ; 2 uses
  %spec.select.i.i14 = select i1 %i.ac, ptr %i.h, ptr %.19.i.i.i8
  br i1 %i.ac, label %.critedge, label %bb.c

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.critedge
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #27
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp31

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i13, %bb.f, %bb.d, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit16, %bb.c, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.b, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit
  %i.af = invoke noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit: ; preds = %.critedge, %bb.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit17 unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit17:    ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

declare void @_ZN7rocksdb4port5MutexC1Eb(ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #7

declare void @_ZN7rocksdb4port7CondVarC1EPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !99   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !99
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !280
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit.i.i.i.i

_ZN7rocksdb6StatusD2Ev.exit.i.i.i.i:              ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i, %.lr.ph
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !281

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !282

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

end_hunk_1
