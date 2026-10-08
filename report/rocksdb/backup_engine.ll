Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/backup_engine?download=true
inline.NumInlined: 7838
inline.NumDeleted: 2946
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK7rocksdb12_GLOBAL__N_116BackupEngineImpl29InferDBFilesToRetainInRestoreERKSt6vectorISt4pairIPKS1_PKNS1_8FileInfoEESaIS9_EERSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISK_ESt8equal_toISK_ESaISK_EERKSK_NS_14RestoreOptions4ModeERSE_ImSL_ImESN_ImESaImEE:bb.a
  %i.oi = load ptr, ptr %15, align 8, !tbaa !90, !noalias !1100 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.gh
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.dg
  %i.ok = load i64, ptr %i.gh, align 8, !tbaa !91, !noalias !1100
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #38, !noalias !1100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i, %bb.df
  %.pn.i = phi { ptr, i32 } [ %i.oh, %bb.df ], [ %lpad.phi903, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i ], [ %lpad.phi903, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36, !noalias !1100
  br label %bb.dk

bb.dh:                                            ; preds = %.noexc.i21.i
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

.loopexit904:                                     ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %lpad.loopexit906 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

.loopexit.split-lp905:                            ; preds = %.invoke, %bb.cx
  %lpad.loopexit.split-lp907 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

.loopexit909:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i25.i
  %lpad.loopexit911 = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.loopexit.split-lp910:                            ; preds = %bb.dd
  %lpad.loopexit.split-lp912 = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %.loopexit.split-lp910, %.loopexit909
  %lpad.phi913 = phi { ptr, i32 } [ %lpad.loopexit911, %.loopexit909 ], [ %lpad.loopexit.split-lp912, %.loopexit.split-lp910 ] ; 2 uses
  %i.on = load ptr, ptr %16, align 8, !tbaa !90, !noalias !1100 ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.gk
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %bb.di
  %i.op = load i64, ptr %i.gk, align 8, !tbaa !91, !noalias !1100
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #38, !noalias !1100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %bb.di, %.loopexit904, %.loopexit.split-lp905, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  %.pn9.i = phi { ptr, i32 } [ %lpad.phi913, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i ], [ %lpad.loopexit.split-lp907, %.loopexit.split-lp905 ], [ %lpad.loopexit906, %.loopexit904 ], [ %lpad.phi913, %bb.di ] ; 2 uses
  %i.or = load ptr, ptr %17, align 8, !tbaa !90, !noalias !1100 ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.gi
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  %i.ot = load i64, ptr %i.gi, align 8, !tbaa !91, !noalias !1100
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #38, !noalias !1100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i, %bb.dh
  %.pn9.pn.i = phi { ptr, i32 } [ %i.om, %bb.dh ], [ %.pn9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i ], [ %.pn9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36, !noalias !1100
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36, !noalias !1100
  br label %bb.dk

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %.pn12.i = phi { ptr, i32 } [ %i.ov, %bb.dj ], [ %.pn9.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i ]
  %i.ow = load ptr, ptr %14, align 8, !tbaa !90, !noalias !1100 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.ge
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.dk
  %i.oy = load i64, ptr %i.ge, align 8, !tbaa !91, !noalias !1100
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36, !noalias !1100
  br label %.body304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37.i: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36, !noalias !1100
  %.val271 = load i64, ptr %i.c, align 8          ; 4 uses
  %.val12.i.i = load i64, ptr %i.ds, align 8, !tbaa !1096
  %.not.not.i.i = icmp eq i64 %.val12.i.i, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.dm

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37.i, %bb.dl
  %.sroa.01.0.in.i.i = phi ptr [ %.sroa.01.0.i.i, %bb.dl ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37.i ]
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !tbaa !231 ; 4 uses
  %i.pa = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %i.pa, label %.thread823, label %bb.dl

bb.dl:                                            ; preds = %.preheader
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %.val8.i.i = load i64, ptr %i.pb, align 8, !tbaa !334
  %i.pc = icmp eq i64 %.val271, %.val8.i.i
  br i1 %i.pc, label %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit, label %.preheader, !llvm.loop !1086

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37.i
  %.val6.i.i = load i64, ptr %i.k, align 8, !tbaa !378 ; 2 uses
  %i.pd = urem i64 %.val271, %.val6.i.i           ; 2 uses
  %.val9.i.i = load ptr, ptr %19, align 8, !tbaa !377
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i, i64 %i.pd
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !338 ; 2 uses
  %.not.i.i.i.i306 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i306, label %.thread823, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !231 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %.val204.i.i.i.i307 = load i64, ptr %i.ph, align 8, !tbaa !334
  %i.pi = icmp eq i64 %.val271, %.val204.i.i.i.i307
  br i1 %i.pi, label %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i308

bb.do:                                            ; preds = %bb.dp
  %i.pj = icmp eq i64 %.val271, %.val23.i.i.i.i311
  br i1 %i.pj, label %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i308, !llvm.loop !1070

.lr.ph.i.i.i.i308:                                ; preds = %bb.dn, %bb.do
  %.05.i.i.i.i309 = phi ptr [ %i.pk, %bb.do ], [ %i.pg, %bb.dn ]
  %i.pk = load ptr, ptr %.05.i.i.i.i309, align 8, !tbaa !231 ; 4 uses
  %.not18.i.i.i.i310 = icmp eq ptr %i.pk, null
  br i1 %.not18.i.i.i.i310, label %.thread823, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i308
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.val23.i.i.i.i311 = load i64, ptr %i.pl, align 8, !tbaa !334 ; 2 uses
  %i.pm = urem i64 %.val23.i.i.i.i311, %.val6.i.i
  %.not19.i.i.i.i312 = icmp eq i64 %i.pm, %i.pd
  br i1 %.not19.i.i.i.i312, label %bb.do, label %..loopexit_crit_edge6.i.i.i.i313, !llvm.loop !1070

..loopexit_crit_edge6.i.i.i.i313:                 ; preds = %bb.dp
  br label %.thread823, !llvm.loop !1070

_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit: ; preds = %bb.do, %bb.dl, %bb.dn
  %.sroa.01.1.i.i = phi ptr [ %.sroa.01.0.i.i, %bb.dl ], [ %i.pg, %bb.dn ], [ %i.pk, %bb.do ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i.i, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !1106 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !92 ; 3 uses
  %i.ps = load i64, ptr %i.gm, align 8, !tbaa !92
  %i.pt = icmp eq i64 %i.pr, %i.ps
  br i1 %i.pt, label %bb.dq, label %.thread823

bb.dq:                                            ; preds = %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit
  %i.pu = icmp eq i64 %i.pr, 0
  br i1 %i.pu, label %.thread826, label %bb.dr

.loopexit894:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit896 = landingpad { ptr, i32 }
          cleanup
  br label %.body304

.loopexit.split-lp895:                            ; preds = %.noexc.i.i300, %.noexc6.i.i
  %lpad.loopexit.split-lp897 = landingpad { ptr, i32 }
          cleanup
  br label %.body304

bb.dr:                                            ; preds = %bb.dq
  %i.pv = load ptr, ptr %35, align 8, !tbaa !90
  %i.pw = load ptr, ptr %i.pp, align 8, !tbaa !90
  %bcmp.i = call i32 @bcmp(ptr %i.pw, ptr %i.pv, i64 %i.pr)
  %i.px = icmp eq i32 %bcmp.i, 0
  br i1 %i.px, label %.thread826, label %.thread823

.thread823:                                       ; preds = %.lr.ph.i.i.i.i308, %.preheader, %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit, %..loopexit_crit_edge6.i.i.i.i313, %bb.dm, %bb.dr
  %i.py = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit unwind label %bb.dt

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %.thread823
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5eraseERKS5_.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit
  %i.qa = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %.thread826 unwind label %bb.du ; 0 uses

bb.dt:                                            ; preds = %.thread823
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.du:                                            ; preds = %bb.ds
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.thread826:                                       ; preds = %bb.dq, %bb.dr, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store ptr %5, ptr %11, align 8, !tbaa !1108
  %i.qd = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dv unwind label %bb.dw     ; 0 uses

bb.dv:                                            ; preds = %.thread826
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.qe = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.qf = load ptr, ptr %.sroa.0816.01613, align 8, !tbaa !90
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 1, ptr noundef %i.qe, ptr noundef nonnull @.str.107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 32), ptr noundef %i.qf)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5eraseERKS5_.exit unwind label %bb.dw

bb.dw:                                            ; preds = %.thread826, %bb.dv
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5eraseERKS5_.exit: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit, %bb.dv
  %i.qh = load ptr, ptr %35, align 8, !tbaa !90   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.gn
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5eraseERKS5_.exit
  %i.qj = load i64, ptr %i.gn, align 8, !tbaa !91
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5eraseERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.ql = load ptr, ptr %34, align 8, !tbaa !90   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.gc
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.qn = load i64, ptr %i.gc, align 8, !tbaa !91
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %bb.dx

bb.dx:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.qp = load ptr, ptr %i.go, align 8, !tbaa !131 ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i323, label %_ZN7rocksdb6StatusD2Ev.exit325, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i324

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i324: ; preds = %bb.dx
  call void @_ZdaPv(ptr noundef nonnull %i.qp) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit325

_ZN7rocksdb6StatusD2Ev.exit325:                   ; preds = %bb.dx, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.qq = load ptr, ptr %31, align 8, !tbaa !90   ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.ga
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZN7rocksdb6StatusD2Ev.exit325
  %i.qs = load i64, ptr %i.ga, align 8, !tbaa !91
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZN7rocksdb6StatusD2Ev.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.qu = load ptr, ptr %30, align 8, !tbaa !90   ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.fy
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.qw = load i64, ptr %i.fy, align 8, !tbaa !91
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.jf

bb.dy:                                            ; preds = %bb.dw, %bb.du, %bb.dt
  %.pn225.pn = phi { ptr, i32 } [ %i.qb, %bb.dt ], [ %i.qg, %bb.dw ], [ %i.qc, %bb.du ] ; 2 uses
  %i.qy = load ptr, ptr %35, align 8, !tbaa !90   ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.gn
  br i1 %i.qz, label %.body304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %bb.dy
  %i.ra = load i64, ptr %i.gn, align 8, !tbaa !91
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #38
  br label %.body304

.body304:                                         ; preds = %bb.dy, %.loopexit894, %.loopexit.split-lp895, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %.pn225.pn.pn = phi { ptr, i32 } [ %.pn12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i ], [ %.pn225.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %lpad.loopexit.split-lp897, %.loopexit.split-lp895 ], [ %lpad.loopexit896, %.loopexit894 ], [ %.pn225.pn, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.rc = load ptr, ptr %34, align 8, !tbaa !90   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.gc
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.body304
  %i.re = load i64, ptr %i.gc, align 8, !tbaa !91
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %.body304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %bb.bo
  %.pn225.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn225.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %i.jc, %bb.bo ] ; 2 uses
  %i.rg = load ptr, ptr %i.go, align 8, !tbaa !131 ; 2 uses
  %.not.i.i338 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i338, label %_ZN7rocksdb6StatusD2Ev.exit340, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i339

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i339: ; preds = %bb.dz
  call void @_ZdaPv(ptr noundef nonnull %i.rg) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit340

_ZN7rocksdb6StatusD2Ev.exit340:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i339, %bb.dz, %bb.bn
  %.pn225.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jb, %bb.bn ], [ %.pn225.pn.pn.pn.pn, %bb.dz ], [ %.pn225.pn.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i339 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.rh = load ptr, ptr %31, align 8, !tbaa !90   ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.ga
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %_ZN7rocksdb6StatusD2Ev.exit340
  %i.rj = load i64, ptr %i.ga, align 8, !tbaa !91
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %_ZN7rocksdb6StatusD2Ev.exit340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.rl = load ptr, ptr %30, align 8, !tbaa !90   ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.fy
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  %i.rn = load i64, ptr %i.fy, align 8, !tbaa !91
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.jh

bb.ea:                                            ; preds = %bb.bi
  br i1 %i.u, label %bb.jf, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val270 = load i64, ptr %i.c, align 8          ; 4 uses
  %.val12.i.i347 = load i64, ptr %i.ds, align 8, !tbaa !1096
  %.not.not.i.i348 = icmp eq i64 %.val12.i.i347, 0
  br i1 %.not.not.i.i348, label %.preheader866, label %bb.ed

.preheader866:                                    ; preds = %bb.eb, %bb.ec
  %.sroa.01.0.in.i.i360 = phi ptr [ %.sroa.01.0.i.i361, %bb.ec ], [ %i.l, %bb.eb ]
  %.sroa.01.0.i.i361 = load ptr, ptr %.sroa.01.0.in.i.i360, align 8, !tbaa !231 ; 4 uses
  %i.rp = icmp eq ptr %.sroa.01.0.i.i361, null
  br i1 %i.rp, label %.critedge.thread, label %bb.ec

bb.ec:                                            ; preds = %.preheader866
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i361, i64 8
  %.val8.i.i362 = load i64, ptr %i.rq, align 8, !tbaa !334
  %i.rr = icmp eq i64 %.val270, %.val8.i.i362
  br i1 %i.rr, label %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit363, label %.preheader866, !llvm.loop !1086

bb.ed:                                            ; preds = %bb.eb
  %.val6.i.i349 = load i64, ptr %i.k, align 8, !tbaa !378 ; 2 uses
  %i.rs = urem i64 %.val270, %.val6.i.i349        ; 2 uses
  %.val9.i.i350 = load ptr, ptr %19, align 8, !tbaa !377
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i350, i64 %i.rs
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !338 ; 2 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i.i351, label %.critedge.thread, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !231 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %.val204.i.i.i.i352 = load i64, ptr %i.rw, align 8, !tbaa !334
  %i.rx = icmp eq i64 %.val270, %.val204.i.i.i.i352
  br i1 %i.rx, label %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit363, label %.lr.ph.i.i.i.i353

bb.ef:                                            ; preds = %bb.eg
  %i.ry = icmp eq i64 %.val270, %.val23.i.i.i.i356
  br i1 %i.ry, label %_ZNSt13unordered_mapImSt4pairIPKN7rocksdb12_GLOBAL__N_116BackupEngineImplEPKNS3_8FileInfoEESt4hashImESt8equal_toImESaIS0_IKmS9_EEE4findERSE_.exit363, label %.lr.ph.i.i.i.i353, !llvm.loop !1070

.lr.ph.i.i.i.i353:                                ; preds = %bb.ee, %bb.ef
  %.05.i.i.i.i354 = phi ptr [ %i.rz, %bb.ef ], [ %i.rv, %bb.ee ]
  %i.rz = load ptr, ptr %.05.i.i.i.i354, align 8, !tbaa !231 ; 4 uses
  %.not18.i.i.i.i355 = icmp eq ptr %i.rz, null
  br i1 %.not18.i.i.i.i355, label %.critedge.thread, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i.i.i353
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %.val23.i.i.i.i356 = load i64, ptr %i.sa, align 8, !tbaa !334 ; 2 uses
  %i.sb = urem i64 %.val23.i.i.i.i356, %.val6.i.i349
end_hunk_0
