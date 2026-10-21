Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_write?download=true
inline.NumInlined: 5104
inline.NumDeleted: 2221
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb6DBImpl20IngestWBWIAsMemtableESt10shared_ptrINS_19WriteBatchWithIndexEERKNS_12WBWIMemTable10SeqnoRangeEmmbbb:bb.a
  %i.aat = trunc nuw i8 %i.aas to i1
  br i1 %i.aat, label %bb.eh, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit440

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit440: ; preds = %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #33
  store i8 0, ptr %i.zr, align 4, !tbaa !876
  store ptr %i.zt, ptr %i.zs, align 8, !tbaa !877
  store i64 1, ptr %i.zu, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zw, align 8, !tbaa !879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #33
  store ptr %i.zz, ptr %i.zy, align 8, !tbaa !845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaa, i8 0, i64 24, i1 false)
  store i64 1, ptr %42, align 8, !tbaa !844
  store ptr %i.aal, ptr %i.zz, align 8, !tbaa !863
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %42, i32 noundef 3, ptr noundef nonnull %41)
          to label %bb.dx unwind label %bb.ec

bb.dx:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit440
  %.pr.i.i350 = load i64, ptr %42, align 8, !tbaa !844
  %.not1.i.i351 = icmp eq i64 %.pr.i.i350, 0
  br i1 %.not1.i.i351, label %bb.dy, label %.lr.ph.preheader.i.i352

.lr.ph.preheader.i.i352:                          ; preds = %bb.dx
  store i64 0, ptr %42, align 8, !tbaa !844
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.preheader.i.i352, %bb.dx
  %i.aau = load ptr, ptr %i.aaa, align 8, !tbaa !862 ; 5 uses
  %i.aav = load ptr, ptr %i.aab, align 8, !tbaa !861
  %.not.i.i.i.i353 = icmp eq ptr %i.aav, %i.aau
  br i1 %.not.i.i.i.i353, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i355, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i354

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i354: ; preds = %bb.dy
  store ptr %i.aau, ptr %i.aab, align 8, !tbaa !861
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i355

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i355: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i354, %bb.dy
  %.not.i.i.i1.i356 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i.i1.i356, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit358, label %bb.dz

bb.dz:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i355
  %i.aaw = load ptr, ptr %i.aac, align 8, !tbaa !869
  %i.aax = ptrtoint ptr %i.aaw to i64
  %i.aay = ptrtoint ptr %i.aau to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  call void @_ZdlPvm(ptr noundef nonnull %i.aau, i64 noundef %i.aaz) #34
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit358

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit358: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i355, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  %i.aba = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %41)
          to label %bb.ea unwind label %bb.ef     ; 0 uses

bb.ea:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit358
  %i.abb = load ptr, ptr %i.zv, align 8, !tbaa !880 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.abb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ea, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.abc, %.lr.ph.i.i.i.i.i ], [ %i.abb, %bb.ea ] ; 2 uses
  %i.abc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !846 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i.i359 = icmp eq ptr %i.abc, null
  br i1 %.not.i.i.i.i.i359, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.ea
  %i.abd = load ptr, ptr %i.zs, align 8, !tbaa !877
  %i.abe = load i64, ptr %i.zu, align 8, !tbaa !878
  %i.abf = shl i64 %i.abe, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abd, i8 0, i64 %i.abf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zv, i8 0, i64 16, i1 false)
  %i.abg = load ptr, ptr %i.zs, align 8, !tbaa !877 ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.zt
  br i1 %i.abh, label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.abi = load i64, ptr %i.zu, align 8, !tbaa !878
  %i.abj = shl i64 %i.abi, 3
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #34
  br label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit

_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit:        ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  br label %bb.eh

bb.ec:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit440
  %i.abk = landingpad { ptr, i32 }
          cleanup
  %.pr.i.i360 = load i64, ptr %42, align 8, !tbaa !844
  %.not1.i.i361 = icmp eq i64 %.pr.i.i360, 0
  br i1 %.not1.i.i361, label %bb.ed, label %.lr.ph.preheader.i.i362

.lr.ph.preheader.i.i362:                          ; preds = %bb.ec
  store i64 0, ptr %42, align 8, !tbaa !844
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.preheader.i.i362, %bb.ec
  %i.abl = load ptr, ptr %i.aaa, align 8, !tbaa !862 ; 5 uses
  %i.abm = load ptr, ptr %i.aab, align 8, !tbaa !861
  %.not.i.i.i.i363 = icmp eq ptr %i.abm, %i.abl
  br i1 %.not.i.i.i.i363, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i365, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i364

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i364: ; preds = %bb.ed
  store ptr %i.abl, ptr %i.aab, align 8, !tbaa !861
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i365

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i365: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i364, %bb.ed
  %.not.i.i.i1.i366 = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i1.i366, label %.body, label %bb.ee

bb.ee:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i365
  %i.abn = load ptr, ptr %i.aac, align 8, !tbaa !869
  %i.abo = ptrtoint ptr %i.abn to i64
  %i.abp = ptrtoint ptr %i.abl to i64
  %i.abq = sub i64 %i.abo, %i.abp
  call void @_ZdlPvm(ptr noundef nonnull %i.abl, i64 noundef %i.abq) #34
  br label %.body

.body:                                            ; preds = %bb.ee, %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit358
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.body
  %.pn153 = phi { ptr, i32 } [ %i.abr, %bb.ef ], [ %i.abk, %.body ]
  call void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %41) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  br label %.loopexit.split-lp497

bb.eh:                                            ; preds = %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit, %bb.du
  %i.abs = add nuw i64 %.sroa.5.0582, 1           ; 2 uses
  %.not492 = icmp eq i64 %i.abs, %i.zq
  br i1 %.not492, label %._crit_edge585, label %bb.du

bb.ei:                                            ; preds = %._crit_edge585
  %i.abt = load ptr, ptr %i.h, align 16, !tbaa !701
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 264
  %i.abv = load atomic i64, ptr %i.abu acquire, align 8 ; 3 uses
  %i.abw = load i64, ptr %10, align 8, !tbaa !844, !noalias !1246 ; 2 uses
  %i.abx = load ptr, ptr %i.pu, align 8, !tbaa !861, !noalias !1246
  %i.aby = load ptr, ptr %i.f, align 8, !tbaa !862, !noalias !1246 ; 4 uses
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = ptrtoint ptr %i.aby to i64
  %i.acb = sub i64 %i.abz, %i.aca
  %i.acc = ashr exact i64 %i.acb, 3               ; 2 uses
  %i.acd = add i64 %i.acc, %i.abw                 ; 4 uses
  %.not1516.i = icmp eq i64 %i.acd, 0
  br i1 %.not1516.i, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i369.preheader

.lr.ph.i369.preheader:                            ; preds = %bb.ei
  %i.ace = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.acf = add i64 %i.abw, %i.acc
  %xtraiter = and i64 %i.acd, 1
  %i.acg = icmp eq i64 %i.acf, 1
  br i1 %i.acg, label %.lr.ph.i369.epil.preheader, label %.lr.ph.i369.preheader.new

.lr.ph.i369.preheader.new:                        ; preds = %.lr.ph.i369.preheader
  %unroll_iter = and i64 %i.acd, -2
  br label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, %.lr.ph.i369.preheader.new
  %.sroa.5.017.i = phi i64 [ 0, %.lr.ph.i369.preheader.new ], [ %i.adk, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i369.preheader.new ], [ %niter.next.1, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ]
  %i.ach = icmp ult i64 %.sroa.5.017.i, 8
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %.sroa.5.017.i
  %i.acj = getelementptr [8 x i8], ptr %i.aby, i64 %.sroa.5.017.i
  %i.ack = getelementptr i8, ptr %i.acj, i64 -64
  %.0.i.i.i = select i1 %i.ach, ptr %i.aci, ptr %i.ack
  %i.acl = load ptr, ptr %.0.i.i.i, align 8, !tbaa !863 ; 2 uses
  %.not.i370 = icmp eq ptr %i.acl, null
  br i1 %.not.i370, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i369
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 2776
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.acn, align 8, !tbaa !882 ; 2 uses
  %i.aco = icmp eq ptr %.sroa.06.09.i.i, %i.acn
  br i1 %i.aco, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i371

.lr.ph.i.i371:                                    ; preds = %bb.ej, %bb.ek
  %.sroa.06.010.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ek ], [ %.sroa.06.09.i.i, %bb.ej ] ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 16
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !850
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 7496 ; 2 uses
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !883
  %i.act = icmp eq i64 %i.acs, 72057594037927935
  br i1 %i.act, label %bb.ek, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i

bb.ek:                                            ; preds = %.lr.ph.i.i371
  store i64 %i.abv, ptr %i.acr, align 8, !tbaa !883
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.010.i.i, align 8, !tbaa !882 ; 2 uses
  %i.acu = icmp eq ptr %.sroa.06.0.i.i, %i.acn
  br i1 %i.acu, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i371, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i: ; preds = %bb.ek, %.lr.ph.i.i371, %bb.ej, %.lr.ph.i369
  %i.acv = or disjoint i64 %.sroa.5.017.i, 1      ; 2 uses
  %i.acw = icmp ult i64 %.sroa.5.017.i, 8
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %i.acv
  %i.acy = getelementptr [8 x i8], ptr %i.aby, i64 %i.acv
  %i.acz = getelementptr i8, ptr %i.acy, i64 -64
  %.0.i.i.i.1 = select i1 %i.acw, ptr %i.acx, ptr %i.acz
  %i.ada = load ptr, ptr %.0.i.i.i.1, align 8, !tbaa !863 ; 2 uses
  %.not.i370.1 = icmp eq ptr %i.ada, null
  br i1 %.not.i370.1, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %bb.el

bb.el:                                            ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 2776
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.1 = load ptr, ptr %i.adc, align 8, !tbaa !882 ; 2 uses
  %i.add = icmp eq ptr %.sroa.06.09.i.i.1, %i.adc
  br i1 %i.add, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i371.1

