Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression?download=true
inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZN6duckdb11ZSTDStorage8CompressERNS_16CompressionStateERNS_6VectorEm:bb.a
_ZN6duckdb20ZSTDCompressionState7AddNullEv.exit:  ; preds = %bb.v, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aw
  invoke void @_ZN6duckdb20ZSTDCompressionState9AddStringERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %bb.x unwind label %bb.w

bb.x:                                             ; preds = %_ZN6duckdb20ZSTDCompressionState7AddNullEv.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bp = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !766

bb.y:                                             ; preds = %bb.p, %bb.w, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %i.bn, %bb.w ], [ %i.aq, %bb.p ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20ZSTDCompressionState9AddStringERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !750  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb20ZSTDCompressionState16InitializeVectorEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !763
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !764
  %i.g = add i64 %i.c, 1                          ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !763
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  store i32 %i.d, ptr %i.h, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load i64, ptr %i.i, align 8, !tbaa !765
  %i.k = icmp uge i64 %i.g, %i.j                  ; 2 uses
  tail call void @_ZN6duckdb20ZSTDCompressionState14CompressStringERKNS_8string_tEb(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %i.k)
  br i1 %i.k, label %bb.d, label %_ZN6duckdb20ZSTDCompressionState17AddStringInternalERKNS_8string_tE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb20ZSTDCompressionState11FlushVectorEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  br label %_ZN6duckdb20ZSTDCompressionState17AddStringInternalERKNS_8string_tE.exit

_ZN6duckdb20ZSTDCompressionState17AddStringInternalERKNS_8string_tE.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 81
  store i8 1, ptr %i.o, align 1, !tbaa !573
  %i.p = tail call noundef zeroext i8 @_ZNK6duckdb14BaseStatistics12GetStatsTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
  %i.q = icmp eq i8 %i.p, 6
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb20ZSTDCompressionState17AddStringInternalERKNS_8string_tE.exit
  tail call void @_ZN6duckdb13GeometryStats6UpdateERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN6duckdb25UncompressedStringStorage17UpdateStringStatsERNS_17SegmentStatisticsERKNS_8string_tE.exit

bb.f:                                             ; preds = %_ZN6duckdb20ZSTDCompressionState17AddStringInternalERKNS_8string_tE.exit
  tail call void @_ZN6duckdb11StringStats6UpdateERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN6duckdb25UncompressedStringStorage17UpdateStringStatsERNS_17SegmentStatisticsERKNS_8string_tE.exit

_ZN6duckdb25UncompressedStringStorage17UpdateStringStatsERNS_17SegmentStatisticsERKNS_8string_tE.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ZSTDStorage16FinalizeCompressERNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb20ZSTDCompressionState12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb20ZSTDCompressionState8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.b) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #32
  br label %_ZN6duckdb20ZSTDCompressionState8FinalizeEv.exit

_ZN6duckdb20ZSTDCompressionState8FinalizeEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ZSTDStorage14StringInitScanERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33, !noalias !767 ; 3 uses
  invoke void @_ZN6duckdb13ZSTDScanStateC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZNSt10unique_ptrIN6duckdb13ZSTDScanStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !767

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #32, !noalias !767
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb13ZSTDScanStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = tail call noundef i64 @_ZNK6duckdb15ColumnScanState20GetPositionInSegmentEv(ptr noundef nonnull align 8 dereferenceable(284) %1)
  %.not19.i = icmp eq i64 %2, 0
  br i1 %.not19.i, label %_ZN6duckdb13ZSTDScanState11ScanPartialEmRNS_6VectorEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi i64 [ %i.o, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %.01820.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %i.d = add i64 %.01820.i, %i.c                  ; 2 uses
  %i.e = lshr i64 %i.d, 11
  %i.f = and i64 %i.d, 2047
  %i.g = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb13ZSTDScanState10LoadVectorEmm(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 noundef %i.e, i64 noundef %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !770
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !779
  %i.l = sub i64 %i.i, %i.k
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %.021.i, i64 %i.l) ; 3 uses
  %i.n = add i64 %.01820.i, %4
  tail call void @_ZN6duckdb13ZSTDScanState12ScanInternalERNS_19ZSTDVectorScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.n)
  %i.o = sub nuw i64 %.021.i, %i.m                ; 2 uses
  %i.p = add i64 %i.m, %.01820.i
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZN6duckdb13ZSTDScanState11ScanPartialEmRNS_6VectorEmm.exit, label %.lr.ph.i, !llvm.loop !780

