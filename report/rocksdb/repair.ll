inline.NumInlined: 3473
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_18Repairer3RunEv:bb.a

.thread231.thread.i:                              ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit161.thread.i, %bb.ks
  %.sroa.41335.3 = phi ptr [ %.pre378.i, %_ZN7rocksdb6StatusaSEOS0_.exit161.thread.i ], [ %.pre.i116, %bb.ks ]
  %i.bka = phi <4 x i8> [ %i.bbk, %_ZN7rocksdb6StatusaSEOS0_.exit161.thread.i ], [ %i.bbg, %bb.ks ]
  %i.bkb = phi <2 x i8> [ %i.bbm, %_ZN7rocksdb6StatusaSEOS0_.exit161.thread.i ], [ %i.bbi, %bb.ks ]
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %10) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !633
  br label %.critedge.i

.thread231.i:                                     ; preds = %_ZNKSt14default_deleteIN7rocksdb11FSDirectoryEEclEPS1_.exit.i.i, %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !633
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %14) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !633
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %10) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !633
  br i1 %.pr232.i, label %bb.mt, label %.critedge.i

bb.mt:                                            ; preds = %.thread231.i
  %.not.i.i206.i = icmp eq ptr %.sroa.41335.0, null
  br i1 %.not.i.i206.i, label %_ZN7rocksdb6StatusD2Ev.exit208.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i207.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i207.i: ; preds = %bb.mt
  call void @_ZdaPv(ptr noundef nonnull %.sroa.41335.0) #28, !noalias !633
  br label %_ZN7rocksdb6StatusD2Ev.exit208.i

_ZN7rocksdb6StatusD2Ev.exit208.i:                 ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i207.i, %bb.mt
  call void @_ZN7rocksdb18VersionStorageInfoD1Ev(ptr noundef nonnull align 16 dead_on_return(4288) dereferenceable(4288) %8) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !633
  call void @_ZN7rocksdb14VersionBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !633
  %.val.i.i.i = load ptr, ptr %.sroa.0230.0354.i, align 8, !tbaa !430, !noalias !633 ; 2 uses
  %i.bkc = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bkc, label %.critedge119.i, label %bb.ju

.thread:                                          ; preds = %bb.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i
  %.pn108.pn.i.ph = phi { ptr, i32 } [ %i.bbb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ], [ %i.bbn, %bb.kv ]
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %10) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !633
  br label %_ZN7rocksdb6StatusD2Ev.exit211.i

bb.mu:                                            ; preds = %bb.ms, %bb.kx, %bb.kw
  %.sroa.41335.4 = phi ptr [ %.sroa.41335.2, %bb.ms ], [ %.pre378.i, %bb.kw ], [ %.pre.i116, %bb.kx ] ; 2 uses
  %.pn108.pn.i = phi { ptr, i32 } [ %.pn105.i, %bb.ms ], [ %i.bbo, %bb.kw ], [ %i.bbp, %bb.kx ] ; 2 uses
  call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %10) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !633
  %.not.i.i209.i = icmp eq ptr %.sroa.41335.4, null
  br i1 %.not.i.i209.i, label %_ZN7rocksdb6StatusD2Ev.exit211.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i210.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i210.i: ; preds = %bb.mu
  call void @_ZdaPv(ptr noundef nonnull %.sroa.41335.4) #28, !noalias !633
  br label %_ZN7rocksdb6StatusD2Ev.exit211.i

_ZN7rocksdb6StatusD2Ev.exit211.i:                 ; preds = %.thread, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i210.i, %bb.mu
  %.pn108.pn.i617 = phi { ptr, i32 } [ %.pn108.pn.i.ph, %.thread ], [ %.pn108.pn.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i210.i ], [ %.pn108.pn.i, %bb.mu ]
  call void @_ZN7rocksdb18VersionStorageInfoD1Ev(ptr noundef nonnull align 16 dead_on_return(4288) dereferenceable(4288) %8) #27, !noalias !633
  br label %_ZN7rocksdb17OffpeakTimeOptionD2Ev.exit149.i