.lr.ph.i.i371.1:                                  ; preds = %bb.el, %bb.em
  %.sroa.06.010.i.i.1 = phi ptr [ %.sroa.06.0.i.i.1, %bb.em ], [ %.sroa.06.09.i.i.1, %bb.el ] ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.1, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !850
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 7496 ; 2 uses
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !883
  %i.adi = icmp eq i64 %i.adh, 72057594037927935
  br i1 %i.adi, label %bb.em, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1

bb.em:                                            ; preds = %.lr.ph.i.i371.1
  store i64 %i.abv, ptr %i.adg, align 8, !tbaa !883
  %.sroa.06.0.i.i.1 = load ptr, ptr %.sroa.06.010.i.i.1, align 8, !tbaa !882 ; 2 uses
  %i.adj = icmp eq ptr %.sroa.06.0.i.i.1, %i.adc
  br i1 %i.adj, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i371.1, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1: ; preds = %.lr.ph.i.i371.1, %bb.em, %bb.el, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.adk = add nuw i64 %.sroa.5.017.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, label %.lr.ph.i369

_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa: ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i369.epil.preheader

.lr.ph.i369.epil.preheader:                       ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, %.lr.ph.i369.preheader
  %.sroa.5.017.i.epil.init = phi i64 [ 0, %.lr.ph.i369.preheader ], [ %i.adk, %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod860 = trunc i64 %i.acd to i1
  call void @llvm.assume(i1 %lcmp.mod860)
  %i.adl = icmp ult i64 %.sroa.5.017.i.epil.init, 8
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %.sroa.5.017.i.epil.init
  %i.adn = getelementptr [8 x i8], ptr %i.aby, i64 %.sroa.5.017.i.epil.init
  %i.ado = getelementptr i8, ptr %i.adn, i64 -64
  %.0.i.i.i.epil = select i1 %i.adl, ptr %i.adm, ptr %i.ado
  %i.adp = load ptr, ptr %.0.i.i.i.epil, align 8, !tbaa !863 ; 2 uses
  %.not.i370.epil = icmp eq ptr %i.adp, null
  br i1 %.not.i370.epil, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i369.epil.preheader
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 2776
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.epil = load ptr, ptr %i.adr, align 8, !tbaa !882 ; 2 uses
  %i.ads = icmp eq ptr %.sroa.06.09.i.i.epil, %i.adr
  br i1 %i.ads, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.i371.epil

.lr.ph.i.i371.epil:                               ; preds = %bb.en, %bb.eo
  %.sroa.06.010.i.i.epil = phi ptr [ %.sroa.06.0.i.i.epil, %bb.eo ], [ %.sroa.06.09.i.i.epil, %bb.en ] ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.epil, i64 16
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !850
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 7496 ; 2 uses
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !883
  %i.adx = icmp eq i64 %i.adw, 72057594037927935
  br i1 %i.adx, label %bb.eo, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit

bb.eo:                                            ; preds = %.lr.ph.i.i371.epil
  store i64 %i.abv, ptr %i.adv, align 8, !tbaa !883
  %.sroa.06.0.i.i.epil = load ptr, ptr %.sroa.06.010.i.i.epil, align 8, !tbaa !882 ; 2 uses
  %i.ady = icmp eq ptr %.sroa.06.0.i.i.epil, %i.adr
  br i1 %i.ady, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.i371.epil, !llvm.loop !9

_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit: ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i371.epil, %bb.eo, %bb.en, %.lr.ph.i369.epil.preheader, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  %i.adz = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.aea = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %43, i64 56 ; 2 uses
  store ptr %i.aeb, ptr %i.aea, align 8, !tbaa !877
  %i.aec = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  store i64 1, ptr %i.aec, align 8, !tbaa !878
  %i.aed = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %43, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aed, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aee, align 8, !tbaa !879
  %i.aef = getelementptr inbounds nuw i8, ptr %43, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aef, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.adz, align 4, !tbaa !876
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %10, i32 noundef 3, ptr noundef nonnull %43)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit
  %i.aeg = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %43)
          to label %bb.eq unwind label %bb.es     ; 0 uses

bb.eq:                                            ; preds = %bb.ep
  %i.aeh = load ptr, ptr %i.aed, align 8, !tbaa !880 ; 2 uses
  %.not5.i.i.i.i.i372 = icmp eq ptr %i.aeh, null
  br i1 %.not5.i.i.i.i.i372, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i376, label %.lr.ph.i.i.i.i.i373

.lr.ph.i.i.i.i.i373:                              ; preds = %bb.eq, %.lr.ph.i.i.i.i.i373
  %.06.i.i.i.i.i374 = phi ptr [ %i.aei, %.lr.ph.i.i.i.i.i373 ], [ %i.aeh, %bb.eq ] ; 2 uses
  %i.aei = load ptr, ptr %.06.i.i.i.i.i374, align 8, !tbaa !846 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i374, i64 noundef 24) #34
  %.not.i.i.i.i.i375 = icmp eq ptr %i.aei, null
  br i1 %.not.i.i.i.i.i375, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i376, label %.lr.ph.i.i.i.i.i373, !llvm.loop !8

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i376: ; preds = %.lr.ph.i.i.i.i.i373, %bb.eq
  %i.aej = load ptr, ptr %i.aea, align 8, !tbaa !877
  %i.aek = load i64, ptr %i.aec, align 8, !tbaa !878
  %i.ael = shl i64 %i.aek, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aej, i8 0, i64 %i.ael, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aed, i8 0, i64 16, i1 false)
  %i.aem = load ptr, ptr %i.aea, align 8, !tbaa !877 ; 2 uses
  %i.aen = icmp eq ptr %i.aem, %i.aeb
  br i1 %i.aen, label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit377, label %bb.er

bb.er:                                            ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i376
  %i.aeo = load i64, ptr %i.aec, align 8, !tbaa !878
  %i.aep = shl i64 %i.aeo, 3
  call void @_ZdlPvm(ptr noundef %i.aem, i64 noundef %i.aep) #34
  br label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit377

_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit377:     ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i376, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %bb.et

bb.es:                                            ; preds = %bb.ep, %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %.loopexit.split-lp497

bb.et:                                            ; preds = %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit377, %._crit_edge585
  invoke void @_ZN7rocksdb6DBImpl30MaybeScheduleFlushOrCompactionEv(ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.eu unwind label %.loopexit.split-lp497.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eu:                                            ; preds = %bb.ds, %bb.et
  %i.aer = getelementptr inbounds nuw i8, ptr %27, i64 96
  %i.aes = load i8, ptr %i.aer, align 8, !tbaa !695, !range !83, !noundef !84
  %i.aet = trunc nuw i8 %i.aes to i1
  br i1 %i.aet, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aeu = getelementptr inbounds nuw i8, ptr %27, i64 192
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.aeu) #33
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.aev = load ptr, ptr %i.pm, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %bb.ew
  call void @_ZdaPv(ptr noundef nonnull %i.aev) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %bb.ew
  %i.aew = load ptr, ptr %i.pl, align 8, !tbaa !64 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aew, null
  br i1 %.not.i.i1.i, label %_ZN7rocksdb11WriteThread6WriterD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.aew) #34
  br label %_ZN7rocksdb11WriteThread6WriterD2Ev.exit

_ZN7rocksdb11WriteThread6WriterD2Ev.exit:         ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  %.pr.i.i378 = load i64, ptr %25, align 8, !tbaa !844
  %.not1.i.i379 = icmp eq i64 %.pr.i.i378, 0
  br i1 %.not1.i.i379, label %bb.ex, label %.lr.ph.preheader.i.i380

.lr.ph.preheader.i.i380:                          ; preds = %_ZN7rocksdb11WriteThread6WriterD2Ev.exit
  store i64 0, ptr %25, align 8, !tbaa !844
  br label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.preheader.i.i380, %_ZN7rocksdb11WriteThread6WriterD2Ev.exit
  %i.aex = load ptr, ptr %i.lv, align 8, !tbaa !862 ; 5 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !861
  %.not.i.i.i.i381 = icmp eq ptr %i.aez, %i.aex
  br i1 %.not.i.i.i.i381, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i383, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i382

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i382: ; preds = %bb.ex
  store ptr %i.aex, ptr %i.aey, align 8, !tbaa !861
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i383

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i383: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i382, %bb.ex
  %.not.i.i.i1.i384 = icmp eq ptr %i.aex, null
  br i1 %.not.i.i.i1.i384, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit386, label %bb.ey

bb.ey:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i383
  %i.afa = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !869
  %i.afc = ptrtoint ptr %i.afb to i64
end_hunk_0
begin_hunk_1_@_ZN7rocksdb6DBImpl14SwitchMemtableEPNS_16ColumnFamilyDataEPNS0_12WriteContextEPNS_16ReadOnlyMemTableEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  resume { ptr, i32 } %.pn163.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb6DBImpl12WriteContextD2Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN7rocksdb19SuperVersionContext5CleanEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !843, !noalias !1339 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !847, !noalias !1339
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !848, !noalias !1339
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = add i64 %i.j, %i.b                       ; 2 uses
  %.not7 = icmp eq i64 %i.k, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pr.i.i.pre = load i64, ptr %i.a, align 8, !tbaa !843
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pr.i.i = phi i64 [ %.pr.i.i.pre, %._crit_edge.loopexit ], [ %i.b, %bb.b ]
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %bb.c, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge
  store i64 0, ptr %i.a, align 8, !tbaa !843
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i, %._crit_edge
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !848  ; 5 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !847
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPN7rocksdb16ReadOnlyMemTableES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb16ReadOnlyMemTableES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.m, ptr %i.d, align 8, !tbaa !847
  br label %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ReadOnlyMemTableES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.c
  %.not.i.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EE5clearEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !868
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #34
  br label %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EE5clearEv.exit.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !915  ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7rocksdb12SuperVersionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb12SuperVersionEEclEPS1_.exit.i.i: ; preds = %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EED2Ev.exit
  tail call void @_ZN7rocksdb12SuperVersionD1Ev(ptr noundef nonnull align 8 dead_on_return(944) dereferenceable(944) %i.u) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 944) #34
  br label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb12SuperVersionEEclEPS1_.exit.i.i, %_ZN7rocksdb10autovectorIPNS_16ReadOnlyMemTableELm8EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.v) #33
  %.pr.i.i.i = load i64, ptr %0, align 8, !tbaa !724
  %.not1.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not1.i.i.i, label %bb.e, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i
  store i64 0, ptr %0, align 8, !tbaa !724
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1003 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1004
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1004
  br label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i

