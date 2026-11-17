Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityE:bb.a
  %.not.i.i689 = icmp eq ptr %.pr1315, null
  br i1 %.not.i.i689, label %_ZN7rocksdb6StatusD2Ev.exit692, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i690

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i690: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit688
  call void @_ZdaPv(ptr noundef nonnull %.pr1315) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit692

_ZN7rocksdb6StatusD2Ev.exit692:                   ; preds = %bb.gb, %_ZN7rocksdb6StatusaSEOS0_.exit688, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i690
  %i.anh = load ptr, ptr %i.amj, align 8, !tbaa !64 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.amk
  br i1 %i.ani, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit692
  %i.anj = load i64, ptr %i.amk, align 8, !tbaa !65
  %i.ank = add i64 %i.anj, 1
  call void @_ZdlPvm(ptr noundef %i.anh, i64 noundef %i.ank) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.gc:                                            ; preds = %bb.fy
  %i.anl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit714

.thread1318:                                      ; preds = %bb.gf
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i712

bb.gd:                                            ; preds = %bb.fz
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694

bb.ge:                                            ; preds = %bb.ga
  %i.ano = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anp = load ptr, ptr %i.amj, align 8, !tbaa !64 ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %i.amk
  br i1 %i.anq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693: ; preds = %bb.ge
  %i.anr = load i64, ptr %i.amk, align 8, !tbaa !65
  %i.ans = add i64 %i.anr, 1
  call void @_ZdlPvm(ptr noundef %i.anp, i64 noundef %i.ans) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #34
  %.not2364 = icmp eq i8 %i.and, 0
  br i1 %.not2364, label %_ZN7rocksdb6StatusaSERKS0_.exit706, label %.thread2230

.thread2230:                                      ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %.sroa.19.02245 = phi i8 [ %i.anf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.amw, %_ZN7rocksdb6StatusC2EOS0_.exit ]
  %.sroa.221805.02243 = phi ptr [ %i.ang, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.amx, %_ZN7rocksdb6StatusC2EOS0_.exit ] ; 4 uses
  %.sroa.161804.02242 = phi i8 [ %i.ane, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.amv, %_ZN7rocksdb6StatusC2EOS0_.exit ]
  %i.ant = phi <4 x i8> [ %i.anc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.amt, %_ZN7rocksdb6StatusC2EOS0_.exit ]
  store <4 x i8> %i.ant, ptr %0, align 8, !tbaa !65
  store i8 %.sroa.161804.02242, ptr %i.aml, align 4, !tbaa !82
  store i8 %.sroa.19.02245, ptr %i.amm, align 1, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %.not.i.i697 = icmp eq ptr %.sroa.221805.02243, null
  br i1 %.not.i.i697, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %.thread2230
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %16, ptr noundef nonnull %.sroa.221805.02243)
          to label %.noexc705 unwind label %.thread1318

.noexc705:                                        ; preds = %bb.gf
  %.pre.i698 = load ptr, ptr %16, align 8, !tbaa !86
  br label %bb.gg

bb.gg:                                            ; preds = %.noexc705, %.thread2230
  %i.anu = phi ptr [ %.pre.i698, %.noexc705 ], [ null, %.thread2230 ]
  store ptr null, ptr %16, align 8, !tbaa !86
  %i.anv = load ptr, ptr %i.mk, align 8, !tbaa !86 ; 2 uses
  store ptr %i.anu, ptr %i.mk, align 8, !tbaa !86
  %.not.i.i.i.i.i699 = icmp eq ptr %i.anv, null
  br i1 %.not.i.i.i.i.i699, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i700

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i700: ; preds = %bb.gg
  call void @_ZdaPv(ptr noundef nonnull %i.anv) #33
  %.pr.i701 = load ptr, ptr %16, align 8, !tbaa !86 ; 2 uses
  %.not.i12.i702 = icmp eq ptr %.pr.i701, null
  br i1 %.not.i12.i702, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i703

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i703: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i700
  call void @_ZdaPv(ptr noundef nonnull %.pr.i701) #33
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i703, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i700, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %_ZN7rocksdb6StatusaSERKS0_.exit706

_ZN7rocksdb6StatusaSERKS0_.exit706:               ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.anw = phi i1 [ true, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.sroa.221805.02244 = phi ptr [ %.sroa.221805.02243, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i704 ], [ %i.ang, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 2 uses
  %.not.i.i707 = icmp eq ptr %.sroa.221805.02244, null
  br i1 %.not.i.i707, label %_ZN7rocksdb6StatusD2Ev.exit710, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i708

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i708: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit706
  call void @_ZdaPv(ptr noundef nonnull %.sroa.221805.02244) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit710

_ZN7rocksdb6StatusD2Ev.exit710:                   ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit706, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i708
  %i.anx = load ptr, ptr %i.alz, align 8, !tbaa !1012 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.anx, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i1118

.lr.ph.i.i.i1118:                                 ; preds = %_ZN7rocksdb6StatusD2Ev.exit710, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i1119 = phi ptr [ %i.any, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.anx, %_ZN7rocksdb6StatusD2Ev.exit710 ] ; 6 uses
  %i.any = load ptr, ptr %.06.i.i.i1119, align 8, !tbaa !995 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.06.i.i.i1119, i64 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %.06.i.i.i1119, i64 40
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !64 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.06.i.i.i1119, i64 56 ; 2 uses
  %i.aod = icmp eq ptr %i.aob, %i.aoc
  br i1 %i.aod, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1120: ; preds = %.lr.ph.i.i.i1118
  %i.aoe = load i64, ptr %i.aoc, align 8, !tbaa !65
  %i.aof = add i64 %i.aoe, 1
  call void @_ZdlPvm(ptr noundef %i.aob, i64 noundef %i.aof) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1121: ; preds = %.lr.ph.i.i.i1118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1120
  %i.aog = load ptr, ptr %i.anz, align 8, !tbaa !64 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %.06.i.i.i1119, i64 24 ; 2 uses
  %i.aoi = icmp eq ptr %i.aog, %i.aoh
  br i1 %i.aoi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1121
  %i.aoj = load i64, ptr %i.aoh, align 8, !tbaa !65
  %i.aok = add i64 %i.aoj, 1
  call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aok) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1122
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1119, i64 noundef 80) #33
  %.not.i.i.i1123 = icmp eq ptr %i.any, null
  br i1 %.not.i.i.i1123, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i1118, !llvm.loop !10

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZN7rocksdb6StatusD2Ev.exit710
  %i.aol = load ptr, ptr %i.alw, align 8, !tbaa !1009
  %i.aom = load i64, ptr %i.aly, align 8, !tbaa !1010
  %i.aon = shl i64 %i.aom, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aol, i8 0, i64 %i.aon, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alz, i8 0, i64 16, i1 false)
  %i.aoo = load ptr, ptr %i.alw, align 8, !tbaa !1009 ; 2 uses
  %i.aop = icmp eq ptr %i.aoo, %i.alx
  br i1 %i.aop, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.aoq = load i64, ptr %i.aly, align 8, !tbaa !1010
  %i.aor = shl i64 %i.aoq, 3
  call void @_ZdlPvm(ptr noundef %i.aoo, i64 noundef %i.aor) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #34
  %i.aos = add nuw i64 %.sroa.51185.01608, 1      ; 2 uses
  %.not1403 = icmp eq i64 %i.aos, %i.als
  %or.cond1648 = select i1 %i.anw, i1 true, i1 %.not1403
  br i1 %or.cond1648, label %.loopexit1438, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit..backedge_crit_edge

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit..backedge_crit_edge: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %.pre1856.pre = load ptr, ptr %i.bk, align 8
  br label %.backedge.outer

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694: ; preds = %bb.ge, %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693
  %.pn344 = phi { ptr, i32 } [ %i.ann, %bb.gd ], [ %i.ano, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i693 ], [ %i.ano, %bb.ge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #34
  %.not.i.i711 = icmp eq ptr %i.amx, null
  br i1 %.not.i.i711, label %_ZN7rocksdb6StatusD2Ev.exit714, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i712

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i712: ; preds = %.thread1318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694
  %.pn3461321 = phi { ptr, i32 } [ %i.anm, %.thread1318 ], [ %.pn344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694 ]
  %i.aot = phi ptr [ %.sroa.221805.02243, %.thread1318 ], [ %i.amx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694 ]
  call void @_ZdaPv(ptr noundef nonnull %i.aot) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit714

_ZN7rocksdb6StatusD2Ev.exit714:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i712, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694, %bb.gc
  %.pn346.pn = phi { ptr, i32 } [ %i.anl, %bb.gc ], [ %.pn344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i694 ], [ %.pn3461321, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i712 ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.alw) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #34
  br label %.thread2263.loopexit.split-lp

.thread1323:                                      ; preds = %.backedge
  %.old = add nuw i64 %.sroa.51185.01608, 1       ; 2 uses
  %.not1403.old = icmp eq i64 %.old, %i.als
  br i1 %.not1403.old, label %.loopexit1438, label %.backedge

bb.gi:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit676
  br i1 %i.alg, label %.thread1364, label %.preheader1442

.preheader1442:                                   ; preds = %bb.gi
  %i.aou = load i32, ptr %i.a, align 4, !tbaa !669 ; 2 uses
  %.not3371611 = icmp eq i32 %i.aou, 0
  br i1 %.not3371611, label %.loopexit1438, label %.lr.ph1613

.lr.ph1613:                                       ; preds = %.preheader1442
  %72 = load ptr, ptr %29, align 8
  br label %.lr.ph1613.a

.preheader1437:                                   ; preds = %.critedge
  %.not3381614 = icmp eq i32 %i.apn, 0
  br i1 %.not3381614, label %.loopexit1438, label %.lr.ph1616

.lr.ph1616:                                       ; preds = %.preheader1437
  %73 = load ptr, ptr %29, align 8
  br label %.lr.ph1616.a

.lr.ph1613.a:                                     ; preds = %.lr.ph1613, %.critedge
  %i.aov = phi i32 [ %i.aou, %.lr.ph1613 ], [ %i.apn, %.critedge ] ; 2 uses
  %indvars.iv1751 = phi i64 [ 0, %.lr.ph1613 ], [ %indvars.iv.next1752, %.critedge ] ; 7 uses
  %i.aow = load ptr, ptr %40, align 8, !tbaa !985
  %i.aox = lshr i64 %indvars.iv1751, 6
  %.zext = and i64 %i.aox, 67108863
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %.zext
  %i.aoz = and i64 %indvars.iv1751, 63
  %i.apa = shl nuw i64 1, %i.aoz
  %i.apb = load i64, ptr %i.aoy, align 8, !tbaa !776
  %i.apc = and i64 %i.apb, %i.apa
  %.not1404 = icmp eq i64 %i.apc, 0
  br i1 %.not1404, label %.critedge, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1613.a
  %i.apd = icmp samesign ult i64 %indvars.iv1751, 8
  %i.ape = load ptr, ptr %i.rk, align 8
  %i.apf = getelementptr inbounds nuw [24 x i8], ptr %i.ape, i64 %indvars.iv1751
  %i.apg = load ptr, ptr %i.rm, align 8
  %i.aph = getelementptr [24 x i8], ptr %i.apg, i64 %indvars.iv1751
  %i.api = getelementptr i8, ptr %i.aph, i64 -192
  %.0.i719 = select i1 %i.apd, ptr %i.apf, ptr %i.api
  %i.apj = load i8, ptr %.0.i719, align 8, !tbaa !1004, !range !83, !noundef !84
  %i.apk = trunc nuw i8 %i.apj to i1
  br i1 %i.apk, label %.critedge, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %72, i64 %indvars.iv1751
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !962
  invoke void @_ZN7rocksdb8FlushJob6CancelEv(ptr noundef nonnull align 8 dereferenceable(1960) %i.apm)
          to label %..critedge_crit_edge unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..critedge_crit_edge:                             ; preds = %bb.gk
  %.pre1859 = load i32, ptr %i.a, align 4, !tbaa !669
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.lr.ph1613.a, %bb.gj
  %i.apn = phi i32 [ %.pre1859, %..critedge_crit_edge ], [ %i.aov, %.lr.ph1613.a ], [ %i.aov, %bb.gj ] ; 4 uses
  %indvars.iv.next1752 = add nuw nsw i64 %indvars.iv1751, 1 ; 2 uses
  %i.apo = zext i32 %i.apn to i64
  %.not337 = icmp eq i64 %indvars.iv.next1752, %i.apo
  br i1 %.not337, label %.preheader1437, label %.lr.ph1613.a, !llvm.loop !1676

.lr.ph1616.a:                                     ; preds = %.lr.ph1616, %bb.gn
  %i.app = phi i32 [ %i.apn, %.lr.ph1616 ], [ %i.aql, %bb.gn ] ; 2 uses
  %indvars.iv1754 = phi i64 [ 0, %.lr.ph1616 ], [ %indvars.iv.next1755, %bb.gn ] ; 7 uses
  %i.apq = icmp samesign ult i64 %indvars.iv1754, 8 ; 2 uses
  %i.apr = load ptr, ptr %i.rk, align 8
  %i.aps = getelementptr inbounds nuw [24 x i8], ptr %i.apr, i64 %indvars.iv1754
  %i.apt = load ptr, ptr %i.rm, align 8
  %i.apu = getelementptr [24 x i8], ptr %i.apt, i64 %indvars.iv1754
  %i.apv = getelementptr i8, ptr %i.apu, i64 -192
  %.0.i720 = select i1 %i.apq, ptr %i.aps, ptr %i.apv ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %.0.i720, i64 8
  %i.apx = load i8, ptr %i.apw, align 8, !tbaa !694
  %i.apy = icmp eq i8 %i.apx, 0
  br i1 %i.apy, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %.lr.ph1616.a
  %i.apz = load i8, ptr %.0.i720, align 8, !tbaa !1004, !range !83, !noundef !84
  %i.aqa = trunc nuw i8 %i.apz to i1
  br i1 %i.aqa, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %73, i64 %indvars.iv1754
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !962
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 1656
  %i.aqe = load ptr, ptr %i.d, align 8
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %indvars.iv1754
  %i.aqg = load ptr, ptr %i.f, align 8
  %i.aqh = getelementptr [8 x i8], ptr %i.aqg, i64 %indvars.iv1754
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -64
  %.0.i722 = select i1 %i.apq, ptr %i.aqf, ptr %i.aqi
  %i.aqj = load ptr, ptr %.0.i722, align 8, !tbaa !606
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 2768
  invoke void @_ZN7rocksdb12MemTableList21RollbackMemtableFlushERKNS_10autovectorIPNS_16ReadOnlyMemTableELm8EEEb(ptr noundef nonnull align 8 dereferenceable(60) %i.aqk, ptr noundef nonnull align 8 dereferenceable(104) %i.aqd, i1 noundef zeroext false)
          to label %._crit_edge1860 unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1860:                                  ; preds = %bb.gm
  %.pre1861.a = load i32, ptr %i.a, align 4, !tbaa !669
  br label %bb.gn

bb.gn:                                            ; preds = %._crit_edge1860, %.lr.ph1616.a, %bb.gl
  %i.aql = phi i32 [ %.pre1861.a, %._crit_edge1860 ], [ %i.app, %.lr.ph1616.a ], [ %i.app, %bb.gl ] ; 2 uses
  %indvars.iv.next1755 = add nuw nsw i64 %indvars.iv1754, 1 ; 2 uses
  %i.aqm = zext i32 %i.aql to i64
  %.not338 = icmp eq i64 %indvars.iv.next1755, %i.aqm
  br i1 %.not338, label %.loopexit1438, label %.lr.ph1616.a, !llvm.loop !1677

.loopexit1438:                                    ; preds = %bb.gn, %.thread1323, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, %.preheader1442, %_ZN7rocksdb6StatusD2Ev.exit676.thread, %.preheader1437
  %.pr1327 = load i8, ptr %0, align 8, !tbaa !694
  %i.aqn = icmp eq i8 %.pr1327, 0
  br i1 %i.aqn, label %bb.go, label %.thread1364

bb.go:                                            ; preds = %.loopexit1438
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 2308 ; 2 uses
  %i.aqp = load atomic i8, ptr %i.aqo acquire, align 4, !range !83, !noundef !84
  %i.aqq = trunc nuw i8 %i.aqp to i1
  %i.aqr = select i1 %i.aqq, i1 true, i1 %spec.select1395
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 2184 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %1, i64 2896
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 5 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %i.arc = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 3 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %1, i64 2162
  %i.are = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 2298
  %i.arg = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 3 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %1, i64 2164 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %1, i64 2165 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %1, i64 6976
  br label %bb.gp

bb.gp:                                            ; preds = %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit, %bb.go
  %.0217.in = phi i1 [ %i.aqr, %bb.go ], [ %i.avh, %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit ] ; 2 uses
  br i1 %.0217.in, label %bb.gq, label %.critedge437.thread

bb.gq:                                            ; preds = %bb.gp
  %i.ark = load i8, ptr %i.aqs, align 64, !tbaa !694, !noalias !1746 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34, !noalias !1746
  %i.arl = load ptr, ptr %i.aqt, align 8, !tbaa !86, !noalias !1746 ; 2 uses
  %.not.i.i.i723 = icmp eq ptr %i.arl, null
  br i1 %.not.i.i.i723, label %.thread1332, label %bb.gr

.thread1332:                                      ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34, !noalias !1746
  %i.arm = icmp eq i8 %i.ark, 0
  br i1 %i.arm, label %.critedge437.thread, label %.thread1354.loopexit

bb.gr:                                            ; preds = %bb.gq
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %15, ptr noundef nonnull %i.arl)
          to label %bb.gs unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gs:                                            ; preds = %bb.gr
  %.pre.i.i724 = load ptr, ptr %15, align 8, !tbaa !86, !noalias !1746 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34, !noalias !1746
  %i.arn = icmp eq i8 %i.ark, 0                   ; 2 uses
  %.not.i.i727 = icmp eq ptr %.pre.i.i724, null
  br i1 %.not.i.i727, label %.critedge437, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i728

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i728: ; preds = %bb.gs
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i724) #33
  br i1 %i.arn, label %.critedge437.thread, label %.thread1354.loopexit

