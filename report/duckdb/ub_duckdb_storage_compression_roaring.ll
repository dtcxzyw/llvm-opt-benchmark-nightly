inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring25RoaringScanPartialBooleanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.m = call noundef i64 @llvm.umin.i64(i64 %.023.i, i64 %i.l) ; 3 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef %.02022.i, i64 noundef %i.m)
          to label %.noexc13 unwind label %.loopexit, !inline_history !187

.noexc13:                                         ; preds = %.noexc12
  %i.q = sub i64 %.023.i, %i.m                    ; 2 uses
  %i.r = add i64 %i.m, %.02022.i
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %_ZN6duckdb7roaring16RoaringScanState11ScanPartialEmRNS_6VectorEmm.exit, label %.lr.ph.i, !llvm.loop !184

_ZN6duckdb7roaring16RoaringScanState11ScanPartialEmRNS_6VectorEmm.exit: ; preds = %.noexc13, %.noexc
  invoke void @_ZN6duckdb7roaring25ExtractValidityMaskToDataERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %2)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZN6duckdb7roaring16RoaringScanState11ScanPartialEmRNS_6VectorEmm.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc12
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_ZN6duckdb7roaring16RoaringScanState11ScanPartialEmRNS_6VectorEmm.exit, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #4

declare void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEbbm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring11RoaringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb15ColumnScanState20GetPositionInSegmentEv(ptr noundef nonnull align 8 dereferenceable(284) %1)
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %2)
  %.not21.i.i = icmp eq i64 %2, 0
  br i1 %.not21.i.i, label %_ZN6duckdb7roaring18RoaringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %.02022.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.d = add i64 %.02022.i.i, %i.c                ; 2 uses
  %i.e = lshr i64 %i.d, 11
  %i.f = and i64 %i.d, 2047
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb7roaring16RoaringScanState13LoadContainerEmm(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 noundef %i.e, i64 noundef %i.f) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !182
  %i.l = sub i64 %i.i, %i.k
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %.023.i.i, i64 %i.l) ; 3 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.02022.i.i, i64 noundef %i.m), !inline_history !188
  %i.q = sub i64 %.023.i.i, %i.m                  ; 2 uses
  %i.r = add i64 %i.m, %.02022.i.i
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZN6duckdb7roaring18RoaringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit, label %.lr.ph.i.i, !llvm.loop !184

_ZN6duckdb7roaring18RoaringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring18RoaringScanBooleanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Vector", align 8    ; 9 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 31)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEbbm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = invoke noundef i64 @_ZNK6duckdb15ColumnScanState20GetPositionInSegmentEv(ptr noundef nonnull align 8 dereferenceable(284) %1)
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %2)
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %.noexc9
  %.not21.i.i.i = icmp eq i64 %2, 0
  br i1 %.not21.i.i.i, label %_ZN6duckdb7roaring11RoaringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc10, %.noexc12
  %.023.i.i.i = phi i64 [ %i.q, %.noexc12 ], [ %2, %.noexc10 ] ; 2 uses
  %.02022.i.i.i = phi i64 [ %i.r, %.noexc12 ], [ 0, %.noexc10 ] ; 3 uses
  %i.d = add i64 %.02022.i.i.i, %i.c              ; 2 uses
  %i.e = lshr i64 %i.d, 11
  %i.f = and i64 %i.d, 2047
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb7roaring16RoaringScanState13LoadContainerEmm(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 noundef %i.e, i64 noundef %i.f)
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !182
  %i.l = sub i64 %i.i, %i.k
  %i.m = call noundef i64 @llvm.umin.i64(i64 %.023.i.i.i, i64 %i.l) ; 3 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %.02022.i.i.i, i64 noundef %i.m)
          to label %.noexc12 unwind label %.loopexit, !inline_history !189

.noexc12:                                         ; preds = %.noexc11
  %i.q = sub i64 %.023.i.i.i, %i.m                ; 2 uses
  %i.r = add i64 %i.m, %.02022.i.i.i
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb7roaring11RoaringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit, label %.lr.ph.i.i.i, !llvm.loop !184

_ZN6duckdb7roaring11RoaringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit: ; preds = %.noexc12, %.noexc10
  invoke void @_ZN6duckdb7roaring25ExtractValidityMaskToDataERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0, i64 noundef %2)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZN6duckdb7roaring11RoaringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.noexc11
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_ZN6duckdb7roaring11RoaringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit, %bb.b, %.noexc, %.noexc9
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring15RoaringFetchRowERNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::roaring::RoaringScanState", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN6duckdb7roaring16RoaringScanStateC1ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.a = lshr i64 %2, 11
  %i.b = and i64 %2, 2047
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb7roaring16RoaringScanState13LoadContainerEmm(ptr noundef nonnull align 8 dereferenceable(200) %5, i64 noundef %i.a, i64 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef 1)
          to label %_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit unwind label %bb.h, !inline_history !186

_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit: ; preds = %bb.b
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring16RoaringScanStateE, i32 0, i32 0, i32 2), ptr %5, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit
  call void @_ZdlPv(ptr noundef nonnull %i.h) #28, !inline_history !192
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.j) #28, !inline_history !192
  br label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #28, !inline_history !192
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.e, %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #28, !inline_history !192
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i:               ; preds = %bb.f, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.p) #28, !inline_history !192
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194  ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #26, !inline_history !196
  br label %_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit

_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit:    ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #26, !inline_history !192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb7roaring16RoaringScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i64 0, 9007199254740992) i64 @_ZN6duckdb7roaring16RoaringScanState17GetContainerIndexEmRm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = lshr i64 %1, 11
  %i.b = and i64 %1, 2047
  store i64 %i.b, ptr %2, align 8, !tbaa !7
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb7roaring16RoaringScanState13LoadContainerEmm(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  %.not4.i = icmp eq ptr %i.b, null
  br i1 %.not4.i, label %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !197
  %.not.i = icmp eq i64 %i.e, %1
  br i1 %.not.i, label %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit, label %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread

_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit: ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !182
  %.not3.i = icmp eq i64 %i.h, %2
  br i1 %.not3.i, label %_ZN6duckdb7roaring16RoaringScanState4SkipERNS0_18ContainerScanStateEm.exit, label %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread

_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread: ; preds = %bb.b, %bb.a, %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = tail call noundef nonnull align 2 dereferenceable(4) ptr @_ZN6duckdb6vectorINS_7roaring17ContainerMetadataELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %1)
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 2 ; 5 uses
  %.sroa.0103.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i8
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %1)
  %i.o = load i64, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !219, !nonnull !91, !align !92
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %i.t = shl i64 %1, 11
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 2048) ; 5 uses
  switch i8 %.sroa.0103.0.extract.trunc, label %bb.j [
    i8 2, label %bb.c
    i8 0, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread
  %i.w = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !220 ; 3 uses
  invoke void @_ZN6duckdb7roaring24BitsetContainerScanStateC1EmmPm(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 noundef %1, i64 noundef %i.v, ptr noundef %i.p)
          to label %_ZN6duckdb9make_uniqINS_7roaring24BitsetContainerScanStateEJRmS3_PmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.d, !noalias !220

common.resume:                                    ; preds = %bb.o, %bb.m, %bb.i, %bb.g, %bb.d
  %.sink = phi ptr [ %i.al, %bb.o ], [ %i.al, %bb.m ], [ %i.af, %bb.i ], [ %i.ac, %bb.g ], [ %i.w, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.av, %bb.m ], [ %i.ag, %bb.i ], [ %i.ad, %bb.g ], [ %i.x, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #28, !noalias !91
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb9make_uniqINS_7roaring24BitsetContainerScanStateEJRmS3_PmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.e:                                             ; preds = %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread
  %i.z = zext nneg i32 %.sroa.7.0.extract.shift to i64 ; 2 uses
  %i.aa = icmp ugt i32 %.sroa.0.0.copyload.i, 262143
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29, !noalias !223 ; 3 uses
  invoke void @_ZN6duckdb7roaring31CompressedRunContainerScanStateC1EmmmPhS2_(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 noundef %1, i64 noundef %i.v, i64 noundef %i.z, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ab)
          to label %_ZN6duckdb9make_uniqINS_7roaring31CompressedRunContainerScanStateEJRmS3_S3_RPhS5_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.g, !noalias !223

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb9make_uniqINS_7roaring31CompressedRunContainerScanStateEJRmS3_S3_RPhS5_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.f
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i10, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.h:                                             ; preds = %bb.e
  %i.af = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !226 ; 3 uses
  invoke void @_ZN6duckdb7roaring21RunContainerScanStateC1EmmmPh(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 noundef %1, i64 noundef %i.v, i64 noundef %i.z, ptr noundef %i.p)
          to label %_ZN6duckdb9make_uniqINS_7roaring21RunContainerScanStateEJRmS3_S3_RPhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.i, !noalias !226

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb9make_uniqINS_7roaring21RunContainerScanStateEJRmS3_S3_RPhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.h
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i17, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.j:                                             ; preds = %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit.thread
  %.sroa.7.0.extract.trunc = zext nneg i32 %.sroa.7.0.extract.shift to i64 ; 3 uses
  %i.ai = icmp ugt i32 %.sroa.0.0.copyload.i, 524287
  br i1 %i.ai, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ak = trunc i32 %.sroa.5.0.extract.shift to i1
  %i.al = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29, !noalias !91 ; 15 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %1, ptr %i.am, align 8, !tbaa !197, !noalias !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.v, ptr %i.an, align 8, !tbaa !180, !noalias !91
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.ao, align 8, !tbaa !182, !noalias !91
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !229, !noalias !91
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 0, ptr %i.aq, align 8, !tbaa !230, !noalias !91
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %.sroa.7.0.extract.trunc, ptr %i.ar, align 8, !tbaa !7, !noalias !91
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 0, ptr %i.as, align 8, !tbaa !7, !noalias !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb7roaring33CompressedArrayContainerScanStateILb1EEE, i32 0, i32 0, i32 2), ptr %i.al, align 8, !tbaa !149, !noalias !231
  store ptr %i.p, ptr %i.at, align 8, !tbaa !234, !noalias !231
  invoke void @_ZN6duckdb7roaring20ContainerSegmentScanC1EPh(ptr noundef nonnull align 8 dereferenceable(10) %i.au, ptr noundef %i.p)
          to label %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb1EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.m, !noalias !231

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb1EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.l
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i24 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i24, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.n:                                             ; preds = %bb.k
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb7roaring33CompressedArrayContainerScanStateILb0EEE, i32 0, i32 0, i32 2), ptr %i.al, align 8, !tbaa !149, !noalias !238
  store ptr %i.p, ptr %i.at, align 8, !tbaa !241, !noalias !238
  invoke void @_ZN6duckdb7roaring20ContainerSegmentScanC1EPh(ptr noundef nonnull align 8 dereferenceable(10) %i.au, ptr noundef %i.p)
          to label %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb0EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.o, !noalias !238

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb0EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.n
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i31, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.p:                                             ; preds = %bb.j
  %i.az = trunc i32 %.sroa.5.0.extract.shift to i1
  %i.ba = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29, !noalias !91 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %1, ptr %i.bb, align 8, !tbaa !197, !noalias !91
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.v, ptr %i.bc, align 8, !tbaa !180, !noalias !91
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 0, ptr %i.bd, align 8, !tbaa !182, !noalias !91
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb7roaring23ArrayContainerScanStateILb1EEE, i32 0, i32 0, i32 2), ptr %i.ba, align 8, !tbaa !149, !noalias !244
  store ptr %i.p, ptr %i.be, align 8, !tbaa !247, !noalias !244
  store i8 0, ptr %i.bf, align 8, !tbaa !248, !noalias !244
  store i64 %.sroa.7.0.extract.trunc, ptr %i.bg, align 8, !tbaa !249, !noalias !244
  store i64 0, ptr %i.bh, align 8, !tbaa !250, !noalias !244
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i38 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i38, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

bb.r:                                             ; preds = %bb.p
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb7roaring23ArrayContainerScanStateILb0EEE, i32 0, i32 0, i32 2), ptr %i.ba, align 8, !tbaa !149, !noalias !251
  store ptr %i.p, ptr %i.be, align 8, !tbaa !254, !noalias !251
  store i8 0, ptr %i.bf, align 8, !tbaa !255, !noalias !251
  store i64 %.sroa.7.0.extract.trunc, ptr %i.bg, align 8, !tbaa !256, !noalias !251
  store i64 0, ptr %i.bh, align 8, !tbaa !257, !noalias !251
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !194
  %.not.i.i.i.i.i45 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i45, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split

_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split: ; preds = %bb.r, %bb.q, %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb0EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb1EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring21RunContainerScanStateEJRmS3_S3_RPhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring31CompressedRunContainerScanStateEJRmS3_S3_RPhS5_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring24BitsetContainerScanStateEJRmS3_PmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %.sink131 = phi ptr [ %i.aw, %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb1EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ %i.ah, %_ZN6duckdb9make_uniqINS_7roaring21RunContainerScanStateEJRmS3_S3_RPhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ %i.ay, %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb0EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ %i.bi, %bb.q ], [ %i.y, %_ZN6duckdb9make_uniqINS_7roaring24BitsetContainerScanStateEJRmS3_PmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ %i.ae, %_ZN6duckdb9make_uniqINS_7roaring31CompressedRunContainerScanStateEJRmS3_S3_RPhS5_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ], [ %i.bj, %bb.r ] ; 2 uses
  %i.bk = load ptr, ptr %.sink131, align 8, !tbaa !149
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.sink131) #26
  br label %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit.sink.split, %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb0EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring33CompressedArrayContainerScanStateILb1EEEJRmS4_S4_RPhS6_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.q, %bb.r, %_ZN6duckdb9make_uniqINS_7roaring31CompressedRunContainerScanStateEJRmS3_S3_RPhS5_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring21RunContainerScanStateEJRmS3_S3_RPhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb9make_uniqINS_7roaring24BitsetContainerScanStateEJRmS3_PmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !149
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
  %i.br = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN6duckdb7roaring16RoaringScanState4SkipERNS0_18ContainerScanStateEm.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !182
  %i.bu = add i64 %i.bt, %2                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !180
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !182
  br label %_ZN6duckdb7roaring16RoaringScanState4SkipERNS0_18ContainerScanStateEm.exit

bb.u:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !149
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 noundef %2), !inline_history !258
  br label %_ZN6duckdb7roaring16RoaringScanState4SkipERNS0_18ContainerScanStateEm.exit

_ZN6duckdb7roaring16RoaringScanState4SkipERNS0_18ContainerScanStateEm.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7roaring24BitsetContainerScanStateESt14default_deleteIS2_EED2Ev.exit, %bb.t, %bb.u, %_ZN6duckdb7roaring16RoaringScanState22UseContainerStateCacheEmm.exit
  %i.cb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.cb
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring16RoaringScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring16RoaringScanStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #28
  br label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i:                 ; preds = %bb.e, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #28
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194  ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb7roaring18ContainerScanStateESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #26, !inline_history !259
  br label %_ZNSt10unique_ptrIN6duckdb7roaring18ContainerScanStateESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7roaring18ContainerScanStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring22RoaringFetchRowBooleanERNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::roaring::RoaringScanState", align 8 ; 14 uses
  %6 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN6duckdb7roaring16RoaringScanStateC1ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.a = lshr i64 %2, 11
  %i.b = and i64 %2, 2047
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb7roaring16RoaringScanState13LoadContainerEmm(ptr noundef nonnull align 8 dereferenceable(200) %5, i64 noundef %i.a, i64 noundef %i.b)
          to label %bb.b unwind label %bb.k       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 31)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEbbm(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull %7, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef 1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 noundef 0, i64 noundef 1)
          to label %_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit unwind label %bb.n, !inline_history !186

_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit: ; preds = %bb.d
  invoke void @_ZN6duckdb7roaring25ExtractValidityMaskToDataERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef 1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring16RoaringScanStateE, i32 0, i32 0, i32 2), ptr %5, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.h) #28, !inline_history !192
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.j) #28, !inline_history !192
  br label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #28, !inline_history !192
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.h, %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #28, !inline_history !192
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i:               ; preds = %bb.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.p) #28, !inline_history !192
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194  ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #26, !inline_history !196
  br label %_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit

_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit:    ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #26, !inline_history !192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.k:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.d, %_ZN6duckdb7roaring16RoaringScanState12ScanInternalERNS0_18ContainerScanStateEmRNS_6VectorEm.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.y, %bb.m ], [ %i.x, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.w, %bb.k ]
  call void @_ZN6duckdb7roaring16RoaringScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb7roaring11RoaringSkipERNS_13ColumnSegmentERNS_15ColumnScanStateEm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring18RoaringInitSegmentERNS_13ColumnSegmentElNS_12optional_ptrINS_18ColumnSegmentStateELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.154") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !260
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22GetCompressionFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %1, label %bb.b [
    i8 -50, label %.split20
    i8 1, label %.split
  ]

.split:                                           ; preds = %bb.a
  br label %.split20

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext %1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.d) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.k = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.k) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread
  %.pn.pn31.ph = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring27ContainerMetadataCollection16AddContainerTypeEbb:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !193    ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i, %i.k    ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  store i8 %spec.select4, ptr %i.r, align 1, !tbaa !177
  %i.s = icmp sgt i64 %i.k, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !193
  store ptr %i.t, ptr %i.b, align 8, !tbaa !291
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.u, ptr %i.d, align 8, !tbaa !292
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring34ContainerMetadataCollectionScannerC2ERNS0_27ContainerMetadataCollectionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !297
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 1, 16712192) i32 @_ZN6duckdb7roaring34ContainerMetadataCollectionScanner7GetNextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !91, !align !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !301
  %i.e = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c)
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177   ; 2 uses
  %i.g = trunc i8 %i.f to i1
  %i.h = and i8 %i.f, 2
  %.not = icmp eq i8 %i.h, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !91, !align !92 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !302  ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !302
  %i.n = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.l)
  %.0 = load i8, ptr %i.n, align 1, !tbaa !177
  %.sroa.3.0.insert.ext.i = zext i8 %.0 to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, 256
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !303  ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !303
  %i.s = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.q)
  %.016 = load i8, ptr %i.s, align 1, !tbaa !177  ; 2 uses
  %i.t = icmp eq i8 %.016, -7
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0.insert.ext.i11 = zext i8 %.016 to i32
  %.sroa.3.0.insert.shift.i12 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i11, 16
  %.sroa.2.0.insert.shift.i = select i1 %i.g, i32 256, i32 0
  %.sroa.2.0.insert.insert.i13 = or disjoint i32 %.sroa.3.0.insert.shift.i12, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i14 = or disjoint i32 %.sroa.2.0.insert.insert.i13, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.2.0.insert.insert.i, %bb.b ], [ %.sroa.0.0.insert.insert.i14, %bb.d ], [ 16318722, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291
  %i.e = load ptr, ptr %0, align 8, !tbaa !193    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !7
  store i64 %i.h, ptr %i.b, align 8, !tbaa !7
  %.not.i.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorIhLb1ESaIhEE3getILb1EEERKhm.exit, label %bb.b, !prof !296

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorIhLb1ESaIhEE3getILb1EEERKhm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %1
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeStateC2ERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %1, align 8, !tbaa !93
  store i64 %i.b, ptr %i.a, align 8, !tbaa !93
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring19RoaringAnalyzeStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.d = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #29 ; 25 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !307, !alias.scope !304
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.noexc
  %index = phi i64 [ 0, %.noexc ], [ %index.next, %vector.body ] ; 9 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.noexc ], [ %vec.ind.next, %vector.body ] ; 9 uses
  %vec.ind8 = phi <8 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %.noexc ], [ %vec.ind.next9, %vector.body ] ; 8 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10 ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14 ; 2 uses
  %i.t = load i8, ptr %i.e, align 1, !noalias !304
  %i.u = load i8, ptr %i.g, align 1, !noalias !304
  %i.v = load i8, ptr %i.i, align 1, !noalias !304
  %i.w = load i8, ptr %i.k, align 1, !noalias !304
  %i.x = load i8, ptr %i.m, align 1, !noalias !304
  %i.y = load i8, ptr %i.o, align 1, !noalias !304
  %i.z = load i8, ptr %i.q, align 1, !noalias !304
  %i.aa = load i8, ptr %i.s, align 1, !noalias !304
  %i.ab = insertelement <8 x i8> poison, i8 %i.t, i64 0
  %i.ac = insertelement <8 x i8> %i.ab, i8 %i.u, i64 1
  %i.ad = insertelement <8 x i8> %i.ac, i8 %i.v, i64 2
  %i.ae = insertelement <8 x i8> %i.ad, i8 %i.w, i64 3
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 4
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 5
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 6
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 7
  %i.aj = and <8 x i8> %i.ai, splat (i8 3)        ; 8 uses
  %i.ak = extractelement <8 x i8> %i.aj, i64 0
  %i.al = extractelement <8 x i8> %i.aj, i64 1
  %i.am = extractelement <8 x i8> %i.aj, i64 2
  %i.an = extractelement <8 x i8> %i.aj, i64 3
  %i.ao = extractelement <8 x i8> %i.aj, i64 4
  %i.ap = extractelement <8 x i8> %i.aj, i64 5
  %i.aq = extractelement <8 x i8> %i.aj, i64 6
  %i.ar = extractelement <8 x i8> %i.aj, i64 7
  store i8 %i.ak, ptr %i.e, align 1, !noalias !304
  store i8 %i.al, ptr %i.g, align 1, !noalias !304
  store i8 %i.am, ptr %i.i, align 1, !noalias !304
  store i8 %i.an, ptr %i.k, align 1, !noalias !304
  store i8 %i.ao, ptr %i.m, align 1, !noalias !304
  store i8 %i.ap, ptr %i.o, align 1, !noalias !304
  store i8 %i.aq, ptr %i.q, align 1, !noalias !304
  store i8 %i.ar, ptr %i.s, align 1, !noalias !304
  %i.as = and <8 x i8> %vec.ind8, splat (i8 1)
  %i.at = shl <8 x i8> %vec.ind8, splat (i8 1)
  %i.au = and <8 x i8> %i.at, splat (i8 4)
  %i.av = and <8 x i32> %vec.ind, splat (i32 3)
  %i.aw = icmp eq <8 x i32> %i.av, splat (i32 1)  ; 3 uses
  %i.ax = and <8 x i8> %vec.ind8, splat (i8 4)
  %i.ay = and <8 x i32> %vec.ind, splat (i32 6)
  %i.az = icmp eq <8 x i32> %i.ay, splat (i32 2)  ; 2 uses
  %i.ba = or <8 x i1> %i.aw, %i.az
  %i.bb = lshr <8 x i8> %vec.ind8, splat (i8 1)
  %i.bc = and <8 x i8> %i.bb, splat (i8 4)
  %i.bd = and <8 x i32> %vec.ind, splat (i32 12)
  %i.be = icmp eq <8 x i32> %i.bd, splat (i32 4)  ; 2 uses
  %i.bf = or <8 x i1> %i.be, %i.ba
  %i.bg = lshr <8 x i8> %vec.ind8, splat (i8 2)
  %i.bh = and <8 x i8> %i.bg, splat (i8 4)
  %i.bi = and <8 x i32> %vec.ind, splat (i32 24)
  %i.bj = icmp eq <8 x i32> %i.bi, splat (i32 8)  ; 2 uses
  %i.bk = or <8 x i1> %i.bj, %i.bf
  %i.bl = lshr <8 x i8> %vec.ind8, splat (i8 3)
  %i.bm = and <8 x i8> %i.bl, splat (i8 4)
  %i.bn = and <8 x i32> %vec.ind, splat (i32 48)
  %i.bo = icmp eq <8 x i32> %i.bn, splat (i32 16) ; 2 uses
  %i.bp = or <8 x i1> %i.bo, %i.bk
  %i.bq = lshr <8 x i8> %vec.ind8, splat (i8 4)
  %i.br = and <8 x i8> %i.bq, splat (i8 4)
  %i.bs = add nuw nsw <8 x i8> %i.ax, <i8 0, i8 4, i8 0, i8 4, i8 0, i8 4, i8 0, i8 4>
  %i.bt = or disjoint <8 x i8> %i.bs, %i.as
  %i.bu = add nuw nsw <8 x i8> %i.bt, %i.au
  %i.bv = add nuw nsw <8 x i8> %i.bu, %i.bc
  %i.bw = add nuw nsw <8 x i8> %i.bv, %i.bh
  %i.bx = add nuw nsw <8 x i8> %i.bw, %i.bm
  %i.by = add nuw nsw <8 x i8> %i.bx, %i.br
  %i.bz = and <8 x i32> %vec.ind, splat (i32 96)
  %i.ca = icmp eq <8 x i32> %i.bz, splat (i32 32) ; 2 uses
  %i.cb = or <8 x i1> %i.ca, %i.bp
  %i.cc = and <8 x i32> %vec.ind, splat (i32 128)
  %i.cd = icmp eq <8 x i32> %i.cc, zeroinitializer
  %i.ce = and <8 x i8> %i.by, splat (i8 -3)
  %i.cf = select <8 x i1> %i.cd, <8 x i8> zeroinitializer, <8 x i8> splat (i8 6)
  %i.cg = add nuw nsw <8 x i8> %i.cf, %i.ce
  %i.ch = and <8 x i32> %vec.ind, splat (i32 192)
  %i.ci = icmp eq <8 x i32> %i.ch, splat (i32 64) ; 2 uses
  %i.cj = or <8 x i1> %i.ci, %i.cb
  %i.ck = select <8 x i1> %i.aw, <8 x i8> splat (i8 2), <8 x i8> splat (i8 1)
  %i.cl = zext <8 x i1> %i.aw to <8 x i8>
  %i.cm = select <8 x i1> %i.az, <8 x i8> %i.ck, <8 x i8> %i.cl
  %i.cn = zext <8 x i1> %i.be to <8 x i8>
  %i.co = zext <8 x i1> %i.bj to <8 x i8>
  %i.cp = zext <8 x i1> %i.bo to <8 x i8>
  %i.cq = zext <8 x i1> %i.ca to <8 x i8>
  %i.cr = zext <8 x i1> %i.ci to <8 x i8>
  %i.cs = add nuw nsw <8 x i8> %i.co, %i.cn
  %i.ct = add nuw nsw <8 x i8> %i.cs, %i.cp
  %i.cu = add nuw nsw <8 x i8> %i.ct, %i.cq
  %i.cv = add nuw nsw <8 x i8> %i.cu, %i.cr
  %i.cw = add nuw nsw <8 x i8> %i.cv, %i.cm
  %predphi = select <8 x i1> %i.cj, <8 x i8> %i.cw, <8 x i8> zeroinitializer
  %interleaved.vec = shufflevector <8 x i8> %i.cg, <8 x i8> %predphi, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.e, align 1, !noalias !304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next9 = add <8 x i8> %vec.ind8, splat (i8 8)
  %i.cx = icmp eq i64 %index.next, 248
  br i1 %i.cx, label %scalar.ph, label %vector.body, !llvm.loop !308

