Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityE:bb.a
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #34
  %.pr.i.i860 = load i64, ptr %55, align 8, !tbaa !930
  %.not1.i.i861 = icmp eq i64 %.pr.i.i860, 0
  br i1 %.not1.i.i861, label %bb.kg, label %.lr.ph.preheader.i.i862

.lr.ph.preheader.i.i862:                          ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit
  store i64 0, ptr %55, align 8, !tbaa !930
  br label %bb.kg

bb.kg:                                            ; preds = %.lr.ph.preheader.i.i862, %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit
  %i.bff = load ptr, ptr %i.axq, align 8, !tbaa !943 ; 5 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %55, i64 88 ; 2 uses
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !941
  %.not.i.i.i.i863 = icmp eq ptr %i.bfh, %i.bff
  br i1 %.not.i.i.i.i863, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.kg
  store ptr %i.bff, ptr %i.bfg, align 8, !tbaa !941
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.kg
  %.not.i.i.i1.i864 = icmp eq ptr %i.bff, null
  br i1 %.not.i.i.i1.i864, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit, label %bb.kh

bb.kh:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i
  %i.bfi = getelementptr inbounds nuw i8, ptr %55, i64 96
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !942
  %i.bfk = ptrtoint ptr %i.bfj to i64
  %i.bfl = ptrtoint ptr %i.bff to i64
  %i.bfm = sub i64 %i.bfk, %i.bfl
  call void @_ZdlPvm(ptr noundef nonnull %i.bff, i64 noundef %i.bfm) #33
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #34
  br label %.thread1364

bb.ki:                                            ; preds = %._crit_edge1604
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  br label %bb.kj

bb.kj:                                            ; preds = %.loopexit1431, %.loopexit.split-lp1432, %.loopexit1426, %.loopexit.split-lp1427, %.loopexit1421, %.loopexit.split-lp1422, %.loopexit1416, %.loopexit.split-lp1417, %bb.ki
  %.pn394.pn = phi { ptr, i32 } [ %i.bfn, %bb.ki ], [ %lpad.loopexit.split-lp1429, %.loopexit.split-lp1427 ], [ %lpad.loopexit.split-lp1424, %.loopexit.split-lp1422 ], [ %lpad.loopexit.split-lp1419, %.loopexit.split-lp1417 ], [ %lpad.loopexit1418, %.loopexit1416 ], [ %lpad.loopexit1423, %.loopexit1421 ], [ %lpad.loopexit1428, %.loopexit1426 ], [ %lpad.loopexit1433, %.loopexit1431 ], [ %lpad.loopexit.split-lp1434, %.loopexit.split-lp1432 ]
  %.pr.i.i865 = load i64, ptr %58, align 8, !tbaa !1768
  %.not1.i.i866 = icmp eq i64 %.pr.i.i865, 0
  br i1 %.not1.i.i866, label %bb.kk, label %.lr.ph.preheader.i.i867

.lr.ph.preheader.i.i867:                          ; preds = %bb.kj
  store i64 0, ptr %58, align 8, !tbaa !1768
  br label %bb.kk

bb.kk:                                            ; preds = %.lr.ph.preheader.i.i867, %bb.kj
  %i.bfo = load ptr, ptr %i.axz, align 8, !tbaa !1779 ; 5 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 2 uses
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !1777
  %.not.i.i.i.i868 = icmp eq ptr %i.bfq, %i.bfo
  br i1 %.not.i.i.i.i868, label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i870, label %_ZSt8_DestroyIPPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i869

_ZSt8_DestroyIPPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i869: ; preds = %bb.kk
  store ptr %i.bfo, ptr %i.bfp, align 8, !tbaa !1777
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i870

_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i870: ; preds = %_ZSt8_DestroyIPPNSt7__cxx114listISt10unique_ptrIN7rocksdb12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i869, %bb.kk
  %.not.i.i.i1.i871 = icmp eq ptr %i.bfo, null
  br i1 %.not.i.i.i1.i871, label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872, label %bb.kl

bb.kl:                                            ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i870
  %i.bfr = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !1778
  %i.bft = ptrtoint ptr %i.bfs to i64
  %i.bfu = ptrtoint ptr %i.bfo to i64
  %i.bfv = sub i64 %i.bft, %i.bfu
  call void @_ZdlPvm(ptr noundef nonnull %i.bfo, i64 noundef %i.bfv) #33
  br label %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872