.critedge437:                                     ; preds = %bb.gs
  br i1 %i.arn, label %.critedge437.thread, label %.thread1354.loopexit

.critedge437.thread:                              ; preds = %bb.gp, %.thread1332, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i728, %.critedge437
  %i.aro = load ptr, ptr %i.aqu, align 16, !tbaa !608, !noalias !1747 ; 6 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 760
  %i.arq = load i8, ptr %i.arp, align 8, !tbaa !694, !noalias !1747 ; 2 uses
  %i.arr = icmp eq i8 %i.arq, 0
  br i1 %i.arr, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %.critedge437.thread
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aro, i64 761
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !695, !noalias !1747
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aro, i64 763
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !711, !range !83, !noalias !1747, !noundef !84
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aro, i64 764
  %i.arx = load i8, ptr %i.arw, align 4, !tbaa !82, !range !83, !noalias !1747, !noundef !84
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aro, i64 765
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !85, !noalias !1747
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34, !noalias !1747
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aro, i64 768
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !86, !noalias !1747 ; 2 uses
  %.not.i.i.i28.i = icmp eq ptr %i.asb, null
  br i1 %.not.i.i.i28.i, label %_ZNSt4pairIN7rocksdb8IOStatusEbEC2IRKS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS6_S7_EEEEOT_OT0_.exit.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %14, ptr noundef nonnull %i.asb)
          to label %.noexc734 unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc734:                                        ; preds = %bb.gu
  %.pre.i.i.i = load ptr, ptr %14, align 8, !tbaa !86, !noalias !1747
  br label %_ZNSt4pairIN7rocksdb8IOStatusEbEC2IRKS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS6_S7_EEEEOT_OT0_.exit.i

_ZNSt4pairIN7rocksdb8IOStatusEbEC2IRKS1_bQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS6_S7_EEEEOT_OT0_.exit.i: ; preds = %.noexc734, %bb.gt
  %storemerge.i731 = phi ptr [ %.pre.i.i.i, %.noexc734 ], [ null, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34, !noalias !1747
  br label %_ZSt9make_pairIN7rocksdb6StatusEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_.exit.thread.i

bb.gv:                                            ; preds = %.critedge437.thread
  %i.asc = load atomic i8, ptr %i.aqv acquire, align 16, !range !83, !noalias !1747, !noundef !84
  %i.asd = trunc nuw i8 %i.asc to i1
  br i1 %i.asd, label %_ZSt9make_pairIN7rocksdb6StatusEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_.exit.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.gv
  %i.ase = load i64, ptr %26, align 8, !tbaa !930, !noalias !1747
  %i.asf = load ptr, ptr %i.bp, align 8, !tbaa !941, !noalias !1747
  %i.asg = load ptr, ptr %i.f, align 8, !tbaa !943, !noalias !1747 ; 2 uses
  %i.ash = ptrtoint ptr %i.asf to i64
  %i.asi = ptrtoint ptr %i.asg to i64
  %i.asj = sub i64 %i.ash, %i.asi
  %i.ask = ashr exact i64 %i.asj, 3
  %i.asl = add i64 %i.ask, %i.ase                 ; 2 uses
  %.not43.i = icmp eq i64 %i.asl, 0
  br i1 %.not43.i, label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.asm = load ptr, ptr %29, align 8, !tbaa !963, !noalias !1747
  %i.asn = load ptr, ptr %i.d, align 8, !noalias !1747
  br label %bb.gw

bb.gw:                                            ; preds = %.thread.i, %.lr.ph.i
  %.01244.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aun, %.thread.i ] ; 7 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %.01244.i
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !962, !noalias !1747 ; 4 uses
  %i.asq = icmp ult i64 %.01244.i, 8              ; 2 uses
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %i.asn, i64 %.01244.i
  %i.ass = getelementptr [8 x i8], ptr %i.asg, i64 %.01244.i
  %i.ast = getelementptr i8, ptr %i.ass, i64 -64
  %.0.i.i732 = select i1 %i.asq, ptr %i.asr, ptr %i.ast
  %i.asu = load ptr, ptr %.0.i.i732, align 8, !tbaa !606, !noalias !1747 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 61
  %i.asw = load atomic i8, ptr %i.asv monotonic, align 1, !range !83, !noalias !1747, !noundef !84
  %i.asx = trunc nuw i8 %i.asw to i1
  br i1 %i.asx, label %.thread.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asp, i64 1656
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !757, !noalias !1747
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asp, i64 1736
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asp, i64 1744
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !758, !noalias !1747
  %i.atd = load ptr, ptr %i.ata, align 8, !tbaa !759, !noalias !1747
  %i.ate = ptrtoint ptr %i.atc to i64
  %i.atf = ptrtoint ptr %i.atd to i64
  %i.atg = sub i64 %i.ate, %i.atf
  %i.ath = ashr exact i64 %i.atg, 3
  %i.ati = sub i64 0, %i.asz
  %i.atj = icmp eq i64 %i.ath, %i.ati
  %i.atk = getelementptr inbounds nuw i8, ptr %i.asu, i64 2776
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !610, !noalias !1747 ; 4 uses
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !611, !noalias !1747
  %i.atn = icmp eq ptr %i.atm, %i.atl             ; 2 uses
  br i1 %i.atj, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.atn, label %.thread.i, label %_ZNK7rocksdb12MemTableList21GetEarliestMemTableIDEv.exit.i

_ZNK7rocksdb12MemTableList21GetEarliestMemTableIDEv.exit.i: ; preds = %bb.gy
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !924, !noalias !1747
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !613, !noalias !1747
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 7488
  %i.att = load i64, ptr %i.ats, align 8, !tbaa !663, !noalias !1747
  %i.atu = getelementptr inbounds nuw i8, ptr %i.asp, i64 1728
  %i.atv = load ptr, ptr %i.atu, align 8, !noalias !1747
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !613, !noalias !1747
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 7488
  %i.aty = load i64, ptr %i.atx, align 8, !tbaa !663, !noalias !1747
  %i.atz = icmp ult i64 %i.att, %i.aty
  br i1 %i.atz, label %bb.hd, label %.thread.i

bb.gz:                                            ; preds = %bb.gx
  br i1 %i.atn, label %_ZNK7rocksdb12MemTableList21GetEarliestMemTableIDEv.exit21.i, label %bb.ha
end_hunk_0
begin_hunk_1_@_ZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityE:bb.a
  %i.auq = load ptr, ptr %i.arb, align 16, !tbaa !713
  invoke void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.auq)
          to label %.noexc750 unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc750:                                        ; preds = %bb.he
  %i.aur = load i8, ptr %i.arc, align 16, !tbaa !694
  %i.aus = icmp eq i8 %i.aur, 0
  br i1 %i.aus, label %.critedge439, label %bb.hf

bb.hf:                                            ; preds = %.noexc750
  %i.aut = load i8, ptr %i.ard, align 2, !tbaa !714
  %i.auu = icmp ugt i8 %i.aut, 1
  br i1 %i.auu, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751.thread, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.auv = load i8, ptr %i.are, align 8, !tbaa !715, !range !83, !noundef !84
  %i.auw = trunc nuw i8 %i.auv to i1
  br i1 %i.auw, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751.thread

_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751: ; preds = %bb.hg
  %i.aux = load i8, ptr %i.arf, align 2, !tbaa !716, !range !83, !noundef !84
  %i.auy = trunc nuw i8 %i.aux to i1
  br i1 %i.auy, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751.thread, label %.critedge439

_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751.thread: ; preds = %bb.hf, %bb.hg, %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34, !noalias !1748
  %i.auz = load ptr, ptr %i.arg, align 8, !tbaa !86, !noalias !1748 ; 2 uses
  %.not.i.i.i752 = icmp eq ptr %i.auz, null
  br i1 %.not.i.i.i752, label %.thread1345, label %bb.hh

.thread1345:                                      ; preds = %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !1748
  br label %bb.hj

bb.hh:                                            ; preds = %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751.thread
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %12, ptr noundef nonnull %i.auz)
          to label %bb.hi unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hi:                                            ; preds = %bb.hh
  %.pre.i.i753 = load ptr, ptr %12, align 8, !tbaa !86, !noalias !1748 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !1748
  %.not.i.i757 = icmp eq ptr %.pre.i.i753, null
  br i1 %.not.i.i757, label %bb.hj, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i758

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i758: ; preds = %bb.hi
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i753) #33
  br label %bb.hj

bb.hj:                                            ; preds = %.thread1345, %bb.hi, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i758
  %i.ava = load <4 x i8>, ptr %i.arc, align 16, !tbaa !65, !noalias !1749
  %i.avb = load i8, ptr %i.arh, align 4, !tbaa !82, !range !83, !noalias !1749, !noundef !84
  %i.avc = load i8, ptr %i.ari, align 1, !tbaa !85, !noalias !1749
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34, !noalias !1749
  %i.avd = load ptr, ptr %i.arg, align 8, !tbaa !86, !noalias !1749 ; 2 uses
  %.not.i.i.i761 = icmp eq ptr %i.avd, null
  br i1 %.not.i.i.i761, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %11, ptr noundef nonnull %i.avd)
          to label %.noexc764 unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc764:                                        ; preds = %bb.hk
  %.pre.i.i762 = load ptr, ptr %11, align 8, !tbaa !86, !noalias !1749
  br label %bb.hl

bb.hl:                                            ; preds = %.noexc764, %bb.hj
  %storemerge.i763 = phi ptr [ %.pre.i.i762, %.noexc764 ], [ null, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34, !noalias !1749
  store <4 x i8> %i.ava, ptr %0, align 8, !tbaa !65
  store i8 %i.avb, ptr %i.aqz, align 4, !tbaa !82
  store i8 %i.avc, ptr %i.ara, align 1, !tbaa !85
  %i.ave = load ptr, ptr %i.mk, align 8, !tbaa !86 ; 2 uses
  store ptr %storemerge.i763, ptr %i.mk, align 8, !tbaa !86
  %.not.i.i.i.i.i767 = icmp eq ptr %i.ave, null
  br i1 %.not.i.i.i.i.i767, label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread, label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread.sink.split

.critedge439:                                     ; preds = %bb.hd, %.noexc750, %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit751
  invoke void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.arj)
          to label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb6StatusaSERKS0_.exit745:               ; preds = %bb.hc, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i739, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i742
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %.not.i.i.i779 = icmp eq ptr %.sroa.181797.0, null
  br i1 %.not.i.i.i779, label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread, label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread.sink.split

_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit:          ; preds = %.critedge439
  %i.avf = load atomic i8, ptr %i.aqo acquire, align 4, !range !83, !noundef !84
  %i.avg = trunc nuw i8 %i.avf to i1
  %i.avh = select i1 %i.avg, i1 true, i1 %spec.select1395
  br label %bb.gp

.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.gm, %.lr.ph1619, %bb.gr, %.critedge439, %bb.he, %.lr.ph1576, %bb.co, %bb.hr, %bb.cw, %bb.gu, %bb.hk, %bb.ho, %bb.hh
  %lpad.loopexit.split-lp2579 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2263.loopexit.split-lp

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i781: ; preds = %bb.hb
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.181797.0) #33
  br label %.thread2263.loopexit.split-lp

_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread.sink.split: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit745, %bb.hl
  %.sink = phi ptr [ %i.ave, %bb.hl ], [ %.sroa.181797.0, %_ZN7rocksdb6StatusaSERKS0_.exit745 ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #33
  br label %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread

_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread:   ; preds = %.preheader.i, %.thread.i, %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread.sink.split, %bb.hl, %_ZN7rocksdb6StatusaSERKS0_.exit745
  %.pre1864.a = load i8, ptr %0, align 8, !tbaa !694 ; 2 uses
  br i1 %.0217.in, label %.thread1354, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread
  %i.avi = icmp eq i8 %.pre1864.a, 0
  br i1 %i.avi, label %bb.hn, label %.preheader1428

bb.hn:                                            ; preds = %bb.hm
  %i.avj = load <4 x i8>, ptr %i.arc, align 16, !tbaa !65, !noalias !1750
  %i.avk = load i8, ptr %i.arh, align 4, !tbaa !82, !range !83, !noalias !1750, !noundef !84
  %i.avl = load i8, ptr %i.ari, align 1, !tbaa !85, !noalias !1750
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !1750
  %i.avm = load ptr, ptr %i.arg, align 8, !tbaa !86, !noalias !1750 ; 2 uses
  %.not.i.i.i783 = icmp eq ptr %i.avm, null
  br i1 %.not.i.i.i783, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %10, ptr noundef nonnull %i.avm)
          to label %.noexc786 unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc786:                                        ; preds = %bb.ho
  %.pre.i.i784 = load ptr, ptr %10, align 8, !tbaa !86, !noalias !1750
  br label %bb.hp

bb.hp:                                            ; preds = %.noexc786, %bb.hn
  %storemerge.i785 = phi ptr [ %.pre.i.i784, %.noexc786 ], [ null, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !1750
  store <4 x i8> %i.avj, ptr %0, align 8, !tbaa !65
  store i8 %i.avk, ptr %i.aqz, align 4, !tbaa !82
  store i8 %i.avl, ptr %i.ara, align 1, !tbaa !85
  %i.avn = load ptr, ptr %i.mk, align 8, !tbaa !86 ; 2 uses
  store ptr %storemerge.i785, ptr %i.mk, align 8, !tbaa !86
  %.not.i.i.i.i.i789 = icmp eq ptr %i.avn, null
  br i1 %.not.i.i.i.i.i789, label %thread-pre-split1360, label %thread-pre-split1360.sink.split

.thread1354.loopexit:                             ; preds = %.critedge437, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i728, %.thread1332
  %.pre1863 = load i8, ptr %0, align 8, !tbaa !694
  br label %.thread1354

.thread1354:                                      ; preds = %.thread1354.loopexit, %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread
  %i.avo = phi i8 [ %.pre1863, %.thread1354.loopexit ], [ %.pre1864.a, %_ZNSt4pairIN7rocksdb6StatusEbED2Ev.exit.thread ]
  %i.avp = icmp eq i8 %i.avo, 0
  br i1 %i.avp, label %bb.hq, label %.preheader1428

bb.hq:                                            ; preds = %.thread1354
  %i.avq = load <4 x i8>, ptr %i.aqs, align 64, !tbaa !65, !noalias !1751
  %i.avr = getelementptr inbounds nuw i8, ptr %1, i64 2180
  %i.avs = load i8, ptr %i.avr, align 4, !tbaa !82, !range !83, !noalias !1751, !noundef !84
  %i.avt = getelementptr inbounds nuw i8, ptr %1, i64 2181
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !85, !noalias !1751
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34, !noalias !1751
  %i.avv = load ptr, ptr %i.aqt, align 8, !tbaa !86, !noalias !1751 ; 2 uses
  %.not.i.i.i797 = icmp eq ptr %i.avv, null
  br i1 %.not.i.i.i797, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %9, ptr noundef nonnull %i.avv)
          to label %.noexc800 unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc800:                                        ; preds = %bb.hr
  %.pre.i.i798 = load ptr, ptr %9, align 8, !tbaa !86, !noalias !1751
  br label %bb.hs