scalar.ph:                                        ; preds = %vector.body
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 496 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !304
  %i.da = and i8 %i.cz, 3
  store i8 %i.da, ptr %i.cy, align 1, !noalias !304
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 497
  store i8 0, ptr %i.db, align 1, !tbaa !309, !noalias !304
  store i8 22, ptr %i.cy, align 1, !noalias !304
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 498 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !304
  %i.de = and i8 %i.dd, 3
  store i8 %i.de, ptr %i.dc, align 1, !noalias !304
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 499
  store i8 1, ptr %i.df, align 1, !tbaa !309, !noalias !304
  store i8 27, ptr %i.dc, align 1, !noalias !304
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 500 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !304
  %i.di = and i8 %i.dh, 3
  store i8 %i.di, ptr %i.dg, align 1, !noalias !304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 501
  store i8 1, ptr %i.dj, align 1, !tbaa !309, !noalias !304
  store i8 26, ptr %i.dg, align 1, !noalias !304
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 502 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !304
  %i.dm = and i8 %i.dl, 3
  store i8 %i.dm, ptr %i.dk, align 1, !noalias !304
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 503
  store i8 1, ptr %i.dn, align 1, !tbaa !309, !noalias !304
  store i8 31, ptr %i.dk, align 1, !noalias !304
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 504 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !noalias !304
  %i.dq = and i8 %i.dp, 3
  store i8 %i.dq, ptr %i.do, align 1, !noalias !304
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 505
  store i8 0, ptr %i.dr, align 1, !tbaa !309, !noalias !304
  store i8 26, ptr %i.do, align 1, !noalias !304
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 506 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !304
  %i.du = and i8 %i.dt, 3
  store i8 %i.du, ptr %i.ds, align 1, !noalias !304
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 507
  store i8 1, ptr %i.dv, align 1, !tbaa !309, !noalias !304
  store i8 31, ptr %i.ds, align 1, !noalias !304
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 508 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !304
  %i.dy = and i8 %i.dx, 3
  store i8 %i.dy, ptr %i.dw, align 1, !noalias !304
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 509
  store i8 0, ptr %i.dz, align 1, !tbaa !309, !noalias !304
  store i8 30, ptr %i.dw, align 1, !noalias !304
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 510 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !304
  %i.ec = and i8 %i.eb, 3
  store i8 %i.ec, ptr %i.ea, align 1, !noalias !304
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 511
  store i8 0, ptr %i.ed, align 1, !tbaa !309, !noalias !304
  store i8 35, ptr %i.ea, align 1, !noalias !304
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.ee, align 8, !tbaa !128
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 0, ptr %i.ef, align 2, !tbaa !127
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 0, ptr %i.eg, align 4, !tbaa !129
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 0, ptr %i.eh, align 8, !tbaa !126
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, i8 0, i64 48, i1 false)
  invoke void @_ZN6duckdb7roaring27ContainerMetadataCollectionC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ej)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %scalar.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  ret void