_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.e
  %.not.i.i.i1.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7rocksdb19SuperVersionContextD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1340
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #34
  br label %_ZN7rocksdb19SuperVersionContextD2Ev.exit

_ZN7rocksdb19SuperVersionContextD2Ev.exit:        ; preds = %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i, %bb.f
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.4.08 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.i ] ; 4 uses
  %i.af = icmp ult i64 %.sroa.4.08, 8
  %i.ag = load ptr, ptr %i.l, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.4.08
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %.sroa.4.08
  %i.ak = getelementptr i8, ptr %i.aj, i64 -64
  %.0.i.i = select i1 %i.af, ptr %i.ah, ptr %i.ak
  %i.al = load ptr, ptr %.0.i.i, align 8, !tbaa !850 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(7560) %i.al) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = add nuw i64 %.sroa.4.08, 1              ; 2 uses
  %.not = icmp eq i64 %i.aq, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g

bb.j:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #35
  unreachable
}

declare void @_ZN7rocksdb11WriteThread13ExitUnbatchedEPNS0_6WriterE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef) local_unnamed_addr #7

declare void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336), ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !880  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !846 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !877
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !878
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !877  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIPN7rocksdb16ColumnFamilyDataEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !878
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #34
  br label %_ZNSt13unordered_mapIPN7rocksdb16ColumnFamilyDataEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEED2Ev.exit