bb.hs:                                            ; preds = %.noexc800, %bb.hq
  %storemerge.i799 = phi ptr [ %.pre.i.i798, %.noexc800 ], [ null, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !1751
  store <4 x i8> %i.avq, ptr %0, align 8, !tbaa !65
  store i8 %i.avs, ptr %i.aqz, align 4, !tbaa !82
  store i8 %i.avu, ptr %i.ara, align 1, !tbaa !85
  %i.avw = load ptr, ptr %i.mk, align 8, !tbaa !86 ; 2 uses
  store ptr %storemerge.i799, ptr %i.mk, align 8, !tbaa !86
  %.not.i.i.i.i.i803 = icmp eq ptr %i.avw, null
  br i1 %.not.i.i.i.i.i803, label %thread-pre-split1360, label %thread-pre-split1360.sink.split

thread-pre-split1360.sink.split:                  ; preds = %bb.hs, %bb.hp
  %.sink2357 = phi ptr [ %i.avn, %bb.hp ], [ %i.avw, %bb.hs ]
  call void @_ZdaPv(ptr noundef nonnull %.sink2357) #33
  br label %thread-pre-split1360

thread-pre-split1360:                             ; preds = %thread-pre-split1360.sink.split, %bb.hs, %bb.hp
  %.pr1361 = load i8, ptr %0, align 8, !tbaa !694 ; 2 uses
  %i.avx = icmp eq i8 %.pr1361, 0
  %i.avy = load i32, ptr %i.a, align 4            ; 2 uses
  %.not3611617 = icmp eq i32 %i.avy, 0
  %or.cond1650 = select i1 %i.avx, i1 true, i1 %.not3611617
  br i1 %or.cond1650, label %.thread1328, label %.lr.ph1619.preheader

.preheader1428:                                   ; preds = %bb.hm, %.thread1354
  %.old1649 = load i32, ptr %i.a, align 4, !tbaa !669
  %.not3611617.old = icmp eq i32 %.old1649, 0
  br i1 %.not3611617.old, label %.thread1364, label %.lr.ph1619.preheader

.lr.ph1619.preheader:                             ; preds = %thread-pre-split1360, %.preheader1428
  %.pre1865 = load ptr, ptr %29, align 8, !tbaa !963
  br label %.lr.ph1619

.lr.ph1619:                                       ; preds = %.lr.ph1619.preheader, %bb.ht
  %indvars.iv1757 = phi i64 [ 0, %.lr.ph1619.preheader ], [ %indvars.iv.next1758, %bb.ht ] ; 5 uses
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %.pre1865, i64 %indvars.iv1757
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !962
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 1656
  %i.awc = icmp samesign ult i64 %indvars.iv1757, 8
  %i.awd = load ptr, ptr %i.d, align 8
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.awd, i64 %indvars.iv1757
  %i.awf = load ptr, ptr %i.f, align 8
  %i.awg = getelementptr [8 x i8], ptr %i.awf, i64 %indvars.iv1757
  %i.awh = getelementptr i8, ptr %i.awg, i64 -64
  %.0.i811 = select i1 %i.awc, ptr %i.awe, ptr %i.awh
  %i.awi = load ptr, ptr %.0.i811, align 8, !tbaa !606
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 2768
  invoke void @_ZN7rocksdb12MemTableList21RollbackMemtableFlushERKNS_10autovectorIPNS_16ReadOnlyMemTableELm8EEEb(ptr noundef nonnull align 8 dereferenceable(60) %i.awj, ptr noundef nonnull align 8 dereferenceable(104) %i.awb, i1 noundef zeroext false)
          to label %bb.ht unwind label %.thread2263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ht:                                            ; preds = %.lr.ph1619
  %indvars.iv.next1758 = add nuw nsw i64 %indvars.iv1757, 1 ; 2 uses
  %i.awk = load i32, ptr %i.a, align 4, !tbaa !669 ; 2 uses
  %i.awl = zext i32 %i.awk to i64
  %.not361 = icmp eq i64 %indvars.iv.next1758, %i.awl
  br i1 %.not361, label %.thread1328.loopexit, label %.lr.ph1619, !llvm.loop !1691

.thread1328.loopexit:                             ; preds = %bb.ht
  %.pr1363.pr.pre = load i8, ptr %0, align 8, !tbaa !694
  br label %.thread1328

.thread1328:                                      ; preds = %.thread1328.loopexit, %thread-pre-split1360
  %i.awm = phi i32 [ %i.awk, %.thread1328.loopexit ], [ %i.avy, %thread-pre-split1360 ]
  %.pr1363.pr = phi i8 [ %.pr1363.pr.pre, %.thread1328.loopexit ], [ %.pr1361, %thread-pre-split1360 ]
  %i.awn = icmp eq i8 %.pr1363.pr, 0
  br i1 %i.awn, label %bb.hu, label %.thread1364

bb.hu:                                            ; preds = %.thread1328
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #34
  store i64 0, ptr %55, align 8, !tbaa !930
  %i.awo = getelementptr inbounds nuw i8, ptr %55, i64 72 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %i.awp, ptr %i.awo, align 8, !tbaa !931
  %i.awq = getelementptr inbounds nuw i8, ptr %55, i64 80 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awq, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #34
  store i64 0, ptr %56, align 8, !tbaa !1758
  %i.awr = getelementptr inbounds nuw i8, ptr %56, i64 72 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.aws, ptr %i.awr, align 8, !tbaa !1759
  %i.awt = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awt, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #34
  store i64 0, ptr %57, align 8, !tbaa !1761
  %i.awu = getelementptr inbounds nuw i8, ptr %57, i64 72 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr %i.awv, ptr %i.awu, align 8, !tbaa !1762
  %i.aww = getelementptr inbounds nuw i8, ptr %57, i64 80 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aww, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #34
  store i64 0, ptr %58, align 8, !tbaa !1769
  %i.awx = getelementptr inbounds nuw i8, ptr %58, i64 72 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %i.awy, ptr %i.awx, align 8, !tbaa !1770
  %i.awz = getelementptr inbounds nuw i8, ptr %58, i64 80 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awz, i8 0, i64 24, i1 false)
  %.not3641620 = icmp eq i32 %i.awm, 0
  br i1 %.not3641620, label %._crit_edge1624, label %.lr.ph1623

.lr.ph1623:                                       ; preds = %bb.hu
  %74 = load ptr, ptr %29, align 8, !tbaa !963
  %i.axa = getelementptr inbounds nuw i8, ptr %55, i64 88 ; 3 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %55, i64 96 ; 3 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 3 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %56, i64 96 ; 3 uses
  %75 = load ptr, ptr %33, align 8
  %i.axe = getelementptr inbounds nuw i8, ptr %57, i64 88 ; 3 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %57, i64 96 ; 3 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 3 uses
  %76 = getelementptr inbounds nuw i8, ptr %58, i64 96 ; 3 uses
  br label %bb.hv

._crit_edge1624:                                  ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #34
  %i.axh = load ptr, ptr %i.aqu, align 16, !tbaa !608
  %i.axi = getelementptr inbounds nuw i8, ptr %1, i64 6600
  %i.axj = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.axk = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !664
  invoke void @_ZN7rocksdb33InstallMemtableAtomicFlushResultsEPKNS_10autovectorIPNS_12MemTableListELm8EEERKNS0_IPNS_16ColumnFamilyDataELm8EEERKNS0_IPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EEEPNS_10VersionSetEPNS_19LogsWithPrepTrackerEPNS_17InstrumentedMutexERKNS0_IPNS_12FileMetaDataELm8EEERKNS0_IPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteISX_EESaIS10_EEELm8EEEPSD_PNS_11FSDirectoryEPNS_9LogBufferE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %59, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(104) %55, ptr noundef nonnull align 8 dereferenceable(104) %56, ptr noundef %i.axh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(104) %57, ptr noundef nonnull align 8 dereferenceable(104) %58, ptr noundef nonnull %i.axj, ptr noundef %i.axl, ptr noundef %5)
          to label %bb.iw unwind label %bb.jg

bb.hv:                                            ; preds = %.lr.ph1623, %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit
  %indvars.iv1760 = phi i64 [ 0, %.lr.ph1623 ], [ %indvars.iv.next1761, %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit ] ; 6 uses
  %i.axm = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %indvars.iv1760 ; 2 uses
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !962 ; 3 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 1656 ; 4 uses
  %i.axp = icmp samesign ult i64 %indvars.iv1760, 8
  %i.axq = load ptr, ptr %i.d, align 8
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.axq, i64 %indvars.iv1760
  %i.axs = load ptr, ptr %i.f, align 8
  %i.axt = getelementptr [8 x i8], ptr %i.axs, i64 %indvars.iv1760
  %i.axu = getelementptr i8, ptr %i.axt, i64 -64
  %.0.i812 = select i1 %i.axp, ptr %i.axr, ptr %i.axu ; 2 uses
  %i.axv = load ptr, ptr %.0.i812, align 8, !tbaa !606 ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 61
  %i.axx = load atomic i8, ptr %i.axw monotonic, align 1, !range !83, !noundef !84
  %i.axy = trunc nuw i8 %i.axx to i1
  br i1 %i.axy, label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.axz = load i64, ptr %i.axo, align 8, !tbaa !757
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axn, i64 1736
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axn, i64 1744
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !758
  %i.ayd = load ptr, ptr %i.aya, align 8, !tbaa !759
  %i.aye = ptrtoint ptr %i.ayc to i64
  %i.ayf = ptrtoint ptr %i.ayd to i64
  %i.ayg = sub i64 %i.aye, %i.ayf
  %i.ayh = ashr exact i64 %i.ayg, 3
  %i.ayi = sub i64 0, %i.axz
  %i.ayj = icmp eq i64 %i.ayh, %i.ayi
  br i1 %i.ayj, label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ayk = load i64, ptr %55, align 8, !tbaa !930 ; 3 uses
  %i.ayl = icmp ult i64 %i.ayk, 8
  br i1 %i.ayl, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.aym = load ptr, ptr %i.awo, align 8, !tbaa !931
  %i.ayn = add nuw nsw i64 %i.ayk, 1
  store i64 %i.ayn, ptr %55, align 8, !tbaa !930
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.aym, i64 %i.ayk
  store ptr %i.axv, ptr %i.ayo, align 8, !tbaa !606
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE12emplace_backIJRS2_EEEvDpOT_.exit

bb.hz:                                            ; preds = %bb.hx
  %i.ayp = load ptr, ptr %i.axa, align 8, !tbaa !941 ; 4 uses
  %i.ayq = load ptr, ptr %i.axb, align 8, !tbaa !942
  %.not.i.i814 = icmp eq ptr %i.ayp, %i.ayq
  br i1 %.not.i.i814, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  store ptr %i.axv, ptr %i.ayp, align 8, !tbaa !606
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  store ptr %i.ayr, ptr %i.axa, align 8, !tbaa !941
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE12emplace_backIJRS2_EEEvDpOT_.exit

bb.ib:                                            ; preds = %bb.hz
  %i.ays = load ptr, ptr %i.awq, align 8, !tbaa !943 ; 4 uses
  %i.ayt = ptrtoint ptr %i.ayp to i64
  %i.ayu = ptrtoint ptr %i.ays to i64             ; 2 uses
  %i.ayv = sub i64 %i.ayt, %i.ayu                 ; 5 uses
  %i.ayw = icmp eq i64 %i.ayv, 9223372036854775800
  br i1 %i.ayw, label %.invoke2358, label %_ZNKSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i815

_ZNKSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i815: ; preds = %bb.ib
  %i.ayx = ashr exact i64 %i.ayv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i816 = call i64 @llvm.umax.i64(i64 %i.ayx, i64 1)
  %i.ayy = add nsw i64 %.sroa.speculated.i.i.i.i816, %i.ayx ; 2 uses
  %i.ayz = icmp ult i64 %i.ayy, %i.ayx
  %i.aza = call i64 @llvm.umin.i64(i64 %i.ayy, i64 1152921504606846975)
  %i.azb = select i1 %i.ayz, i64 1152921504606846975, i64 %i.aza ; 3 uses
  %.not.i.i.i.i817 = icmp ne i64 %i.azb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i817)
  %i.azc = shl nuw nsw i64 %i.azb, 3
  %i.azd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azc) #36
          to label %.noexc821 unwind label %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc821:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i815
  %i.aze = getelementptr inbounds i8, ptr %i.azd, i64 %i.ayv ; 2 uses
  %i.azf = load ptr, ptr %.0.i812, align 8, !tbaa !606
  store ptr %i.azf, ptr %i.aze, align 8, !tbaa !606
  %i.azg = icmp sgt i64 %i.ayv, 0
  br i1 %i.azg, label %bb.ic, label %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i818

bb.ic:                                            ; preds = %.noexc821
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.azd, ptr align 8 %i.ays, i64 %i.ayv, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i818

_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i818: ; preds = %bb.ic, %.noexc821
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aze, i64 8
  %.not.i17.i.i.i819 = icmp eq ptr %i.ays, null
  br i1 %.not.i17.i.i.i819, label %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.id

bb.id:                                            ; preds = %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i818
  %i.azi = load ptr, ptr %i.axb, align 8, !tbaa !942
  %i.azj = ptrtoint ptr %i.azi to i64
  %i.azk = sub i64 %i.azj, %i.ayu
  call void @_ZdlPvm(ptr noundef nonnull %i.ays, i64 noundef %i.azk) #33
  br label %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.id, %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i818
  store ptr %i.azd, ptr %i.awq, align 8, !tbaa !943
  store ptr %i.azh, ptr %i.axa, align 8, !tbaa !941
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.azd, i64 %i.azb
  store ptr %i.azl, ptr %i.axb, align 8, !tbaa !942
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE12emplace_backIJRS2_EEEvDpOT_.exit

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE12emplace_backIJRS2_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ia, %bb.hy
  %i.azm = load i64, ptr %56, align 8, !tbaa !1758 ; 3 uses
  %i.azn = icmp ult i64 %i.azm, 8
  br i1 %i.azn, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE12emplace_backIJRS2_EEEvDpOT_.exit
  %i.azo = load ptr, ptr %i.awr, align 8, !tbaa !1759
  %i.azp = add nuw nsw i64 %i.azm, 1
  store i64 %i.azp, ptr %56, align 8, !tbaa !1758
  %i.azq = getelementptr inbounds nuw [8 x i8], ptr %i.azo, i64 %i.azm
  store ptr %i.axo, ptr %i.azq, align 8, !tbaa !1772
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE12emplace_backIJS5_EEEvDpOT_.exit

bb.if:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE12emplace_backIJRS2_EEEvDpOT_.exit
  %i.azr = load ptr, ptr %i.axc, align 8, !tbaa !1773 ; 4 uses
  %i.azs = load ptr, ptr %i.axd, align 8, !tbaa !1774
  %.not.i.i822 = icmp eq ptr %i.azr, %i.azs
  br i1 %.not.i.i822, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  store ptr %i.axo, ptr %i.azr, align 8, !tbaa !1772
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  store ptr %i.azt, ptr %i.axc, align 8, !tbaa !1773
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE12emplace_backIJS5_EEEvDpOT_.exit

bb.ih:                                            ; preds = %bb.if
  %i.azu = load ptr, ptr %i.awt, align 8, !tbaa !1775 ; 4 uses
  %i.azv = ptrtoint ptr %i.azr to i64
  %i.azw = ptrtoint ptr %i.azu to i64             ; 2 uses
  %i.azx = sub i64 %i.azv, %i.azw                 ; 5 uses
  %i.azy = icmp eq i64 %i.azx, 9223372036854775800
  br i1 %i.azy, label %.invoke2358, label %_ZNKSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ih
  %i.azz = ashr exact i64 %i.azx, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i823 = call i64 @llvm.umax.i64(i64 %i.azz, i64 1)
  %i.baa = add nsw i64 %.sroa.speculated.i.i.i.i823, %i.azz ; 2 uses
  %i.bab = icmp ult i64 %i.baa, %i.azz
  %i.bac = call i64 @llvm.umin.i64(i64 %i.baa, i64 1152921504606846975)
  %i.bad = select i1 %i.bab, i64 1152921504606846975, i64 %i.bac ; 3 uses
  %.not.i.i.i.i824 = icmp ne i64 %i.bad, 0
  call void @llvm.assume(i1 %.not.i.i.i.i824)
  %i.bae = shl nuw nsw i64 %i.bad, 3
  %i.baf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bae) #36
          to label %.noexc827 unwind label %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc827:                                        ; preds = %_ZNKSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bag = getelementptr inbounds i8, ptr %i.baf, i64 %i.azx ; 2 uses
  store ptr %i.axo, ptr %i.bag, align 8, !tbaa !1772
  %i.bah = icmp sgt i64 %i.azx, 0
  br i1 %i.bah, label %bb.ii, label %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.ii:                                            ; preds = %.noexc827
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.baf, ptr align 8 %i.azu, i64 %i.azx, i1 false)
  br label %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.ii, %.noexc827
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %.not.i17.i.i.i825 = icmp eq ptr %i.azu, null
  br i1 %.not.i17.i.i.i825, label %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.ij

bb.ij:                                            ; preds = %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  %i.baj = load ptr, ptr %i.axd, align 8, !tbaa !1774
  %i.bak = ptrtoint ptr %i.baj to i64
  %i.bal = sub i64 %i.bak, %i.azw
  call void @_ZdlPvm(ptr noundef nonnull %i.azu, i64 noundef %i.bal) #33
  br label %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.ij, %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  store ptr %i.baf, ptr %i.awt, align 8, !tbaa !1775
  store ptr %i.bai, ptr %i.axc, align 8, !tbaa !1773
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %i.baf, i64 %i.bad
  store ptr %i.bam, ptr %i.axd, align 8, !tbaa !1774
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE12emplace_backIJS5_EEEvDpOT_.exit

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.ig, %bb.ie
  %i.ban = getelementptr inbounds nuw [424 x i8], ptr %75, i64 %indvars.iv1760 ; 3 uses
  %i.bao = load i64, ptr %57, align 8, !tbaa !1761 ; 3 uses
  %i.bap = icmp ult i64 %i.bao, 8
  br i1 %i.bap, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.baq = load ptr, ptr %i.awu, align 8, !tbaa !1762
  %i.bar = add nuw nsw i64 %i.bao, 1
  store i64 %i.bar, ptr %57, align 8, !tbaa !1761
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.baq, i64 %i.bao
  store ptr %i.ban, ptr %i.bas, align 8, !tbaa !1016
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE12emplace_backIJS2_EEEvDpOT_.exit

bb.il:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.bat = load ptr, ptr %i.axe, align 8, !tbaa !878 ; 4 uses
  %i.bau = load ptr, ptr %i.axf, align 8, !tbaa !1017
  %.not.i.i828 = icmp eq ptr %i.bat, %i.bau
  br i1 %.not.i.i828, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  store ptr %i.ban, ptr %i.bat, align 8, !tbaa !1016
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  store ptr %i.bav, ptr %i.axe, align 8, !tbaa !878
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE12emplace_backIJS2_EEEvDpOT_.exit