end_hunk_1
begin_hunk_2_@_ZN6duckdb7roaring12AppendBitsetERNS0_25ContainerCompressionStateEbt:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !175
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !179
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !179
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !178

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState8FinalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) initializes((920, 921)) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !331  ; 3 uses
  %.not = icmp ne i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !312
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !324  ; 4 uses
  %i.h = icmp ult i16 %i.g, 124
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i16 %i.g, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !328
  %i.l = zext nneg i16 %i.g to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !351
  %i.o = sub i16 %i.b, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.o, ptr %i.p, align 2, !tbaa !353
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = trunc i16 %i.b to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329
  %i.t = shl nuw nsw i16 %i.g, 1
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.q, ptr %i.w, align 1, !tbaa !177
  %i.x = load i16, ptr %i.a, align 4, !tbaa !331  ; 2 uses
  %.not4 = icmp eq i16 %i.x, 2048
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.aa = lshr i16 %i.x, 8
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !177
  %i.ae = add i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = load i16, ptr %i.f, align 8, !tbaa !324
  %i.ag = add i16 %i.af, 1
  store i16 %i.ag, ptr %i.f, align 8, !tbaa !324
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.ah, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, -65024) i32 @_ZN6duckdb7roaring25ContainerCompressionState9GetResultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !331  ; 4 uses
  br i1 %.not, label %bb.b, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i16, ptr %i.f, align 4, !tbaa !325  ; 6 uses
  %i.h = load i16, ptr %i.e, align 2, !tbaa !325  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i16, ptr %i.i, align 8, !tbaa !324  ; 5 uses
  %i.k = icmp ult i16 %i.g, 248
  %i.l = icmp ult i16 %i.h, 248
  %i.m = icmp ult i16 %i.j, 124
  %i.n = or i1 %i.k, %i.l
  %or.cond.i = or i1 %i.n, %i.m
  br i1 %or.cond.i, label %bb.c, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i16 %i.g, 8
  %i.p = shl nuw nsw i16 %i.g, 1
  %i.q = add i16 %i.g, 8
  %i.r = select i1 %i.o, i16 %i.p, i16 %i.q
  %i.s = icmp ult i16 %i.h, 8
  %i.t = shl nuw nsw i16 %i.h, 1
  %i.u = add i16 %i.h, 8
  %i.v = select i1 %i.s, i16 %i.t, i16 %i.u
  %i.w = tail call noundef i16 @llvm.umin.i16(i16 %i.r, i16 %i.v) ; 2 uses
  %i.x = icmp ult i16 %i.j, 4
  %i.y = shl nuw nsw i16 %i.j, 2
  %i.z = shl i16 %i.j, 1
  %i.aa = add i16 %i.z, 8
  %i.ab = select i1 %i.x, i16 %i.y, i16 %i.aa     ; 2 uses
  %i.ac = add i16 %i.d, 63
  %i.ad = lshr i16 %i.ac, 3
  %i.ae = and i16 %i.ad, 8184
  %i.af = tail call noundef i16 @llvm.umin.i16(i16 %i.w, i16 %i.ab)
  %i.ag = icmp ugt i16 %i.af, %i.ae
  br i1 %i.ag, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp ugt i16 %i.w, %i.ab
  br i1 %.not.i, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not32.i = icmp ugt i16 %i.g, %i.h
  %..i = tail call i16 @llvm.umin.i16(i16 %i.g, i16 %i.h)
  %.48.i = select i1 %.not32.i, i32 1, i32 257
  br label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink47.i.sink = phi i16 [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %..i, %bb.e ], [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  %.sink.i.sink = phi i32 [ 258, %bb.a ], [ 258, %bb.b ], [ %.48.i, %bb.e ], [ 258, %bb.c ], [ 256, %bb.d ]
  %.sroa.3.0.insert.ext.i33.i = zext i16 %.sink47.i.sink to i32
  %.sroa.3.0.insert.shift.i34.i = shl nuw i32 %.sroa.3.0.insert.ext.i33.i, 16
  %.sroa.0.0.insert.insert.i35.i = or disjoint i32 %.sroa.3.0.insert.shift.i34.i, %.sink.i.sink
  ret i32 %.sroa.0.0.insert.insert.i35.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring20RoaringCompressStateC2ERNS_24ColumnDataCheckpointDataENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(1144) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.d, ptr %i.c, align 8, !tbaa !93
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring20RoaringCompressStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !148
  store i64 %i.f, ptr %i.e, align 8, !tbaa !148
  store ptr null, ptr %2, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.g, align 8, !tbaa !355
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN6duckdb7roaring25ContainerCompressionStateC1Ev(ptr noundef nonnull align 8 dereferenceable(936) %i.i)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  invoke void @_ZN6duckdb7roaring27ContainerMetadataCollectionC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.j)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !357, !nonnull !91, !align !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store ptr %i.m, ptr %i.k, align 8, !tbaa !375
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %1, ptr %i.n, align 8, !tbaa !376
  %i.o = invoke noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 13)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr %i.o, ptr %i.p, align 8, !tbaa !377
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !378
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !379
  invoke void @_ZN6duckdb7roaring20RoaringCompressState18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(1144) %0)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.s, align 8, !tbaa !379
  invoke void @_ZN6duckdb7roaring20RoaringCompressState19InitializeContainerEv(ptr noundef nonnull align 8 dereferenceable(1144) %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.v, %bb.k ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.u, %bb.j ]
  tail call void @_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.j) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.t, %bb.i ]
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !148  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i: ; preds = %bb.o
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.x) #26, !inline_history !380
  br label %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !148    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(193) ptr @_ZN6duckdb24ColumnDataCheckpointData22GetCompressionFunctionENS_15CompressionTypeE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring20RoaringCompressState18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(1144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.112", align 8 ; 8 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381, !nonnull !91, !align !92
  %i.c = tail call noundef nonnull align 1 ptr @_ZN6duckdb24ColumnDataCheckpointData11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !381, !nonnull !91, !align !92
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb24ColumnDataCheckpointData7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382, !nonnull !91, !align !92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132, !nonnull !91, !align !92 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !132, !nonnull !91, !align !92
  call void @_ZN6duckdb13ColumnSegment22CreateTransientSegmentERNS_16DatabaseInstanceERKNS_19CompressionFunctionERKNS_11LogicalTypeEmRNS_12BlockManagerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.112") align 8 %1, ptr noundef nonnull align 1 %i.c, ptr noundef nonnull align 8 dereferenceable(193) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !155
  store ptr null, ptr %1, align 8, !tbaa !155
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !155  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !155
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.lv = zext i1 %i.lu to i8                     ; 2 uses
  %i.lw = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.lx = trunc nuw i8 %i.lw to i1
  %not..i.i.i.i.i.i32.6 = xor i1 %i.lu, true
  %i.ly = select i1 %not..i.i.i.i.i.i32.6, i1 %i.lx, i1 false
  %.in.sroa.speculated.i.i.i.i33.6 = select i1 %i.ly, i8 %i.lv, i8 %i.lw
  store i8 %.in.sroa.speculated.i.i.i.i33.6, ptr %i.cu, align 1, !tbaa !230
  %i.lz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ma = trunc nuw i8 %i.lz to i1
  %not..i.i.i.i.i34.6 = xor i1 %i.ma, true
  %i.mb = and i1 %i.lu, %not..i.i.i.i.i34.6
  %.in6.sroa.speculated.i.i.i.i35.6 = select i1 %i.mb, i8 %i.lv, i8 %i.lz
  store i8 %.in6.sroa.speculated.i.i.i.i35.6, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.mc = add nuw i64 %.03043.ph.i, 7             ; 6 uses
  %exitcond.not.i29.6 = icmp eq i64 %i.mc, %2
  br i1 %exitcond.not.i29.6, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7: ; preds = %bb.as
  %i.md = lshr i64 %i.mc, 6
  %i.me = and i64 %i.mc, 63
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !7
  %i.mh = shl nuw i64 1, %i.me
  %i.mi = and i64 %i.mg, %i.mh
  %.not39.i.7 = icmp ne i64 %i.mi, 0              ; 3 uses
  br i1 %.not39.i.7, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7, label %bb.at

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mc
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ml = zext nneg i8 %i.mk to i32
  br label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7
  %i.mm = phi i32 [ %i.ml, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7 ], [ %i.lm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7 ] ; 4 uses
  %i.mn = zext i1 %.not39.i.7 to i32              ; 2 uses
  %i.mo = and i32 %i.mm, %i.mn
  %i.mp = xor i32 %i.mn, -1
  %i.mq = select i1 %i.lu, i32 %i.mp, i32 0
  %i.mr = or i32 %i.mq, %i.mo
  %.tr125 = trunc nsw i32 %i.mr to i8
  %i.ms = shl i8 %.tr125, 7
  %i.mt = or i8 %i.lt, %i.ms                      ; 2 uses
  %i.mu = icmp ne i32 %i.mm, 0                    ; 5 uses
  br i1 %.not39.i.7, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %.thread.i31

bb.av:                                            ; preds = %bb.at
  %i.mv = zext i1 %i.mu to i8                     ; 2 uses
  %i.mw = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.mx = trunc nuw i8 %i.mw to i1
  %not..i.i.i.i.i.i32.7 = xor i1 %i.mu, true
  %i.my = select i1 %not..i.i.i.i.i.i32.7, i1 %i.mx, i1 false
  %.in.sroa.speculated.i.i.i.i33.7 = select i1 %i.my, i8 %i.mv, i8 %i.mw
  store i8 %.in.sroa.speculated.i.i.i.i33.7, ptr %i.cu, align 1, !tbaa !230
  %i.mz = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.na = trunc nuw i8 %i.mz to i1
  %not..i.i.i.i.i34.7 = xor i1 %i.na, true
  %i.nb = and i1 %i.mu, %not..i.i.i.i.i34.7
  %.in6.sroa.speculated.i.i.i.i35.7 = select i1 %i.nb, i8 %i.mv, i8 %i.mz
  store i8 %.in6.sroa.speculated.i.i.i.i35.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %.thread.i31

.thread.i31.loopexit:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fm
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %i.ne = icmp ne i8 %i.nd, 0                     ; 3 uses
  %i.nf = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.6 to i1
  %not..i.i.i.i.i.i32.us.7 = xor i1 %i.ne, true
  %i.ng = select i1 %not..i.i.i.i.i.i32.us.7, i1 %i.nf, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.7 = select i1 %i.ng, i8 %i.nd, i8 %.in.sroa.speculated.i.i.i.i33.us.6
  store i8 %.in.sroa.speculated.i.i.i.i33.us.7, ptr %i.cu, align 1, !tbaa !230
  %i.nh = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.6 to i1
  %not..i.i.i.i.i34.us.7 = xor i1 %i.nh, true
  %i.ni = and i1 %i.ne, %not..i.i.i.i.i34.us.7
  %.in6.sroa.speculated.i.i.i.i35.us.7 = select i1 %i.ni, i8 %i.nd, i8 %.in6.sroa.speculated.i.i.i.i35.us.6
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.nj = shl nuw i8 %i.nd, 7
  %i.nk = or i8 %i.fh, %i.nj
  %i.nl = zext nneg i8 %i.nd to i32
  br label %.thread.i31

.thread.i31:                                      ; preds = %bb.av, %bb.au, %.thread.i31.loopexit
  %.us-phi = phi i32 [ %i.nl, %.thread.i31.loopexit ], [ %i.mm, %bb.au ], [ %i.mm, %bb.av ]
  %.us-phi48 = phi i8 [ %i.nk, %.thread.i31.loopexit ], [ %i.mt, %bb.au ], [ %i.mt, %bb.av ]
  %.us-phi49 = phi i1 [ %i.ne, %.thread.i31.loopexit ], [ %i.mu, %bb.au ], [ %i.mu, %bb.av ]
  %.us-phi50 = phi i64 [ %i.fm, %.thread.i31.loopexit ], [ %i.mc, %bb.au ], [ %i.mc, %bb.av ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.045.ph.i, i64 1
  store i8 %.us-phi48, ptr %.045.ph.i, align 1, !tbaa !177
  %i.nn = add nuw i64 %.us-phi50, 1               ; 2 uses
  %exitcond.not58.i = icmp eq i64 %i.nn, %2
  br i1 %exitcond.not58.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.outer.i28, !llvm.loop !419

_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit: ; preds = %.thread.i31, %.thread.i, %._crit_edge.i30, %bb.r, %._crit_edge.i, %bb.g
  invoke void @_ZN6duckdb7roaring20RoaringStateAppenderINS0_20RoaringCompressStateEE12AppendVectorERS2_RNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %2)
          to label %bb.aw unwind label %bb.p

bb.aw:                                            ; preds = %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ax:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %i.cq, %bb.o ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.cp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring20ContainerSegmentScanC2EPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(10) initializes((0, 10)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !420
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !421
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !422
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext range(i16 0, -255) i16 @_ZN6duckdb7roaring20ContainerSegmentScanppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10) %0, i32 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.b, align 8, !tbaa !421 ; 4 uses
  %i.c = icmp ult i8 %.promoted, 8
  %.pre = load i8, ptr %i.a, align 1              ; 3 uses
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !420    ; 2 uses
  %i.e = zext nneg i8 %.promoted to i64           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !177
  %.not.peel = icmp ult i8 %.pre, %i.g
  br i1 %.not.peel, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.a, align 1, !tbaa !422
  %indvars.iv.next.peel = add nuw nsw i64 %i.e, 1 ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv.next.peel to i8
  store i8 %i.h, ptr %i.b, align 8, !tbaa !421
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, 8
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next.peel, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !177
  %.not.not = icmp eq i8 %i.j, 0
  br i1 %.not.not, label %bb.c, label %.critedge.loopexit.split.loop.exit6

bb.c:                                             ; preds = %.peel.next
  store i8 0, ptr %i.a, align 1, !tbaa !422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = trunc i64 %indvars.iv.next to i8         ; 2 uses
  store i8 %i.k, ptr %i.b, align 8, !tbaa !421
  %exitcond.not = icmp eq i8 %i.k, 8
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !423

.critedge.loopexit.split.loop.exit6:              ; preds = %.peel.next
  %i.l = trunc nuw nsw i64 %indvars.iv to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit6, %.lr.ph, %bb.b, %bb.a
  %i.m = phi i8 [ %.pre, %bb.a ], [ %.pre, %.lr.ph ], [ 0, %bb.b ], [ 0, %.critedge.loopexit.split.loop.exit6 ], [ 0, %bb.c ]
  %.lcssa = phi i8 [ %.promoted, %bb.a ], [ %.promoted, %.lr.ph ], [ 8, %bb.b ], [ %i.l, %.critedge.loopexit.split.loop.exit6 ], [ 8, %bb.c ]
  %i.n = add i8 %i.m, 1
  store i8 %i.n, ptr %i.a, align 1, !tbaa !422
  %i.o = zext i8 %.lcssa to i16
  %i.p = shl nuw i16 %i.o, 8
  ret i16 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring21RunContainerScanStateC2EmmmPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 32), (36, 37), (40, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !182
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb7roaring21RunContainerScanStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.d, align 4, !tbaa !425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !427
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.f, align 8, !tbaa !428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.g, align 8, !tbaa !429
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring21RunContainerScanState11ScanPartialERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !427
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !425, !range !312, !noundef !91
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq i64 %3, 0
  %.not2829 = or i1 %i.j, %i.i
  br i1 %.not2829, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.h ]
  %i.n = load i16, ptr %i.k, align 8, !tbaa !430
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !182  ; 5 uses
  %i.q = add i64 %i.p, %3                         ; 2 uses
  %i.r = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.q)
  %i.s = add i64 %i.p, %.030
  %i.t = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.s) ; 3 uses
  %i.u = add nuw nsw i64 %i.o, 1
  %i.v = load i16, ptr %i.m, align 2, !tbaa !431
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.u, %i.w               ; 2 uses
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.q) ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.t
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = sub i64 %i.t, %i.p
  %i.ab = sub nuw nsw i64 %i.y, %i.t
  %i.ac = add i64 %i.aa, %2                       ; 2 uses
  %i.ad = add i64 %i.ab, %i.ac
  tail call void @_ZN6duckdb7roaring15SetInvalidRangeERNS_12ValidityMaskEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ac, i64 noundef %i.ad)
  %.pre = load i64, ptr %i.l, align 8, !tbaa !182
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.e ], [ %i.p, %bb.d ]
  %i.af = sub i64 %i.y, %i.p                      ; 3 uses
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.ag, %i.x
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %0, align 8, !tbaa !149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load i8, ptr %i.g, align 4, !tbaa !425, !range !312, !noundef !91
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp uge i64 %i.af, %3
  %.not28 = or i1 %i.an, %i.am
  br i1 %.not28, label %._crit_edge, label %bb.d, !llvm.loop !432

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !182
  %i.aq = add i64 %i.ap, %3
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring21RunContainerScanState4SkipEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182  ; 2 uses
  %i.c = add i64 %i.b, %1                         ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !427
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !182
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = icmp uge i64 %i.i, %i.c
  %i.l = load i8, ptr %i.j, align 4, !range !312
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond9 = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.p = load i16, ptr %i.n, align 8, !tbaa !430
  %i.q = zext i16 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1
  %i.s = load i16, ptr %i.o, align 2, !tbaa !431
  %i.t = zext i16 %i.s to i64
  %i.u = add nuw nsw i64 %i.r, %i.t               ; 2 uses
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.c) ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !182
  %.not8 = icmp ugt i64 %i.u, %i.c
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !149
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.pre10 = load i64, ptr %i.a, align 8, !tbaa !182
  %.pre11 = load i8, ptr %i.j, align 4, !range !312
  %i.z = trunc nuw i8 %.pre11 to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i1 [ %i.z, %bb.e ], [ false, %bb.d ]
  %i.ab = phi i64 [ %.pre10, %bb.e ], [ %i.v, %bb.d ]
  %i.ac = icmp uge i64 %i.ab, %i.c
  %or.cond = select i1 %i.ac, i1 true, i1 %i.aa
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !433

