inline.NumInlined: 1122
inline.NumDeleted: 775
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef readonly byval(%"struct.v8::MeasureMemoryDelegate::Result") align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::(anonymous namespace)::MemoryMeasurementResultBuilder", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  store ptr %i.bi, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 344 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bl, i8 0, i64 25, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.cd, ptr %i.bv, align 8
  store i64 %i.bu, ptr %.0.i.i.i.i, align 8
  %i.ce = tail call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr nonnull %.0.i.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #17 ; 6 uses
  store ptr %i.ce, ptr %3, align 8
  %i.cf = add i64 %.0.lcssa, %i.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 7640
  %i.ch = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder9NewResultEmmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %2, i64 noundef %.0.lcssa, i64 noundef %.0.lcssa, i64 noundef %i.cf)
end_hunk_2
begin_hunk_3_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit140.unr-lcssa, label %.lr.ph.split, !llvm.loop !13

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilderC2EPNS_7IsolateE.exit
  %.sroa.0.0.copyload.i.i.i.i.i39 = load i64, ptr %i.bk, align 8
  %i.de = add i64 %.sroa.0.0.copyload.i.i.i.i.i39, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit

bb.q:                                             ; preds = %bb.p
  %i.fi = add i64 %.032.lcssa, %i.b
end_hunk_4
begin_hunk_5_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  %.pre = load i8, ptr %i.fj, align 8, !range !22
  %i.hy = trunc nuw i8 %.pre to i1
  %i.hz = ptrtoint ptr %i.hu to i64
  br i1 %i.hy, label %.loopexit.thread, label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit

.loopexit.thread:                                 ; preds = %bb.q, %.loopexit
  %i.ia = phi i64 [ %i.hz, %.loopexit ], [ 0, %bb.q ]
end_hunk_5
begin_hunk_6_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.loopexit.thread
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bi, i64 6960
  %i.ik = load i64, ptr %i.ih, align 8
  %i.il = add i64 %i.ik, -1
end_hunk_6
begin_hunk_7_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  %i.ip = lshr i64 %i.io, 32
  %i.iq = trunc nuw i64 %i.ip to i32
  %i.ir = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr nonnull %i.ih, i8 noundef zeroext 3, i32 noundef %i.iq, i8 noundef zeroext 0) #17
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %i.bi, ptr %i.ce, ptr nonnull %i.ij, ptr %i.ir, i32 noundef 0) #17
  br label %_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph.preheader.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24

_ZN2v88internal12_GLOBAL__N_130MemoryMeasurementResultBuilder5BuildEv.exit: ; preds = %.loopexit, %bb.p, %._crit_edge.i
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jm = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.jn = load ptr, ptr %i.jl, align 8, !nonnull !5, !noundef !5
end_hunk_8
begin_hunk_9_@_ZN2v88internal21MeasureMemoryDelegate19MeasurementCompleteENS_21MeasureMemoryDelegate6ResultE:bb.a
  %i.jz = inttoptr i64 %i.jy to ptr
  store ptr %i.jz, ptr %i.jr, align 8
  store i64 %i.jo, ptr %.0.i.i, align 8
  %i.ka = tail call i16 @_ZN2v87Promise8Resolver7ResolveENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, ptr nonnull %.sroa.054.0, ptr %i.ce) #17
  %i.kb = trunc i16 %i.ka to i1
  br i1 %i.kb, label %bb.ag, label %bb.ae

end_hunk_9
