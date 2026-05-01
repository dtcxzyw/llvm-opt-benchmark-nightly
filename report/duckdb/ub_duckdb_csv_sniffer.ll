inline.NumInlined: 6648
inline.NumDeleted: 2471
begin_hunk_0_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.duckdb::CSVIterator", align 8 ; 6 uses
  %5 = alloca %"struct.duckdb::CSVStateMachineOptions", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::shared_ptr.188", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::CSVIterator", align 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 45
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 46
end_hunk_1
begin_hunk_2_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a

.lr.ph222.split:                                  ; preds = %.lr.ph222, %._crit_edge
  %.125220 = phi i1 [ %.226.lcssa, %._crit_edge ], [ %.024227, %.lr.ph222 ] ; 2 uses
  %.sroa.093.0219 = phi ptr [ %i.ba, %._crit_edge ], [ %i.as, %.lr.ph222 ] ; 2 uses
  %12 = load <2 x i8>, ptr %.sroa.093.0219, align 1, !tbaa !100
  %i.ay = load ptr, ptr %2, align 8, !tbaa !763   ; 2 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !763 ; 2 uses
  %.not104215 = icmp eq ptr %i.ay, %i.az
  br i1 %.not104215, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph222.split
  %13 = shufflevector <2 x i8> %12, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %14 = shufflevector <4 x i8> <i8 0, i8 poison, i8 0, i8 poison>, <4 x i8> %13, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit, %.lr.ph222.split
  %.226.lcssa = phi i1 [ %.125220, %.lr.ph222.split ], [ %.428, %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %.not103 = icmp eq ptr %i.ba, %i.at
  br i1 %.not103, label %._crit_edge223, label %.lr.ph222.split, !llvm.loop !922

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit
  %.226217 = phi i1 [ %.428, %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit ], [ %.125220, %.lr.ph.preheader ] ; 2 uses
  %.sroa.089.0216 = phi ptr [ %i.iu, %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit ], [ %i.ay, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.t, ptr %6, align 8, !tbaa !98
  %i.bb = load ptr, ptr %.sroa.089.0216, align 8, !tbaa !103 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.089.0216, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !99 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %i.bf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bf, ptr %6, align 8, !tbaa !103
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !233
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.lr.ph
  %i.bh = phi ptr [ %i.bf, %.noexc.i ], [ %i.t, %.lr.ph ] ; 2 uses
  switch i64 %i.bd, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
end_hunk_4
begin_hunk_5_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !233 ; 2 uses
  store i64 %i.bj, ptr %i.u, align 8, !tbaa !99
  %i.bk = load ptr, ptr %6, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !100
end_hunk_5
begin_hunk_6_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 49
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !153, !range !154, !noundef !141
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.v, ptr %3, align 8, !tbaa !98
  %i.bq = load ptr, ptr %6, align 8, !tbaa !103   ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.t
  br i1 %i.br, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !99  ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  store ptr %i.bq, ptr %3, align 8, !tbaa !103
  %i.bv = load i64, ptr %i.t, align 8, !tbaa !100
  store i64 %i.bv, ptr %i.v, align 8, !tbaa !100
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.bw = phi ptr [ %i.v, %bb.g ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bx = phi i64 [ %i.bs, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  store i64 %i.bx, ptr %i.w, align 8, !tbaa !99
  store ptr %i.t, ptr %6, align 8, !tbaa !103
  store i64 0, ptr %i.u, align 8, !tbaa !99
  store i8 0, ptr %i.t, align 8, !tbaa !100
  store i8 0, ptr %5, align 8, !tbaa !332
  store ptr %i.y, ptr %i.x, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !233
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i36 unwind label %bb.k ; 2 uses

.noexc.i36:                                       ; preds = %.noexc.i.i.i
  store ptr %i.bz, ptr %i.x, align 8, !tbaa !103
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.ca, ptr %i.y, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cb = phi ptr [ %i.bz, %.noexc.i36 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  switch i64 %i.bx, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
end_hunk_6
begin_hunk_7_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !233 ; 2 uses
  store i64 %i.cd, ptr %i.z, align 8, !tbaa !99
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !103
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cg = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.v
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
end_hunk_7
begin_hunk_8_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.v
  br i1 %i.ck, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.k
end_hunk_8
begin_hunk_9_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store <4 x i8> %14, ptr %i.aa, align 8, !tbaa !100
  store i8 0, ptr %i.ab, align 4, !tbaa !365
  store i8 %i.bm, ptr %i.ac, align 1, !tbaa !366
  store i8 0, ptr %i.ad, align 2, !tbaa !268
end_hunk_9
begin_hunk_10_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  store i8 %i.bp, ptr %i.ag, align 1, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cl = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.t
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
end_hunk_10
begin_hunk_11_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.ep = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.t
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_11
begin_hunk_12_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a

_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit: ; preds = %bb.at, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i76, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.is = load ptr, ptr %i.x, align 8, !tbaa !103 ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.y
  br i1 %i.it, label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit
end_hunk_12
begin_hunk_13_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
.body38:                                          ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83, %bb.be, %bb.bc, %bb.af, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb15CSVStateMachineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn31.pn.pn = phi { ptr, i32 } [ %i.ct, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb15CSVStateMachineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ], [ %i.er, %bb.af ], [ %.pn31.pn, %bb.bc ], [ %.pn31.pn, %bb.be ], [ %.pn31.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83 ], [ %.pn31.pn, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.jq = load ptr, ptr %i.x, align 8, !tbaa !103 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.y
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split: ; preds = %.body38, %.body
end_hunk_13