.critedge:                                        ; preds = %bb.f, %bb.c
  store i64 %i.c, ptr %i.a, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZNK6duckdb7roaring21RunContainerScanState6VerifyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring21RunContainerScanState11LoadNextRunEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !427  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !428
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.e, align 4, !tbaa !425
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !429
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.h, align 2
  store i32 %i.j, ptr %i.i, align 8
  %i.k = add nuw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !427
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring31CompressedRunContainerScanStateC2EmmmPhS2_(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 32), (36, 37), (40, 72)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.d, align 4, !tbaa !425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !427
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.f, align 8, !tbaa !428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %5, ptr %i.g, align 8, !tbaa !429
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb7roaring31CompressedRunContainerScanStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %4, ptr %i.h, align 8, !tbaa !434
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6duckdb7roaring20ContainerSegmentScanC1EPh(ptr noundef nonnull align 8 dereferenceable(10) %i.i, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring31CompressedRunContainerScanState11LoadNextRunEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !427  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !428
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.e, align 4, !tbaa !425
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %.promoted.i = load i8, ptr %i.h, align 8, !tbaa !421 ; 6 uses
  %i.i = icmp ult i8 %.promoted.i, 8
  %.pre.i = load i8, ptr %i.g, align 1            ; 3 uses
  br i1 %i.i, label %.lr.ph.i, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !420  ; 3 uses
  %i.k = zext nneg i8 %.promoted.i to i64         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !177
  %.not.peel.i = icmp ult i8 %.pre.i, %i.m
  br i1 %.not.peel.i, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.g, align 1, !tbaa !422
  %indvars.iv.next.peel.i = add nuw nsw i64 %i.k, 1 ; 5 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next.peel.i to i8 ; 2 uses
  store i8 %i.n, ptr %i.h, align 8, !tbaa !421
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv.next.peel.i, 8
  br i1 %exitcond.peel.not.i, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.peel.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !177
  %.not.not.i33 = icmp eq i8 %i.p, 0
  br i1 %.not.not.i33, label %.lr.ph.preheader, label %.critedge.loopexit.split.loop.exit6.i

.lr.ph.preheader:                                 ; preds = %.peel.next.i.preheader
  store i8 0, ptr %i.g, align 1, !tbaa !422
  br label %.lr.ph

.peel.next.i:                                     ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !177
  %.not.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.not.i, label %.lr.ph, label %.critedge.loopexit.split.loop.exit6.i, !llvm.loop !423

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.peel.next.i
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i, %.peel.next.i ], [ %indvars.iv.next.peel.i, %.lr.ph.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i34, 1 ; 4 uses
  %i.s = trunc i64 %indvars.iv.next.i to i8       ; 3 uses
  store i8 %i.s, ptr %i.h, align 8, !tbaa !421
  %exitcond.not.i = icmp eq i8 %i.s, 8
  br i1 %exitcond.not.i, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit, label %.peel.next.i, !llvm.loop !423

.critedge.loopexit.split.loop.exit6.i:            ; preds = %.peel.next.i, %.peel.next.i.preheader
  %.promoted.i524.lcssa = phi i8 [ %i.n, %.peel.next.i.preheader ], [ %i.s, %.peel.next.i ]
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.peel.i, %.peel.next.i.preheader ], [ %indvars.iv.next.i, %.peel.next.i ]
  %i.t = trunc nuw nsw i64 %indvars.iv.i.lcssa to i8
  br label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit

_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit: ; preds = %.lr.ph, %bb.c, %.lr.ph.i, %bb.d, %.critedge.loopexit.split.loop.exit6.i
  %.promoted.i5 = phi i8 [ %.promoted.i, %bb.c ], [ %.promoted.i, %.lr.ph.i ], [ 8, %bb.d ], [ %.promoted.i524.lcssa, %.critedge.loopexit.split.loop.exit6.i ], [ 8, %.lr.ph ] ; 4 uses
  %i.u = phi i8 [ %.pre.i, %bb.c ], [ %.pre.i, %.lr.ph.i ], [ 0, %bb.d ], [ 0, %.critedge.loopexit.split.loop.exit6.i ], [ 0, %.lr.ph ]
  %.lcssa.i = phi i8 [ %.promoted.i, %bb.c ], [ %.promoted.i, %.lr.ph.i ], [ 8, %bb.d ], [ %i.t, %.critedge.loopexit.split.loop.exit6.i ], [ 8, %.lr.ph ]
  %i.v = add i8 %i.u, 1                           ; 4 uses
  store i8 %i.v, ptr %i.g, align 1, !tbaa !422
  %i.w = zext i8 %.lcssa.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !429
  %i.aa = shl i64 %i.b, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !177
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.x, %i.ad             ; 2 uses
  %i.af = icmp ult i8 %.promoted.i5, 8
  br i1 %i.af, label %.lr.ph.i8, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18

.lr.ph.i8:                                        ; preds = %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !420 ; 2 uses
  %i.ah = zext nneg i8 %.promoted.i5 to i64       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !177
  %.not.peel.i9 = icmp ult i8 %i.v, %i.aj
  br i1 %.not.peel.i9, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i8
  store i8 0, ptr %i.g, align 1, !tbaa !422
  %indvars.iv.next.peel.i10 = add nuw nsw i64 %i.ah, 1 ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.peel.i10 to i8
  store i8 %i.ak, ptr %i.h, align 8, !tbaa !421
  %exitcond.peel.not.i11 = icmp eq i64 %indvars.iv.next.peel.i10, 8
  br i1 %exitcond.peel.not.i11, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18, label %.peel.next.i12

.peel.next.i12:                                   ; preds = %bb.e, %bb.f
  %indvars.iv.i13 = phi i64 [ %indvars.iv.next.i16, %bb.f ], [ %indvars.iv.next.peel.i10, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i13
  %i.am = load i8, ptr %i.al, align 1, !tbaa !177
  %.not.not.i14 = icmp eq i8 %i.am, 0
  br i1 %.not.not.i14, label %bb.f, label %.critedge.loopexit.split.loop.exit6.i15

bb.f:                                             ; preds = %.peel.next.i12
  store i8 0, ptr %i.g, align 1, !tbaa !422
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %i.an = trunc i64 %indvars.iv.next.i16 to i8    ; 2 uses
  store i8 %i.an, ptr %i.h, align 8, !tbaa !421
  %exitcond.not.i17 = icmp eq i8 %i.an, 8
  br i1 %exitcond.not.i17, label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18, label %.peel.next.i12, !llvm.loop !423

.critedge.loopexit.split.loop.exit6.i15:          ; preds = %.peel.next.i12
  %i.ao = trunc nuw nsw i64 %indvars.iv.i13 to i8
  br label %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18

_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18: ; preds = %bb.f, %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit, %.lr.ph.i8, %bb.e, %.critedge.loopexit.split.loop.exit6.i15
  %i.ap = phi i8 [ %i.v, %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit ], [ %i.v, %.lr.ph.i8 ], [ 0, %bb.e ], [ 0, %.critedge.loopexit.split.loop.exit6.i15 ], [ 0, %bb.f ]
  %.lcssa.i7 = phi i8 [ %.promoted.i5, %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit ], [ %.promoted.i5, %.lr.ph.i8 ], [ 8, %bb.e ], [ %i.ao, %.critedge.loopexit.split.loop.exit6.i15 ], [ 8, %bb.f ]
  %i.aq = add i8 %i.ap, 1
  store i8 %i.aq, ptr %i.g, align 1, !tbaa !422
  %i.ar = zext i8 %.lcssa.i7 to i16
  %i.as = shl nuw i16 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !177
  %i.av = zext i8 %i.au to i16
  %i.aw = xor i16 %i.ae, -1
  %i.ax = add i16 %i.as, %i.aw
  %i.ay = add i16 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.ae, ptr %i.az, align 8, !tbaa !325
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 %i.ay, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !325
  %i.ba = add i64 %i.b, 1
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !427
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb7roaring20ContainerSegmentScanppEi.exit18, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZNK6duckdb7roaring31CompressedRunContainerScanState6VerifyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring24BitsetContainerScanStateC2EmmPm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !182
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb7roaring24BitsetContainerScanStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.d, align 8, !tbaa !436
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring24BitsetContainerScanState11ScanPartialERNS_6VectorEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %3, 63
  %i.b = or i64 %i.a, %2
  %or.cond = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !182  ; 3 uses
  %i.e = and i64 %i.d, 63
  %i.f = icmp eq i64 %i.e, 0
  %or.cond10 = select i1 %or.cond, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !436  ; 2 uses
  br i1 %or.cond10, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb20ValidityUncompressed11AlignedScanEPhmRNS_6VectorEm(ptr noundef %i.h, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3)
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !180
  tail call void @_ZN6duckdb20ValidityUncompressed13UnalignedScanEPhmmRNS_6VectorEmm(ptr noundef %i.h, i64 noundef %i.j, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !182
  %i.m = add i64 %i.l, %3
  store i64 %i.m, ptr %i.k, align 8, !tbaa !182
  ret void
}

declare void @_ZN6duckdb20ValidityUncompressed11AlignedScanEPhmRNS_6VectorEm(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #4

declare void @_ZN6duckdb20ValidityUncompressed13UnalignedScanEPhmmRNS_6VectorEmm(ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring24BitsetContainerScanState4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZNK6duckdb7roaring24BitsetContainerScanState6VerifyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring16RoaringScanStateC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::roaring::ContainerMetadataCollectionScanner", align 8 ; 9 uses
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring16RoaringScanStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.b, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZN6duckdb7roaring27ContainerMetadataCollectionC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !439
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.h)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2) #26 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = invoke noundef i64 @_ZNK6duckdb13ColumnSegment11SegmentSizeEv(ptr noundef nonnull align 8 dereferenceable(240) %1)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load i64, ptr %i.p, align 8, !tbaa !452  ; 2 uses
  %.not = icmp ult i64 %i.q, %i.o
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ba unwind label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.j:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.k:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.aw

bb.l:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.g
  %.043 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.043, label %bb.n, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.043, label %bb.n, label %bb.aw

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn56111 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.r) #26
  br label %bb.aw