_ZN7rocksdb17OffpeakTimeOptionD2Ev.exit149.i:     ; preds = %bb.kp, %_ZN7rocksdb6StatusD2Ev.exit211.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147.i, %.loopexit.split-lp238.i, %.loopexit237.i
  %.pn108.pn.pn.pn.i = phi { ptr, i32 } [ %.pn108.pn.i617, %_ZN7rocksdb6StatusD2Ev.exit211.i ], [ %i.azf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147.i ], [ %lpad.loopexit.split-lp240.i, %.loopexit.split-lp238.i ], [ %lpad.loopexit239.i, %.loopexit237.i ], [ %i.azf, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !633
  call void @_ZN7rocksdb14VersionBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27, !noalias !633
  br label %bb.mv

bb.mv:                                            ; preds = %_ZN7rocksdb17OffpeakTimeOptionD2Ev.exit149.i, %bb.ko
  %.pn108.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn108.pn.pn.pn.i, %_ZN7rocksdb17OffpeakTimeOptionD2Ev.exit149.i ], [ %i.aze, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !633
  br label %.body.i106

.critedge.i:                                      ; preds = %.thread231.i, %.thread231.thread.i
  %.sroa.41335.5 = phi ptr [ %.sroa.41335.3, %.thread231.thread.i ], [ %.sroa.41335.0, %.thread231.i ]
  %i.bkd = phi <4 x i8> [ %i.bka, %.thread231.thread.i ], [ %i.bjq, %.thread231.i ]
  %i.bke = phi <2 x i8> [ %i.bkb, %.thread231.thread.i ], [ %i.bjr, %.thread231.i ]
  call void @_ZN7rocksdb18VersionStorageInfoD1Ev(ptr noundef nonnull align 16 dead_on_return(4288) dereferenceable(4288) %8) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !633
  call void @_ZN7rocksdb14VersionBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !633
  br label %.critedge119.i

.critedge119.i:                                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit208.i, %._crit_edge.thread.i, %._crit_edge.i110, %.critedge.i
  %.sroa.41335.6 = phi ptr [ %.sroa.41335.5, %.critedge.i ], [ null, %._crit_edge.thread.i ], [ null, %._crit_edge.i110 ], [ null, %_ZN7rocksdb6StatusD2Ev.exit208.i ]
  %i.bkf = phi <4 x i8> [ %i.bkd, %.critedge.i ], [ zeroinitializer, %._crit_edge.thread.i ], [ zeroinitializer, %._crit_edge.i110 ], [ zeroinitializer, %_ZN7rocksdb6StatusD2Ev.exit208.i ]
  %i.bkg = phi <2 x i8> [ %i.bke, %.critedge.i ], [ zeroinitializer, %._crit_edge.thread.i ], [ zeroinitializer, %._crit_edge.i110 ], [ zeroinitializer, %_ZN7rocksdb6StatusD2Ev.exit208.i ] ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.anh, align 8, !tbaa !645, !noalias !633 ; 2 uses
  %.not1.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i212.i

.lr.ph.i.i.i.i212.i:                              ; preds = %.critedge119.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i
  %.02.i.i.i.i.i = phi ptr [ %.0.val.i.i.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i ], [ %.val.i.i.i.i, %.critedge119.i ] ; 4 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.02.i.i.i.i.i, align 8, !tbaa !430, !noalias !633 ; 2 uses
  %i.bkh = getelementptr i8, ptr %.02.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i213.i = load ptr, ptr %i.bkh, align 8, !noalias !633 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i213.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i, label %bb.mw

bb.mw:                                            ; preds = %.lr.ph.i.i.i.i212.i
  %i.bki = getelementptr i8, ptr %.02.i.i.i.i.i, i64 32
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.bki, align 8, !noalias !633
  %i.bkj = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bkk = ptrtoint ptr %.val.i.i.i.i.i213.i to i64
  %i.bkl = sub i64 %i.bkj, %i.bkk
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i213.i, i64 noundef %i.bkl) #28, !noalias !633
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i: ; preds = %bb.mw, %.lr.ph.i.i.i.i212.i
  call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i.i, i64 noundef 40) #28, !noalias !633
  %.not.i.i.i.i214.i = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i214.i, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i212.i, !llvm.loop !829