bb.in:                                            ; preds = %bb.il
  %i.baw = load ptr, ptr %i.aww, align 8, !tbaa !879 ; 4 uses
  %i.bax = ptrtoint ptr %i.bat to i64
  %i.bay = ptrtoint ptr %i.baw to i64             ; 2 uses
  %i.baz = sub i64 %i.bax, %i.bay                 ; 5 uses
  %i.bba = icmp eq i64 %i.baz, 9223372036854775800
  br i1 %i.bba, label %.invoke2358, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke2358:                                      ; preds = %bb.it, %bb.in, %bb.ih, %bb.ib
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
          to label %.cont unwind label %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke2358
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.in
  %i.bbb = ashr exact i64 %i.baz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i829 = call i64 @llvm.umax.i64(i64 %i.bbb, i64 1)
  %i.bbc = add nsw i64 %.sroa.speculated.i.i.i.i829, %i.bbb ; 2 uses
  %i.bbd = icmp ult i64 %i.bbc, %i.bbb
  %i.bbe = call i64 @llvm.umin.i64(i64 %i.bbc, i64 1152921504606846975)
  %i.bbf = select i1 %i.bbd, i64 1152921504606846975, i64 %i.bbe ; 3 uses
  %.not.i.i.i.i830 = icmp ne i64 %i.bbf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i830)
  %i.bbg = shl nuw nsw i64 %i.bbf, 3
  %i.bbh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbg) #36
          to label %.noexc833 unwind label %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc833:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bbi = getelementptr inbounds i8, ptr %i.bbh, i64 %i.baz ; 2 uses
  store ptr %i.ban, ptr %i.bbi, align 8, !tbaa !1016
  %i.bbj = icmp sgt i64 %i.baz, 0
  br i1 %i.bbj, label %bb.io, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.io:                                            ; preds = %.noexc833
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bbh, ptr align 8 %i.baw, i64 %i.baz, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.io, %.noexc833
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  %.not.i17.i.i.i831 = icmp eq ptr %i.baw, null
  br i1 %.not.i17.i.i.i831, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ip

bb.ip:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bbl = load ptr, ptr %i.axf, align 8, !tbaa !1017
  %i.bbm = ptrtoint ptr %i.bbl to i64
  %i.bbn = sub i64 %i.bbm, %i.bay
  call void @_ZdlPvm(ptr noundef nonnull %i.baw, i64 noundef %i.bbn) #33
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ip, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bbh, ptr %i.aww, align 8, !tbaa !879
  store ptr %i.bbk, ptr %i.axe, align 8, !tbaa !878
  %i.bbo = getelementptr inbounds nuw [8 x i8], ptr %i.bbh, i64 %i.bbf
  store ptr %i.bbo, ptr %i.axf, align 8, !tbaa !1017
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE12emplace_backIJS2_EEEvDpOT_.exit

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE12emplace_backIJS2_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.im, %bb.ik
  %i.bbp = load ptr, ptr %i.axm, align 8, !tbaa !962
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 1208 ; 3 uses
  %i.bbr = load i64, ptr %58, align 8, !tbaa !1769 ; 3 uses
  %i.bbs = icmp ult i64 %i.bbr, 8
  br i1 %i.bbs, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE12emplace_backIJS2_EEEvDpOT_.exit
  %i.bbt = load ptr, ptr %i.awx, align 8, !tbaa !1770
  %i.bbu = add nuw nsw i64 %i.bbr, 1
  store i64 %i.bbu, ptr %58, align 8, !tbaa !1769
  %i.bbv = getelementptr inbounds nuw [8 x i8], ptr %i.bbt, i64 %i.bbr
  store ptr %i.bbq, ptr %i.bbv, align 8, !tbaa !1777
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit

bb.ir:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE12emplace_backIJS2_EEEvDpOT_.exit
  %i.bbw = load ptr, ptr %i.axg, align 8, !tbaa !1778 ; 4 uses
  %i.bbx = load ptr, ptr %76, align 8, !tbaa !1779
  %.not.i.i834 = icmp eq ptr %i.bbw, %i.bbx
  br i1 %.not.i.i834, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  store ptr %i.bbq, ptr %i.bbw, align 8, !tbaa !1777
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbw, i64 8
  store ptr %i.bby, ptr %i.axg, align 8, !tbaa !1778
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit

bb.it:                                            ; preds = %bb.ir
  %i.bbz = load ptr, ptr %i.awz, align 8, !tbaa !1780 ; 4 uses
  %i.bca = ptrtoint ptr %i.bbw to i64
  %i.bcb = ptrtoint ptr %i.bbz to i64             ; 2 uses
  %i.bcc = sub i64 %i.bca, %i.bcb                 ; 5 uses
  %i.bcd = icmp eq i64 %i.bcc, 9223372036854775800
  br i1 %i.bcd, label %.invoke2358, label %_ZNKSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.it
  %i.bce = ashr exact i64 %i.bcc, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i835 = call i64 @llvm.umax.i64(i64 %i.bce, i64 1)
  %i.bcf = add nsw i64 %.sroa.speculated.i.i.i.i835, %i.bce ; 2 uses
  %i.bcg = icmp ult i64 %i.bcf, %i.bce
  %i.bch = call i64 @llvm.umin.i64(i64 %i.bcf, i64 1152921504606846975)
  %i.bci = select i1 %i.bcg, i64 1152921504606846975, i64 %i.bch ; 3 uses
  %.not.i.i.i.i836 = icmp ne i64 %i.bci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i836)
  %i.bcj = shl nuw nsw i64 %i.bci, 3
  %i.bck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcj) #36
          to label %.noexc839 unwind label %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc839:                                        ; preds = %_ZNKSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bcl = getelementptr inbounds i8, ptr %i.bck, i64 %i.bcc ; 2 uses
  store ptr %i.bbq, ptr %i.bcl, align 8, !tbaa !1777
  %i.bcm = icmp sgt i64 %i.bcc, 0
  br i1 %i.bcm, label %bb.iu, label %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit16.i.i.i

bb.iu:                                            ; preds = %.noexc839
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bck, ptr align 8 %i.bbz, i64 %i.bcc, i1 false)
  br label %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit16.i.i.i

_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit16.i.i.i: ; preds = %bb.iu, %.noexc839
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %.not.i17.i.i.i837 = icmp eq ptr %i.bbz, null
  br i1 %.not.i17.i.i.i837, label %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit16.i.i.i
  %i.bco = load ptr, ptr %76, align 8, !tbaa !1779
  %i.bcp = ptrtoint ptr %i.bco to i64
  %i.bcq = sub i64 %i.bcp, %i.bcb
  call void @_ZdlPvm(ptr noundef nonnull %i.bbz, i64 noundef %i.bcq) #33
  br label %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i

_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i: ; preds = %bb.iv, %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit16.i.i.i
  store ptr %i.bck, ptr %i.awz, align 8, !tbaa !1780
  store ptr %i.bcn, ptr %i.axg, align 8, !tbaa !1778
  %i.bcr = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %i.bci
  store ptr %i.bcr, ptr %76, align 8, !tbaa !1779
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit

.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIPN7rocksdb16ColumnFamilyDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i815, %_ZNKSt6vectorIPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit.i.i.i, %.invoke2358
  %lpad.loopexit.split-lp2510 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1424

_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE12emplace_backIJSA_EEEvDpOT_.exit: ; preds = %bb.iq, %bb.is, %_ZNSt6vectorIPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i, %bb.hw, %bb.hv
  %indvars.iv.next1761 = add nuw nsw i64 %indvars.iv1760, 1 ; 2 uses
  %i.bcs = load i32, ptr %i.a, align 4, !tbaa !669
  %i.bct = zext i32 %i.bcs to i64
  %.not364 = icmp eq i64 %indvars.iv.next1761, %i.bct
  br i1 %.not364, label %._crit_edge1624, label %bb.hv, !llvm.loop !1692

bb.iw:                                            ; preds = %._crit_edge1624
  %.not.i840 = icmp eq ptr %0, %59
  br i1 %.not.i840, label %_ZN7rocksdb6StatusaSEOS0_.exit844, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bcu = load <4 x i8>, ptr %59, align 8, !tbaa !65
  store <4 x i8> %i.bcu, ptr %0, align 8, !tbaa !65
  store <4 x i8> zeroinitializer, ptr %59, align 8, !tbaa !65
  %i.bcv = getelementptr inbounds nuw i8, ptr %59, i64 4 ; 2 uses
  %i.bcw = load i8, ptr %i.bcv, align 4, !tbaa !87, !range !83, !noundef !84
  store i8 %i.bcw, ptr %i.aqz, align 4, !tbaa !82
  store i8 0, ptr %i.bcv, align 4, !tbaa !82
  %i.bcx = getelementptr inbounds nuw i8, ptr %59, i64 5 ; 2 uses
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !65
  store i8 %i.bcy, ptr %i.ara, align 1, !tbaa !85
  store i8 0, ptr %i.bcx, align 1, !tbaa !85
  %i.bcz = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !86
  store ptr null, ptr %i.bcz, align 8, !tbaa !86
  %i.bdb = load ptr, ptr %i.mk, align 8, !tbaa !86 ; 2 uses
  store ptr %i.bda, ptr %i.mk, align 8, !tbaa !86
  %.not.i.i.i.i.i841 = icmp eq ptr %i.bdb, null
  br i1 %.not.i.i.i.i.i841, label %_ZN7rocksdb6StatusaSEOS0_.exit844, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i842

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i842: ; preds = %bb.ix
  call void @_ZdaPv(ptr noundef nonnull %i.bdb) #33
  br label %_ZN7rocksdb6StatusaSEOS0_.exit844

_ZN7rocksdb6StatusaSEOS0_.exit844:                ; preds = %bb.iw, %bb.ix, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i842
  %i.bdc = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !86 ; 2 uses
  %.not.i.i845 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i845, label %_ZN7rocksdb6StatusD2Ev.exit848, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i846

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i846: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit844
  call void @_ZdaPv(ptr noundef nonnull %i.bdd) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit848

_ZN7rocksdb6StatusD2Ev.exit848:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit844, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i846
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  %.pr.i.i = load i64, ptr %58, align 8, !tbaa !1769
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %bb.iy, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit848
  store i64 0, ptr %58, align 8, !tbaa !1769
  br label %bb.iy

bb.iy:                                            ; preds = %.lr.ph.preheader.i.i, %_ZN7rocksdb6StatusD2Ev.exit848
  %i.bde = load ptr, ptr %i.awz, align 8, !tbaa !1780 ; 5 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 2 uses
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !1778
  %.not.i.i.i.i849 = icmp eq ptr %i.bdg, %i.bde
  br i1 %.not.i.i.i.i849, label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.iy
  store ptr %i.bde, ptr %i.bdf, align 8, !tbaa !1778
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, %bb.iy
  %.not.i.i.i1.i = icmp eq ptr %i.bde, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit, label %bb.iz

bb.iz:                                            ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i
  %i.bdh = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.bdi = load ptr, ptr %i.bdh, align 8, !tbaa !1779
  %i.bdj = ptrtoint ptr %i.bdi to i64
  %i.bdk = ptrtoint ptr %i.bde to i64
  %i.bdl = sub i64 %i.bdj, %i.bdk
  call void @_ZdlPvm(ptr noundef nonnull %i.bde, i64 noundef %i.bdl) #33
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  %.pr.i.i850 = load i64, ptr %57, align 8, !tbaa !1761
  %.not1.i.i851 = icmp eq i64 %.pr.i.i850, 0
  br i1 %.not1.i.i851, label %bb.ja, label %.lr.ph.preheader.i.i852

.lr.ph.preheader.i.i852:                          ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit
  store i64 0, ptr %57, align 8, !tbaa !1761
  br label %bb.ja

bb.ja:                                            ; preds = %.lr.ph.preheader.i.i852, %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit
  %i.bdm = load ptr, ptr %i.aww, align 8, !tbaa !879 ; 5 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %57, i64 88 ; 2 uses
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !878
  %.not.i.i.i.i853 = icmp eq ptr %i.bdo, %i.bdm
  br i1 %.not.i.i.i.i853, label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.ja
  store ptr %i.bdm, ptr %i.bdn, align 8, !tbaa !878
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.ja
  %.not.i.i.i1.i854 = icmp eq ptr %i.bdm, null
  br i1 %.not.i.i.i1.i854, label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit, label %bb.jb

bb.jb:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i
  %i.bdp = getelementptr inbounds nuw i8, ptr %57, i64 96
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !1017
  %i.bdr = ptrtoint ptr %i.bdq to i64
  %i.bds = ptrtoint ptr %i.bdm to i64
  %i.bdt = sub i64 %i.bdr, %i.bds
  call void @_ZdlPvm(ptr noundef nonnull %i.bdm, i64 noundef %i.bdt) #33
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #34
  %.pr.i.i855 = load i64, ptr %56, align 8, !tbaa !1758
  %.not1.i.i856 = icmp eq i64 %.pr.i.i855, 0
  br i1 %.not1.i.i856, label %bb.jc, label %.lr.ph.preheader.i.i857

.lr.ph.preheader.i.i857:                          ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit
  store i64 0, ptr %56, align 8, !tbaa !1758
  br label %bb.jc

bb.jc:                                            ; preds = %.lr.ph.preheader.i.i857, %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit
  %i.bdu = load ptr, ptr %i.awt, align 8, !tbaa !1775 ; 5 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 2 uses
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !1773
  %.not.i.i.i.i858 = icmp eq ptr %i.bdw, %i.bdu
  br i1 %.not.i.i.i.i858, label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.jc
  store ptr %i.bdu, ptr %i.bdv, align 8, !tbaa !1773
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i, %bb.jc
  %.not.i.i.i1.i859 = icmp eq ptr %i.bdu, null
  br i1 %.not.i.i.i1.i859, label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit, label %bb.jd

bb.jd:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i
  %i.bdx = getelementptr inbounds nuw i8, ptr %56, i64 96
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !1774
  %i.bdz = ptrtoint ptr %i.bdy to i64
  %i.bea = ptrtoint ptr %i.bdu to i64
  %i.beb = sub i64 %i.bdz, %i.bea
  call void @_ZdlPvm(ptr noundef nonnull %i.bdu, i64 noundef %i.beb) #33
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #34
  %.pr.i.i860 = load i64, ptr %55, align 8, !tbaa !930
  %.not1.i.i861 = icmp eq i64 %.pr.i.i860, 0
  br i1 %.not1.i.i861, label %bb.je, label %.lr.ph.preheader.i.i862

.lr.ph.preheader.i.i862:                          ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit
  store i64 0, ptr %55, align 8, !tbaa !930
  br label %bb.je

bb.je:                                            ; preds = %.lr.ph.preheader.i.i862, %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit
  %i.bec = load ptr, ptr %i.awq, align 8, !tbaa !943 ; 5 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %55, i64 88 ; 2 uses
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !941
  %.not.i.i.i.i863 = icmp eq ptr %i.bee, %i.bec
  br i1 %.not.i.i.i.i863, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.je
  store ptr %i.bec, ptr %i.bed, align 8, !tbaa !941
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.je
  %.not.i.i.i1.i864 = icmp eq ptr %i.bec, null
  br i1 %.not.i.i.i1.i864, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit, label %bb.jf

bb.jf:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i
  %i.bef = getelementptr inbounds nuw i8, ptr %55, i64 96
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !942
  %i.beh = ptrtoint ptr %i.beg to i64
  %i.bei = ptrtoint ptr %i.bec to i64
  %i.bej = sub i64 %i.beh, %i.bei
  call void @_ZdlPvm(ptr noundef nonnull %i.bec, i64 noundef %i.bej) #33
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #34
  br label %.thread1364

bb.jg:                                            ; preds = %._crit_edge1624
  %i.bek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  br label %.loopexit.split-lp1424

