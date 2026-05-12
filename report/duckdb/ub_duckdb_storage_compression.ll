inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %12 = alloca %"struct.duckdb::SelectionVector", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.du = zext i16 %i.dt to i64                   ; 3 uses
  %i.dv = sub i64 %i.du, %i.dq                    ; 5 uses
  %i.dw = sub nuw i64 %i.dl, %.0133206            ; 5 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.dr
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.dx, align 8 ; 6 uses
  %i.dy = icmp ugt i64 %i.dv, %i.dw
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !1096
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
end_hunk_1
begin_hunk_2_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %niter320 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %niter320.next.1, %.lr.ph214 ]
  %i.ef = add i64 %.0110213, %.0133206            ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.ef
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eg, align 8
  %i.eh = trunc i64 %i.ef to i32
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1124212
end_hunk_2
begin_hunk_3_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.ek = or disjoint i64 %.0110213, 1
  %i.el = add i64 %i.ek, %.0133206                ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.el
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.em, align 8
  %i.en = trunc i64 %i.el to i32
  %i.eo = load ptr, ptr %12, align 8, !tbaa !439
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %.1124212
end_hunk_3
begin_hunk_4_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.et = add i64 %.0110213.epil.init, %.0133206  ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.et
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eu, align 8
  %i.ev = trunc i64 %i.et to i32
  %i.ew = load ptr, ptr %12, align 8, !tbaa !439
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.1124212.epil.init
end_hunk_4
begin_hunk_5_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %.2125 = phi i64 [ %.0123208, %bb.aj ], [ %.lcssa, %.thread.loopexit ]
  %i.fa = add i64 %i.ez, %i.dw
  store i64 %i.fa, ptr %i.dp, align 8, !tbaa !1678
  br label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
end_hunk_5
begin_hunk_6_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %niter311 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %niter311.next.1, %.lr.ph204 ]
  %i.fe = add i64 %.0109203, %.0133206            ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fe
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ff, align 8
  %i.fg = trunc i64 %i.fe to i32
  %i.fh = load ptr, ptr %12, align 8, !tbaa !439
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.3126202
end_hunk_6
begin_hunk_7_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.fj = or disjoint i64 %.0109203, 1
  %i.fk = add i64 %i.fj, %.0133206                ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fk
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.fl, align 8
  %i.fm = trunc i64 %i.fk to i32
  %i.fn = load ptr, ptr %12, align 8, !tbaa !439
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %.3126202
end_hunk_7
begin_hunk_8_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.fs = add i64 %.0109203.epil.init, %.0133206  ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fs
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ft, align 8
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = load ptr, ptr %12, align 8, !tbaa !439
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.3126202.epil.init
end_hunk_8
begin_hunk_9_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.ga = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.do, align 8, !tbaa !1677
  store i64 0, ptr %i.dp, align 8, !tbaa !1678
  %i.gb = icmp ult i64 %i.fz, %i.dl
  br i1 %i.gb, label %bb.ai, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit

end_hunk_9
begin_hunk_10_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a

bb.aq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit156
  %i.gx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
end_hunk_10
begin_hunk_11_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ha = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ha) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_11
begin_hunk_12_@_ZN6duckdb12RLEScanStateINS_9hugeint_tEED0Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %i.ar = sub i64 %i.aq, %i.am                    ; 4 uses
  %i.as = sub nuw i64 %i.ak, %.04960              ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.an
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.at, align 8 ; 10 uses
  %i.au = icmp ugt i64 %i.ar, %i.as
  br i1 %i.au, label %.preheader, label %.preheader57, !prof !67

end_hunk_13
begin_hunk_14_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.04863.epil = phi i64 [ %.04863.epil.init, %.epil.preheader89 ], [ %i.bd, %bb.e ] ; 2 uses
  %epil.iter93 = phi i64 [ 0, %.epil.preheader89 ], [ %epil.iter93.next, %bb.e ]
  %i.bc = getelementptr [16 x i8], ptr %i.ay, i64 %.04863.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.04863.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