_ZNSt10_HashtableIjSt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i.i.i.i, %.critedge119.i
  %i.bkm = load ptr, ptr %5, align 8, !tbaa !640, !noalias !633
  %i.bkn = load i64, ptr %i.ang, align 8, !tbaa !642, !noalias !633
  %i.bko = shl i64 %i.bkn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bkm, i8 0, i64 %i.bko, i1 false), !noalias !633
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anh, i8 0, i64 16, i1 false), !noalias !633
  %i.bkp = load ptr, ptr %5, align 8, !tbaa !640, !noalias !633 ; 2 uses
  %i.bkq = icmp eq ptr %i.bkp, %i.anf
  br i1 %i.bkq, label %_ZNSt13unordered_mapIjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS6_EESt4hashIjESt8equal_toIjESaISt4pairIKjS8_EEED2Ev.exit.i, label %bb.mx

bb.mx:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.bkr = load i64, ptr %i.ang, align 8, !tbaa !642, !noalias !633
  %i.bks = shl i64 %i.bkr, 3
  call void @_ZdlPvm(ptr noundef %i.bkp, i64 noundef %i.bks) #28, !noalias !633
  br label %_ZNSt13unordered_mapIjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS6_EESt4hashIjESt8equal_toIjESaISt4pairIKjS8_EEED2Ev.exit.i

_ZNSt13unordered_mapIjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS6_EESt4hashIjESt8equal_toIjESaISt4pairIKjS8_EEED2Ev.exit.i: ; preds = %bb.mx, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !633
  %i.bkt = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !626, !noalias !633 ; 2 uses
  %.not.i.i215.i = icmp eq ptr %i.bku, null
  br i1 %.not.i.i215.i, label %bb.nc, label %bb.my

bb.my:                                            ; preds = %_ZNSt13unordered_mapIjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS6_EESt4hashIjESt8equal_toIjESaISt4pairIKjS8_EEED2Ev.exit.i
  %i.bkv = invoke noundef zeroext i1 %i.bku(ptr noundef nonnull align 8 dereferenceable(32) %i.amv, ptr noundef nonnull align 8 dereferenceable(32) %i.amv, i32 noundef 3)
          to label %bb.nc unwind label %bb.mz, !noalias !633 ; 0 uses

bb.mz:                                            ; preds = %bb.my
  %i.bkw = landingpad { ptr, i32 }
          catch ptr null
  %i.bkx = extractvalue { ptr, i32 } %i.bkw, 0
  call void @__clang_call_terminate(ptr %i.bkx) #31, !noalias !633
  unreachable

.body.i106:                                       ; preds = %bb.mv, %bb.kn, %.loopexit.split-lp249.i, %.loopexit248.i, %bb.jt, %.body.i.i.i
  %.pn115.pn.i = phi { ptr, i32 } [ %i.azd, %bb.kn ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn108.pn.pn.pn.pn.i, %bb.mv ], [ %i.awh, %bb.jt ], [ %lpad.loopexit250.i, %.loopexit248.i ], [ %lpad.loopexit.split-lp251.i, %.loopexit.split-lp249.i ]
  call fastcc void @_ZNSt13unordered_mapIjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS6_EESt4hashIjESt8equal_toIjESaISt4pairIKjS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !633
  %i.bky = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !626, !noalias !633 ; 2 uses
  %.not.i.i216.i = icmp eq ptr %i.bkz, null
  br i1 %.not.i.i216.i, label %_ZN7rocksdb11ReadOptionsD2Ev.exit217.i, label %bb.na