_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872: ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EE5clearEv.exit.i870, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  %.pr.i.i873 = load i64, ptr %57, align 8, !tbaa !1760
  %.not1.i.i874 = icmp eq i64 %.pr.i.i873, 0
  br i1 %.not1.i.i874, label %bb.km, label %.lr.ph.preheader.i.i875

.lr.ph.preheader.i.i875:                          ; preds = %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872
  store i64 0, ptr %57, align 8, !tbaa !1760
  br label %bb.km

bb.km:                                            ; preds = %.lr.ph.preheader.i.i875, %_ZN7rocksdb10autovectorIPNSt7__cxx114listISt10unique_ptrINS_12FlushJobInfoESt14default_deleteIS4_EESaIS7_EEELm8EED2Ev.exit872
  %i.bfw = load ptr, ptr %i.axw, align 8, !tbaa !879 ; 5 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %57, i64 88 ; 2 uses
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !878
  %.not.i.i.i.i876 = icmp eq ptr %i.bfy, %i.bfw
  br i1 %.not.i.i.i.i876, label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878, label %_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i877

_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i877: ; preds = %bb.km
  store ptr %i.bfw, ptr %i.bfx, align 8, !tbaa !878
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878: ; preds = %_ZSt8_DestroyIPPN7rocksdb12FileMetaDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i877, %bb.km
  %.not.i.i.i1.i879 = icmp eq ptr %i.bfw, null
  br i1 %.not.i.i.i1.i879, label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880, label %bb.kn

bb.kn:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878
  %i.bfz = getelementptr inbounds nuw i8, ptr %57, i64 96
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !1017
  %i.bgb = ptrtoint ptr %i.bga to i64
  %i.bgc = ptrtoint ptr %i.bfw to i64
  %i.bgd = sub i64 %i.bgb, %i.bgc
  call void @_ZdlPvm(ptr noundef nonnull %i.bfw, i64 noundef %i.bgd) #33
  br label %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880

_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880: ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EE5clearEv.exit.i878, %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #34
  %.pr.i.i881 = load i64, ptr %56, align 8, !tbaa !1757
  %.not1.i.i882 = icmp eq i64 %.pr.i.i881, 0
  br i1 %.not1.i.i882, label %bb.ko, label %.lr.ph.preheader.i.i883

.lr.ph.preheader.i.i883:                          ; preds = %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880
  store i64 0, ptr %56, align 8, !tbaa !1757
  br label %bb.ko

bb.ko:                                            ; preds = %.lr.ph.preheader.i.i883, %_ZN7rocksdb10autovectorIPNS_12FileMetaDataELm8EED2Ev.exit880
  %i.bge = load ptr, ptr %i.axt, align 8, !tbaa !1774 ; 5 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 2 uses
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !1772
  %.not.i.i.i.i884 = icmp eq ptr %i.bgg, %i.bge
  br i1 %.not.i.i.i.i884, label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886, label %_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i885

_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i885: ; preds = %bb.ko
  store ptr %i.bge, ptr %i.bgf, align 8, !tbaa !1772
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886: ; preds = %_ZSt8_DestroyIPPKN7rocksdb10autovectorIPNS0_16ReadOnlyMemTableELm8EEES6_EvT_S8_RSaIT0_E.exit.i.i.i.i885, %bb.ko
  %.not.i.i.i1.i887 = icmp eq ptr %i.bge, null
  br i1 %.not.i.i.i1.i887, label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888, label %bb.kp

bb.kp:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886
  %i.bgh = getelementptr inbounds nuw i8, ptr %56, i64 96
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !1773
  %i.bgj = ptrtoint ptr %i.bgi to i64
  %i.bgk = ptrtoint ptr %i.bge to i64
  %i.bgl = sub i64 %i.bgj, %i.bgk
  call void @_ZdlPvm(ptr noundef nonnull %i.bge, i64 noundef %i.bgl) #33
  br label %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888

_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888: ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EE5clearEv.exit.i886, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #34
  %.pr.i.i889 = load i64, ptr %55, align 8, !tbaa !930
  %.not1.i.i890 = icmp eq i64 %.pr.i.i889, 0
  br i1 %.not1.i.i890, label %bb.kq, label %.lr.ph.preheader.i.i891

.lr.ph.preheader.i.i891:                          ; preds = %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888
  store i64 0, ptr %55, align 8, !tbaa !930
  br label %bb.kq