.loopexit.split-lp1424:                           ; preds = %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jg
  %.pn394.pn = phi { ptr, i32 } [ %i.bek, %bb.jg ], [ %lpad.loopexit.split-lp2510, %.loopexit.split-lp1424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
end_hunk_1
begin_hunk_2_@_ZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityE:bb.a
  %i.bes = sub i64 %i.beq, %i.ber
  call void @_ZdlPvm(ptr noundef nonnull %i.bel, i64 noundef %i.bes) #33
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872

_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872: ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i870, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  %.pr.i.i873 = load i64, ptr %57, align 8, !tbaa !1761
  %.not1.i.i874 = icmp eq i64 %.pr.i.i873, 0
  br i1 %.not1.i.i874, label %bb.jj, label %.lr.ph.preheader.i.i875

.lr.ph.preheader.i.i875:                          ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872
  store i64 0, ptr %57, align 8, !tbaa !1761
  br label %bb.jj

bb.jj:                                            ; preds = %.lr.ph.preheader.i.i875, %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872
  %i.bet = load ptr, ptr %i.aww, align 8, !tbaa !879 ; 5 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %57, i64 88 ; 2 uses
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !878
  %.not.i.i.i.i876 = icmp eq ptr %i.bev, %i.bet
  br i1 %.not.i.i.i.i876, label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878, label %_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i877

_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i877: ; preds = %bb.jj
  store ptr %i.bet, ptr %i.beu, align 8, !tbaa !878
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878: ; preds = %_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i877, %bb.jj
  %.not.i.i.i1.i879 = icmp eq ptr %i.bet, null
  br i1 %.not.i.i.i1.i879, label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880, label %bb.jk

bb.jk:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878
  %i.bew = getelementptr inbounds nuw i8, ptr %57, i64 96
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !1017
  %i.bey = ptrtoint ptr %i.bex to i64
  %i.bez = ptrtoint ptr %i.bet to i64
  %i.bfa = sub i64 %i.bey, %i.bez
  call void @_ZdlPvm(ptr noundef nonnull %i.bet, i64 noundef %i.bfa) #33
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880: ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #34
  %.pr.i.i881 = load i64, ptr %56, align 8, !tbaa !1758
  %.not1.i.i882 = icmp eq i64 %.pr.i.i881, 0
  br i1 %.not1.i.i882, label %bb.jl, label %.lr.ph.preheader.i.i883

.lr.ph.preheader.i.i883:                          ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880
  store i64 0, ptr %56, align 8, !tbaa !1758
  br label %bb.jl

bb.jl:                                            ; preds = %.lr.ph.preheader.i.i883, %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880
  %i.bfb = load ptr, ptr %i.awt, align 8, !tbaa !1775 ; 5 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 2 uses
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !1773
  %.not.i.i.i.i884 = icmp eq ptr %i.bfd, %i.bfb
  br i1 %.not.i.i.i.i884, label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886, label %_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i885

_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i885: ; preds = %bb.jl
  store ptr %i.bfb, ptr %i.bfc, align 8, !tbaa !1773
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886: ; preds = %_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i885, %bb.jl
  %.not.i.i.i1.i887 = icmp eq ptr %i.bfb, null
  br i1 %.not.i.i.i1.i887, label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888, label %bb.jm

bb.jm:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886
  %i.bfe = getelementptr inbounds nuw i8, ptr %56, i64 96
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !1774
  %i.bfg = ptrtoint ptr %i.bff to i64
  %i.bfh = ptrtoint ptr %i.bfb to i64
  %i.bfi = sub i64 %i.bfg, %i.bfh
  call void @_ZdlPvm(ptr noundef nonnull %i.bfb, i64 noundef %i.bfi) #33
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888: ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #34
  %.pr.i.i889 = load i64, ptr %55, align 8, !tbaa !930
  %.not1.i.i890 = icmp eq i64 %.pr.i.i889, 0
  br i1 %.not1.i.i890, label %bb.jn, label %.lr.ph.preheader.i.i891

.lr.ph.preheader.i.i891:                          ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888
  store i64 0, ptr %55, align 8, !tbaa !930
  br label %bb.jn

bb.jn:                                            ; preds = %.lr.ph.preheader.i.i891, %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888
  %i.bfj = load ptr, ptr %i.awq, align 8, !tbaa !943 ; 5 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %55, i64 88 ; 2 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !941
  %.not.i.i.i.i892 = icmp eq ptr %i.bfl, %i.bfj
  br i1 %.not.i.i.i.i892, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i893

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i893: ; preds = %bb.jn
  store ptr %i.bfj, ptr %i.bfk, align 8, !tbaa !941
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i893, %bb.jn
  %.not.i.i.i1.i895 = icmp eq ptr %i.bfj, null
  br i1 %.not.i.i.i1.i895, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit896, label %bb.jo

bb.jo:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894
  %i.bfm = getelementptr inbounds nuw i8, ptr %55, i64 96
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !942
  %i.bfo = ptrtoint ptr %i.bfn to i64
  %i.bfp = ptrtoint ptr %i.bfj to i64
  %i.bfq = sub i64 %i.bfo, %i.bfp
  call void @_ZdlPvm(ptr noundef nonnull %i.bfj, i64 noundef %i.bfq) #33
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit896

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit896: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #34
  br label %.thread2263.loopexit.split-lp

.thread1364:                                      ; preds = %.preheader1428, %bb.gi, %.loopexit1438, %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit, %.thread1328
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #34
  store i64 0, ptr %60, align 8, !tbaa !1786
  %i.bfr = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %60, i64 8
  store ptr %i.bfs, ptr %i.bfr, align 8, !tbaa !1787
  %i.bft = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bft, i8 0, i64 24, i1 false)
  %i.bfu = load i32, ptr %i.a, align 4, !tbaa !669 ; 4 uses
  %i.bfv = icmp ugt i32 %i.bfu, 8
  br i1 %i.bfv, label %bb.jp, label %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit

bb.jp:                                            ; preds = %.thread1364
  %i.bfw = sext i32 %i.bfu to i64
  %i.bfx = add nsw i64 %i.bfw, -8                 ; 3 uses
  %i.bfy = icmp slt i32 %i.bfu, 8
  br i1 %i.bfy, label %.invoke2359, label %bb.jq

.invoke2359:                                      ; preds = %bb.kj, %bb.jp
  %i.bfz = phi ptr [ @.str.135, %bb.jp ], [ @.str.134, %bb.kj ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bfz) #35
          to label %.cont2360 unwind label %.loopexit.split-lp1420.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2360:                                        ; preds = %.invoke2359
  unreachable

bb.jq:                                            ; preds = %bb.jp
  %i.bga = getelementptr inbounds nuw i8, ptr %60, i64 40 ; 2 uses
  %.not2196 = icmp eq i64 %i.bfx, 0
  br i1 %.not2196, label %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit.thread: ; preds = %bb.jq
  %i.bgb = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.bgc = load ptr, ptr %i.bgb, align 16, !tbaa !780
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !780
  %i.bgf = icmp ne ptr %i.bgc, %i.bge
  br label %.lr.ph1627

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %bb.jq
  %i.bgg = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 2 uses
  %i.bgh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfx) #36
          to label %.noexc898 unwind label %.loopexit.split-lp1420.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc898:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.bgi = load ptr, ptr %i.bft, align 8, !tbaa !1788 ; 4 uses
  %i.bgj = load ptr, ptr %i.bgg, align 8, !tbaa !1789
  %i.bgk = ptrtoint ptr %i.bgj to i64
  %i.bgl = ptrtoint ptr %i.bgi to i64             ; 2 uses
  %i.bgm = sub i64 %i.bgk, %i.bgl                 ; 2 uses
  %i.bgn = icmp sgt i64 %i.bgm, 0
  br i1 %i.bgn, label %bb.jr, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

bb.jr:                                            ; preds = %.noexc898
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bgh, ptr align 1 %i.bgi, i64 %i.bgm, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.jr, %.noexc898
  %.not.i8.i.i = icmp eq ptr %i.bgi, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.js

bb.js:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.bgo = load ptr, ptr %i.bga, align 8, !tbaa !1790
  %i.bgp = ptrtoint ptr %i.bgo to i64
  %i.bgq = sub i64 %i.bgp, %i.bgl
  call void @_ZdlPvm(ptr noundef nonnull %i.bgi, i64 noundef %i.bgq) #33
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.js, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.bgh, ptr %i.bft, align 8, !tbaa !1788
  store ptr %i.bgh, ptr %i.bgg, align 8, !tbaa !1789
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.bfx
  store ptr %i.bgr, ptr %i.bga, align 8, !tbaa !1790
  %.pre1869 = load i32, ptr %i.a, align 4, !tbaa !669
  br label %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit

_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit:    ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %.thread1364
  %i.bgs = phi i32 [ %.pre1869, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %i.bfu, %.thread1364 ]
  %i.bgt = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.bgu = load ptr, ptr %i.bgt, align 16, !tbaa !780
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !780
  %i.bgx = icmp ne ptr %i.bgu, %i.bgw
  %.not3651625 = icmp eq i32 %i.bgs, 0
  br i1 %.not3651625, label %._crit_edge1628, label %.lr.ph1627

.lr.ph1627:                                       ; preds = %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit.thread, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit
  %i.bgy = phi i1 [ %i.bgf, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit.thread ], [ %i.bgx, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit ]
  %i.bgz = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bha = getelementptr inbounds nuw i8, ptr %34, i64 24
  %77 = load ptr, ptr %29, align 8
  %i.bhb = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 4 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %60, i64 40 ; 3 uses
  br label %bb.jw

._crit_edge1628:                                  ; preds = %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %62, i8 0, i64 32, i1 false)
  %i.bhd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit unwind label %bb.jt ; 4 uses

bb.jt:                                            ; preds = %._crit_edge1628
  %i.bhe = landingpad { ptr, i32 }
          cleanup
  %i.bhf = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !785 ; 2 uses
  %.not.i.i899 = icmp eq ptr %i.bhg, null
  br i1 %.not.i.i899, label %.body900, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bhh = invoke noundef zeroext i1 %i.bhg(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %62, i32 noundef 3)
          to label %.body900 unwind label %bb.jv  ; 0 uses

bb.jv:                                            ; preds = %bb.ju
  %i.bhi = landingpad { ptr, i32 }
          catch ptr null
  %i.bhj = extractvalue { ptr, i32 } %i.bhi, 0
  call void @__clang_call_terminate(ptr %i.bhj) #37
  unreachable

bb.jw:                                            ; preds = %.lr.ph1627, %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit
  %indvars.iv1763 = phi i64 [ 0, %.lr.ph1627 ], [ %indvars.iv.next1764, %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit ] ; 7 uses
  %i.bhk = load i8, ptr %0, align 8, !tbaa !694
  %i.bhl = icmp eq i8 %i.bhk, 0
  %or.cond = and i1 %i.bgy, %i.bhl
  br i1 %or.cond, label %bb.jx, label %.thread1366

bb.jx:                                            ; preds = %bb.jw
  %i.bhm = load ptr, ptr %i.bgz, align 8, !tbaa !1741, !noalias !1791 ; 2 uses
  %i.bhn = load ptr, ptr %i.bha, align 8, !tbaa !1001, !noalias !1791
  %i.bho = load ptr, ptr %i.lv, align 8, !tbaa !1000, !noalias !1791
  %i.bhp = ptrtoint ptr %i.bhm to i64
  %i.bhq = ptrtoint ptr %i.bhn to i64
  %i.bhr = sub i64 %i.bhp, %i.bhq
  %i.bhs = add nsw i64 %i.bhr, %indvars.iv1763    ; 5 uses
  %i.bht = icmp sgt i64 %i.bhs, -1
  br i1 %i.bht, label %bb.jy, label %bb.kb

bb.jy:                                            ; preds = %bb.jx
  %i.bhu = icmp samesign ult i64 %i.bhs, 512
  br i1 %i.bhu, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %indvars.iv1763
  br label %_ZNSt5dequeIbSaIbEEixEm.exit

bb.ka:                                            ; preds = %bb.jy
  %i.bhw = lshr i64 %i.bhs, 9
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jx
  %i.bhx = ashr i64 %i.bhs, 9
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.bhy = phi i64 [ %i.bhw, %bb.ka ], [ %i.bhx, %bb.kb ] ; 2 uses
  %i.bhz = getelementptr inbounds [8 x i8], ptr %i.bho, i64 %i.bhy
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !974, !noalias !1791
  %i.bib = shl nsw i64 %i.bhy, 9
  %i.bic = sub nsw i64 %i.bhs, %i.bib
  %i.bid = getelementptr inbounds i8, ptr %i.bia, i64 %i.bic
  br label %_ZNSt5dequeIbSaIbEEixEm.exit

_ZNSt5dequeIbSaIbEEixEm.exit:                     ; preds = %bb.jz, %bb.kc
  %storemerge.i.i.i.i = phi ptr [ %i.bid, %bb.kc ], [ %i.bhv, %bb.jz ]
  %i.bie = load i8, ptr %storemerge.i.i.i.i, align 1, !tbaa !87, !range !83, !noundef !84
  %i.bif = trunc nuw i8 %i.bie to i1
  br i1 %i.bif, label %.thread1366, label %bb.kd

bb.kd:                                            ; preds = %_ZNSt5dequeIbSaIbEEixEm.exit
  %i.big = icmp samesign ult i64 %indvars.iv1763, 8
  %i.bih = load ptr, ptr %i.d, align 8
  %i.bii = getelementptr inbounds nuw [8 x i8], ptr %i.bih, i64 %indvars.iv1763
  %i.bij = load ptr, ptr %i.f, align 8
  %i.bik = getelementptr [8 x i8], ptr %i.bij, i64 %indvars.iv1763
  %i.bil = getelementptr i8, ptr %i.bik, i64 -64
  %.0.i902 = select i1 %i.big, ptr %i.bii, ptr %i.bil
  %i.bim = load ptr, ptr %.0.i902, align 8, !tbaa !606 ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 61
  %i.bio = load atomic i8, ptr %i.bin monotonic, align 1, !range !83, !noundef !84
  %i.bip = trunc nuw i8 %i.bio to i1
  br i1 %i.bip, label %.thread1366, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %77, i64 %indvars.iv1763
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !962
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 1208 ; 2 uses
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !611
  %.not1405 = icmp eq ptr %i.bit, %i.bis
  br i1 %.not1405, label %.thread1366, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bim, i64 2824 ; 2 uses
  %i.biv = load i32, ptr %i.biu, align 8, !tbaa !781
  %i.biw = add nsw i32 %i.biv, 1
  store i32 %i.biw, ptr %i.biu, align 8, !tbaa !781
  br label %.thread1366

.thread1366:                                      ; preds = %bb.jw, %_ZNSt5dequeIbSaIbEEixEm.exit, %bb.kd, %bb.kf, %bb.ke
  %i.bix = phi i8 [ 0, %bb.ke ], [ 1, %bb.kf ], [ 0, %bb.kd ], [ 0, %_ZNSt5dequeIbSaIbEEixEm.exit ], [ 0, %bb.jw ] ; 3 uses
  %i.biy = load i64, ptr %60, align 8, !tbaa !1786 ; 2 uses
  %i.biz = icmp ult i64 %i.biy, 8
  br i1 %i.biz, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %.thread1366
  %i.bja = load ptr, ptr %i.bfr, align 8, !tbaa !1787
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 %i.biy
  store i8 0, ptr %i.bjb, align 1, !tbaa !65
  %i.bjc = load ptr, ptr %i.bfr, align 8, !tbaa !1787
  %i.bjd = load i64, ptr %60, align 8, !tbaa !1786 ; 2 uses
  %i.bje = add i64 %i.bjd, 1
  store i64 %i.bje, ptr %60, align 8, !tbaa !1786
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bjc, i64 %i.bjd
  store i8 %i.bix, ptr %i.bjf, align 1, !tbaa !65
  br label %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit

bb.kh:                                            ; preds = %.thread1366
  %i.bjg = load ptr, ptr %i.bhb, align 8, !tbaa !1789 ; 3 uses
  %i.bjh = load ptr, ptr %i.bhc, align 8, !tbaa !1790
  %.not.i.i904 = icmp eq ptr %i.bjg, %i.bjh
  br i1 %.not.i.i904, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  store i8 %i.bix, ptr %i.bjg, align 1, !tbaa !65
  %i.bji = load ptr, ptr %i.bhb, align 8, !tbaa !1789
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 1
  store ptr %i.bjj, ptr %i.bhb, align 8, !tbaa !1789
  br label %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit

bb.kj:                                            ; preds = %bb.kh
  %i.bjk = load ptr, ptr %i.bft, align 8, !tbaa !1788 ; 4 uses
  %i.bjl = ptrtoint ptr %i.bjg to i64
  %i.bjm = ptrtoint ptr %i.bjk to i64             ; 2 uses
  %i.bjn = sub i64 %i.bjl, %i.bjm                 ; 7 uses
  %i.bjo = icmp eq i64 %i.bjn, 9223372036854775807
  br i1 %i.bjo, label %.invoke2359, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.kj
  %.sroa.speculated.i.i.i.i905 = call i64 @llvm.umax.i64(i64 %i.bjn, i64 1)
  %i.bjp = add i64 %.sroa.speculated.i.i.i.i905, %i.bjn ; 2 uses
  %i.bjq = icmp ult i64 %i.bjp, %i.bjn
  %i.bjr = call i64 @llvm.umin.i64(i64 %i.bjp, i64 9223372036854775807)
  %i.bjs = select i1 %i.bjq, i64 9223372036854775807, i64 %i.bjr ; 3 uses
  %.not.i.i.i.i906 = icmp ne i64 %i.bjs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i906)
  %i.bjt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjs) #36
          to label %.noexc909 unwind label %.loopexit.split-lp1420.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc909:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 %i.bjn ; 2 uses
  store i8 %i.bix, ptr %i.bju, align 1, !tbaa !65
  %i.bjv = icmp sgt i64 %i.bjn, 0
  br i1 %i.bjv, label %bb.kk, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.kk:                                            ; preds = %.noexc909
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bjt, ptr align 1 %i.bjk, i64 %i.bjn, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.kk, %.noexc909
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bju, i64 1
  %.not.i17.i.i.i907 = icmp eq ptr %i.bjk, null
  br i1 %.not.i17.i.i.i907, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.bjx = load ptr, ptr %i.bhc, align 8, !tbaa !1790
  %i.bjy = ptrtoint ptr %i.bjx to i64
  %i.bjz = sub i64 %i.bjy, %i.bjm
  call void @_ZdlPvm(ptr noundef nonnull %i.bjk, i64 noundef %i.bjz) #33
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.kl, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bjt, ptr %i.bft, align 8, !tbaa !1788
  store ptr %i.bjw, ptr %i.bhb, align 8, !tbaa !1789
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjt, i64 %i.bjs
  store ptr %i.bka, ptr %i.bhc, align 8, !tbaa !1790
  br label %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit

_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.ki, %bb.kg
  %indvars.iv.next1764 = add nuw nsw i64 %indvars.iv1763, 1 ; 2 uses
  %i.bkb = load i32, ptr %i.a, align 4, !tbaa !669
  %i.bkc = zext i32 %i.bkb to i64
  %.not365 = icmp eq i64 %indvars.iv.next1764, %i.bkc
  br i1 %.not365, label %._crit_edge1628, label %bb.jw, !llvm.loop !1695

.loopexit.split-lp1420.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i, %.invoke2359, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %lpad.loopexit.split-lp2507 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1420