bb.na:                                            ; preds = %.body.i106
  %i.bla = invoke noundef zeroext i1 %i.bkz(ptr noundef nonnull align 8 dereferenceable(32) %i.amv, ptr noundef nonnull align 8 dereferenceable(32) %i.amv, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit217.i unwind label %bb.nb, !noalias !633 ; 0 uses

bb.nb:                                            ; preds = %bb.na
  %i.blb = landingpad { ptr, i32 }
          catch ptr null
  %i.blc = extractvalue { ptr, i32 } %i.blb, 0
  call void @__clang_call_terminate(ptr %i.blc) #31, !noalias !633
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit217.i:           ; preds = %bb.na, %.body.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !633
  br label %.body99

bb.nc:                                            ; preds = %bb.my, %_ZNSt13unordered_mapIjSt6vectorIPKN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS6_EESt4hashIjESt8equal_toIjESaISt4pairIKjS8_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <4 x i8> %i.bkf, ptr %0, align 8, !tbaa !28
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ble = extractelement <2 x i8> %i.bkg, i64 0
  store i8 %i.ble, ptr %i.bld, align 4, !tbaa !46
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.blg = extractelement <2 x i8> %i.bkg, i64 1
  store i8 %i.blg, ptr %i.blf, align 1, !tbaa !47
  %i.blh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !48 ; 2 uses
  store ptr %.sroa.41335.6, ptr %i.blh, align 8, !tbaa !48
  %.not.i.i.i.i.i152 = icmp eq ptr %i.bli, null
  br i1 %.not.i.i.i.i.i152, label %.thread164, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i153

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i153: ; preds = %bb.nc
  call void @_ZdaPv(ptr noundef nonnull %i.bli) #28
  br label %.thread164

.thread164:                                       ; preds = %bb.nc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i153
  %.pr165.pr.pre = load i8, ptr %0, align 8, !tbaa !31
  %i.blj = icmp eq i8 %.pr165.pr.pre, 0
  br i1 %i.blj, label %.preheader, label %.thread166

.preheader:                                       ; preds = %.thread164
  %.val35 = load ptr, ptr %i.ank, align 8, !tbaa !643 ; 8 uses
  %.val36 = load ptr, ptr %i.anl, align 8, !tbaa !644 ; 2 uses
  %i.blk = ptrtoint ptr %.val36 to i64
  %i.bll = ptrtoint ptr %.val35 to i64
  %i.blm = sub i64 %i.blk, %i.bll
  %i.bln = sdiv i64 %i.blm, 464                   ; 6 uses
  %.not260 = icmp eq ptr %.val36, %.val35
  br i1 %.not260, label %._crit_edge258, label %iter.check

iter.check:                                       ; preds = %.preheader
  %umax = call i64 @llvm.umax.i64(i64 %i.bln, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %i.bln, 4
  br i1 %min.iters.check, label %.lr.ph257.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check858 = icmp ult i64 %i.bln, 16
  br i1 %min.iters.check858, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.blo = and i64 %umax, 12
  %n.vec = and i64 %umax, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.blp, %vector.body ]
  %vec.phi859 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.blq, %vector.body ]
  %vec.phi860 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.blr, %vector.body ]
  %vec.phi861 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bls, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [464 x i8], ptr %.val35, <4 x i64> %vec.ind
  %wide.gep862 = getelementptr inbounds nuw [464 x i8], ptr %.val35, <4 x i64> %step.add
  %wide.gep863 = getelementptr inbounds nuw [464 x i8], ptr %.val35, <4 x i64> %step.add.2
  %wide.gep864 = getelementptr inbounds nuw [464 x i8], ptr %.val35, <4 x i64> %step.add.3
  %wide.gep865 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 24
  %wide.gep866 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep862, i64 24
  %wide.gep867 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep863, i64 24
  %wide.gep868 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep864, i64 24
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep865, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !401
  %wide.masked.gather869 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep866, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !401
  %wide.masked.gather870 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep867, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !401
  %wide.masked.gather871 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep868, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !401
  %i.blp = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.blq = add <4 x i64> %wide.masked.gather869, %vec.phi859 ; 2 uses
  %i.blr = add <4 x i64> %wide.masked.gather870, %vec.phi860 ; 2 uses
  %i.bls = add <4 x i64> %wide.masked.gather871, %vec.phi861 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.blt = icmp eq i64 %index.next, %n.vec
  br i1 %i.blt, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.blq, %i.blp
  %bin.rdx872 = add <4 x i64> %i.blr, %bin.rdx
  %bin.rdx873 = add <4 x i64> %i.bls, %bin.rdx872
  %i.blu = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx873) ; 3 uses
  %cmp.n = icmp eq i64 %i.bln, %n.vec
  br i1 %cmp.n, label %._crit_edge258, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.blo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph257.preheader, label %vec.epilog.ph, !prof !833

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i64 [ %i.blu, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec874 = and i64 %umax, -4                   ; 3 uses
  %i.blv = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index875 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next881, %vec.epilog.vector.body ]
  %vec.ind876 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next882, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi877 = phi <4 x i64> [ %i.blv, %vec.epilog.ph ], [ %i.blw, %vec.epilog.vector.body ]
  %wide.gep878 = getelementptr inbounds nuw [464 x i8], ptr %.val35, <4 x i64> %vec.ind876
  %wide.gep879 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep878, i64 24
  %wide.masked.gather880 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep879, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !401
  %i.blw = add <4 x i64> %wide.masked.gather880, %vec.phi877 ; 2 uses
  %index.next881 = add nuw i64 %index875, 4       ; 2 uses
  %vec.ind.next882 = add nuw <4 x i64> %vec.ind876, splat (i64 4)
  %i.blx = icmp eq i64 %index.next881, %n.vec874
  br i1 %i.blx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !834

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bly = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.blw) ; 2 uses
  %cmp.n883 = icmp eq i64 %i.bln, %n.vec874
  br i1 %cmp.n883, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0256.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec874, %vec.epilog.middle.block ]
  %.014255.ph = phi i64 [ 0, %iter.check ], [ %i.blu, %vec.epilog.iter.check ], [ %i.bly, %vec.epilog.middle.block ]
  br label %.lr.ph257

