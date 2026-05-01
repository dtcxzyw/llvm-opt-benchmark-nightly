inline.NumInlined: 1202
inline.NumDeleted: 418
begin_hunk_0_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.duckdb::unique_ptr.321", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.duckdb::Parser", align 8   ; 11 uses
  %15 = alloca %"struct.duckdb::ParserOptions", align 8 ; 5 uses
  %16 = alloca %"class.duckdb::vector.340", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  br i1 %.not289, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread, label %.lr.ph292

.lr.ph292:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.af
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.bz = and i64 %i.bs, 4294967295               ; 3 uses
  store ptr %i.ag, ptr %13, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i64 %i.bz, ptr %i.f, align 8, !tbaa !36
  %i.ca = icmp samesign ugt i64 %i.bz, 15
end_hunk_3
begin_hunk_4_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
.noexc93:                                         ; preds = %.noexc.i91
  store ptr %i.cb, ptr %13, align 8, !tbaa !15
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.cc, ptr %i.ag, align 8, !tbaa !14
  br label %._crit_edge.i.i90

._crit_edge.i.i90:                                ; preds = %.noexc93, %bb.l
  %i.cd = phi ptr [ %i.cb, %.noexc93 ], [ %i.ag, %bb.l ] ; 2 uses
  %trunc = trunc i64 %i.bs to i32
  switch i32 %trunc, label %bb.n [
    i32 1, label %bb.m
end_hunk_4
begin_hunk_5_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i90
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  store i64 %i.cf, ptr %i.ah, align 8, !tbaa !11
  %i.cg = load ptr, ptr %13, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !14
end_hunk_5
begin_hunk_6_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  store i8 1, ptr %15, align 8, !tbaa !331
  store i64 1000, ptr %i.ai, align 8, !tbaa !335
  store i8 0, ptr %i.aj, align 8, !tbaa !336
  invoke void @_ZN6duckdb6ParserC1ENS_13ParserOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull byval(%"struct.duckdb::ParserOptions") align 8 %15)
          to label %bb.p unwind label %bb.aa

end_hunk_6
begin_hunk_7_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.cq = load ptr, ptr %14, align 8, !tbaa !337  ; 4 uses
  store ptr %i.cq, ptr %16, align 8, !tbaa !337
  %22 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !340
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !341 ; 2 uses
  store <2 x ptr> %22, ptr %i.ak, align 8, !tbaa !340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store i64 0, ptr %i.ah, align 8, !tbaa !11
  %i.cs = load ptr, ptr %13, align 8, !tbaa !15
  store i8 0, ptr %i.cs, align 1, !tbaa !14
  %.not218287 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not218287, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pre = load ptr, ptr %16, align 8, !tbaa !337  ; 4 uses
  %.pre312 = load ptr, ptr %i.ak, align 8, !tbaa !341 ; 2 uses
  %.not4.i.i.i94 = icmp eq ptr %.pre, %.pre312
  br i1 %.not4.i.i.i94, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i95

end_hunk_7
begin_hunk_8_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.cy = load ptr, ptr %14, align 8, !tbaa !337  ; 3 uses
  %i.cz = load ptr, ptr %i.al, align 8, !tbaa !341 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.af
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.u
end_hunk_9
begin_hunk_10_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  store i64 0, ptr %i.gy, align 8, !tbaa !11
  store i8 0, ptr %i.gq, align 8, !tbaa !14
  %i.gz = load i64, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.ha = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.hb = sub i64 4611686018427387903, %i.ha
  %i.hc = icmp ult i64 %i.hb, %i.gz
  br i1 %i.hc, label %bb.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
end_hunk_10
begin_hunk_11_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0193.0288, i64 8 ; 2 uses
  %.not218 = icmp eq ptr %i.hl, %i.cr
  br i1 %.not218, label %._crit_edge, label %.lr.ph

bb.bj:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEdeEv.exit
end_hunk_11
begin_hunk_12_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  br label %bb.bs

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217: ; preds = %bb.o, %_ZN6duckdb6ParserD2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hy = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.hz = load i64, ptr %i.i, align 8, !tbaa !11
  %i.ia = sub i64 4611686018427387903, %i.hz
  %i.ib = icmp ult i64 %i.ia, %i.hy
end_hunk_12
begin_hunk_13_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i154
  %i.ie = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ag
  br i1 %i.if, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit157
end_hunk_13
begin_hunk_14_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
bb.bs:                                            ; preds = %.loopexit224, %.loopexit.split-lp225, %bb.bq
  %.pn59.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %lpad.loopexit226, %.loopexit224 ], [ %lpad.loopexit.split-lp227, %.loopexit.split-lp225 ] ; 2 uses
  %i.in = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ag
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.bs
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !337    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !341  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

end_hunk_15
begin_hunk_16_@_ZN6duckdb6ParserD2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !337    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !341  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_16
begin_hunk_17_@llvm.umin.i64
!337 = !{!338, !339, i64 0}
!338 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !339, i64 0, !339, i64 8, !339, i64 16}
!339 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!340 = !{!339, !339, i64 0}
!341 = !{!338, !339, i64 8}
!342 = !{!343, !343, i64 0}
!343 = !{!"p1 _ZTSN6duckdb12SQLStatementE", !10, i64 0}
!344 = distinct !{ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev, null, null, null, null, null}
end_hunk_17