_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit:      ; preds = %._crit_edge1628
  store ptr %i.a, ptr %i.bhd, align 16, !tbaa !1018
  %.sroa.51146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  store ptr %60, ptr %.sroa.51146.0..sroa_idx, align 8, !tbaa !1020
  %.sroa.61147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhd, i64 16
  store ptr %26, ptr %.sroa.61147.0..sroa_idx, align 16, !tbaa !1022
  store ptr %i.bhd, ptr %62, align 8, !tbaa !668
  %i.bkd = getelementptr inbounds nuw i8, ptr %61, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvEZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS1_10autovectorINS2_10BGFlushArgELm8EEEPbPNS1_10JobContextEPNS1_9LogBufferENS1_3Env8PriorityEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.bkd, align 8, !tbaa !784
  %i.bke = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %62, i64 16, i1 false), !tbaa.struct !1023
  store ptr @"_ZNSt17_Function_handlerIFvvEZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS1_10autovectorINS2_10BGFlushArgELm8EEEPbPNS1_10JobContextEPNS1_9LogBufferENS1_3Env8PriorityEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.bke, align 8, !tbaa !785
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #34
  %i.bkf = load i8, ptr %0, align 8, !tbaa !694
  %i.bkg = icmp eq i8 %i.bkf, 0
  %i.bkh = load i32, ptr %i.a, align 4            ; 3 uses
  %.not3661629 = icmp eq i32 %i.bkh, 0
  %or.cond1652 = select i1 %i.bkg, i1 true, i1 %.not3661629
  br i1 %or.cond1652, label %.loopexit1415, label %.lr.ph1631

.lr.ph1631:                                       ; preds = %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit
  %i.bki = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bkj = getelementptr inbounds nuw i8, ptr %34, i64 24
  %78 = load ptr, ptr %33, align 8
  br label %bb.km

.body900:                                         ; preds = %bb.jt, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #34
  br label %bb.ol

bb.km:                                            ; preds = %.lr.ph1631, %bb.kw
  %i.bkk = phi i32 [ %i.bkh, %.lr.ph1631 ], [ %i.bmk, %bb.kw ] ; 4 uses
  %indvars.iv1766 = phi i64 [ 0, %.lr.ph1631 ], [ %indvars.iv.next1767, %bb.kw ] ; 10 uses
  %i.bkl = icmp samesign ult i64 %indvars.iv1766, 8 ; 2 uses
  %i.bkm = load ptr, ptr %i.rk, align 8
  %i.bkn = getelementptr inbounds nuw [24 x i8], ptr %i.bkm, i64 %indvars.iv1766
  %i.bko = load ptr, ptr %i.rm, align 8
  %i.bkp = getelementptr [24 x i8], ptr %i.bko, i64 %indvars.iv1766
  %i.bkq = getelementptr i8, ptr %i.bkp, i64 -192
  %.0.i911 = select i1 %i.bkl, ptr %i.bkn, ptr %i.bkq ; 2 uses
  %i.bkr = load i8, ptr %.0.i911, align 8, !tbaa !1004, !range !83, !noundef !84
  %i.bks = trunc nuw i8 %i.bkr to i1
  br i1 %i.bks, label %bb.kn, label %bb.kw

bb.kn:                                            ; preds = %bb.km
  %i.bkt = getelementptr inbounds nuw i8, ptr %.0.i911, i64 8
  %i.bku = load i8, ptr %i.bkt, align 8, !tbaa !694
  %i.bkv = icmp eq i8 %i.bku, 0
  br i1 %i.bkv, label %bb.ko, label %bb.kw

bb.ko:                                            ; preds = %bb.kn
  %i.bkw = load ptr, ptr %i.bki, align 8, !tbaa !1741, !noalias !1792 ; 2 uses
  %i.bkx = load ptr, ptr %i.bkj, align 8, !tbaa !1001, !noalias !1792
  %i.bky = load ptr, ptr %i.lv, align 8, !tbaa !1000, !noalias !1792
  %i.bkz = ptrtoint ptr %i.bkw to i64
  %i.bla = ptrtoint ptr %i.bkx to i64
  %i.blb = sub i64 %i.bkz, %i.bla
  %i.blc = add nsw i64 %i.blb, %indvars.iv1766    ; 5 uses
  %i.bld = icmp sgt i64 %i.blc, -1
  br i1 %i.bld, label %bb.kp, label %bb.ks

bb.kp:                                            ; preds = %bb.ko
  %i.ble = icmp samesign ult i64 %i.blc, 512
  br i1 %i.ble, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkw, i64 %indvars.iv1766
  br label %_ZNSt5dequeIbSaIbEEixEm.exit914

bb.kr:                                            ; preds = %bb.kp
  %i.blg = lshr i64 %i.blc, 9
  br label %bb.kt

bb.ks:                                            ; preds = %bb.ko
  %i.blh = ashr i64 %i.blc, 9
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %i.bli = phi i64 [ %i.blg, %bb.kr ], [ %i.blh, %bb.ks ] ; 2 uses
  %i.blj = getelementptr inbounds [8 x i8], ptr %i.bky, i64 %i.bli
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !974, !noalias !1792
  %i.bll = shl nsw i64 %i.bli, 9
  %i.blm = sub nsw i64 %i.blc, %i.bll
  %i.bln = getelementptr inbounds i8, ptr %i.blk, i64 %i.blm
  br label %_ZNSt5dequeIbSaIbEEixEm.exit914

_ZNSt5dequeIbSaIbEEixEm.exit914:                  ; preds = %bb.kq, %bb.kt
  %storemerge.i.i.i.i913 = phi ptr [ %i.bln, %bb.kt ], [ %i.blf, %bb.kq ]
  %i.blo = load i8, ptr %storemerge.i.i.i.i913, align 1, !tbaa !87, !range !83, !noundef !84
  %i.blp = trunc nuw i8 %i.blo to i1
  br i1 %i.blp, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %_ZNSt5dequeIbSaIbEEixEm.exit914
  %i.blq = getelementptr inbounds nuw [424 x i8], ptr %78, i64 %indvars.iv1766 ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 24
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !684
  %.not367 = icmp eq i64 %i.bls, 0
  br i1 %.not367, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.blt = load ptr, ptr %i.d, align 8
  %i.blu = getelementptr inbounds nuw [8 x i8], ptr %i.blt, i64 %indvars.iv1766
  %i.blv = load ptr, ptr %i.f, align 8
  %i.blw = getelementptr [8 x i8], ptr %i.blv, i64 %indvars.iv1766
  %i.blx = getelementptr i8, ptr %i.blw, i64 -64
  %.0.i915 = select i1 %i.bkl, ptr %i.blu, ptr %i.blx
  %i.bly = load ptr, ptr %.0.i915, align 8, !tbaa !606
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 2704
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !1793
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 16
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !1795
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.blq, i64 16
  %i.bme = load i64, ptr %i.bmd, align 8, !tbaa !683
  %i.bmf = and i64 %i.bme, 4611686018427387903
  %i.bmg = load ptr, ptr %30, align 8, !tbaa !949
  %i.bmh = getelementptr inbounds nuw [736 x i8], ptr %i.bmg, i64 %indvars.iv1766
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 696
  %i.bmj = load i32, ptr %i.bmi, align 8, !tbaa !1796
  invoke void @_ZN7rocksdb10TableCache15ReleaseObsoleteEPNS_5CacheEmPNS1_6HandleEj(ptr noundef %i.bmc, i64 noundef %i.bmf, ptr noundef null, i32 noundef %i.bmj)
          to label %._crit_edge1870 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1870:                                  ; preds = %bb.kv
  %.pre1871 = load i32, ptr %i.a, align 4, !tbaa !669
  br label %bb.kw

bb.kw:                                            ; preds = %._crit_edge1870, %bb.km, %bb.kn, %_ZNSt5dequeIbSaIbEEixEm.exit914, %bb.ku
  %i.bmk = phi i32 [ %.pre1871, %._crit_edge1870 ], [ %i.bkk, %bb.km ], [ %i.bkk, %bb.kn ], [ %i.bkk, %_ZNSt5dequeIbSaIbEEixEm.exit914 ], [ %i.bkk, %bb.ku ] ; 3 uses
  %indvars.iv.next1767 = add nuw nsw i64 %indvars.iv1766, 1 ; 2 uses
  %i.bml = zext i32 %i.bmk to i64
  %.not366 = icmp eq i64 %indvars.iv.next1767, %i.bml
  br i1 %.not366, label %.loopexit1415, label %bb.km, !llvm.loop !1698

.loopexit1415:                                    ; preds = %bb.kw, %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit
  %i.bmm = phi i32 [ %i.bkh, %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit ], [ %i.bmk, %bb.kw ] ; 2 uses
  %.not3691632 = icmp eq i32 %i.bmm, 0
  br i1 %.not3691632, label %._crit_edge1638.thread, label %.lr.ph1637

.lr.ph1637:                                       ; preds = %.loopexit1415
  %i.bmn = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.bmp = getelementptr inbounds nuw i8, ptr %42, i64 24
  br label %bb.kx

bb.kx:                                            ; preds = %.lr.ph1637, %bb.lm
  %i.bmq = phi i32 [ %i.bmm, %.lr.ph1637 ], [ %i.bpy, %bb.lm ] ; 2 uses
  %indvars.iv1769 = phi i64 [ 0, %.lr.ph1637 ], [ %indvars.iv.next1770, %bb.lm ] ; 10 uses
  %i.bmr = icmp samesign ult i64 %indvars.iv1769, 8
  %i.bms = load ptr, ptr %i.d, align 8
  %i.bmt = getelementptr inbounds nuw [8 x i8], ptr %i.bms, i64 %indvars.iv1769
  %i.bmu = load ptr, ptr %i.f, align 8
  %i.bmv = getelementptr [8 x i8], ptr %i.bmu, i64 %indvars.iv1769
  %i.bmw = getelementptr i8, ptr %i.bmv, i64 -64
  %.0.i916 = select i1 %i.bmr, ptr %i.bmt, ptr %i.bmw
  %i.bmx = load ptr, ptr %.0.i916, align 8, !tbaa !606
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 2728
  %i.bmz = load ptr, ptr %i.bmy, align 8, !tbaa !756 ; 3 uses
  %i.bna = icmp eq ptr %i.bmz, null
  br i1 %i.bna, label %bb.lm, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bnb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01240.02203, i64 %indvars.iv1769 ; 3 uses
  %i.bnc = load i64, ptr %i.bnb, align 8, !tbaa !776
  %i.bnd = icmp eq i64 %i.bnc, 0
  br i1 %i.bnd, label %bb.lm, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #34
  %i.bne = load ptr, ptr %29, align 8, !tbaa !963
  %i.bnf = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %indvars.iv1769 ; 2 uses
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !962 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 1856 ; 2 uses
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !768, !noalias !1797 ; 2 uses
  store ptr %i.bni, ptr %63, align 8, !tbaa !768, !alias.scope !1797
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bng, i64 1864 ; 2 uses
  %i.bnk = load <2 x ptr>, ptr %i.bnj, align 8, !tbaa !760, !noalias !1797
  %i.bnl = load ptr, ptr %i.bnj, align 8, !tbaa !769, !noalias !1797
  store <2 x ptr> %i.bnk, ptr %i.bmn, align 8, !tbaa !760, !alias.scope !1797
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnh, i8 0, i64 24, i1 false), !noalias !1797
  %i.bnm = load ptr, ptr %i.bnf, align 8, !tbaa !962 ; 3 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1880 ; 2 uses
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !771, !noalias !1798 ; 7 uses
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1888
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !778, !noalias !1798
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1896
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !772, !noalias !1798 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnn, i8 0, i64 24, i1 false), !noalias !1798
  %i.bnt = load i8, ptr %0, align 8, !tbaa !694
  %i.bnu = icmp eq i8 %i.bnt, 0
  %i.bnv = icmp eq ptr %i.bni, %i.bnl
  %or.cond1397 = select i1 %i.bnu, i1 %i.bnv, i1 false
  %i.bnw = icmp eq ptr %i.bno, %i.bnq
  %or.cond1398 = select i1 %or.cond1397, i1 %i.bnw, i1 false
  br i1 %or.cond1398, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  store i64 0, ptr %i.bnb, align 8, !tbaa !776
  br label %.critedge5

bb.lb:                                            ; preds = %bb.kz
  %i.bnx = load i64, ptr %i.bnb, align 8, !tbaa !776
  invoke void @_ZN7rocksdb24BlobFilePartitionManager25CommitPreparedGenerationsEm(ptr noundef nonnull align 8 dereferenceable(856) %i.bmz, i64 noundef %i.bnx)
          to label %bb.lc unwind label %bb.lj

bb.lc:                                            ; preds = %bb.lb
  %i.bny = load i64, ptr %i.bmp, align 8, !tbaa !1024
  %.not.not.i.i = icmp eq i64 %i.bny, 0
  br i1 %.not.not.i.i, label %.preheader1411, label %bb.le

.preheader1411:                                   ; preds = %bb.lc, %bb.ld
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ld ], [ %i.sc, %bb.lc ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !995 ; 4 uses
  %i.bnz = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.bnz, label %.critedge5, label %bb.ld

bb.ld:                                            ; preds = %.preheader1411
  %i.boa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bob = load i32, ptr %i.boa, align 4, !tbaa !669
  %i.boc = zext i32 %i.bob to i64
  %i.bod = icmp eq i64 %indvars.iv1769, %i.boc
  br i1 %i.bod, label %_ZNSt13unordered_mapIiSt6vectorImSaImEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit, label %.preheader1411, !llvm.loop !1703

bb.le:                                            ; preds = %bb.lc
  %i.boe = load i64, ptr %i.sb, align 8, !tbaa !992 ; 2 uses
  %i.bof = urem i64 %indvars.iv1769, %i.boe       ; 2 uses
  %i.bog = load ptr, ptr %42, align 8, !tbaa !991
  %i.boh = getelementptr inbounds nuw [8 x i8], ptr %i.bog, i64 %i.bof
  %i.boi = load ptr, ptr %i.boh, align 8, !tbaa !994 ; 2 uses
  %.not.i.i.i.i917 = icmp eq ptr %i.boi, null
  br i1 %.not.i.i.i.i917, label %.critedge5, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !995 ; 3 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 8
  %i.bol = load i32, ptr %i.bok, align 4, !tbaa !669
  %i.bom = zext i32 %i.bol to i64
  %i.bon = icmp eq i64 %indvars.iv1769, %i.bom
  br i1 %i.bon, label %_ZNSt13unordered_mapIiSt6vectorImSaImEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i918

bb.lg:                                            ; preds = %bb.lh
  %i.boo = zext i32 %i.bos to i64
  %i.bop = icmp eq i64 %indvars.iv1769, %i.boo
  br i1 %i.bop, label %_ZNSt13unordered_mapIiSt6vectorImSaImEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i918, !llvm.loop !1664

.lr.ph.i.i.i.i918:                                ; preds = %bb.lf, %bb.lg
  %.020.i.i.i.i919 = phi ptr [ %i.boq, %bb.lg ], [ %i.boj, %bb.lf ]
  %i.boq = load ptr, ptr %.020.i.i.i.i919, align 8, !tbaa !995 ; 4 uses
  %.not18.i.i.i.i920 = icmp eq ptr %i.boq, null
  br i1 %.not18.i.i.i.i920, label %.critedge5, label %bb.lh

bb.lh:                                            ; preds = %.lr.ph.i.i.i.i918
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 8
  %i.bos = load i32, ptr %i.bor, align 4, !tbaa !669 ; 2 uses
  %i.bot = sext i32 %i.bos to i64
  %i.bou = urem i64 %i.bot, %i.boe
  %.not19.i.i.i.i921 = icmp eq i64 %i.bou, %i.bof
  br i1 %.not19.i.i.i.i921, label %bb.lg, label %..loopexit_crit_edge21.i.i.i.i922, !llvm.loop !1664

..loopexit_crit_edge21.i.i.i.i922:                ; preds = %bb.lh
  br label %.critedge5, !llvm.loop !1664

_ZNSt13unordered_mapIiSt6vectorImSaImEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit: ; preds = %bb.lg, %bb.ld, %bb.lf
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ld ], [ %i.boj, %bb.lf ], [ %i.boq, %bb.lg ] ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !786
  %i.box = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !786
  %i.boz = icmp eq ptr %i.bow, %i.boy
  br i1 %i.boz, label %.critedge5, label %bb.li

bb.li:                                            ; preds = %_ZNSt13unordered_mapIiSt6vectorImSaImEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit
  invoke void @_ZN7rocksdb24BlobFilePartitionManager27RemoveFilePartitionMappingsERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(856) %i.bmz, ptr noundef nonnull align 8 dereferenceable(24) %i.bov)
          to label %.critedge5 unwind label %bb.lj

bb.lj:                                            ; preds = %bb.lb, %bb.li
  %i.bpa = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i940 = icmp eq ptr %i.bno, null
  br i1 %.not.i.i.i940, label %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit941, label %bb.ln

.critedge5:                                       ; preds = %.lr.ph.i.i.i.i918, %.preheader1411, %_ZNSt13unordered_mapIiSt6vectorImSaImEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit, %bb.li, %..loopexit_crit_edge21.i.i.i.i922, %bb.le, %bb.la
  %.not.i.i.i923 = icmp eq ptr %i.bno, null
  br i1 %.not.i.i.i923, label %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit924, label %bb.lk

bb.lk:                                            ; preds = %.critedge5
  %i.bpb = ptrtoint ptr %i.bns to i64
  %i.bpc = ptrtoint ptr %i.bno to i64
  %i.bpd = sub i64 %i.bpb, %i.bpc
  call void @_ZdlPvm(ptr noundef nonnull %i.bno, i64 noundef %i.bpd) #33
  br label %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit924

_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit924: ; preds = %.critedge5, %bb.lk
  %i.bpe = load ptr, ptr %63, align 8, !tbaa !768 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityE:bb.a

bb.ln:                                            ; preds = %bb.lj
  %i.bqa = ptrtoint ptr %i.bns to i64
  %i.bqb = ptrtoint ptr %i.bno to i64
  %i.bqc = sub i64 %i.bqa, %i.bqb
  call void @_ZdlPvm(ptr noundef nonnull %i.bno, i64 noundef %i.bqc) #33
  br label %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit941