end_hunk_14
begin_hunk_15_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.be = phi i64 [ %.pre71, %.thread.loopexit ], [ %i.am, %.preheader ]
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.o, align 8, !tbaa !1678
  br label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph64.new
  %.04863 = phi i64 [ 0, %.lr.ph64.new ], [ %i.bn, %bb.f ] ; 5 uses
  %niter97 = phi i64 [ 0, %.lr.ph64.new ], [ %niter97.next.3, %bb.f ]
  %i.bg = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bg, align 8
  %i.bh = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bi, align 8
  %i.bj = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bk, align 8
  %i.bl = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bm, align 8
  %i.bn = add nuw i64 %.04863, 4                  ; 2 uses
  %niter97.next.3 = add i64 %niter97, 4           ; 2 uses
  %niter97.ncmp.3 = icmp eq i64 %niter97.next.3, %unroll_iter96
end_hunk_15
begin_hunk_16_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.059 = phi i64 [ 0, %.lr.ph.new ], [ %i.bv, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bo = getelementptr [16 x i8], ptr %i.av, i64 %.059
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bo, align 8
  %i.bp = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bq, align 8
  %i.br = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bs, align 8
  %i.bt = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bu, align 8
  %i.bv = add nuw i64 %.059, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_16
begin_hunk_17_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.059.epil = phi i64 [ %.059.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bw = getelementptr [16 x i8], ptr %i.av, i64 %.059.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bw, align 8
  %i.bx = add nuw i64 %.059.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_17
begin_hunk_18_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.ca = add i64 %i.by, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !1677
  store i64 0, ptr %i.o, align 8, !tbaa !1678
  %i.cb = icmp ult i64 %i.bz, %i.ak
  br i1 %i.cb, label %.lr.ph62, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

end_hunk_18
begin_hunk_19_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = sub i64 %i.y, %i.u                       ; 4 uses
  %i.aa = sub nuw i64 %i.s, %.04959               ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.ab, align 8 ; 10 uses
  %i.ac = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ac, label %.preheader, label %.preheader56, !prof !67

end_hunk_20
begin_hunk_21_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.04862.epil = phi i64 [ %.04862.epil.init, %.epil.preheader88 ], [ %i.al, %bb.b ] ; 2 uses
  %epil.iter92 = phi i64 [ 0, %.epil.preheader88 ], [ %epil.iter92.next, %bb.b ]
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %.04862.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ak, align 8
  %i.al = add nuw i64 %.04862.epil, 1
  %epil.iter92.next = add i64 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i64 %epil.iter92.next, %xtraiter91
end_hunk_21
begin_hunk_22_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.am = phi i64 [ %.pre70, %.thread.loopexit ], [ %i.u, %.preheader ]
  %i.an = add i64 %i.am, %i.aa
  store i64 %i.an, ptr %i.o, align 8, !tbaa !1678
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph63.new
  %.04862 = phi i64 [ 0, %.lr.ph63.new ], [ %i.av, %bb.c ] ; 5 uses
  %niter96 = phi i64 [ 0, %.lr.ph63.new ], [ %niter96.next.3, %bb.c ]
  %i.ao = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ao, align 8
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aq, align 8
  %i.ar = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.as, align 8
  %i.at = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.au = getelementptr i8, ptr %i.at, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.au, align 8
  %i.av = add nuw i64 %.04862, 4                  ; 2 uses
  %niter96.next.3 = add i64 %niter96, 4           ; 2 uses
  %niter96.ncmp.3 = icmp eq i64 %niter96.next.3, %unroll_iter95
end_hunk_22
begin_hunk_23_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.058 = phi i64 [ 0, %.lr.ph.new ], [ %i.bd, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.aw = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aw, align 8
  %i.ax = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ba, align 8
  %i.bb = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.058, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_23
begin_hunk_24_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.058.epil = phi i64 [ %.058.epil.init, %.epil.preheader ], [ %i.bf, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.be = getelementptr [16 x i8], ptr %i.ad, i64 %.058.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.be, align 8
  %i.bf = add nuw i64 %.058.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_24
begin_hunk_25_@_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.bi = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !1677
  store i64 0, ptr %i.o, align 8, !tbaa !1678
  %i.bj = icmp ult i64 %i.bh, %i.s
  br i1 %i.bj, label %.lr.ph61, label %.loopexit

end_hunk_25
begin_hunk_26_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %12 = alloca %"struct.duckdb::SelectionVector", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_26
begin_hunk_27_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.du = zext i16 %i.dt to i64                   ; 3 uses
  %i.dv = sub i64 %i.du, %i.dq                    ; 5 uses
  %i.dw = sub nuw i64 %i.dl, %.0133206            ; 5 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.dr
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.dx, align 8 ; 6 uses
  %i.dy = icmp ugt i64 %i.dv, %i.dw
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !1096
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
end_hunk_27
begin_hunk_28_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %niter320 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %niter320.next.1, %.lr.ph214 ]
  %i.ef = add i64 %.0110213, %.0133206            ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.ef
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eg, align 8
  %i.eh = trunc i64 %i.ef to i32
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1124212
end_hunk_28
begin_hunk_29_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.ek = or disjoint i64 %.0110213, 1
  %i.el = add i64 %i.ek, %.0133206                ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.el
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.em, align 8
  %i.en = trunc i64 %i.el to i32
  %i.eo = load ptr, ptr %12, align 8, !tbaa !439
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %.1124212
end_hunk_29
begin_hunk_30_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.et = add i64 %.0110213.epil.init, %.0133206  ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.et
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eu, align 8
  %i.ev = trunc i64 %i.et to i32
  %i.ew = load ptr, ptr %12, align 8, !tbaa !439
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.1124212.epil.init
end_hunk_30
begin_hunk_31_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %.2125 = phi i64 [ %.0123208, %bb.aj ], [ %.lcssa, %.thread.loopexit ]
  %i.fa = add i64 %i.ez, %i.dw
  store i64 %i.fa, ptr %i.dp, align 8, !tbaa !1728
  br label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
end_hunk_31
begin_hunk_32_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %niter311 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %niter311.next.1, %.lr.ph204 ]
  %i.fe = add i64 %.0109203, %.0133206            ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fe
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ff, align 8
  %i.fg = trunc i64 %i.fe to i32
  %i.fh = load ptr, ptr %12, align 8, !tbaa !439
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.3126202
end_hunk_32
begin_hunk_33_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.fj = or disjoint i64 %.0109203, 1
  %i.fk = add i64 %i.fj, %.0133206                ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fk
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.fl, align 8
  %i.fm = trunc i64 %i.fk to i32
  %i.fn = load ptr, ptr %12, align 8, !tbaa !439
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %.3126202
end_hunk_33
begin_hunk_34_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.fs = add i64 %.0109203.epil.init, %.0133206  ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fs
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ft, align 8
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = load ptr, ptr %12, align 8, !tbaa !439
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.3126202.epil.init
end_hunk_34
begin_hunk_35_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.ga = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.do, align 8, !tbaa !1727
  store i64 0, ptr %i.dp, align 8, !tbaa !1728
  %i.gb = icmp ult i64 %i.fz, %i.dl
  br i1 %i.gb, label %bb.ai, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit

end_hunk_35
begin_hunk_36_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a

bb.aq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit156
  %i.gx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
end_hunk_36
begin_hunk_37_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ha = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ha) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_37
begin_hunk_38_@_ZN6duckdb12RLEScanStateINS_10uhugeint_tEED0Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_38
begin_hunk_39_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %i.ar = sub i64 %i.aq, %i.am                    ; 4 uses
  %i.as = sub nuw i64 %i.ak, %.04960              ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.an
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.at, align 8 ; 10 uses
  %i.au = icmp ugt i64 %i.ar, %i.as
  br i1 %i.au, label %.preheader, label %.preheader57, !prof !67

end_hunk_39
begin_hunk_40_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.04863.epil = phi i64 [ %.04863.epil.init, %.epil.preheader89 ], [ %i.bd, %bb.e ] ; 2 uses
  %epil.iter93 = phi i64 [ 0, %.epil.preheader89 ], [ %epil.iter93.next, %bb.e ]
  %i.bc = getelementptr [16 x i8], ptr %i.ay, i64 %.04863.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.04863.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
end_hunk_40
begin_hunk_41_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.be = phi i64 [ %.pre71, %.thread.loopexit ], [ %i.am, %.preheader ]
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.o, align 8, !tbaa !1728
  br label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph64.new
  %.04863 = phi i64 [ 0, %.lr.ph64.new ], [ %i.bn, %bb.f ] ; 5 uses
  %niter97 = phi i64 [ 0, %.lr.ph64.new ], [ %niter97.next.3, %bb.f ]
  %i.bg = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bg, align 8
  %i.bh = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bi, align 8
  %i.bj = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bk, align 8
  %i.bl = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bm, align 8
  %i.bn = add nuw i64 %.04863, 4                  ; 2 uses
  %niter97.next.3 = add i64 %niter97, 4           ; 2 uses
  %niter97.ncmp.3 = icmp eq i64 %niter97.next.3, %unroll_iter96
end_hunk_41
begin_hunk_42_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.059 = phi i64 [ 0, %.lr.ph.new ], [ %i.bv, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bo = getelementptr [16 x i8], ptr %i.av, i64 %.059
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bo, align 8
  %i.bp = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bq, align 8
  %i.br = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bs, align 8
  %i.bt = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bu, align 8
  %i.bv = add nuw i64 %.059, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_42
begin_hunk_43_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.059.epil = phi i64 [ %.059.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bw = getelementptr [16 x i8], ptr %i.av, i64 %.059.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bw, align 8
  %i.bx = add nuw i64 %.059.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_43
begin_hunk_44_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.ca = add i64 %i.by, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !1727
  store i64 0, ptr %i.o, align 8, !tbaa !1728
  %i.cb = icmp ult i64 %i.bz, %i.ak
  br i1 %i.cb, label %.lr.ph62, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

end_hunk_44
begin_hunk_45_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_45
begin_hunk_46_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = sub i64 %i.y, %i.u                       ; 4 uses
  %i.aa = sub nuw i64 %i.s, %.04959               ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.ab, align 8 ; 10 uses
  %i.ac = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ac, label %.preheader, label %.preheader56, !prof !67

end_hunk_46
begin_hunk_47_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.04862.epil = phi i64 [ %.04862.epil.init, %.epil.preheader88 ], [ %i.al, %bb.b ] ; 2 uses
  %epil.iter92 = phi i64 [ 0, %.epil.preheader88 ], [ %epil.iter92.next, %bb.b ]
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %.04862.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ak, align 8
  %i.al = add nuw i64 %.04862.epil, 1
  %epil.iter92.next = add i64 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i64 %epil.iter92.next, %xtraiter91
end_hunk_47
begin_hunk_48_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.am = phi i64 [ %.pre70, %.thread.loopexit ], [ %i.u, %.preheader ]
  %i.an = add i64 %i.am, %i.aa
  store i64 %i.an, ptr %i.o, align 8, !tbaa !1728
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph63.new
  %.04862 = phi i64 [ 0, %.lr.ph63.new ], [ %i.av, %bb.c ] ; 5 uses
  %niter96 = phi i64 [ 0, %.lr.ph63.new ], [ %niter96.next.3, %bb.c ]
  %i.ao = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ao, align 8
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aq, align 8
  %i.ar = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.as, align 8
  %i.at = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.au = getelementptr i8, ptr %i.at, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.au, align 8
  %i.av = add nuw i64 %.04862, 4                  ; 2 uses
  %niter96.next.3 = add i64 %niter96, 4           ; 2 uses
  %niter96.ncmp.3 = icmp eq i64 %niter96.next.3, %unroll_iter95
end_hunk_48
begin_hunk_49_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.058 = phi i64 [ 0, %.lr.ph.new ], [ %i.bd, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.aw = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aw, align 8
  %i.ax = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ba, align 8
  %i.bb = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.058, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_49
begin_hunk_50_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %.058.epil = phi i64 [ %.058.epil.init, %.epil.preheader ], [ %i.bf, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.be = getelementptr [16 x i8], ptr %i.ad, i64 %.058.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.be, align 8
  %i.bf = add nuw i64 %.058.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_50
begin_hunk_51_@_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.bi = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !1727
  store i64 0, ptr %i.o, align 8, !tbaa !1728
  %i.bj = icmp ult i64 %i.bh, %i.s
  br i1 %i.bj, label %.lr.ph61, label %.loopexit

end_hunk_51
