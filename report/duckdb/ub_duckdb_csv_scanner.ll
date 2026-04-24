inline.NumInlined: 6127
inline.NumDeleted: 2467
begin_hunk_0_@_ZNK6duckdb18StringValueScanner10IsRowValidERNS_11CSVIteratorE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(930) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(1232) %i.az)
          to label %bb.t unwind label %bb.x       ; 5 uses

bb.t:                                             ; preds = %bb.s
  %i.be = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
end_hunk_0
begin_hunk_1_@_ZNK6duckdb18StringValueScanner10IsRowValidERNS_11CSVIteratorE:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 576
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !694 ; 3 uses
  %.not = icmp eq ptr %i.bi, %i.bk
  br i1 %.not, label %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %.not24 = icmp eq i64 %i.bn, 88
  br i1 %.not24, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.sroa.09.015.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bi, %bb.v ] ; 2 uses
  %i.bo = load i8, ptr %.sroa.09.015.i, align 8, !tbaa !665
  %.not.i = icmp eq i8 %i.bo, 6                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 88 ; 2 uses
  %.not13.not.i = icmp eq ptr %i.bp, %i.bk
  %or.cond = select i1 %.not.i, i1 true, i1 %.not13.not.i
  br i1 %or.cond, label %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit, label %.lr.ph.i

bb.w:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_15CSVErrorHandlerEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.bq = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZNK6duckdb18StringValueScanner10IsRowValidERNS_11CSVIteratorE:bb.a
          catch ptr @_ZTIN6duckdb9ExceptionE
  br label %bb.ac

_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit: ; preds = %.lr.ph.i, %bb.u
  %.016.not.a = phi i1 [ true, %bb.u ], [ %.not.i, %.lr.ph.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 256
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !678
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 928
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !534, !range !145, !noundef !146
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond.not = and i1 %.016.not.a, %i.by
  br i1 %or.cond.not, label %bb.ab, label %.thread

bb.aa:                                            ; preds = %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit
  br i1 %.016.not.a, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 880
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !874
  %i.cb = icmp eq i64 %i.ca, 0
end_hunk_2
begin_hunk_3_@_ZNK6duckdb18StringValueScanner10IsRowValidERNS_11CSVIteratorE:bb.a
          cleanup
  br label %bb.af

.thread:                                          ; preds = %bb.v, %bb.ad, %bb.z, %bb.aa, %bb.ab
  %.0 = phi i1 [ %i.cb, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.v ]
  %i.cg = load ptr, ptr %2, align 8, !tbaa !199   ; 3 uses
  %.not.i28 = icmp eq ptr %i.cg, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i
end_hunk_3