bb.o:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !383
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !384
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.q ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !198
  %.0.copyload.i = load i64, ptr %i.af, align 1   ; 2 uses
  %.not48 = icmp ult i64 %.0.copyload.i, %i.o
  br i1 %.not48, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ba unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread: ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %.041 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.am) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.041, label %bb.v, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.041, label %bb.v, label %bb.aw

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn52114 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  call void @__cxa_free_exception(ptr %i.ai) #26
  br label %bb.aw

bb.w:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0.copyload.i
  %i.aq = load atomic i64, ptr %1 seq_cst, align 8 ; 3 uses
  %i.ar = lshr i64 %i.aq, 11
  %i.as = and i64 %i.aq, 2047
  %.not49 = icmp ne i64 %i.as, 0
  %i.at = zext i1 %.not49 to i64
  %spec.select = add nuw nsw i64 %i.ar, %i.at     ; 5 uses
  invoke void @_ZN6duckdb7roaring27ContainerMetadataCollection11DeserializeEPhm(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %i.ap, i64 noundef %spec.select)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN6duckdb7roaring34ContainerMetadataCollectionScannerC1ERNS0_27ContainerMetadataCollectionE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !453
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !190 ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb7roaring16RoaringScanState23GetStartOfContainerDataEm:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !454
  %i.e = load ptr, ptr %0, align 8, !tbaa !190    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !7
  store i64 %i.i, ptr %i.b, align 8, !tbaa !7
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !296

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_7roaring18ContainerScanStateESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring16RoaringScanState4SkipERNS0_18ContainerScanStateEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !180
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8, !tbaa !182
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring21RunContainerScanStateD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring31CompressedRunContainerScanStateD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring24BitsetContainerScanStateD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring19RoaringAnalyzeStateD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring19RoaringAnalyzeStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28
  br label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i:                 ; preds = %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i3.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #28
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !307  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #28
  br label %_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit, %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring19RoaringAnalyzeStateD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring19RoaringAnalyzeStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28, !inline_history !463
  br label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #28, !inline_history !463
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.c, %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #28, !inline_history !463
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i:               ; preds = %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i3.i.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #28, !inline_history !463
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i: ; preds = %bb.e, %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !307  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6duckdb7roaring19RoaringAnalyzeStateD2Ev.exit, label %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i

_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #28, !inline_history !463
  br label %_ZN6duckdb7roaring19RoaringAnalyzeStateD2Ev.exit

_ZN6duckdb7roaring19RoaringAnalyzeStateD2Ev.exit: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring20RoaringCompressStateD2Ev(ptr noundef nonnull align 8 dereferenceable(1144) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring20RoaringCompressStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.c) #26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #28
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i3.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148  ; 3 uses
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #26, !inline_history !380
  br label %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring20RoaringCompressStateD0Ev(ptr noundef nonnull align 8 dereferenceable(1144) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring20RoaringCompressStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #26, !inline_history !464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.c) #26, !inline_history !464
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #28, !inline_history !464
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #28, !inline_history !464
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #28, !inline_history !464
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i:               ; preds = %bb.c, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i3.i.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28, !inline_history !464
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %_ZN6duckdb7roaring20RoaringCompressStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #26, !inline_history !465
  br label %_ZN6duckdb7roaring20RoaringCompressStateD2Ev.exit

_ZN6duckdb7roaring20RoaringCompressStateD2Ev.exit: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring16RoaringScanStateD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN6duckdb7roaring16RoaringScanStateE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28, !inline_history !192
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #28, !inline_history !192
  br label %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #28, !inline_history !192
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.d, %_ZNSt6vectorIN6duckdb7roaring17ContainerMetadataESaIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28, !inline_history !192
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i:               ; preds = %bb.e, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3.i.i, label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #28, !inline_history !192
  br label %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i

_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194  ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i: ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #26, !inline_history !196
  br label %_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit

_ZN6duckdb7roaring16RoaringScanStateD2Ev.exit:    ; preds = %_ZN6duckdb7roaring27ContainerMetadataCollectionD2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb7roaring18ContainerScanStateEEclEPS2_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #26, !inline_history !192
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !466    ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !468
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !283  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !9
  %i.o = load i64, ptr %i.i, align 8, !tbaa !177
  store i64 %i.o, ptr %i.g, align 8, !tbaa !177
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !283
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !283
  store ptr %i.i, ptr %i.f, align 8, !tbaa !9
  store i64 0, ptr %i.q, align 8, !tbaa !283
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #28
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #28
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %"class.duckdb::shared_ptr", align 16 ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !172  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !350
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !175
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !491
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !491
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, !prof !178

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !172  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !175
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !469
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26, !inline_history !469
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i1 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !178

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #26
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.am = call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !492
  store ptr %i.an, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !496 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store i32 1, ptr %i.b, align 8, !tbaa !173, !noalias !496
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !175, !noalias !496
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !149, !noalias !496
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !7, !noalias !496
  store ptr null, ptr %i.d, align 8, !tbaa !499, !noalias !496
  %i.f = add i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #29
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !496 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  store ptr %i.i, ptr %i.d, align 8, !tbaa !492, !noalias !496
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 -1, i64 %i.h, i1 false), !tbaa !7, !noalias !496
  br label %bb.b

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #28, !noalias !496
  resume { ptr, i32 } %i.j

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  store ptr %i.d, ptr %0, align 8, !tbaa !501, !alias.scope !493
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !172, !alias.scope !493
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177, !noalias !493
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.b, align 8, !tbaa !3, !noalias !493
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !493 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i: ; preds = %bb.d, %bb.c
  %i.n = load atomic i64, ptr %i.b acquire, align 8, !noalias !493 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !173, !noalias !493
  store i32 0, ptr %i.c, align 4, !tbaa !175, !noalias !493
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !149, !noalias !493
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !493
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !noalias !493, !inline_history !502
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !149, !noalias !493
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !493
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !noalias !493, !inline_history !502
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177, !noalias !493
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.p, -1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !3, !noalias !493
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4, !noalias !493
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !178

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !noalias !493
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !501    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE13AssertNotNullEb.exit, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !492  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #28
  br label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit

_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !503  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
end_hunk_5
