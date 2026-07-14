inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb9DataTable17GetPartitionStatsERNS_13ClientContextE:bb.a
bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aa, align 8, !tbaa !268
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !270
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #23, !inline_history !1448
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #23, !inline_history !1448
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.i ], [ %i.an, %bb.j ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.k, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i, !prof !81

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #23
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.x
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1449

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !1445
  br label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.aq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %bb.e ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #44
  br label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.m:                                             ; preds = %.noexc, %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %.noexc15, %.noexc14, %.noexc13, %bb.c, %_ZN6duckdb12LocalStorage3GetERNS_13ClientContextERNS_16AttachedDatabaseE.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.as, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ar, %bb.m ]
  call void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK6duckdb18RowGroupCollection17GetPartitionStatsEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector.1560") align 8, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb12LocalStorage17GetPartitionStatsERNS_9DataTableE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.1560") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(124) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.1693", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call ptr @_ZNK6duckdb17LocalTableManager10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %2) ; 2 uses
  store ptr %i.b, ptr %3, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load ptr, ptr %3, align 8, !tbaa !1411
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = call noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @_ZNK6duckdb18RowGroupCollection17GetPartitionStatsEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector.1560") align 8 %0, ptr noundef nonnull align 8 dereferenceable(217) %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1445   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1447 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !270
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !1450
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !1450
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i, !prof !81

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1449

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb19PartitionStatisticsEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1445
  br label %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #44
  br label %_ZNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19PartitionStatisticsES1_EvT_S3_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 1, 0) i64 @_ZNK6duckdb9DataTable10MaxThreadsERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1430
  %i.e = and i64 %i.d, -2048
  %i.f = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6duckdb12ClientConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 126
  %i.h = load i8, ptr %i.g, align 2, !tbaa !1451, !range !249, !noundef !67
  %i.i = trunc nuw i8 %i.h to i1
  %spec.select = select i1 %i.i, i64 2048, i64 %i.e
  %i.j = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.k = tail call noundef i64 @_ZNK6duckdb18RowGroupCollection12GetTotalRowsEv(ptr noundef nonnull align 8 dereferenceable(217) %i.j)
  %i.l = udiv i64 %i.k, %spec.select
  %i.m = add nuw nsw i64 %i.l, 1
  ret i64 %i.m
}

declare noundef nonnull align 8 dereferenceable(336) ptr @_ZN6duckdb12ClientConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb9DataTable12GetTotalRowsEv(ptr noundef nonnull align 8 dereferenceable(124) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb18RowGroupCollection12GetTotalRowsEv(ptr noundef nonnull align 8 dereferenceable(217) %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9DataTable22InitializeParallelScanERNS_13ClientContextERNS_22ParallelTableScanStateERKNS_6vectorINS_11ColumnIndexELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(240) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.duckdb::optional_ptr.1693", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !825, !nonnull !67, !align !68
  %i.c = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN6duckdb15DuckTransaction3GetERNS_13ClientContextERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(408) %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15DuckTransaction15GetLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  tail call void @_ZN6duckdb18RowGroupCollection22InitializeParallelScanERNS_27ParallelCollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call ptr @_ZNK6duckdb17LocalTableManager10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(124) %0) ; 2 uses
  store ptr %i.h, ptr %4, align 8
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %_ZN6duckdb12LocalStorage22InitializeParallelScanERNS_9DataTableERNS_27ParallelCollectionScanStateE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = load ptr, ptr %4, align 8, !tbaa !1411
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = call noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  call void @_ZN6duckdb18RowGroupCollection22InitializeParallelScanERNS_27ParallelCollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %i.j)
  br label %_ZN6duckdb12LocalStorage22InitializeParallelScanERNS_9DataTableERNS_27ParallelCollectionScanStateE.exit

_ZN6duckdb12LocalStorage22InitializeParallelScanERNS_9DataTableERNS_27ParallelCollectionScanStateE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

declare void @_ZN6duckdb18RowGroupCollection22InitializeParallelScanERNS_27ParallelCollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12LocalStorage22InitializeParallelScanERNS_9DataTableERNS_27ParallelCollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.1693", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZNK6duckdb17LocalTableManager10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %1) ; 2 uses
  store ptr %i.b, ptr %3, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.d = load ptr, ptr %3, align 8, !tbaa !1411
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = call noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @_ZN6duckdb18RowGroupCollection22InitializeParallelScanERNS_27ParallelCollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb9DataTable16NextParallelScanERNS_13ClientContextERNS_22ParallelTableScanStateERNS_14TableScanStateE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(528) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.duckdb::optional_ptr.1693", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = tail call noundef zeroext i1 @_ZN6duckdb18RowGroupCollection16NextParallelScanERNS_13ClientContextERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.b, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.d = load ptr, ptr %3, align 8, !tbaa !1452
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !825, !nonnull !67, !align !68
  %i.j = tail call noundef nonnull align 8 dereferenceable(480) ptr @_ZN6duckdb15DuckTransaction3GetERNS_13ClientContextERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(408) %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15DuckTransaction15GetLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(480) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = tail call ptr @_ZNK6duckdb17LocalTableManager10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(124) %0) ; 2 uses
  store ptr %i.n, ptr %4, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit.thread, label %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit

_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.e

_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.p = load ptr, ptr %4, align 8, !tbaa !1411
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = call noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.t = call noundef zeroext i1 @_ZN6duckdb18RowGroupCollection16NextParallelScanERNS_13ClientContextERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(168) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit
  call void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !1452
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = call noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit.thread, %bb.d, %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit, %bb.b
  %.1 = phi i64 [ %i.g, %bb.b ], [ %i.x, %bb.d ], [ 0, %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit ], [ 0, %_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE.exit.thread ]
  ret i64 %.1
}

declare noundef zeroext i1 @_ZN6duckdb18RowGroupCollection16NextParallelScanERNS_13ClientContextERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb12LocalStorage16NextParallelScanERNS_13ClientContextERNS_9DataTableERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(168) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.1693", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZNK6duckdb17LocalTableManager10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %2) ; 2 uses
  store ptr %i.b, ptr %5, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.c = load ptr, ptr %5, align 8, !tbaa !1411
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = call noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = call noundef zeroext i1 @_ZN6duckdb18RowGroupCollection16NextParallelScanERNS_13ClientContextERNS_27ParallelCollectionScanStateERNS_19CollectionScanStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.f, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9DataTable4ScanERNS_15DuckTransactionERNS_9DataChunkERNS_14TableScanStateE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(528) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb19CollectionScanState4ScanERNS_15DuckTransactionERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15DuckTransaction15GetLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(480) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb14TableScanState12GetColumnIdsEv(ptr noundef nonnull align 8 dereferenceable(528) %3) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1455, !nonnull !67, !align !68
  %i.g = tail call noundef zeroext i1 @_ZN6duckdb19CollectionScanState4ScanERNS_15DuckTransactionERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(480) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb19CollectionScanState4ScanERNS_15DuckTransactionERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(480), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12LocalStorage4ScanERNS_19CollectionScanStateERKNS_6vectorINS_12StorageIndexELb1ESaIS4_EEERNS_9DataChunkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1455, !nonnull !67, !align !68
  %i.c = tail call noundef zeroext i1 @_ZN6duckdb19CollectionScanState4ScanERNS_15DuckTransactionERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(480) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %3) ; 0 uses
  ret void
}

end_hunk_0