._crit_edge258:                                   ; preds = %.lr.ph257, %middle.block, %vec.epilog.middle.block, %.preheader
  %.014.lcssa = phi i64 [ 0, %.preheader ], [ %i.bly, %vec.epilog.middle.block ], [ %i.blu, %middle.block ], [ %i.bme, %.lr.ph257 ]
  %i.blz = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bma = load ptr, ptr %1, align 8, !tbaa !25
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.blz, ptr noundef nonnull @.str.44, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 32), ptr noundef %i.bma, i64 noundef %i.bln, i64 noundef %.014.lcssa)
          to label %.thread166 unwind label %bb.nd

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %.0256 = phi i64 [ %i.bmf, %.lr.ph257 ], [ %.0256.ph, %.lr.ph257.preheader ] ; 2 uses
  %.014255 = phi i64 [ %i.bme, %.lr.ph257 ], [ %.014255.ph, %.lr.ph257.preheader ]
  %i.bmb = getelementptr inbounds nuw [464 x i8], ptr %.val35, i64 %.0256
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 24
  %i.bmd = load i64, ptr %i.bmc, align 8, !tbaa !401
  %i.bme = add i64 %i.bmd, %.014255               ; 2 uses
  %i.bmf = add nuw i64 %.0256, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bmf, %umax
  br i1 %exitcond.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !835