bb.kq:                                            ; preds = %.lr.ph.preheader.i.i891, %_ZN7rocksdb10autovectorIPKNS0_IPNS_16ReadOnlyMemTableELm8EEELm8EED2Ev.exit888
  %i.bgm = load ptr, ptr %i.axq, align 8, !tbaa !943 ; 5 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %55, i64 88 ; 2 uses
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !941
  %.not.i.i.i.i892 = icmp eq ptr %i.bgo, %i.bgm
  br i1 %.not.i.i.i.i892, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i893

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i893: ; preds = %bb.kq
  store ptr %i.bgm, ptr %i.bgn, align 8, !tbaa !941
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i893, %bb.kq
  %.not.i.i.i1.i895 = icmp eq ptr %i.bgm, null
  br i1 %.not.i.i.i1.i895, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit896, label %bb.kr

bb.kr:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894
  %i.bgp = getelementptr inbounds nuw i8, ptr %55, i64 96
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !942
  %i.bgr = ptrtoint ptr %i.bgq to i64
  %i.bgs = ptrtoint ptr %i.bgm to i64
  %i.bgt = sub i64 %i.bgr, %i.bgs
  call void @_ZdlPvm(ptr noundef nonnull %i.bgm, i64 noundef %i.bgt) #33
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit896

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit896: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i894, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #34
  br label %.thread2195

.thread1364:                                      ; preds = %.preheader1436, %bb.gx, %.loopexit1438, %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit, %.thread1328
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #34
  store i64 0, ptr %60, align 8, !tbaa !1785
  %i.bgu = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %60, i64 8
  store ptr %i.bgv, ptr %i.bgu, align 8, !tbaa !1786
  %i.bgw = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgw, i8 0, i64 24, i1 false)
  %i.bgx = load i32, ptr %i.a, align 4, !tbaa !669 ; 4 uses
  %i.bgy = icmp ugt i32 %i.bgx, 8
  br i1 %i.bgy, label %bb.ks, label %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit

bb.ks:                                            ; preds = %.thread1364
  %i.bgz = sext i32 %i.bgx to i64
  %i.bha = add nsw i64 %i.bgz, -8                 ; 3 uses
  %i.bhb = icmp slt i32 %i.bgx, 8
  br i1 %i.bhb, label %bb.kt, label %72

bb.kt:                                            ; preds = %bb.ks
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #35
          to label %.noexc897 unwind label %bb.kz

.noexc897:                                        ; preds = %bb.kt
  unreachable

72:                                               ; preds = %bb.ks
  %73 = getelementptr inbounds nuw i8, ptr %60, i64 40 ; 2 uses
  %.not2133 = icmp eq i64 %i.bha, 0
  br i1 %.not2133, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.a, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.a: ; preds = %72
  %i.bhc = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %74 = load ptr, ptr %i.bhc, align 16, !tbaa !780
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %75 = load ptr, ptr %i.bhd, align 8, !tbaa !780
  %76 = icmp ne ptr %74, %75
  br label %.lr.ph1607

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 2 uses
  %78 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bha) #36
          to label %.noexc898 unwind label %bb.kz ; 4 uses

.noexc898:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.bhe = load ptr, ptr %i.bgw, align 8, !tbaa !1787 ; 4 uses
  %i.bhf = load ptr, ptr %77, align 8, !tbaa !1788
  %i.bhg = ptrtoint ptr %i.bhf to i64
  %i.bhh = ptrtoint ptr %i.bhe to i64             ; 2 uses
  %i.bhi = sub i64 %i.bhg, %i.bhh                 ; 2 uses
  %i.bhj = icmp sgt i64 %i.bhi, 0
  br i1 %i.bhj, label %bb.ku, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

bb.ku:                                            ; preds = %.noexc898
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %78, ptr align 1 %i.bhe, i64 %i.bhi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.ku, %.noexc898
  %.not.i8.i.i = icmp eq ptr %i.bhe, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.bhk = load ptr, ptr %73, align 8, !tbaa !1789
  %i.bhl = ptrtoint ptr %i.bhk to i64
  %i.bhm = sub i64 %i.bhl, %i.bhh
  call void @_ZdlPvm(ptr noundef nonnull %i.bhe, i64 noundef %i.bhm) #33
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.kv, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %78, ptr %i.bgw, align 8, !tbaa !1787
  store ptr %78, ptr %77, align 8, !tbaa !1788
  %i.bhn = getelementptr inbounds nuw i8, ptr %78, i64 %i.bha
  store ptr %i.bhn, ptr %73, align 8, !tbaa !1789
  %.pre1806 = load i32, ptr %i.a, align 4, !tbaa !669
  br label %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit

_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit:    ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %.thread1364
  %i.bho = phi i32 [ %.pre1806, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %i.bgx, %.thread1364 ]
  %i.bhp = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.bhq = load ptr, ptr %i.bhp, align 16, !tbaa !780
  %i.bhr = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !780
  %i.bht = icmp ne ptr %i.bhq, %i.bhs
  %.not3651605 = icmp eq i32 %i.bho, 0
  br i1 %.not3651605, label %._crit_edge1608, label %.lr.ph1607

.lr.ph1607:                                       ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.a, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit
  %79 = phi i1 [ %76, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.a ], [ %i.bht, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit ]
  %i.bhu = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bhv = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.bhw = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 4 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %60, i64 40 ; 3 uses
  br label %bb.la

._crit_edge1608:                                  ; preds = %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit, %_ZN7rocksdb10autovectorIhLm8EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %62, i8 0, i64 32, i1 false)
  %i.bhy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit unwind label %bb.kw ; 4 uses

bb.kw:                                            ; preds = %._crit_edge1608
  %i.bhz = landingpad { ptr, i32 }
          cleanup
  %i.bia = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !785 ; 2 uses
  %.not.i.i899 = icmp eq ptr %i.bib, null
  br i1 %.not.i.i899, label %.body900, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.bic = invoke noundef zeroext i1 %i.bib(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %62, i32 noundef 3)
          to label %.body900 unwind label %bb.ky  ; 0 uses

bb.ky:                                            ; preds = %bb.kx
  %i.bid = landingpad { ptr, i32 }
          catch ptr null
  %i.bie = extractvalue { ptr, i32 } %i.bid, 0
  call void @__clang_call_terminate(ptr %i.bie) #37
  unreachable

bb.kz:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, %bb.kt
  %i.bif = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.la:                                            ; preds = %.lr.ph1607, %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit
  %indvars.iv1700 = phi i64 [ 0, %.lr.ph1607 ], [ %indvars.iv.next1701, %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit ] ; 7 uses
  %i.big = load i8, ptr %0, align 8, !tbaa !694
  %i.bih = icmp eq i8 %i.big, 0
  %or.cond = and i1 %79, %i.bih
  br i1 %or.cond, label %bb.lb, label %.thread1366

bb.lb:                                            ; preds = %bb.la
  %i.bii = load ptr, ptr %i.bhu, align 8, !tbaa !1740, !noalias !1790 ; 2 uses
  %i.bij = load ptr, ptr %i.bhv, align 8, !tbaa !1001, !noalias !1790
  %i.bik = load ptr, ptr %i.lz, align 8, !tbaa !1000, !noalias !1790
  %i.bil = ptrtoint ptr %i.bii to i64
  %i.bim = ptrtoint ptr %i.bij to i64
  %i.bin = sub i64 %i.bil, %i.bim
  %i.bio = add nsw i64 %i.bin, %indvars.iv1700    ; 5 uses
  %i.bip = icmp sgt i64 %i.bio, -1
  br i1 %i.bip, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  %i.biq = icmp samesign ult i64 %i.bio, 512
  br i1 %i.biq, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bii, i64 %indvars.iv1700
  br label %_ZNSt5dequeIbSaIbEEixEm.exit

bb.le:                                            ; preds = %bb.lc
  %i.bis = lshr i64 %i.bio, 9
  br label %bb.lg

bb.lf:                                            ; preds = %bb.lb
  %i.bit = ashr i64 %i.bio, 9
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.biu = phi i64 [ %i.bis, %bb.le ], [ %i.bit, %bb.lf ] ; 2 uses
  %i.biv = getelementptr inbounds [8 x i8], ptr %i.bik, i64 %i.biu
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !974, !noalias !1790
  %i.bix = shl nsw i64 %i.biu, 9
  %i.biy = sub nsw i64 %i.bio, %i.bix
  %i.biz = getelementptr inbounds i8, ptr %i.biw, i64 %i.biy
  br label %_ZNSt5dequeIbSaIbEEixEm.exit

_ZNSt5dequeIbSaIbEEixEm.exit:                     ; preds = %bb.ld, %bb.lg
  %storemerge.i.i.i.i = phi ptr [ %i.biz, %bb.lg ], [ %i.bir, %bb.ld ]
  %i.bja = load i8, ptr %storemerge.i.i.i.i, align 1, !tbaa !87, !range !83, !noundef !84
  %i.bjb = trunc nuw i8 %i.bja to i1
  br i1 %i.bjb, label %.thread1366, label %bb.lh