_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit941: ; preds = %bb.lj, %bb.ln
  call void @_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %63) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #34
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge1638:                                  ; preds = %bb.lm
  %i.bqd = load i8, ptr %0, align 8, !tbaa !694   ; 2 uses
  %i.bqe = icmp eq i8 %i.bqd, 0
  br i1 %i.bqe, label %.preheader, label %.thread1377

._crit_edge1638.thread:                           ; preds = %.loopexit1415
  %i.bqf = load i8, ptr %0, align 8, !tbaa !694   ; 2 uses
  %i.bqg = icmp eq i8 %i.bqf, 0
  br i1 %i.bqg, label %._crit_edge1642, label %.thread1377

.preheader:                                       ; preds = %._crit_edge1638
  %.not3701639 = icmp eq i32 %i.bpy, 0
  br i1 %.not3701639, label %._crit_edge1642, label %.lr.ph1641

.lr.ph1641:                                       ; preds = %.preheader
  %i.bqh = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.bqi = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 3 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %64, i64 8
  br label %bb.lo

._crit_edge1642.loopexit:                         ; preds = %bb.me
  %i.bqk = icmp ne i32 %i.bss, 0
  br label %._crit_edge1642

._crit_edge1642:                                  ; preds = %._crit_edge1638.thread, %._crit_edge1642.loopexit, %.preheader
  %i.bql = phi i1 [ %i.bqk, %._crit_edge1642.loopexit ], [ false, %.preheader ], [ false, %._crit_edge1638.thread ]
  %.not371 = icmp eq ptr %3, null
  br i1 %.not371, label %bb.mg, label %bb.mf

bb.lo:                                            ; preds = %.lr.ph1641, %bb.me
  %i.bqm = phi i32 [ %i.bpy, %.lr.ph1641 ], [ %i.bss, %bb.me ]
  %indvars.iv1772 = phi i64 [ 0, %.lr.ph1641 ], [ %indvars.iv.next1773, %bb.me ] ; 7 uses
  %i.bqn = icmp samesign ult i64 %indvars.iv1772, 8 ; 2 uses
  %i.bqo = load ptr, ptr %i.d, align 8
  %i.bqp = getelementptr inbounds nuw [8 x i8], ptr %i.bqo, i64 %indvars.iv1772
  %i.bqq = load ptr, ptr %i.f, align 8
  %i.bqr = getelementptr [8 x i8], ptr %i.bqq, i64 %indvars.iv1772
  %i.bqs = getelementptr i8, ptr %i.bqr, i64 -64
  %.0.i942 = select i1 %i.bqn, ptr %i.bqp, ptr %i.bqs
  %i.bqt = load ptr, ptr %.0.i942, align 8, !tbaa !606 ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 61
  %i.bqv = load atomic i8, ptr %i.bqu monotonic, align 1, !range !83, !noundef !84
  %i.bqw = trunc nuw i8 %i.bqv to i1
  br i1 %i.bqw, label %bb.me, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bqx = load ptr, ptr %i.bqh, align 8, !tbaa !1025
  %i.bqy = getelementptr inbounds nuw [536 x i8], ptr %i.bqx, i64 %indvars.iv1772
  store i8 0, ptr %i.bqi, align 8, !tbaa !788
  invoke void @_ZN7rocksdb6DBImpl34InstallSuperVersionAndScheduleWorkEPNS_16ColumnFamilyDataEPNS_19SuperVersionContextESt8optionalISt10shared_ptrINS_18SeqnoToTimeMappingEEE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull %i.bqt, ptr noundef nonnull %i.bqy, ptr noundef nonnull align 8 %64)
          to label %bb.lq unwind label %bb.mb

bb.lq:                                            ; preds = %bb.lp
  %i.bqz = load i8, ptr %i.bqi, align 8, !tbaa !788, !range !83, !noundef !84
  %i.bra = trunc nuw i8 %i.bqz to i1
  br i1 %i.bra, label %bb.lr, label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit

bb.lr:                                            ; preds = %bb.lq
  store i8 0, ptr %i.bqi, align 8, !tbaa !788
  %i.brb = load ptr, ptr %i.bqj, align 8, !tbaa !667 ; 8 uses
  %.not.i.i.i.i.i.i944 = icmp eq ptr %i.brb, null
  br i1 %.not.i.i.i.i.i.i944, label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 8 ; 4 uses
  %i.brd = load atomic i64, ptr %i.brc acquire, align 8 ; 2 uses
  %i.bre = icmp eq i64 %i.brd, 4294967297
  %i.brf = trunc i64 %i.brd to i32                ; 2 uses
  br i1 %i.bre, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  store i32 0, ptr %i.brc, align 8, !tbaa !675
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brb, i64 12
  store i32 0, ptr %i.brg, align 4, !tbaa !676
  %i.brh = load ptr, ptr %i.brb, align 8, !tbaa !466
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 16
  %i.brj = load ptr, ptr %i.bri, align 8
  call void %i.brj(ptr noundef nonnull align 8 dereferenceable(16) %i.brb) #34, !inline_history !5
  %i.brk = load ptr, ptr %i.brb, align 8, !tbaa !466
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 24
  %i.brm = load ptr, ptr %i.brl, align 8
  call void %i.brm(ptr noundef nonnull align 8 dereferenceable(16) %i.brb) #34, !inline_history !5
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit

bb.lu:                                            ; preds = %bb.ls
  %i.brn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.brn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bro = add nsw i32 %i.brf, -1
  store i32 %i.bro, ptr %i.brc, align 8, !tbaa !669
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.lw:                                            ; preds = %bb.lu
  %i.brp = atomicrmw volatile add ptr %i.brc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.lw, %bb.lv
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.brf, %bb.lv ], [ %i.brp, %bb.lw ]
  %i.brq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.brq, label %bb.lx, label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit, !prof !672

bb.lx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.brb) #34
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit: ; preds = %bb.lq, %bb.lr, %bb.lt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.lx
  %i.brr = load ptr, ptr %i.d, align 8
  %i.brs = getelementptr inbounds nuw [8 x i8], ptr %i.brr, i64 %indvars.iv1772
  %i.brt = load ptr, ptr %i.f, align 8
  %i.bru = getelementptr [8 x i8], ptr %i.brt, i64 %indvars.iv1772
  %i.brv = getelementptr i8, ptr %i.bru, i64 -64
  %.0.i945 = select i1 %i.bqn, ptr %i.brs, ptr %i.brv
  %i.brw = load ptr, ptr %.0.i945, align 8, !tbaa !606 ; 2 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 8 ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brw, i64 48
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !789 ; 3 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #34
  %i.bsb = load ptr, ptr %i.brx, align 8, !tbaa !64
  %i.bsc = invoke noundef ptr @_ZNK7rocksdb18VersionStorageInfo12LevelSummaryEPNS0_19LevelSummaryStorageE(ptr noundef nonnull align 16 dereferenceable(4288) %i.bsa, ptr noundef nonnull %65)
          to label %bb.ly unwind label %bb.mc

bb.ly:                                            ; preds = %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.bsb, ptr noundef %i.bsc)
          to label %bb.lz unwind label %bb.mc

bb.lz:                                            ; preds = %bb.ly
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brz, i64 2840
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !791 ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.brz, i64 2848
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !791 ; 2 uses
  %i.bsh = icmp eq ptr %i.bse, %i.bsg
  br i1 %i.bsh, label %bb.md, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bsi = load ptr, ptr %i.brx, align 8, !tbaa !64
  %i.bsj = load ptr, ptr %i.bse, align 8, !tbaa !794
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !797
  %i.bsl = load i64, ptr %i.bsk, align 8, !tbaa !799
  %i.bsm = getelementptr inbounds i8, ptr %i.bsg, i64 -16
  %i.bsn = load ptr, ptr %i.bsm, align 8, !tbaa !794
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !797
  %i.bsp = load i64, ptr %i.bso, align 8, !tbaa !799
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.bsi, i64 noundef %i.bsl, i64 noundef %i.bsp)
          to label %bb.md unwind label %bb.mc

bb.mb:                                            ; preds = %bb.lp
  %i.bsq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %64) #34
  br label %.loopexit.split-lp.loopexit.split-lp

bb.mc:                                            ; preds = %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit, %bb.ly, %bb.ma
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #34
  br label %.loopexit.split-lp.loopexit.split-lp

bb.md:                                            ; preds = %bb.ma, %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #34
  %.pre1873 = load i32, ptr %i.a, align 4, !tbaa !669
  br label %bb.me

bb.me:                                            ; preds = %bb.lo, %bb.md
  %i.bss = phi i32 [ %i.bqm, %bb.lo ], [ %.pre1873, %bb.md ] ; 3 uses
  %indvars.iv.next1773 = add nuw nsw i64 %indvars.iv1772, 1 ; 2 uses
  %i.bst = zext i32 %i.bss to i64
  %.not370 = icmp eq i64 %indvars.iv.next1773, %i.bst
  br i1 %.not370, label %._crit_edge1642.loopexit, label %bb.lo, !llvm.loop !1705

bb.mf:                                            ; preds = %._crit_edge1642
  store i8 1, ptr %3, align 1, !tbaa !87
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %._crit_edge1642
  %i.bsu = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !70 ; 4 uses
  %i.bsw = load i8, ptr %0, align 8, !tbaa !694   ; 2 uses
  %i.bsx = icmp eq i8 %i.bsw, 0
  %i.bsy = and i1 %i.bsx, %i.bql
  br i1 %i.bsy, label %.lr.ph1645, label %._crit_edge1646

.lr.ph1645:                                       ; preds = %bb.mg
  %i.bsz = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bta = getelementptr inbounds nuw i8, ptr %34, i64 24
  %79 = load ptr, ptr %29, align 8
  %.not374 = icmp eq ptr %i.bsv, null
  %80 = load ptr, ptr %33, align 8
  %i.btb = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.btc = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %i.btd = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %i.bte = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.btf = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.btg = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %i.bth = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  br label %bb.mh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mo, %bb.kv, %.invoke2361
  %lpad.loopexit.split-lp2503 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.mh:                                            ; preds = %.lr.ph1645, %bb.nf
  %indvars.iv1775 = phi i64 [ 0, %.lr.ph1645 ], [ %indvars.iv.next1776, %bb.nf ] ; 11 uses
  %i.btj = load ptr, ptr %i.bsz, align 8, !tbaa !1741, !noalias !1799 ; 2 uses
  %i.btk = load ptr, ptr %i.bta, align 8, !tbaa !1001, !noalias !1799
  %i.btl = load ptr, ptr %i.lv, align 8, !tbaa !1000, !noalias !1799
  %i.btm = ptrtoint ptr %i.btj to i64
  %i.btn = ptrtoint ptr %i.btk to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = add nsw i64 %i.bto, %indvars.iv1775    ; 5 uses
  %i.btq = icmp sgt i64 %i.btp, -1
  br i1 %i.btq, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  %i.btr = icmp samesign ult i64 %i.btp, 512
  br i1 %i.btr, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btj, i64 %indvars.iv1775
  br label %_ZNSt5dequeIbSaIbEEixEm.exit948

bb.mk:                                            ; preds = %bb.mi
  %i.btt = lshr i64 %i.btp, 9
  br label %bb.mm

bb.ml:                                            ; preds = %bb.mh
  %i.btu = ashr i64 %i.btp, 9
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %i.btv = phi i64 [ %i.btt, %bb.mk ], [ %i.btu, %bb.ml ] ; 2 uses
  %i.btw = getelementptr inbounds [8 x i8], ptr %i.btl, i64 %i.btv
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !974, !noalias !1799
  %i.bty = shl nsw i64 %i.btv, 9
  %i.btz = sub nsw i64 %i.btp, %i.bty
  %i.bua = getelementptr inbounds i8, ptr %i.btx, i64 %i.btz
  br label %_ZNSt5dequeIbSaIbEEixEm.exit948

_ZNSt5dequeIbSaIbEEixEm.exit948:                  ; preds = %bb.mj, %bb.mm
  %storemerge.i.i.i.i947 = phi ptr [ %i.bua, %bb.mm ], [ %i.bts, %bb.mj ]
  %i.bub = load i8, ptr %storemerge.i.i.i.i947, align 1, !tbaa !87, !range !83, !noundef !84
  %i.buc = trunc nuw i8 %i.bub to i1
  br i1 %i.buc, label %bb.nf, label %bb.mn

bb.mn:                                            ; preds = %_ZNSt5dequeIbSaIbEEixEm.exit948
  %i.bud = icmp samesign ult i64 %indvars.iv1775, 8 ; 2 uses
  %i.bue = load ptr, ptr %i.d, align 8
  %i.buf = getelementptr inbounds nuw [8 x i8], ptr %i.bue, i64 %indvars.iv1775
  %i.bug = load ptr, ptr %i.f, align 8
  %i.buh = getelementptr [8 x i8], ptr %i.bug, i64 %indvars.iv1775
  %i.bui = getelementptr i8, ptr %i.buh, i64 -64
  %.0.i949 = select i1 %i.bud, ptr %i.buf, ptr %i.bui
  %i.buj = load ptr, ptr %.0.i949, align 8, !tbaa !606 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 61
  %i.bul = load atomic i8, ptr %i.buk monotonic, align 1, !range !83, !noundef !84
  %i.bum = trunc nuw i8 %i.bul to i1
  br i1 %i.bum, label %bb.nf, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bun = load ptr, ptr %30, align 8, !tbaa !949
  %i.buo = getelementptr inbounds nuw [736 x i8], ptr %i.bun, i64 %indvars.iv1775
  %i.bup = getelementptr inbounds nuw [8 x i8], ptr %79, i64 %indvars.iv1775
  %i.buq = load ptr, ptr %i.bup, align 8, !tbaa !962
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 1208
  invoke void @_ZN7rocksdb6DBImpl22NotifyOnFlushCompletedEPNS_16ColumnFamilyDataERKNS_16MutableCFOptionsEPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS9_EESaISC_EEE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull %i.buj, ptr noundef nonnull align 8 dereferenceable(736) %i.buo, ptr noundef nonnull %i.bur)
          to label %bb.mp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mp:                                            ; preds = %bb.mo
  br i1 %.not374, label %bb.nf, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #34
  %i.bus = load ptr, ptr %i.d, align 8
  %i.but = getelementptr inbounds nuw [8 x i8], ptr %i.bus, i64 %indvars.iv1775
  %i.buu = load ptr, ptr %i.f, align 8
  %i.buv = getelementptr [8 x i8], ptr %i.buu, i64 %indvars.iv1775
  %i.buw = getelementptr i8, ptr %i.buv, i64 -64
  %.0.i951 = select i1 %i.bud, ptr %i.but, ptr %i.buw
  %i.bux = load ptr, ptr %.0.i951, align 8, !tbaa !606
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 1856
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !800
  %i.bva = getelementptr inbounds nuw [424 x i8], ptr %80, i64 %indvars.iv1775
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 16
  %i.bvc = load i64, ptr %i.bvb, align 8, !tbaa !683
  %i.bvd = and i64 %i.bvc, 4611686018427387903
  invoke void @_ZN7rocksdb17MakeTableFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(32) %i.buz, i64 noundef %i.bvd)
          to label %bb.mr unwind label %bb.mz

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #34
  invoke void @_ZN7rocksdb18SstFileManagerImpl9OnAddFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %67, ptr noundef nonnull align 8 dereferenceable(840) %i.bsv, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.ms unwind label %bb.na

bb.ms:                                            ; preds = %bb.mr
  %i.bve = load ptr, ptr %i.btb, align 8, !tbaa !86 ; 2 uses
  %.not.i.i952 = icmp eq ptr %i.bve, null
  br i1 %.not.i.i952, label %_ZN7rocksdb6StatusD2Ev.exit955, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i953

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i953: ; preds = %bb.ms
  call void @_ZdaPv(ptr noundef nonnull %i.bve) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit955

_ZN7rocksdb6StatusD2Ev.exit955:                   ; preds = %bb.ms, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i953
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #34
  %i.bvf = load ptr, ptr %i.bsv, align 8, !tbaa !466
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 32
  %i.bvh = load ptr, ptr %i.bvg, align 8
  %i.bvi = invoke noundef zeroext i1 %i.bvh(ptr noundef nonnull align 8 dereferenceable(840) %i.bsv)
          to label %bb.mt unwind label %bb.nb

bb.mt:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit955
  br i1 %i.bvi, label %bb.mu, label %.critedge441.thread

bb.mu:                                            ; preds = %bb.mt
  %i.bvj = load i8, ptr %i.btc, align 16, !tbaa !694, !noalias !1800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34, !noalias !1800
  %i.bvk = load ptr, ptr %i.btd, align 8, !tbaa !86, !noalias !1800 ; 2 uses
  %.not.i.i.i956 = icmp eq ptr %i.bvk, null
  br i1 %.not.i.i.i956, label %.thread1371, label %bb.mv

.thread1371:                                      ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !1800
  %i.bvl = icmp eq i8 %i.bvj, 0
  br i1 %i.bvl, label %bb.mx, label %.critedge441.thread

bb.mv:                                            ; preds = %bb.mu
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %8, ptr noundef nonnull %i.bvk)
          to label %bb.mw unwind label %bb.nb

bb.mw:                                            ; preds = %bb.mv
  %.pre.i.i957 = load ptr, ptr %8, align 8, !tbaa !86, !noalias !1800 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !1800
  %i.bvm = icmp eq i8 %i.bvj, 0                   ; 2 uses
  %.not.i.i961 = icmp eq ptr %.pre.i.i957, null
  br i1 %.not.i.i961, label %.critedge441, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i962

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i962: ; preds = %bb.mw
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i957) #33
  br i1 %i.bvm, label %bb.mx, label %.critedge441.thread