bb.nd:                                            ; preds = %._crit_edge258
  %i.bmg = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.thread166:                                       ; preds = %bb.bw, %bb.bc, %_ZN7rocksdb22ColumnFamilyDescriptorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %._crit_edge258, %.thread164
  ret void

.body99:                                          ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.bu, %bb.bv, %.loopexit168, %_ZN7rocksdb11ReadOptionsD2Ev.exit217.i, %bb.nd, %_ZN7rocksdb6StatusD2Ev.exit76.i
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i ], [ %.pn41.i, %_ZN7rocksdb6StatusD2Ev.exit76.i ], [ %.pn28.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.bmg, %bb.nd ], [ %i.le, %bb.bu ], [ %.pn115.pn.i, %_ZN7rocksdb11ReadOptionsD2Ev.exit217.i ], [ %.pn.pn, %.loopexit168 ], [ %i.lf, %bb.bv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !48 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.bmi, null
  br i1 %.not.i.i158, label %_ZN7rocksdb6StatusD2Ev.exit160, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i159

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i159: ; preds = %.body99
  call void @_ZdaPv(ptr noundef nonnull %i.bmi) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit160

_ZN7rocksdb6StatusD2Ev.exit160:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i159, %.body99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn28.pn.pn.pn, %.body99 ], [ %.pn28.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i159 ]
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_18RepairerD2Ev(ptr noundef nonnull align 8 dead_on_return(6593) dereferenceable(6593) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Status", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6592 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !44, !noalias !836, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6584 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !300, !noalias !836 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit.thread17, label %bb.c

_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit.thread17: ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !49, !noalias !836
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !836
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !301, !noalias !836 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22, !noalias !836
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !noalias !836
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull %i.e)
          to label %_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit unwind label %bb.o, !inline_history !302

_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit:  ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48, !noalias !836 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !836
  store ptr null, ptr %i.d, align 8, !tbaa !300, !noalias !836
  store i8 1, ptr %i.a, align 8, !tbaa !49, !noalias !836
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.l) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit.thread17, %_ZN7rocksdb12_GLOBAL__N_18Repairer5CloseEv.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6552 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !643  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6560
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !644  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZSt8_DestroyIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoEEvPT_.exit.i.i.i ], [ %i.n, %_ZN7rocksdb6StatusD2Ev.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 432
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 448 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZSt8_DestroyIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(464) %.05.i.i.i) #27
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 464 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !839

_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.m, align 8, !tbaa !643
  br label %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN7rocksdb6StatusD2Ev.exit
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %_ZN7rocksdb6StatusD2Ev.exit ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6568
  %.val1.i = load ptr, ptr %i.x, align 8, !tbaa !840
  %i.y = ptrtoint ptr %.val1.i to i64
  %i.z = ptrtoint ptr %.val.i to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.aa) #28
  br label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12_GLOBAL__N_18Repairer9TableInfoES3_EvT_S5_RSaIT0_E.exit.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6528
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS3_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6544
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !366
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_18Repairer9TableInfoESaIS3_EED2Ev.exit, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6504
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !367 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6520
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #28
  br label %_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6480 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !387 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6488
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !384 ; 2 uses
  %.not4.i.i.i3 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i3, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i5 = phi ptr [ %i.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aq, %_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i5, align 8, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i4
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !28
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i5, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ay, %i.as
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i4, !llvm.loop !409

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ap, align 8, !tbaa !387
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit
  %i.az = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aq, %_ZNSt6vectorIN7rocksdb14FileDescriptorESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 6496
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !385
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6416
  call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(60) %i.bf) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 6360 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6376 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !841 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb19ColumnFamilyOptionsEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb19ColumnFamilyOptionsEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb19ColumnFamilyOptionsEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.bi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 5 uses
  %i.bj = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !430 ; 2 uses
end_hunk_0