bb.lh:                                            ; preds = %_ZNSt5dequeIbSaIbEEixEm.exit
  %i.bjc = icmp samesign ult i64 %indvars.iv1700, 8
  %i.bjd = load ptr, ptr %i.d, align 8
  %i.bje = getelementptr inbounds nuw [8 x i8], ptr %i.bjd, i64 %indvars.iv1700
  %i.bjf = load ptr, ptr %i.f, align 8
  %i.bjg = getelementptr [8 x i8], ptr %i.bjf, i64 %indvars.iv1700
  %i.bjh = getelementptr i8, ptr %i.bjg, i64 -64
  %.0.i902 = select i1 %i.bjc, ptr %i.bje, ptr %i.bjh
  %i.bji = load ptr, ptr %.0.i902, align 8, !tbaa !606 ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 61
  %i.bjk = load atomic i8, ptr %i.bjj monotonic, align 1, !range !83, !noundef !84
  %i.bjl = trunc nuw i8 %i.bjk to i1
  br i1 %i.bjl, label %.thread1366, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bjm = load ptr, ptr %29, align 8, !tbaa !963
  %i.bjn = getelementptr inbounds nuw [8 x i8], ptr %i.bjm, i64 %indvars.iv1700
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !962
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1208 ; 2 uses
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !611
  %.not1405 = icmp eq ptr %i.bjq, %i.bjp
  br i1 %.not1405, label %.thread1366, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bji, i64 2824 ; 2 uses
  %i.bjs = load i32, ptr %i.bjr, align 8, !tbaa !781
  %i.bjt = add nsw i32 %i.bjs, 1
  store i32 %i.bjt, ptr %i.bjr, align 8, !tbaa !781
  br label %.thread1366

.thread1366:                                      ; preds = %bb.la, %_ZNSt5dequeIbSaIbEEixEm.exit, %bb.lh, %bb.lj, %bb.li
  %i.bju = phi i8 [ 0, %bb.li ], [ 1, %bb.lj ], [ 0, %bb.lh ], [ 0, %_ZNSt5dequeIbSaIbEEixEm.exit ], [ 0, %bb.la ] ; 3 uses
  %i.bjv = load i64, ptr %60, align 8, !tbaa !1785 ; 2 uses
  %i.bjw = icmp ult i64 %i.bjv, 8
  br i1 %i.bjw, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %.thread1366
  %i.bjx = load ptr, ptr %i.bgu, align 8, !tbaa !1786
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 %i.bjv
  store i8 0, ptr %i.bjy, align 1, !tbaa !65
  %i.bjz = load ptr, ptr %i.bgu, align 8, !tbaa !1786
  %i.bka = load i64, ptr %60, align 8, !tbaa !1785 ; 2 uses
  %i.bkb = add i64 %i.bka, 1
  store i64 %i.bkb, ptr %60, align 8, !tbaa !1785
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjz, i64 %i.bka
  store i8 %i.bju, ptr %i.bkc, align 1, !tbaa !65
  br label %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit

bb.ll:                                            ; preds = %.thread1366
  %i.bkd = load ptr, ptr %i.bhw, align 8, !tbaa !1788 ; 3 uses
  %i.bke = load ptr, ptr %i.bhx, align 8, !tbaa !1789
  %.not.i.i904 = icmp eq ptr %i.bkd, %i.bke
  br i1 %.not.i.i904, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  store i8 %i.bju, ptr %i.bkd, align 1, !tbaa !65
  %i.bkf = load ptr, ptr %i.bhw, align 8, !tbaa !1788
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 1
  store ptr %i.bkg, ptr %i.bhw, align 8, !tbaa !1788
  br label %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit

bb.ln:                                            ; preds = %bb.ll
  %i.bkh = load ptr, ptr %i.bgw, align 8, !tbaa !1787 ; 4 uses
  %i.bki = ptrtoint ptr %i.bkd to i64
  %i.bkj = ptrtoint ptr %i.bkh to i64             ; 2 uses
  %i.bkk = sub i64 %i.bki, %i.bkj                 ; 7 uses
  %i.bkl = icmp eq i64 %i.bkk, 9223372036854775807
  br i1 %i.bkl, label %bb.lo, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.lo:                                            ; preds = %bb.ln
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
          to label %.noexc908 unwind label %.loopexit.split-lp