_ZNSt13unordered_mapIPN7rocksdb16ColumnFamilyDataEmSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(7336) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !701
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !844, !noalias !1343 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !861, !noalias !1343
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !862, !noalias !1343
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add i64 %i.m, %i.e                       ; 4 uses
  %.not1516 = icmp eq i64 %i.n, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.p = add i64 %i.e, %i.m
  %xtraiter = and i64 %i.n, 1
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.n, -2
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.5.017.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod21 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.r = icmp ult i64 %.sroa.5.017.epil.init, 8
  %2 = load ptr, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.5.017.epil.init
  %3 = load ptr, ptr %i.f, align 8
  %i.t = getelementptr [8 x i8], ptr %3, i64 %.sroa.5.017.epil.init
  %i.u = getelementptr i8, ptr %i.t, i64 -64
  %.0.i.i.epil = select i1 %i.r, ptr %i.s, ptr %i.u
  %i.v = load ptr, ptr %.0.i.i.epil, align 8, !tbaa !863 ; 2 uses
  %.not.epil = icmp eq ptr %i.v, null
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2776
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !881  ; 3 uses
  %.sroa.06.09.i.epil = load ptr, ptr %i.x, align 8, !tbaa !882 ; 2 uses
  %i.y = icmp eq ptr %.sroa.06.09.i.epil, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %bb.b, %bb.c
  %.sroa.06.010.i.epil = phi ptr [ %.sroa.06.0.i.epil, %bb.c ], [ %.sroa.06.09.i.epil, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.epil, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !850
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 7496 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !883
  %i.ad = icmp eq i64 %i.ac, 72057594037927935
  br i1 %i.ad, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph.i.epil
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !883
  %.sroa.06.0.i.epil = load ptr, ptr %.sroa.06.010.i.epil, align 8, !tbaa !882 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.06.0.i.epil, %i.x
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.i.epil, !llvm.loop !9

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c, %bb.b, %.epil.preheader, %bb.a
  ret void

bb.d:                                             ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1, %.lr.ph.new
  %.sroa.5.017 = phi i64 [ 0, %.lr.ph.new ], [ %i.bd, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1 ]
  %4 = icmp ult i64 %.sroa.5.017, 8
  %5 = load ptr, ptr %i.o, align 8
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.5.017
  %7 = load ptr, ptr %i.f, align 8
  %i.af = getelementptr [8 x i8], ptr %7, i64 %.sroa.5.017
  %i.ag = getelementptr i8, ptr %i.af, i64 -64
  %.0.i.i = select i1 %4, ptr %6, ptr %i.ag
  %i.ah = load ptr, ptr %.0.i.i, align 8, !tbaa !863 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2776
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i = load ptr, ptr %i.aj, align 8, !tbaa !882 ; 2 uses
  %i.ak = icmp eq ptr %.sroa.06.09.i, %i.aj
  br i1 %i.ak, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.06.010.i = phi ptr [ %.sroa.06.0.i, %bb.f ], [ %.sroa.06.09.i, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !850
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 7496 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !883
  %i.ap = icmp eq i64 %i.ao, 72057594037927935
  br i1 %i.ap, label %bb.f, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit

bb.f:                                             ; preds = %.lr.ph.i
  store i64 %i.d, ptr %i.an, align 8, !tbaa !883
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !882 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.06.0.i, %i.aj
  br i1 %i.aq, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit, label %.lr.ph.i, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit: ; preds = %bb.f, %.lr.ph.i, %bb.e, %bb.d
  %8 = or disjoint i64 %.sroa.5.017, 1            ; 2 uses
  %9 = icmp ult i64 %.sroa.5.017, 8
  %10 = load ptr, ptr %i.o, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %8
  %12 = load ptr, ptr %i.f, align 8
  %i.ar = getelementptr [8 x i8], ptr %12, i64 %8
  %i.as = getelementptr i8, ptr %i.ar, i64 -64
  %.0.i.i.1 = select i1 %9, ptr %11, ptr %i.as
  %i.at = load ptr, ptr %.0.i.i.1, align 8, !tbaa !863 ; 2 uses
  %.not.1 = icmp eq ptr %i.at, null
  br i1 %.not.1, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2776
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.1 = load ptr, ptr %i.av, align 8, !tbaa !882 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.06.09.i.1, %i.av
  br i1 %i.aw, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g, %bb.h
  %.sroa.06.010.i.1 = phi ptr [ %.sroa.06.0.i.1, %bb.h ], [ %.sroa.06.09.i.1, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !850
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7496 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !883
  %i.bb = icmp eq i64 %i.ba, 72057594037927935
  br i1 %i.bb, label %bb.h, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1

bb.h:                                             ; preds = %.lr.ph.i.1
  store i64 %i.d, ptr %i.az, align 8, !tbaa !883
  %.sroa.06.0.i.1 = load ptr, ptr %.sroa.06.010.i.1, align 8, !tbaa !882 ; 2 uses
  %i.bc = icmp eq ptr %.sroa.06.0.i.1, %i.av
  br i1 %i.bc, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1, label %.lr.ph.i.1, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.1: ; preds = %.lr.ph.i.1, %bb.h, %bb.g, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit
  %i.bd = add nuw i64 %.sroa.5.017, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d
}

declare void @_ZN7rocksdb6DBImpl30MaybeScheduleFlushOrCompactionEv(ptr noundef nonnull align 64 dereferenceable(7336)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11WriteThread6WriterD2Ev(ptr noundef nonnull align 8 dead_on_return(257) dereferenceable(257) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !695, !range !83, !noundef !84
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.d) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.c, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZN7rocksdb6StatusD2Ev.exit3, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit3

_ZN7rocksdb6StatusD2Ev.exit3:                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl37MaybeTransformBatchForBlobDirectWriteERKNS_12WriteOptionsEPPNS_10WriteBatchEbbS5_PNS0_22BlobDirectWriteContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr nofree noundef captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.std::vector.652", align 8   ; 11 uses
  %10 = alloca %"class.std::vector.657", align 8  ; 11 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  %12 = alloca %"class.std::function", align 8    ; 12 uses
  %13 = alloca %"class.std::function.663", align 8 ; 12 uses
  %i.d = zext i1 %5 to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !321
  store ptr %7, ptr %i.b, align 8, !tbaa !1006
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !328    ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZNK7rocksdb10WriteBatch6HasPutEv(ptr noundef nonnull align 8 dereferenceable(160) %i.e)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8, !tbaa !328
  %i.i = tail call noundef zeroext i1 @_ZNK7rocksdb10WriteBatch12HasPutEntityEv(ptr noundef nonnull align 8 dereferenceable(160) %i.h)
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !328
  %i.k = tail call noundef zeroext i1 @_ZNK7rocksdb10WriteBatch8HasMergeEv(ptr noundef nonnull align 8 dereferenceable(160) %i.j)
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !63, !alias.scope !1351
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1351
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @_ZN7rocksdb6DBImpl33HasAnyBlobDirectWriteColumnFamilyEv(ptr noundef nonnull align 64 dereferenceable(7336) %1)
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !63, !alias.scope !1352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1352
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 0, ptr %i.c, align 1, !tbaa !321
  %i.o = load ptr, ptr %6, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(160) %6)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.r = load ptr, ptr %3, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.b, ptr %12, align 8, !tbaa !1008
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1010
  store ptr @"_ZNSt17_Function_handlerIFPN7rocksdb24BlobFilePartitionManagerEjEZNS0_6DBImpl37MaybeTransformBatchForBlobDirectWriteERKNS0_12WriteOptionsEPPNS0_10WriteBatchEbbS9_PNS4_22BlobDirectWriteContextEE3$_0E9_M_invokeERKSt9_Any_dataOj", ptr %i.t, align 8, !tbaa !1354
  store ptr @"_ZNSt17_Function_handlerIFPN7rocksdb24BlobFilePartitionManagerEjEZNS0_6DBImpl37MaybeTransformBatchForBlobDirectWriteERKNS0_12WriteOptionsEPPNS0_10WriteBatchEbbS9_PNS4_22BlobDirectWriteContextEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.s, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.b, ptr %13, align 8, !tbaa !1008
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.a, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !1010
  store ptr @"_ZNSt17_Function_handlerIFN7rocksdb23BlobDirectWriteSettingsEjEZNS0_6DBImpl37MaybeTransformBatchForBlobDirectWriteERKNS0_12WriteOptionsEPPNS0_10WriteBatchEbbS8_PNS3_22BlobDirectWriteContextEE3$_1E9_M_invokeERKSt9_Any_dataOj", ptr %i.v, align 8, !tbaa !1356
  store ptr @"_ZNSt17_Function_handlerIFN7rocksdb23BlobDirectWriteSettingsEjEZNS0_6DBImpl37MaybeTransformBatchForBlobDirectWriteERKNS0_12WriteOptionsEPPNS0_10WriteBatchEbbS8_PNS3_22BlobDirectWriteContextEE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.u, align 8, !tbaa !828
  invoke void @_ZN7rocksdb25BlobWriteBatchTransformer14TransformBatchERKNS_12WriteOptionsEPNS_10WriteBatchES5_RKSt8functionIFPNS_24BlobFilePartitionManagerEjEERKS6_IFNS_23BlobDirectWriteSettingsEjEEPbPSt6vectorIS8_SaIS8_EEPSJ_INS0_12RollbackInfoESaISN_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef %i.r, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.c, ptr noundef nonnull %9, ptr noundef nonnull %10)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !828  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !828 ; 2 uses
  %.not.i24 = icmp eq ptr %i.aa, null
  br i1 %.not.i24, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.ae = load i8, ptr %11, align 8, !tbaa !61    ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %11
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 %i.ae, ptr %0, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ak = load <4 x i8>, ptr %i.ah, align 1, !tbaa !49
  store <4 x i8> zeroinitializer, ptr %11, align 8, !tbaa !49
  store <4 x i8> %i.ak, ptr %i.ai, align 1, !tbaa !49
  store i8 0, ptr %i.aj, align 4, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 5 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.am, ptr %i.an, align 1, !tbaa !62
  store i8 0, ptr %i.al, align 1, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64
  store ptr null, ptr %i.ao, align 8, !tbaa !64
  store ptr %i.ap, ptr %i.ag, align 8, !tbaa !64
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.s:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN7rocksdb6DBImpl9SwitchWALEPNS0_12WriteContextE:bb.a
bb.ai:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit.peel
  %i.eh = icmp eq i8 %i.ee, 0
  br i1 %i.eh, label %bb.aj, label %._crit_edge212

bb.aj:                                            ; preds = %bb.ai
  %.not181.peel = icmp eq i64 %i.dn, 1
  br i1 %.not181.peel, label %._crit_edge212, label %.lr.ph211.peel.newph

bb.ak:                                            ; preds = %bb.ao
  %i.ei = add nuw i64 %.sroa.5153.0209, 1         ; 2 uses
  %.not181 = icmp eq i64 %i.ei, %i.dn
  br i1 %.not181, label %._crit_edge212, label %.lr.ph211.peel.newph, !llvm.loop !1484

.lr.ph211.peel.newph:                             ; preds = %bb.aj, %bb.ak
  %.sroa.5153.0209 = phi i64 [ %i.ei, %bb.ak ], [ 1, %bb.aj ] ; 4 uses
  %i.ej = phi ptr [ %i.fa, %bb.ak ], [ %i.ef, %bb.aj ] ; 4 uses
  %i.ek = icmp ult i64 %.sroa.5153.0209, 8
  %i.el = load ptr, ptr %i.ae, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.5153.0209
  %i.en = load ptr, ptr %i.ag, align 8
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %.sroa.5153.0209
  %i.ep = getelementptr i8, ptr %i.eo, i64 -64
  %.0.i.i = select i1 %i.ek, ptr %i.em, ptr %i.ep
  %i.eq = load ptr, ptr %.0.i.i, align 8, !tbaa !863 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = atomicrmw add ptr %i.er, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7rocksdb6DBImpl14SwitchMemtableEPNS_16ColumnFamilyDataEPNS0_12WriteContextEPNS_16ReadOnlyMemTableEm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull %i.eq, ptr noundef %2, ptr noundef null, i64 noundef 0)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %.lr.ph211.peel.newph
  %.pre237 = load ptr, ptr %i.dt, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i81, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = load i8, ptr %6, align 8, !tbaa !320    ; 2 uses
  %i.eu = load <4 x i8>, ptr %i.do, align 1, !tbaa !49
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !49
  store <4 x i8> %i.eu, ptr %i.dp, align 1, !tbaa !49
  store i8 0, ptr %i.dq, align 4, !tbaa !82
  %i.ev = load i8, ptr %i.dr, align 1, !tbaa !49
  store i8 %i.ev, ptr %i.ds, align 1, !tbaa !62
  store i8 0, ptr %i.dr, align 1, !tbaa !62
  store ptr null, ptr %i.dt, align 8, !tbaa !64
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.ej) #34
  %.pre236 = load ptr, ptr %i.dt, align 8, !tbaa !64
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.al, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ew = phi ptr [ %.pre237, %bb.al ], [ %.pre236, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.ex = phi ptr [ %i.ej, %bb.al ], [ %.pre237, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.ey = phi i8 [ 0, %bb.al ], [ %i.et, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i82, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.am, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.ez = phi i8 [ %i.ey, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %i.ey, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %i.et, %bb.am ] ; 3 uses
  %i.fa = phi ptr [ %i.ex, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %i.ex, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %.pre237, %bb.am ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.fb = invoke noundef zeroext i1 @_ZN7rocksdb16ColumnFamilyData17UnrefAndTryDeleteEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.eq)
          to label %bb.ao unwind label %.loopexit184.loopexit ; 0 uses

.loopexit184.loopexit:                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %lpad.loopexit329 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184

.loopexit184.loopexit.split-lp:                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit.peel
  %lpad.loopexit.split-lp330 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184

.loopexit184:                                     ; preds = %.loopexit184.loopexit.split-lp, %.loopexit184.loopexit
  %.lcssa323 = phi i8 [ %i.ez, %.loopexit184.loopexit ], [ %i.ee, %.loopexit184.loopexit.split-lp ]
  %.lcssa321 = phi ptr [ %i.fa, %.loopexit184.loopexit ], [ %i.ef, %.loopexit184.loopexit.split-lp ]
  %lpad.phi331 = phi { ptr, i32 } [ %lpad.loopexit329, %.loopexit184.loopexit ], [ %lpad.loopexit.split-lp330, %.loopexit184.loopexit.split-lp ]
  store i8 %.lcssa323, ptr %0, align 8
  store ptr %.lcssa321, ptr %i.b, align 8
  br label %bb.bx

.loopexit.split-lp185:                            ; preds = %bb.br, %bb.ap, %bb.ae
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit:                                        ; preds = %.lr.ph211.peel.newph
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %.lr.ph211
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa318 = phi i8 [ 0, %.loopexit ], [ %.promoted, %.loopexit.split-lp ]
  %.lcssa = phi ptr [ %i.ej, %.loopexit ], [ %.promoted205, %.loopexit.split-lp ]
  %lpad.phi328 = phi { ptr, i32 } [ %lpad.loopexit327, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i8 %.lcssa318, ptr %0, align 8
  store ptr %.lcssa, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bx

bb.ao:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.fc = icmp eq i8 %i.ez, 0
  br i1 %i.fc, label %bb.ak, label %._crit_edge212

._crit_edge212:                                   ; preds = %bb.ai, %bb.aj, %bb.ao, %bb.ak, %bb.af
  %i.fd = phi ptr [ %.promoted205, %bb.af ], [ %i.ef, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.fa, %bb.ao ], [ %i.fa, %bb.ak ]
  %i.fe = phi i8 [ %.promoted, %bb.af ], [ %i.ee, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ %i.ez, %bb.ao ] ; 2 uses
  store i8 %i.fe, ptr %0, align 8
  store ptr %i.fd, ptr %i.b, align 8
  %i.ff = load i8, ptr %i.db, align 8, !tbaa !638, !range !83, !noundef !84
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge212
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 4592
  invoke void @_ZN7rocksdb11WriteThread13ExitUnbatchedEPNS0_6WriterE(ptr noundef nonnull align 8 dereferenceable(440) %i.fh, ptr noundef nonnull %5)
          to label %bb.aq unwind label %.loopexit.split-lp185

bb.aq:                                            ; preds = %._crit_edge212, %bb.ap
  %i.fi = icmp eq i8 %i.fe, 0
  br i1 %i.fi, label %bb.ar, label %bb.bs

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load i8, ptr %i.ah, align 8, !tbaa !870, !range !83, !noundef !84
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.as, label %.loopexit183

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fm = load ptr, ptr %i.fl, align 16, !tbaa !701
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 264
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 3 uses
  %i.fp = load i64, ptr %3, align 8, !tbaa !844, !noalias !1493 ; 2 uses
  %i.fq = load ptr, ptr %i.dg, align 8, !tbaa !861, !noalias !1493
  %i.fr = load ptr, ptr %i.ag, align 8, !tbaa !862, !noalias !1493 ; 4 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 2 uses
  %i.fw = add i64 %i.fv, %i.fp                    ; 9 uses
  %.not1516.i = icmp eq i64 %i.fw, 0
  br i1 %.not1516.i, label %._crit_edge221, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.as
  %i.fx = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.fy = add i64 %i.fp, %i.fv
  %xtraiter = and i64 %i.fw, 1
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.fw, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, %.lr.ph.i.preheader.new
  %.sroa.5.017.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.hd, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ]
  %i.ga = icmp ult i64 %.sroa.5.017.i, 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.5.017.i
  %i.gc = getelementptr [8 x i8], ptr %i.fr, i64 %.sroa.5.017.i
  %i.gd = getelementptr i8, ptr %i.gc, i64 -64
  %.0.i.i.i = select i1 %i.ga, ptr %i.gb, ptr %i.gd
  %i.ge = load ptr, ptr %.0.i.i.i, align 8, !tbaa !863 ; 2 uses
  %.not.i83 = icmp eq ptr %i.ge, null
  br i1 %.not.i83, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2776
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.gg, align 8, !tbaa !882 ; 2 uses
  %i.gh = icmp eq ptr %.sroa.06.09.i.i, %i.gg
  br i1 %i.gh, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at, %bb.au
  %.sroa.06.010.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.au ], [ %.sroa.06.09.i.i, %bb.at ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !850
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 7496 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !883
  %i.gm = icmp eq i64 %i.gl, 72057594037927935
  br i1 %i.gm, label %bb.au, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i

bb.au:                                            ; preds = %.lr.ph.i.i
  store i64 %i.fo, ptr %i.gk, align 8, !tbaa !883
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.010.i.i, align 8, !tbaa !882 ; 2 uses
  %i.gn = icmp eq ptr %.sroa.06.0.i.i, %i.gg
  br i1 %i.gn, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i: ; preds = %bb.au, %.lr.ph.i.i, %bb.at, %.lr.ph.i
  %i.go = or disjoint i64 %.sroa.5.017.i, 1       ; 2 uses
  %i.gp = icmp ult i64 %.sroa.5.017.i, 8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.go
  %i.gr = getelementptr [8 x i8], ptr %i.fr, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.gr, i64 -64
  %.0.i.i.i.1 = select i1 %i.gp, ptr %i.gq, ptr %i.gs
  %i.gt = load ptr, ptr %.0.i.i.i.1, align 8, !tbaa !863 ; 2 uses
  %.not.i83.1 = icmp eq ptr %i.gt, null
  br i1 %.not.i83.1, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %bb.av

bb.av:                                            ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2776
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.1 = load ptr, ptr %i.gv, align 8, !tbaa !882 ; 2 uses
  %i.gw = icmp eq ptr %.sroa.06.09.i.i.1, %i.gv
  br i1 %i.gw, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.av, %bb.aw
  %.sroa.06.010.i.i.1 = phi ptr [ %.sroa.06.0.i.i.1, %bb.aw ], [ %.sroa.06.09.i.i.1, %bb.av ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.1, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !850
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 7496 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !883
  %i.hb = icmp eq i64 %i.ha, 72057594037927935
  br i1 %i.hb, label %bb.aw, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1

bb.aw:                                            ; preds = %.lr.ph.i.i.1
  store i64 %i.fo, ptr %i.gz, align 8, !tbaa !883
  %.sroa.06.0.i.i.1 = load ptr, ptr %.sroa.06.010.i.i.1, align 8, !tbaa !882 ; 2 uses
  %i.hc = icmp eq ptr %.sroa.06.0.i.i.1, %i.gv
  br i1 %i.hc, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1: ; preds = %.lr.ph.i.i.1, %bb.aw, %bb.av, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.hd = add nuw i64 %.sroa.5.017.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph220.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit183:                                     ; preds = %bb.ar
  %.pre238 = load i64, ptr %3, align 8, !tbaa !844, !noalias !1494
  %.pre239 = load ptr, ptr %i.dg, align 8, !tbaa !861, !noalias !1494
  %.pre240 = load ptr, ptr %i.ag, align 8, !tbaa !862, !noalias !1494
  %.pre241 = ptrtoint ptr %.pre239 to i64
  %.pre242 = ptrtoint ptr %.pre240 to i64
  %.pre244 = sub i64 %.pre241, %.pre242
  %.pre246 = ashr exact i64 %.pre244, 3
  %.pre248 = add i64 %.pre246, %.pre238           ; 2 uses
  %.not182217 = icmp eq i64 %.pre248, 0
  br i1 %.not182217, label %._crit_edge221, label %.lr.ph220

.lr.ph220.loopexit.unr-lcssa:                     ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph220, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph220.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.5.017.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.hd, %.lr.ph220.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod332 = trunc i64 %i.fw to i1
  call void @llvm.assume(i1 %lcmp.mod332)
  %i.he = icmp ult i64 %.sroa.5.017.i.epil.init, 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.5.017.i.epil.init
  %i.hg = getelementptr [8 x i8], ptr %i.fr, i64 %.sroa.5.017.i.epil.init
  %i.hh = getelementptr i8, ptr %i.hg, i64 -64
  %.0.i.i.i.epil = select i1 %i.he, ptr %i.hf, ptr %i.hh
  %i.hi = load ptr, ptr %.0.i.i.i.epil, align 8, !tbaa !863 ; 2 uses
  %.not.i83.epil = icmp eq ptr %i.hi, null
  br i1 %.not.i83.epil, label %.lr.ph220, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2776
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.epil = load ptr, ptr %i.hk, align 8, !tbaa !882 ; 2 uses
  %i.hl = icmp eq ptr %.sroa.06.09.i.i.epil, %i.hk
  br i1 %i.hl, label %.lr.ph220, label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.ax, %bb.ay
  %.sroa.06.010.i.i.epil = phi ptr [ %.sroa.06.0.i.i.epil, %bb.ay ], [ %.sroa.06.09.i.i.epil, %bb.ax ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.epil, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !850
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 7496 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !883
  %i.hq = icmp eq i64 %i.hp, 72057594037927935
  br i1 %i.hq, label %bb.ay, label %.lr.ph220

bb.ay:                                            ; preds = %.lr.ph.i.i.epil
  store i64 %i.fo, ptr %i.ho, align 8, !tbaa !883
  %.sroa.06.0.i.i.epil = load ptr, ptr %.sroa.06.010.i.i.epil, align 8, !tbaa !882 ; 2 uses
  %i.hr = icmp eq ptr %.sroa.06.0.i.i.epil, %i.hk
  br i1 %i.hr, label %.lr.ph220, label %.lr.ph.i.i.epil, !llvm.loop !9

.lr.ph220:                                        ; preds = %.lr.ph220.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.ay, %bb.ax, %.lr.ph.i.epil.preheader, %.loopexit183
  %.pre-phi249297 = phi i64 [ %.pre248, %.loopexit183 ], [ %i.fw, %.lr.ph.i.epil.preheader ], [ %i.fw, %bb.ax ], [ %i.fw, %bb.ay ], [ %i.fw, %.lr.ph.i.i.epil ], [ %i.fw, %.lr.ph220.loopexit.unr-lcssa ]
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  br label %bb.az

._crit_edge221:                                   ; preds = %bb.bl, %bb.as, %.loopexit183
  %i.ie = load i8, ptr %i.ah, align 8, !tbaa !870, !range !83, !noundef !84
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.bm, label %bb.br

bb.az:                                            ; preds = %.lr.ph220, %bb.bl
  %.sroa.5.0218 = phi i64 [ 0, %.lr.ph220 ], [ %i.js, %bb.bl ] ; 4 uses
  %i.ig = icmp ult i64 %.sroa.5.0218, 8
  %i.ih = load ptr, ptr %i.ae, align 8
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.sroa.5.0218
  %i.ij = load ptr, ptr %i.ag, align 8
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %.sroa.5.0218
  %i.il = getelementptr i8, ptr %i.ik, i64 -64
  %.0.i.i84 = select i1 %i.ig, ptr %i.ii, ptr %i.il
  %i.im = load ptr, ptr %.0.i.i84, align 8, !tbaa !863 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2789
  store i8 1, ptr %i.in, align 1, !tbaa !871
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2784
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !872
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %bb.ba, label %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit

bb.ba:                                            ; preds = %bb.az
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 2768
  store atomic i8 1, ptr %i.ir release, align 8
  br label %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit

_ZN7rocksdb12MemTableList14FlushRequestedEv.exit: ; preds = %bb.az, %bb.ba
  %i.is = load i8, ptr %i.ah, align 8, !tbaa !870, !range !83, !noundef !84
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.bl, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit146

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit146: ; preds = %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i8 0, ptr %i.hs, align 4, !tbaa !876
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !877
  store i64 1, ptr %i.hv, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hx, align 8, !tbaa !879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.ia, ptr %i.hz, align 8, !tbaa !845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i8 0, i64 24, i1 false)
  store i64 1, ptr %8, align 8, !tbaa !844
  store ptr %i.im, ptr %i.ia, align 8, !tbaa !863
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %8, i32 noundef 13, ptr noundef nonnull %7)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit146
  %.pr.i.i88 = load i64, ptr %8, align 8, !tbaa !844
  %.not1.i.i89 = icmp eq i64 %.pr.i.i88, 0
  br i1 %.not1.i.i89, label %bb.bc, label %.lr.ph.preheader.i.i90

.lr.ph.preheader.i.i90:                           ; preds = %bb.bb
  store i64 0, ptr %8, align 8, !tbaa !844
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.preheader.i.i90, %bb.bb
  %i.iu = load ptr, ptr %i.ib, align 8, !tbaa !862 ; 5 uses
  %i.iv = load ptr, ptr %i.ic, align 8, !tbaa !861
  %.not.i.i.i.i91 = icmp eq ptr %i.iv, %i.iu
  br i1 %.not.i.i.i.i91, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92: ; preds = %bb.bc
  store ptr %i.iu, ptr %i.ic, align 8, !tbaa !861
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92, %bb.bc
  %.not.i.i.i1.i94 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i1.i94, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96, label %bb.bd

bb.bd:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93
  %i.iw = load ptr, ptr %i.id, align 8, !tbaa !869
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #34
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ja = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.be unwind label %bb.bj     ; 0 uses

bb.be:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96
  %i.jb = load ptr, ptr %i.hw, align 8, !tbaa !880 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.be, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i ], [ %i.jb, %bb.be ] ; 2 uses
  %i.jc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !846 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i.i97 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i.i97, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8
end_hunk_2
begin_hunk_3_@_ZN7rocksdb6DBImpl29HandleWriteBufferManagerFlushEPNS0_12WriteContextE:bb.a
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %i.dl = add i64 %i.dk, %i.de                    ; 2 uses
  %.promoted = load i8, ptr %0, align 8           ; 2 uses
  %.promoted184 = load ptr, ptr %i.b, align 8     ; 2 uses
  %.not157187 = icmp eq i64 %i.dl, 0
  br i1 %.not157187, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.aa
  %.not.i = icmp eq ptr %0, %6
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph190, %select.unfold
  %.sroa.5143.0188 = phi i64 [ 0, %.lr.ph190 ], [ %i.ev, %select.unfold ] ; 4 uses
  %i.ds = phi i8 [ %.promoted, %.lr.ph190 ], [ %i.eu, %select.unfold ] ; 3 uses
  %i.dt = phi ptr [ %.promoted184, %.lr.ph190 ], [ %i.et, %select.unfold ] ; 5 uses
  %i.du = icmp ult i64 %.sroa.5143.0188, 8
  %i.dv = load ptr, ptr %i.c, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.sroa.5143.0188
  %i.dx = load ptr, ptr %i.e, align 8
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %.sroa.5143.0188
  %i.dz = getelementptr i8, ptr %i.dy, i64 -64
  %.0.i.i = select i1 %i.du, ptr %i.dw, ptr %i.dz
  %i.ea = load ptr, ptr %.0.i.i, align 8, !tbaa !863 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2760
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !894
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 10312
  %i.ee = load atomic i64, ptr %i.ed seq_cst, align 8
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %select.unfold, label %bb.ac

.loopexit160:                                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.eo, ptr %0, align 8
  store ptr %i.ep, ptr %i.b, align 8
  br label %bb.bp

.loopexit.split-lp161:                            ; preds = %bb.bj, %bb.ah, %bb.z
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.eh = atomicrmw add ptr %i.eg, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7rocksdb6DBImpl14SwitchMemtableEPNS_16ColumnFamilyDataEPNS0_12WriteContextEPNS_16ReadOnlyMemTableEm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull %i.ea, ptr noundef %2, ptr noundef null, i64 noundef 0)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.pre215 = load ptr, ptr %i.dr, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load i8, ptr %6, align 8, !tbaa !320    ; 2 uses
  %i.ej = load <4 x i8>, ptr %i.dm, align 1, !tbaa !49
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !49
  store <4 x i8> %i.ej, ptr %i.dn, align 1, !tbaa !49
  store i8 0, ptr %i.do, align 4, !tbaa !82
  %i.ek = load i8, ptr %i.dp, align 1, !tbaa !49
  store i8 %i.ek, ptr %i.dq, align 1, !tbaa !62
  store i8 0, ptr %i.dp, align 1, !tbaa !62
  store ptr null, ptr %i.dr, align 8, !tbaa !64
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #34
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !64
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.ad, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.el = phi ptr [ %.pre215, %bb.ad ], [ %.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.em = phi ptr [ %i.dt, %bb.ad ], [ %.pre215, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.en = phi i8 [ %i.ds, %bb.ad ], [ %i.ei, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.el, null
  br i1 %.not.i.i75, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.el) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.ae, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.eo = phi i8 [ %i.en, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %i.en, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %i.ei, %bb.ae ] ; 3 uses
  %i.ep = phi ptr [ %i.em, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %i.em, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %.pre215, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.eq = invoke noundef zeroext i1 @_ZN7rocksdb16ColumnFamilyData17UnrefAndTryDeleteEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.ea)
          to label %bb.af unwind label %.loopexit160 ; 0 uses

bb.af:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.er = icmp eq i8 %i.eo, 0
  br i1 %i.er, label %select.unfold, label %._crit_edge191

bb.ag:                                            ; preds = %bb.ac
  %i.es = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ds, ptr %0, align 8
  store ptr %i.dt, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bp

select.unfold:                                    ; preds = %bb.af, %bb.ab
  %i.et = phi ptr [ %i.ep, %bb.af ], [ %i.dt, %bb.ab ] ; 2 uses
  %i.eu = phi i8 [ 0, %bb.af ], [ %i.ds, %bb.ab ] ; 2 uses
  %i.ev = add nuw i64 %.sroa.5143.0188, 1         ; 2 uses
  %.not157 = icmp eq i64 %i.ev, %i.dl
  br i1 %.not157, label %._crit_edge191, label %bb.ab

._crit_edge191:                                   ; preds = %select.unfold, %bb.af, %bb.aa
  %i.ew = phi ptr [ %.promoted184, %bb.aa ], [ %i.ep, %bb.af ], [ %i.et, %select.unfold ]
  %i.ex = phi i8 [ %.promoted, %bb.aa ], [ %i.eo, %bb.af ], [ %i.eu, %select.unfold ] ; 2 uses
  store i8 %i.ex, ptr %0, align 8
  store ptr %i.ew, ptr %i.b, align 8
  %i.ey = load i8, ptr %i.da, align 8, !tbaa !638, !range !83, !noundef !84
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge191
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 4592
  invoke void @_ZN7rocksdb11WriteThread13ExitUnbatchedEPNS0_6WriterE(ptr noundef nonnull align 8 dereferenceable(440) %i.fa, ptr noundef nonnull %5)
          to label %bb.ai unwind label %.loopexit.split-lp161

bb.ai:                                            ; preds = %._crit_edge191, %bb.ah
  %i.fb = icmp eq i8 %i.ex, 0
  br i1 %i.fb, label %bb.aj, label %bb.bk

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load i8, ptr %i.f, align 8, !tbaa !870, !range !83, !noundef !84
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ak, label %.loopexit159

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ff = load ptr, ptr %i.fe, align 16, !tbaa !701
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 264
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 3 uses
  %i.fi = load i64, ptr %3, align 8, !tbaa !844, !noalias !1502 ; 2 uses
  %i.fj = load ptr, ptr %i.cb, align 8, !tbaa !861, !noalias !1502
  %i.fk = load ptr, ptr %i.e, align 8, !tbaa !862, !noalias !1502 ; 4 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3                 ; 2 uses
  %i.fp = add i64 %i.fo, %i.fi                    ; 9 uses
  %.not1516.i = icmp eq i64 %i.fp, 0
  br i1 %.not1516.i, label %._crit_edge201, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ak
  %i.fq = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.fr = add i64 %i.fi, %i.fo
  %xtraiter = and i64 %i.fp, 1
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.fp, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, %.lr.ph.i.preheader.new
  %.sroa.5.017.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.gw, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ]
  %i.ft = icmp ult i64 %.sroa.5.017.i, 8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.sroa.5.017.i
  %i.fv = getelementptr [8 x i8], ptr %i.fk, i64 %.sroa.5.017.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 -64
  %.0.i.i.i = select i1 %i.ft, ptr %i.fu, ptr %i.fw
  %i.fx = load ptr, ptr %.0.i.i.i, align 8, !tbaa !863 ; 2 uses
  %.not.i76 = icmp eq ptr %i.fx, null
  br i1 %.not.i76, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2776
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.fz, align 8, !tbaa !882 ; 2 uses
  %i.ga = icmp eq ptr %.sroa.06.09.i.i, %i.fz
  br i1 %i.ga, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.al, %bb.am
  %.sroa.06.010.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.am ], [ %.sroa.06.09.i.i, %bb.al ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !850
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 7496 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !883
  %i.gf = icmp eq i64 %i.ge, 72057594037927935
  br i1 %i.gf, label %bb.am, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i

bb.am:                                            ; preds = %.lr.ph.i.i
  store i64 %i.fh, ptr %i.gd, align 8, !tbaa !883
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.010.i.i, align 8, !tbaa !882 ; 2 uses
  %i.gg = icmp eq ptr %.sroa.06.0.i.i, %i.fz
  br i1 %i.gg, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i: ; preds = %bb.am, %.lr.ph.i.i, %bb.al, %.lr.ph.i
  %i.gh = or disjoint i64 %.sroa.5.017.i, 1       ; 2 uses
  %i.gi = icmp ult i64 %.sroa.5.017.i, 8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gh
  %i.gk = getelementptr [8 x i8], ptr %i.fk, i64 %i.gh
  %i.gl = getelementptr i8, ptr %i.gk, i64 -64
  %.0.i.i.i.1 = select i1 %i.gi, ptr %i.gj, ptr %i.gl
  %i.gm = load ptr, ptr %.0.i.i.i.1, align 8, !tbaa !863 ; 2 uses
  %.not.i76.1 = icmp eq ptr %i.gm, null
  br i1 %.not.i76.1, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %bb.an

bb.an:                                            ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2776
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.1 = load ptr, ptr %i.go, align 8, !tbaa !882 ; 2 uses
  %i.gp = icmp eq ptr %.sroa.06.09.i.i.1, %i.go
  br i1 %i.gp, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.an, %bb.ao
  %.sroa.06.010.i.i.1 = phi ptr [ %.sroa.06.0.i.i.1, %bb.ao ], [ %.sroa.06.09.i.i.1, %bb.an ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.1, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !850
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 7496 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !883
  %i.gu = icmp eq i64 %i.gt, 72057594037927935
  br i1 %i.gu, label %bb.ao, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1

bb.ao:                                            ; preds = %.lr.ph.i.i.1
  store i64 %i.fh, ptr %i.gs, align 8, !tbaa !883
  %.sroa.06.0.i.i.1 = load ptr, ptr %.sroa.06.010.i.i.1, align 8, !tbaa !882 ; 2 uses
  %i.gv = icmp eq ptr %.sroa.06.0.i.i.1, %i.go
  br i1 %i.gv, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1: ; preds = %.lr.ph.i.i.1, %bb.ao, %bb.an, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.gw = add nuw i64 %.sroa.5.017.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph200.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit159:                                     ; preds = %bb.aj
  %.pre216 = load i64, ptr %3, align 8, !tbaa !844, !noalias !1503
  %.pre217 = load ptr, ptr %i.cb, align 8, !tbaa !861, !noalias !1503
  %.pre218 = load ptr, ptr %i.e, align 8, !tbaa !862, !noalias !1503
  %.pre219 = ptrtoint ptr %.pre217 to i64
  %.pre220 = ptrtoint ptr %.pre218 to i64
  %.pre222 = sub i64 %.pre219, %.pre220
  %.pre224 = ashr exact i64 %.pre222, 3
  %.pre226 = add i64 %.pre224, %.pre216           ; 2 uses
  %.not158197 = icmp eq i64 %.pre226, 0
  br i1 %.not158197, label %._crit_edge201, label %.lr.ph200

.lr.ph200.loopexit.unr-lcssa:                     ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph200, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph200.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.5.017.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.gw, %.lr.ph200.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod303 = trunc i64 %i.fp to i1
  call void @llvm.assume(i1 %lcmp.mod303)
  %i.gx = icmp ult i64 %.sroa.5.017.i.epil.init, 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.sroa.5.017.i.epil.init
  %i.gz = getelementptr [8 x i8], ptr %i.fk, i64 %.sroa.5.017.i.epil.init
  %i.ha = getelementptr i8, ptr %i.gz, i64 -64
  %.0.i.i.i.epil = select i1 %i.gx, ptr %i.gy, ptr %i.ha
  %i.hb = load ptr, ptr %.0.i.i.i.epil, align 8, !tbaa !863 ; 2 uses
  %.not.i76.epil = icmp eq ptr %i.hb, null
  br i1 %.not.i76.epil, label %.lr.ph200, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2776
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.epil = load ptr, ptr %i.hd, align 8, !tbaa !882 ; 2 uses
  %i.he = icmp eq ptr %.sroa.06.09.i.i.epil, %i.hd
  br i1 %i.he, label %.lr.ph200, label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.ap, %bb.aq
  %.sroa.06.010.i.i.epil = phi ptr [ %.sroa.06.0.i.i.epil, %bb.aq ], [ %.sroa.06.09.i.i.epil, %bb.ap ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.epil, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !850
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 7496 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !883
  %i.hj = icmp eq i64 %i.hi, 72057594037927935
  br i1 %i.hj, label %bb.aq, label %.lr.ph200

bb.aq:                                            ; preds = %.lr.ph.i.i.epil
  store i64 %i.fh, ptr %i.hh, align 8, !tbaa !883
  %.sroa.06.0.i.i.epil = load ptr, ptr %.sroa.06.010.i.i.epil, align 8, !tbaa !882 ; 2 uses
  %i.hk = icmp eq ptr %.sroa.06.0.i.i.epil, %i.hd
  br i1 %i.hk, label %.lr.ph200, label %.lr.ph.i.i.epil, !llvm.loop !9

.lr.ph200:                                        ; preds = %.lr.ph200.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.aq, %bb.ap, %.lr.ph.i.epil.preheader, %.loopexit159
  %.pre-phi227277 = phi i64 [ %.pre226, %.loopexit159 ], [ %i.fp, %.lr.ph.i.epil.preheader ], [ %i.fp, %bb.ap ], [ %i.fp, %bb.aq ], [ %i.fp, %.lr.ph.i.i.epil ], [ %i.fp, %.lr.ph200.loopexit.unr-lcssa ]
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  br label %bb.ar

._crit_edge201:                                   ; preds = %bb.bd, %bb.ak, %.loopexit159
  %i.hx = load i8, ptr %i.f, align 8, !tbaa !870, !range !83, !noundef !84
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.be, label %bb.bj

bb.ar:                                            ; preds = %.lr.ph200, %bb.bd
  %.sroa.5.0198 = phi i64 [ 0, %.lr.ph200 ], [ %i.jl, %bb.bd ] ; 4 uses
  %i.hz = icmp ult i64 %.sroa.5.0198, 8
  %i.ia = load ptr, ptr %i.c, align 8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.5.0198
  %i.ic = load ptr, ptr %i.e, align 8
  %i.id = getelementptr [8 x i8], ptr %i.ic, i64 %.sroa.5.0198
  %i.ie = getelementptr i8, ptr %i.id, i64 -64
  %.0.i.i77 = select i1 %i.hz, ptr %i.ib, ptr %i.ie
  %i.if = load ptr, ptr %.0.i.i77, align 8, !tbaa !863 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2789
  store i8 1, ptr %i.ig, align 1, !tbaa !871
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 2784
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !872
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %bb.as, label %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 2768
  store atomic i8 1, ptr %i.ik release, align 8
  br label %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit

_ZN7rocksdb12MemTableList14FlushRequestedEv.exit: ; preds = %bb.ar, %bb.as
  %i.il = load i8, ptr %i.f, align 8, !tbaa !870, !range !83, !noundef !84
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.bd, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit136

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit136: ; preds = %_ZN7rocksdb12MemTableList14FlushRequestedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i8 0, ptr %i.hl, align 4, !tbaa !876
  store ptr %i.hn, ptr %i.hm, align 8, !tbaa !877
  store i64 1, ptr %i.ho, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hq, align 8, !tbaa !879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.ht, ptr %i.hs, align 8, !tbaa !845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i8 0, i64 24, i1 false)
  store i64 1, ptr %8, align 8, !tbaa !844
  store ptr %i.if, ptr %i.ht, align 8, !tbaa !863
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %8, i32 noundef 5, ptr noundef nonnull %7)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit136
  %.pr.i.i81 = load i64, ptr %8, align 8, !tbaa !844
  %.not1.i.i82 = icmp eq i64 %.pr.i.i81, 0
  br i1 %.not1.i.i82, label %bb.au, label %.lr.ph.preheader.i.i83

.lr.ph.preheader.i.i83:                           ; preds = %bb.at
  store i64 0, ptr %8, align 8, !tbaa !844
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph.preheader.i.i83, %bb.at
  %i.in = load ptr, ptr %i.hu, align 8, !tbaa !862 ; 5 uses
  %i.io = load ptr, ptr %i.hv, align 8, !tbaa !861
  %.not.i.i.i.i84 = icmp eq ptr %i.io, %i.in
  br i1 %.not.i.i.i.i84, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i86, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i85

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i85: ; preds = %bb.au
  store ptr %i.in, ptr %i.hv, align 8, !tbaa !861
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i86

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i86: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i85, %bb.au
  %.not.i.i.i1.i87 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i1.i87, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit89, label %bb.av

bb.av:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i86
  %i.ip = load ptr, ptr %i.hw, align 8, !tbaa !869
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #34
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit89

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit89: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i86, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.it = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.aw unwind label %bb.bb     ; 0 uses

bb.aw:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit89
  %i.iu = load ptr, ptr %i.hp, align 8, !tbaa !880 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aw, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i ], [ %i.iu, %bb.aw ] ; 2 uses
  %i.iv = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !846 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i.i90 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i90, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8
end_hunk_3
begin_hunk_4_@_ZN7rocksdb6DBImpl15ScheduleFlushesEPNS0_12WriteContextE:bb.a
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hl
  %i.hp = add nuw nsw i64 %i.hl, 1
  store i64 %i.hp, ptr %6, align 8, !tbaa !1538
  store i32 %.0169, ptr %i.ho, align 4, !tbaa !1544
  br label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE9push_backERKS1_.exit

bb.an:                                            ; preds = %bb.al
  %i.hq = load ptr, ptr %i.fz, align 8, !tbaa !1541 ; 4 uses
  %i.hr = load ptr, ptr %i.ga, align 8, !tbaa !1542
  %.not.i.i76 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not.i.i76, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 %.0169, ptr %i.hq, align 4, !tbaa !1544
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store ptr %i.hs, ptr %i.fz, align 8, !tbaa !1541
  br label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %bb.an
  %i.ht = load ptr, ptr %i.es, align 8, !tbaa !1540 ; 4 uses
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 5 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775804
  br i1 %i.hx, label %bb.aq, label %_ZNKSt6vectorIN7rocksdb11FlushReasonESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  store i8 %i.hk, ptr %0, align 8
  store ptr %i.hj, ptr %i.dz, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.aa, %bb.aq
  %i.hy = phi ptr [ @.str.88, %bb.aq ], [ @.str.91, %bb.aa ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.hy) #37
          to label %.cont unwind label %.loopexit.split-lp174

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN7rocksdb11FlushReasonESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.hz = ashr exact i64 %i.hw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i77 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i.i77, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 2305843009213693951)
  %i.id = select i1 %i.ib, i64 2305843009213693951, i64 %i.ic ; 3 uses
  %.not.i.i.i.i78 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i.i78)
  %i.ie = shl nuw nsw i64 %i.id, 2
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #36
          to label %.noexc81 unwind label %.loopexit173 ; 4 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorIN7rocksdb11FlushReasonESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hw ; 2 uses
  store i32 %.0169, ptr %i.ig, align 4, !tbaa !1544
  %i.ih = icmp sgt i64 %i.hw, 0
  br i1 %i.ih, label %bb.ar, label %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ar:                                            ; preds = %.noexc81
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.if, ptr align 4 %i.ht, i64 %i.hw, i1 false)
  br label %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ar, %.noexc81
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %.not.i17.i.i.i79 = icmp eq ptr %i.ht, null
  br i1 %.not.i17.i.i.i79, label %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ij = load ptr, ptr %i.ga, align 8, !tbaa !1542
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ik, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.il) #34
  br label %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.if, ptr %i.es, align 8, !tbaa !1540
  store ptr %i.ii, ptr %i.fz, align 8, !tbaa !1541
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  store ptr %i.im, ptr %i.ga, align 8, !tbaa !1542
  br label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE9push_backERKS1_.exit