.critedge441:                                     ; preds = %bb.mw
  br i1 %i.bvm, label %bb.mx, label %.critedge441.thread

bb.mx:                                            ; preds = %.thread1371, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i962, %.critedge441
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #34
  store ptr @.str.47, ptr %69, align 8, !tbaa !802
  store i64 29, ptr %i.bte, align 8, !tbaa !803
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #34
  store ptr @.str, ptr %70, align 8, !tbaa !802
  store i64 0, ptr %i.btf, align 8, !tbaa !803
  invoke void @_ZN7rocksdb6StatusC1ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 noundef zeroext 5, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(16) %70, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10SpaceLimitERKNS_5SliceES3_.exit unwind label %bb.nc

_ZN7rocksdb6Status10SpaceLimitERKNS_5SliceES3_.exit: ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #34
  invoke void @_ZN7rocksdb12ErrorHandler10SetBGErrorERKNS_6StatusENS_21BackgroundErrorReasonEb(ptr noundef nonnull align 8 dereferenceable(288) %i.btg, ptr noundef nonnull align 8 dereferenceable(16) %68, i32 noundef 0, i1 noundef zeroext false)
          to label %bb.my unwind label %bb.nd

bb.my:                                            ; preds = %_ZN7rocksdb6Status10SpaceLimitERKNS_5SliceES3_.exit
  %i.bvn = load ptr, ptr %i.bth, align 8, !tbaa !86 ; 2 uses
  %.not.i.i966 = icmp eq ptr %i.bvn, null
  br i1 %.not.i.i966, label %_ZN7rocksdb6StatusD2Ev.exit969, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i967

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i967: ; preds = %bb.my
  call void @_ZdaPv(ptr noundef nonnull %i.bvn) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit969

_ZN7rocksdb6StatusD2Ev.exit969:                   ; preds = %bb.my, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i967
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #34
  br label %.critedge441.thread

bb.mz:                                            ; preds = %bb.mq
  %i.bvo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987

bb.na:                                            ; preds = %bb.mr
  %i.bvp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #34
  br label %bb.ne

bb.nb:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit955, %bb.mv
  %i.bvq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nc:                                            ; preds = %bb.mx
  %i.bvr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit981

bb.nd:                                            ; preds = %_ZN7rocksdb6Status10SpaceLimitERKNS_5SliceES3_.exit
  %i.bvs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bvt = load ptr, ptr %i.bth, align 8, !tbaa !86 ; 2 uses
  %.not.i.i978 = icmp eq ptr %i.bvt, null
  br i1 %.not.i.i978, label %_ZN7rocksdb6StatusD2Ev.exit981, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i979

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i979: ; preds = %bb.nd
  call void @_ZdaPv(ptr noundef nonnull %i.bvt) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit981

_ZN7rocksdb6StatusD2Ev.exit981:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i979, %bb.nd, %bb.nc
  %.pn379 = phi { ptr, i32 } [ %i.bvr, %bb.nc ], [ %i.bvs, %bb.nd ], [ %i.bvs, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i979 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #34
  br label %bb.ne

.critedge441.thread:                              ; preds = %bb.mt, %.thread1371, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i962, %_ZN7rocksdb6StatusD2Ev.exit969, %.critedge441
  %i.bvu = load ptr, ptr %66, align 8, !tbaa !64  ; 2 uses
  %i.bvv = icmp eq ptr %i.bvu, %i.bti
  br i1 %i.bvv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i982

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i982: ; preds = %.critedge441.thread
  %i.bvw = load i64, ptr %i.bti, align 8, !tbaa !65
  %i.bvx = add i64 %i.bvw, 1
  call void @_ZdlPvm(ptr noundef %i.bvu, i64 noundef %i.bvx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984: ; preds = %.critedge441.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i982
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #34
  br label %bb.nf

bb.ne:                                            ; preds = %bb.nb, %_ZN7rocksdb6StatusD2Ev.exit981, %bb.na
  %.pn379.pn = phi { ptr, i32 } [ %.pn379, %_ZN7rocksdb6StatusD2Ev.exit981 ], [ %i.bvq, %bb.nb ], [ %i.bvp, %bb.na ] ; 2 uses
  %i.bvy = load ptr, ptr %66, align 8, !tbaa !64  ; 2 uses
  %i.bvz = icmp eq ptr %i.bvy, %i.bti
  br i1 %i.bvz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985: ; preds = %bb.ne
  %i.bwa = load i64, ptr %i.bti, align 8, !tbaa !65
  %i.bwb = add i64 %i.bwa, 1
  call void @_ZdlPvm(ptr noundef %i.bvy, i64 noundef %i.bwb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987: ; preds = %bb.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985, %bb.mz
  %.pn379.pn.pn = phi { ptr, i32 } [ %i.bvo, %bb.mz ], [ %.pn379.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985 ], [ %.pn379.pn, %bb.ne ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #34
  br label %.loopexit.split-lp.loopexit.split-lp

bb.nf:                                            ; preds = %bb.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984, %bb.mn, %_ZNSt5dequeIbSaIbEEixEm.exit948
  %indvars.iv.next1776 = add nuw nsw i64 %indvars.iv1775, 1 ; 2 uses
  %i.bwc = load i8, ptr %0, align 8, !tbaa !694   ; 2 uses
  %i.bwd = icmp eq i8 %i.bwc, 0
  %i.bwe = load i32, ptr %i.a, align 4
  %i.bwf = zext i32 %i.bwe to i64
  %i.bwg = icmp ne i64 %indvars.iv.next1776, %i.bwf
  %i.bwh = select i1 %i.bwd, i1 %i.bwg, i1 false
  br i1 %i.bwh, label %bb.mh, label %._crit_edge1646, !llvm.loop !1710

._crit_edge1646:                                  ; preds = %bb.nf, %bb.mg
  %.lcssa = phi i8 [ %i.bsw, %bb.mg ], [ %i.bwc, %bb.nf ] ; 2 uses
  %i.bwi = icmp eq i8 %.lcssa, 0
  br i1 %i.bwi, label %bb.no, label %.thread1377

.thread1377:                                      ; preds = %._crit_edge1638.thread, %._crit_edge1638, %._crit_edge1646
  %i.bwj = phi i8 [ %.lcssa, %._crit_edge1646 ], [ %i.bqd, %._crit_edge1638 ], [ %i.bqf, %._crit_edge1638.thread ] ; 2 uses
  %i.bwk = icmp eq i8 %i.bwj, 15
  %or.cond7 = or i1 %i.alg, %i.bwk
  br i1 %or.cond7, label %bb.no, label %bb.ng

bb.ng:                                            ; preds = %.thread1377
  %i.bwl = load i8, ptr %35, align 8, !tbaa !694
  %i.bwm = icmp eq i8 %i.bwl, 0
  br i1 %i.bwm, label %.invoke2361, label %bb.nh

.invoke2361:                                      ; preds = %bb.ng
  %i.bwn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bwo = load ptr, ptr %i.bwn, align 16, !tbaa !608
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 760
  %i.bwq = load i8, ptr %i.bwp, align 8, !tbaa !694
  %i.bwr = icmp eq i8 %i.bwq, 0
  %i.bws = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %.2362 = select i1 %i.bwr, i32 5, i32 6
  invoke void @_ZN7rocksdb12ErrorHandler10SetBGErrorERKNS_6StatusENS_21BackgroundErrorReasonEb(ptr noundef nonnull align 8 dereferenceable(288) %i.bws, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.2362, i1 noundef zeroext false)
          to label %bb.no unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #34
  store i8 %i.bwj, ptr %71, align 8, !tbaa !694
  %i.bwt = getelementptr inbounds nuw i8, ptr %71, i64 1
  %i.bwu = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_3
begin_hunk_4_@_ZN7rocksdb18VersionStorageInfo20GetNextCompactCursorEim:_ZN7rocksdb11InternalKeyD2Ev.exit
  %i.e = load i32, ptr %i.d, align 4, !tbaa !669
  %i.f = trunc i64 %2 to i32
  %i.g = add nsw i32 %i.e, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !2400
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.b ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1037
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !1038 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 2
  %i.r = trunc i64 %i.q to i32
  %.not = icmp slt i32 %i.g, %i.r
  %spec.select = select i1 %.not, i32 %i.g, i32 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !875
  %i.u = getelementptr inbounds [24 x i8], ptr %i.t, i64 %i.b
  %i.v = sext i32 %spec.select to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !669
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !879
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1016
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN7rocksdb17EventLoggerStreamlsIiEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1502 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1528
  %i.d = icmp ne i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !range !83
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.152, i64 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %1, align 4, !tbaa !669
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.k) ; 0 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !1528
  %.not.i.i = icmp eq i32 %i.m, 2
  br i1 %.not.i.i, label %_ZN7rocksdb10JSONWriterlsIiEERS0_RKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.b, align 8, !tbaa !1528
  br label %_ZN7rocksdb10JSONWriterlsIiEERS0_RKT_.exit

_ZN7rocksdb10JSONWriterlsIiEERS0_RKT_.exit:       ; preds = %bb.c, %bb.d
  store i8 0, ptr %i.e, align 4, !tbaa !1529
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN7rocksdb17EventLoggerStreamlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN7rocksdb17EventLoggerStream10MakeStreamEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1502 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1528
  %i.d = icmp ne i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !range !83
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.152, i64 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %1, align 8, !tbaa !776
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.k) ; 0 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !1528
  %.not.i.i = icmp eq i32 %i.m, 2
  br i1 %.not.i.i, label %_ZN7rocksdb10JSONWriterlsImEERS0_RKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.b, align 8, !tbaa !1528
  br label %_ZN7rocksdb10JSONWriterlsImEERS0_RKT_.exit

_ZN7rocksdb10JSONWriterlsImEERS0_RKT_.exit:       ; preds = %bb.c, %bb.d
  store i8 0, ptr %i.e, align 4, !tbaa !1529
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb17EventLoggerStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

declare void @_ZN7rocksdb16ThreadStatusUtil17ResetThreadStatusEv() local_unnamed_addr #4

declare noundef i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr noundef nonnull align 16 dereferenceable(4288), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7rocksdb6DBImpl53CreateIntendedCompactionForwardedToBottomPriorityPoolEPNS_10CompactionE(ptr noundef nonnull align 64 dereferenceable(7336) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.398", align 8   ; 8 uses
  %3 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %4 = alloca %"class.std::vector.398", align 8   ; 7 uses
  %5 = alloca %"struct.rocksdb::CompressionOptions", align 8 ; 2 uses
  %6 = alloca %"class.std::vector.875", align 8   ; 7 uses
  %7 = alloca %"class.std::optional", align 8     ; 2 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9136
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1324 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36 ; 10 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !1266
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !1267
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1268
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 11528
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11536
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !1268
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !1266 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 56                  ; 2 uses
  br label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread

_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread: ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread.backedge, %bb.a
  %.047 = phi i64 [ %i.p, %bb.a ], [ %i.q, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread.backedge ] ; 2 uses
  %.not = icmp ne i64 %.047, 0
  tail call void @llvm.assume(i1 %.not)
  %i.q = add i64 %.047, -1                        ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.p
  br i1 %i.r, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread.backedge

_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread.backedge: ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit
  br label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread, !llvm.loop !2401

_ZNK7rocksdb10Compaction15num_input_filesEm.exit: ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !878  ; 3 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !879  ; 2 uses
  %.not61 = icmp eq ptr %i.v, %i.w
  br i1 %.not61, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.thread.backedge, label %bb.b

bb.b:                                             ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.aa = trunc i64 %i.q to i32                   ; 2 uses
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !1275
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.ab, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %.lr.ph.preheader

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !879 ; 2 uses
  %i.af = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = ptrtoint ptr %i.v to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1016
  store ptr %i.an, ptr %i.af, align 8, !tbaa !1016
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !879
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !878
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !1017
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80
  %i.ar = phi ptr [ null, %.lr.ph.preheader ], [ %i.bo, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80 ] ; 5 uses
  %i.as = phi ptr [ null, %.lr.ph.preheader ], [ %i.bp, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80 ] ; 3 uses
  %i.at = phi ptr [ null, %.lr.ph.preheader ], [ %i.bq, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80 ] ; 3 uses
  %.sroa.0111.0128 = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.br, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80 ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.0111.0128, align 8, !tbaa !1016 ; 2 uses
  %.not.i71 = icmp eq ptr %i.at, %i.as
  br i1 %.not.i71, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store ptr %i.au, ptr %i.at, align 8, !tbaa !1016
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !878
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80

bb.d:                                             ; preds = %.lr.ph
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.e, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i72

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc78:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i72: ; preds = %bb.d
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i73 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i73, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i74)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #36
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i72
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store ptr %i.au, ptr %i.bh, align 8, !tbaa !1016
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.f, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i75

bb.f:                                             ; preds = %.noexc79
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.ar, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i75

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i75: ; preds = %bb.f, %.noexc79
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.not.i17.i.i76 = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i76, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i75
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !1017
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bm) #33
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77: ; preds = %bb.g, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i75
  store ptr %i.bg, ptr %i.ac, align 8, !tbaa !879
  store ptr %i.bj, ptr %i.ap, align 8, !tbaa !878
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be ; 2 uses
  store ptr %i.bn, ptr %i.aq, align 8, !tbaa !1017
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77, %bb.c
  %i.bo = phi ptr [ %i.bg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77 ], [ %i.ar, %bb.c ]
  %i.bp = phi ptr [ %i.bn, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77 ], [ %i.as, %bb.c ]
  %i.bq = phi ptr [ %i.bj, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i77 ], [ %i.av, %bb.c ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0111.0128, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.v
  br i1 %i.bs, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit80, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !693, !alias.scope !2404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 6, i1 false), !alias.scope !2404
  invoke void @_ZN7rocksdb10Compaction22ReleaseCompactionFilesERKNS_6StatusE(ptr noundef nonnull align 16 dereferenceable(12020) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %.loopexit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !86 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bv = invoke noalias noundef nonnull dereferenceable(12032) ptr @_Znwm(i64 noundef 12032) #36
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.i:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store ptr %i.e, ptr %4, align 8, !tbaa !1266
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.bx, align 8, !tbaa !1268
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.by, align 8, !tbaa !1267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1253
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load i64, ptr %i.cb, align 16, !tbaa !2405
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i64, ptr %i.cd, align 16, !tbaa !2406
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 11440
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !1328
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 11444
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !1376
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 11448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i64 56, i1 false), !tbaa.struct !2407
  %i.ck = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %1, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2408
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 11624 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11632 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !878 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !879 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i.i, label %.noexc82, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = icmp ugt i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i, !prof !672

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc81 unwind label %bb.w

.noexc81:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #36
          to label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge unwind label %bb.w

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !1265 ; 2 uses
  %.pre130 = load ptr, ptr %i.co, align 16, !tbaa !1265
  %.pre131 = ptrtoint ptr %.pre130 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc82

.noexc82:                                         ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge, %bb.j
  %.pre-phi133 = phi i64 [ %.pre132, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge ], [ %i.cs, %bb.j ]
  %.pre-phi = phi i64 [ %.pre131, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge ], [ %i.cr, %bb.j ]
  %i.cw = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge ], [ %i.cq, %bb.j ] ; 2 uses
  %i.cx = phi ptr [ %i.cv, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc82_crit_edge ], [ null, %bb.j ] ; 5 uses
  store ptr %i.cx, ptr %6, align 8, !tbaa !879
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ct
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !1017
  %i.db = sub i64 %.pre-phi, %.pre-phi133         ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 8
  br i1 %i.dc, label %bb.l, label %bb.m, !prof !1040

bb.l:                                             ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cx, ptr align 8 %i.cw, i64 %i.db, i1 false)
  br label %._crit_edge.i.i

bb.m:                                             ; preds = %.noexc82
  %i.dd = icmp eq i64 %i.db, 8
  br i1 %i.dd, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %bb.m
  %i.de = load ptr, ptr %i.cw, align 8, !tbaa !1016
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !1016
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m, %bb.l
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 %i.db
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !878
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.dg, align 8, !tbaa !1081
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 11920
  %i.di = load i32, ptr %i.dh, align 16, !tbaa !1375
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dj, ptr %8, align 8, !tbaa !670
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !671
  store i8 0, ptr %i.dj, align 8, !tbaa !65
  invoke void @_ZN7rocksdb10CompactionC1EPNS_18VersionStorageInfoERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsESt6vectorINS_20CompactionInputFilesESaISD_EEimmjNS_15CompressionTypeENS_18CompressionOptionsENS_11TemperatureEjSC_IPNS_12FileMetaDataESaISK_EESt8optionalImEPKNS_15SnapshotCheckerENS_16CompactionReasonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdbNS_27BlobGarbageCollectionPolicyEd(ptr noundef nonnull align 16 dereferenceable(12020) %i.bv, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(875) %i.x, ptr noundef nonnull align 8 dereferenceable(736) %i.y, ptr noundef nonnull align 8 dereferenceable(184) %i.bw, ptr noundef nonnull align 8 %4, i32 noundef %i.ca, i64 noundef %i.cc, i64 noundef %i.ce, i32 noundef %i.cg, i8 noundef zeroext %i.ci, ptr noundef nonnull byval(%"struct.rocksdb::CompressionOptions") align 8 %5, i8 noundef zeroext %i.ck, i32 noundef %i.cm, ptr noundef nonnull align 8 %6, ptr noundef nonnull byval(%"class.std::optional") align 8 %7, ptr noundef null, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8, double noundef -1.000000e+00, i1 noundef zeroext true, i32 noundef 2, double noundef -1.000000e+00)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.dl = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
end_hunk_4