.noexc908:                                        ; preds = %bb.lo
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ln
  %.sroa.speculated.i.i.i.i905 = call i64 @llvm.umax.i64(i64 %i.bkk, i64 1)
  %i.bkm = add i64 %.sroa.speculated.i.i.i.i905, %i.bkk ; 2 uses
  %i.bkn = icmp ult i64 %i.bkm, %i.bkk
  %i.bko = call i64 @llvm.umin.i64(i64 %i.bkm, i64 9223372036854775807)
  %i.bkp = select i1 %i.bkn, i64 9223372036854775807, i64 %i.bko ; 3 uses
  %.not.i.i.i.i906 = icmp ne i64 %i.bkp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i906)
  %i.bkq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bkp) #36
          to label %.noexc909 unwind label %.loopexit1415 ; 4 uses

.noexc909:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 %i.bkk ; 2 uses
  store i8 %i.bju, ptr %i.bkr, align 1, !tbaa !65
  %i.bks = icmp sgt i64 %i.bkk, 0
  br i1 %i.bks, label %bb.lp, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.lp:                                            ; preds = %.noexc909
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bkq, ptr align 1 %i.bkh, i64 %i.bkk, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.lp, %.noexc909
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bkr, i64 1
  %.not.i17.i.i.i907 = icmp eq ptr %i.bkh, null
  br i1 %.not.i17.i.i.i907, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.lq

bb.lq:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.bku = load ptr, ptr %i.bhx, align 8, !tbaa !1789
  %i.bkv = ptrtoint ptr %i.bku to i64
  %i.bkw = sub i64 %i.bkv, %i.bkj
  call void @_ZdlPvm(ptr noundef nonnull %i.bkh, i64 noundef %i.bkw) #33
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.lq, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bkq, ptr %i.bgw, align 8, !tbaa !1787
  store ptr %i.bkt, ptr %i.bhw, align 8, !tbaa !1788
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkq, i64 %i.bkp
  store ptr %i.bkx, ptr %i.bhx, align 8, !tbaa !1789
  br label %_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit

_ZN7rocksdb10autovectorIhLm8EE9push_backEOh.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.lm, %bb.lk
  %indvars.iv.next1701 = add nuw nsw i64 %indvars.iv1700, 1 ; 2 uses
  %i.bky = load i32, ptr %i.a, align 4, !tbaa !669
  %i.bkz = zext i32 %i.bky to i64
  %.not365 = icmp eq i64 %indvars.iv.next1701, %i.bkz
  br i1 %.not365, label %._crit_edge1608, label %bb.la, !llvm.loop !1695

.loopexit1415:                                    ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

.loopexit.split-lp:                               ; preds = %bb.lo
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit:      ; preds = %._crit_edge1608
  store ptr %i.a, ptr %i.bhy, align 16, !tbaa !1018
  %.sroa.51146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhy, i64 8
  store ptr %60, ptr %.sroa.51146.0..sroa_idx, align 8, !tbaa !1020
  %.sroa.61147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhy, i64 16
  store ptr %26, ptr %.sroa.61147.0..sroa_idx, align 16, !tbaa !1022
  store ptr %i.bhy, ptr %62, align 8, !tbaa !668
  %i.bla = getelementptr inbounds nuw i8, ptr %61, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvEZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS1_10autovectorINS2_10BGFlushArgELm8EEEPbPNS1_10JobContextEPNS1_9LogBufferENS1_3Env8PriorityEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.bla, align 8, !tbaa !784
  %i.blb = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %62, i64 16, i1 false), !tbaa.struct !1023
  store ptr @"_ZNSt17_Function_handlerIFvvEZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS1_10autovectorINS2_10BGFlushArgELm8EEEPbPNS1_10JobContextEPNS1_9LogBufferENS1_3Env8PriorityEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.blb, align 8, !tbaa !785
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #34
  %i.blc = load i8, ptr %0, align 8, !tbaa !694
  %i.bld = icmp eq i8 %i.blc, 0
  %i.ble = load i32, ptr %i.a, align 4            ; 3 uses
  %.not3661609 = icmp eq i32 %i.ble, 0
  %or.cond1632 = select i1 %i.bld, i1 true, i1 %.not3661609
  br i1 %or.cond1632, label %.loopexit, label %.lr.ph1611

.lr.ph1611:                                       ; preds = %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit
  %i.blf = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.blg = getelementptr inbounds nuw i8, ptr %34, i64 24
end_hunk_0