_ZN6duckdb13ZSTDScanState11ScanPartialEmRNS_6VectorEmm.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ZSTDStorage10StringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = tail call noundef i64 @_ZNK6duckdb15ColumnScanState20GetPositionInSegmentEv(ptr noundef nonnull align 8 dereferenceable(284) %1)
  %.not19.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i.i, label %_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.021.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %.01820.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.d = add i64 %.01820.i.i, %i.c                ; 2 uses
  %i.e = lshr i64 %i.d, 11
  %i.f = and i64 %i.d, 2047
  %i.g = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb13ZSTDScanState10LoadVectorEmm(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 noundef %i.e, i64 noundef %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !770
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !779
  %i.l = sub i64 %i.i, %i.k
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %.021.i.i, i64 %i.l) ; 3 uses
  tail call void @_ZN6duckdb13ZSTDScanState12ScanInternalERNS_19ZSTDVectorScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.01820.i.i)
  %i.n = sub nuw i64 %.021.i.i, %i.m              ; 2 uses
  %i.o = add i64 %i.m, %.01820.i.i
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit, label %.lr.ph.i.i, !llvm.loop !780

_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ZSTDStorage14StringFetchRowERNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ZSTDScanState", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb13ZSTDScanStateC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc5, %bb.a
  %.01820.i = phi i64 [ %i.l, %.noexc5 ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i64 %.01820.i, %2                    ; 2 uses
  %i.b = lshr i64 %i.a, 11
  %i.c = and i64 %i.a, 2047
  %i.d = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb13ZSTDScanState10LoadVectorEmm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef %i.b, i64 noundef %i.c)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !770
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !779
  %i.i = icmp ne i64 %i.f, %i.h                   ; 2 uses
  %i.j = zext i1 %i.i to i64                      ; 2 uses
  %i.k = add i64 %.01820.i, %4
  invoke void @_ZN6duckdb13ZSTDScanState12ScanInternalERNS_19ZSTDVectorScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.k)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %.noexc
  %i.l = add nuw nsw i64 %.01820.i, %i.j
  br i1 %i.i, label %_ZN6duckdb13ZSTDScanState11ScanPartialEmRNS_6VectorEmm.exit, label %.lr.ph.i, !llvm.loop !780

_ZN6duckdb13ZSTDScanState11ScanPartialEmRNS_6VectorEmm.exit: ; preds = %.noexc5
  call void @_ZN6duckdb13ZSTDScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13ZSTDScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ZSTDScanStateC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::optional_ptr.220", align 8 ; 5 uses
  %3 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb13ZSTDScanStateE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187
  store ptr %i.c, ptr %2, align 8
  call void @_ZNK6duckdb12optional_ptrINS_22CompressedSegmentStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.d = load ptr, ptr %2, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr %i.d, ptr %i.a, align 8, !tbaa !472
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.f = call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !445, !nonnull !55, !align !133
  store ptr %i.i, ptr %i.g, align 8, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !248
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.l)
  store ptr %i.m, ptr %i.j, align 8, !tbaa !781
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !782
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !460
  store i64 %i.q, ptr %i.o, align 8, !tbaa !795
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !796
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !797
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.u, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.w = invoke noundef ptr @_ZN11duckdb_zstd15ZSTD_createDCtxEv()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.n, align 8, !tbaa !782
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !798, !nonnull !55, !align !133 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %3) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !455
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !456
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !460
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 3 uses
  %i.ai = load atomic i64, ptr %1 seq_cst, align 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !799
  %i.ak = lshr i64 %i.ai, 11
  %i.al = and i64 %i.ai, 2047
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i64
  %i.ao = add nuw nsw i64 %i.ak, %i.an            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !800
  %i.aq = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !801
  %i.at = mul nuw nsw i64 %i.ao, 12
  %i.au = add nuw nsw i64 %i.at, 4
  %i.av = and i64 %i.au, 576460752303423480
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !802
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !803
  store i64 0, ptr %i.t, align 8, !tbaa !797
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.bc, %bb.h ], [ %i.bb, %bb.g ]
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.ba, %bb.f ]
  call void @_ZNSt10unique_ptrIN6duckdb19ZSTDVectorScanStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #30
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13ZSTDScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb13ZSTDScanStateE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !782
  %i.c = invoke noundef i64 @_ZN11duckdb_zstd13ZSTD_freeDCtxEPNS_11ZSTD_DCtx_sE(ptr noundef %i.b)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !804  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb19ZSTDVectorScanStateESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !805  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !806  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #30
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !807

_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !805
  br label %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.c
  %i.l = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb19ZSTDVectorScanStateEEclEPS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #32
  br label %_ZNKSt14default_deleteIN6duckdb19ZSTDVectorScanStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ZSTDVectorScanStateEEclEPS1_.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6duckdb12BufferHandleES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #32
  br label %_ZNSt10unique_ptrIN6duckdb19ZSTDVectorScanStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ZSTDVectorScanStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb19ZSTDVectorScanStateEEclEPS1_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #30
  ret void

bb.e:                                             ; preds = %bb.a
end_hunk_0