_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN7rocksdb11FlushReasonESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ao, %bb.am
  %i.in = load ptr, ptr %.0.i.i74, align 8, !tbaa !863
  %i.io = invoke noundef zeroext i1 @_ZN7rocksdb16ColumnFamilyData17UnrefAndTryDeleteEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.in)
          to label %bb.at unwind label %.loopexit173

bb.at:                                            ; preds = %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE9push_backERKS1_.exit
  br i1 %i.io, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store ptr null, ptr %.0.i.i74, align 8, !tbaa !863
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ip = add nuw i64 %.sroa.5.0205, 1            ; 2 uses
  %.not171 = icmp eq i64 %i.ip, %.pre-phi246
  br i1 %.not171, label %._crit_edge, label %bb.ae

bb.aw:                                            ; preds = %._crit_edge
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 4592
  invoke void @_ZN7rocksdb11WriteThread13ExitUnbatchedEPNS0_6WriterE(ptr noundef nonnull align 8 dereferenceable(440) %i.iq, ptr noundef nonnull %5)
          to label %bb.ax unwind label %.loopexit.split-lp174

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %i.ir = icmp eq i8 %i.gb, 0
  br i1 %i.ir, label %bb.ay, label %bb.bu

bb.ay:                                            ; preds = %bb.ax
  %i.is = load i8, ptr %i.d, align 8, !tbaa !870, !range !83, !noundef !84
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.az, label %.preheader

.preheader:                                       ; preds = %bb.ay
  %i.iu = load i64, ptr %3, align 8, !tbaa !844
  %i.iv = load ptr, ptr %i.eu, align 8, !tbaa !861
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !862 ; 2 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 3
  %i.jb = sub i64 0, %i.iu
  %.not210 = icmp eq i64 %i.ja, %i.jb
  br i1 %.not210, label %.loopexit172, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155

bb.az:                                            ; preds = %bb.ay
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jp = load ptr, ptr %i.jo, align 16, !tbaa !701
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 264
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 3 uses
  %i.js = load i64, ptr %3, align 8, !tbaa !844, !noalias !1545 ; 2 uses
  %i.jt = load ptr, ptr %i.eu, align 8, !tbaa !861, !noalias !1545
  %i.ju = load ptr, ptr %i.c, align 8, !tbaa !862, !noalias !1545 ; 4 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 3                 ; 2 uses
  %i.jz = add i64 %i.jy, %i.js                    ; 4 uses
  %.not1516.i = icmp eq i64 %i.jz, 0
  br i1 %.not1516.i, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.az
  %i.ka = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.kb = add i64 %i.js, %i.jy
  %xtraiter337 = and i64 %i.jz, 1
  %i.kc = icmp eq i64 %i.kb, 1
  br i1 %i.kc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter341 = and i64 %i.jz, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, %.lr.ph.i.preheader.new
  %.sroa.5.017.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.lg, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ] ; 6 uses
  %niter342 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter342.next.1, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ]
  %i.kd = icmp ult i64 %.sroa.5.017.i, 8
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.sroa.5.017.i
  %i.kf = getelementptr [8 x i8], ptr %i.ju, i64 %.sroa.5.017.i
  %i.kg = getelementptr i8, ptr %i.kf, i64 -64
  %.0.i.i.i = select i1 %i.kd, ptr %i.ke, ptr %i.kg
  %i.kh = load ptr, ptr %.0.i.i.i, align 8, !tbaa !863 ; 2 uses
  %.not.i82 = icmp eq ptr %i.kh, null
  br i1 %.not.i82, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2776
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.kj, align 8, !tbaa !882 ; 2 uses
  %i.kk = icmp eq ptr %.sroa.06.09.i.i, %i.kj
  br i1 %i.kk, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ba, %bb.bb
  %.sroa.06.010.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.bb ], [ %.sroa.06.09.i.i, %bb.ba ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !850
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 7496 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !883
  %i.kp = icmp eq i64 %i.ko, 72057594037927935
  br i1 %i.kp, label %bb.bb, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i

bb.bb:                                            ; preds = %.lr.ph.i.i
  store i64 %i.jr, ptr %i.kn, align 8, !tbaa !883
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.010.i.i, align 8, !tbaa !882 ; 2 uses
  %i.kq = icmp eq ptr %.sroa.06.0.i.i, %i.kj
  br i1 %i.kq, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i: ; preds = %bb.bb, %.lr.ph.i.i, %bb.ba, %.lr.ph.i
  %i.kr = or disjoint i64 %.sroa.5.017.i, 1       ; 2 uses
  %i.ks = icmp ult i64 %.sroa.5.017.i, 8
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.kr
  %i.ku = getelementptr [8 x i8], ptr %i.ju, i64 %i.kr
  %i.kv = getelementptr i8, ptr %i.ku, i64 -64
  %.0.i.i.i.1 = select i1 %i.ks, ptr %i.kt, ptr %i.kv
  %i.kw = load ptr, ptr %.0.i.i.i.1, align 8, !tbaa !863 ; 2 uses
  %.not.i82.1 = icmp eq ptr %i.kw, null
  br i1 %.not.i82.1, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %bb.bc

bb.bc:                                            ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2776
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.1 = load ptr, ptr %i.ky, align 8, !tbaa !882 ; 2 uses
  %i.kz = icmp eq ptr %.sroa.06.09.i.i.1, %i.ky
  br i1 %i.kz, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bc, %bb.bd
  %.sroa.06.010.i.i.1 = phi ptr [ %.sroa.06.0.i.i.1, %bb.bd ], [ %.sroa.06.09.i.i.1, %bb.bc ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.1, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !850
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 7496 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !883
  %i.le = icmp eq i64 %i.ld, 72057594037927935
  br i1 %i.le, label %bb.bd, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1

bb.bd:                                            ; preds = %.lr.ph.i.i.1
  store i64 %i.jr, ptr %i.lc, align 8, !tbaa !883
  %.sroa.06.0.i.i.1 = load ptr, ptr %.sroa.06.010.i.i.1, align 8, !tbaa !882 ; 2 uses
  %i.lf = icmp eq ptr %.sroa.06.0.i.i.1, %i.ky
  br i1 %i.lf, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1, !llvm.loop !9

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1: ; preds = %.lr.ph.i.i.1, %bb.bd, %bb.bc, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.lg = add nuw i64 %.sroa.5.017.i, 2           ; 2 uses
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa: ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1
  %lcmp.mod339.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod339.not, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.5.017.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.lg, %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod340 = trunc i64 %i.jz to i1
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.lh = icmp ult i64 %.sroa.5.017.i.epil.init, 8
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.sroa.5.017.i.epil.init
  %i.lj = getelementptr [8 x i8], ptr %i.ju, i64 %.sroa.5.017.i.epil.init
  %i.lk = getelementptr i8, ptr %i.lj, i64 -64
  %.0.i.i.i.epil = select i1 %i.lh, ptr %i.li, ptr %i.lk
  %i.ll = load ptr, ptr %.0.i.i.i.epil, align 8, !tbaa !863 ; 2 uses
  %.not.i82.epil = icmp eq ptr %i.ll, null
  br i1 %.not.i82.epil, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2776
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !881 ; 3 uses
  %.sroa.06.09.i.i.epil = load ptr, ptr %i.ln, align 8, !tbaa !882 ; 2 uses
  %i.lo = icmp eq ptr %.sroa.06.09.i.i.epil, %i.ln
  br i1 %i.lo, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.be, %bb.bf
  %.sroa.06.010.i.i.epil = phi ptr [ %.sroa.06.0.i.i.epil, %bb.bf ], [ %.sroa.06.09.i.i.epil, %bb.be ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.epil, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !850
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 7496 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !883
  %i.lt = icmp eq i64 %i.ls, 72057594037927935
  br i1 %i.lt, label %bb.bf, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit

bb.bf:                                            ; preds = %.lr.ph.i.i.epil
  store i64 %i.jr, ptr %i.lr, align 8, !tbaa !883
  %.sroa.06.0.i.i.epil = load ptr, ptr %.sroa.06.010.i.i.epil, align 8, !tbaa !882 ; 2 uses
  %i.lu = icmp eq ptr %.sroa.06.0.i.i.epil, %i.ln
  br i1 %i.lu, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !9

_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit: ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.bf, %bb.be, %.lr.ph.i.epil.preheader, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.lv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store ptr %i.lx, ptr %i.lw, align 8, !tbaa !877
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 1, ptr %i.ly, align 8, !tbaa !878
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ma, align 8, !tbaa !879
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.lv, align 4, !tbaa !876
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %.2, ptr noundef nonnull %8)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit
  %i.mc = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.bh unwind label %bb.bj     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.md = load ptr, ptr %i.lz, align 8, !tbaa !880 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.md, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bh, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i ], [ %i.md, %bb.bh ] ; 2 uses
  %i.me = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !846 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i.i83 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i.i83, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.bh
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !877
  %i.mg = load i64, ptr %i.ly, align 8, !tbaa !878
  %i.mh = shl i64 %i.mg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mf, i8 0, i64 %i.mh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false)
  %i.mi = load ptr, ptr %i.lw, align 8, !tbaa !877 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.lx
  br i1 %i.mj, label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.mk = load i64, ptr %i.ly, align 8, !tbaa !878
  %i.ml = shl i64 %i.mk, 3
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #34
  br label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit

_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit:        ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.loopexit172

bb.bj:                                            ; preds = %bb.bg, %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.cb

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155: ; preds = %.lr.ph209, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102
  %i.mn = phi ptr [ %i.iw, %.lr.ph209 ], [ %i.nr, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102 ]
  %.022208 = phi i64 [ 0, %.lr.ph209 ], [ %i.no, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store i8 0, ptr %i.jc, align 4, !tbaa !876
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !877
  store i64 1, ptr %i.jf, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jh, align 8, !tbaa !879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.mo = icmp ult i64 %.022208, 8                ; 2 uses
  %i.mp = load ptr, ptr %i.a, align 8
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.022208
  %i.mr = getelementptr [8 x i8], ptr %i.mn, i64 %.022208
  %i.ms = getelementptr i8, ptr %i.mr, i64 -64
  %.0.i = select i1 %i.mo, ptr %i.mq, ptr %i.ms
  %i.mt = load ptr, ptr %.0.i, align 8, !tbaa !863
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i8 0, i64 24, i1 false)
  store i64 1, ptr %10, align 8, !tbaa !844
  store ptr %i.mt, ptr %i.jk, align 8, !tbaa !863
  %.pre236 = load ptr, ptr %i.es, align 8
  %.pre235 = load ptr, ptr %i.eq, align 8
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.pre235, i64 %.022208
  %i.mv = getelementptr [4 x i8], ptr %.pre236, i64 %.022208
  %i.mw = getelementptr i8, ptr %i.mv, i64 -32
  %.0.i87 = select i1 %i.mo, ptr %i.mu, ptr %i.mw
  %i.mx = load i32, ptr %.0.i87, align 4, !tbaa !1544
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %10, i32 noundef %i.mx, ptr noundef nonnull %9)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155
  %.pr.i.i88 = load i64, ptr %10, align 8, !tbaa !844
  %.not1.i.i89 = icmp eq i64 %.pr.i.i88, 0
  br i1 %.not1.i.i89, label %bb.bl, label %.lr.ph.preheader.i.i90

.lr.ph.preheader.i.i90:                           ; preds = %bb.bk
  store i64 0, ptr %10, align 8, !tbaa !844
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.preheader.i.i90, %bb.bk
  %i.my = load ptr, ptr %i.jl, align 8, !tbaa !862 ; 5 uses
  %i.mz = load ptr, ptr %i.jm, align 8, !tbaa !861
  %.not.i.i.i.i91 = icmp eq ptr %i.mz, %i.my
  br i1 %.not.i.i.i.i91, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92: ; preds = %bb.bl
  store ptr %i.my, ptr %i.jm, align 8, !tbaa !861
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92, %bb.bl
  %.not.i.i.i1.i94 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i1.i94, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96, label %bb.bm

bb.bm:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93
  %i.na = load ptr, ptr %i.jn, align 8, !tbaa !869
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #34
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96
end_hunk_4
