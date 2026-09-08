Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_table_func_system?download=true
inline.NumInlined: 14721
inline.NumDeleted: 5969
loop-unroll.NumCompletelyUnrolled: 87
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN6duckdbL21PragmaStorageInfoBindERNS_13ClientContextERNS_22TableFunctionBindInputERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE:bb.a
  %i.gz = load <2 x ptr>, ptr %11, align 16, !tbaa !1629
  store <2 x ptr> %i.gz, ptr %i.gt, align 8, !tbaa !1629
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hb = load ptr, ptr %i.ha, align 16, !tbaa !1630
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !1630
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb17ColumnSegmentInfoEEEvT_S5_(ptr noundef %i.gu, ptr noundef %i.gw)
          to label %_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i unwind label %bb.bf

_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.bd
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorINS_17ColumnSegmentInfoELb1ESaIS1_EEaSEOS3_.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gu) #29
  br label %_ZN6duckdb6vectorINS_17ColumnSegmentInfoELb1ESaIS1_EEaSEOS3_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #30
  unreachable

_ZN6duckdb6vectorINS_17ColumnSegmentInfoELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.be
  %i.he = load ptr, ptr %11, align 16, !tbaa !691
  %i.hf = load ptr, ptr %i.gy, align 8, !tbaa !690
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb17ColumnSegmentInfoEEEvT_S5_(ptr noundef %i.he, ptr noundef %i.hf)
          to label %_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.bh

_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZN6duckdb6vectorINS_17ColumnSegmentInfoELb1ESaIS1_EEaSEOS3_.exit
  %i.hg = load ptr, ptr %11, align 16, !tbaa !691 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hg) #29
  br label %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit

bb.bh:                                            ; preds = %_ZN6duckdb6vectorINS_17ColumnSegmentInfoELb1ESaIS1_EEaSEOS3_.exit
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #30
  unreachable

_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bg, %_ZSt8_DestroyIPN6duckdb17ColumnSegmentInfoES1_EvT_S3_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.hj = load ptr, ptr %10, align 8, !tbaa !695
  store ptr %i.hj, ptr %0, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.hk = load ptr, ptr %i.gi, align 8, !tbaa !97 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.hk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hn = load ptr, ptr %i.gh, align 8, !tbaa !97 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.hn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hq = load ptr, ptr %8, align 8, !tbaa !97    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZN6duckdb13QualifiedNameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.hq) #29
  br label %_ZN6duckdb13QualifiedNameD2Ev.exit

_ZN6duckdb13QualifiedNameD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.bi:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEEvDpOT_.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ax
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.hu, %bb.bj ], [ %i.ht, %bb.bi ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bs

bb.bl:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  %i.hw = load ptr, ptr %9, align 8, !tbaa !97    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.hw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.br

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %.noexc147, %bb.az
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bo:                                            ; preds = %bb.ba
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit156

.thread:                                          ; preds = %bb.bb
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNKSt14default_deleteIN6duckdb25PragmaStorageFunctionDataEEclEPS1_.exit.i155

bb.bp:                                            ; preds = %bb.bc
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb17ColumnSegmentInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  %.pre = load ptr, ptr %10, align 8, !tbaa !695  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not.i154 = icmp eq ptr %.pre, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit156, label %_ZNKSt14default_deleteIN6duckdb25PragmaStorageFunctionDataEEclEPS1_.exit.i155

_ZNKSt14default_deleteIN6duckdb25PragmaStorageFunctionDataEEclEPS1_.exit.i155: ; preds = %.thread, %bb.bp
  %.pn47230 = phi { ptr, i32 } [ %i.ic, %.thread ], [ %i.id, %bb.bp ]
  %i.ie = phi ptr [ %i.gl, %.thread ], [ %.pre, %bb.bp ] ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !75
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(64) %i.ie) #26, !inline_history !1624
  br label %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit156

_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit156: ; preds = %_ZNKSt14default_deleteIN6duckdb25PragmaStorageFunctionDataEEclEPS1_.exit.i155, %bb.bp, %bb.bo
  %.pn47.pn = phi { ptr, i32 } [ %i.ib, %bb.bo ], [ %i.id, %bb.bp ], [ %.pn47230, %_ZNKSt14default_deleteIN6duckdb25PragmaStorageFunctionDataEEclEPS1_.exit.i155 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bn, %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit156, %bb.bm
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.bm ], [ %.pn47.pn, %_ZNSt10unique_ptrIN6duckdb25PragmaStorageFunctionDataESt14default_deleteIS1_EED2Ev.exit156 ], [ %i.ia, %bb.bn ]
  call void @_ZN6duckdb13QualifiedNameD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #26
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn, %bb.bq ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bk
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn, %bb.br ], [ %.pn, %bb.bk ]
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19PragmaTableInfoInitERNS_13ClientContextERNS_22TableFunctionInitInputE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb23PragmaTableOperatorDataESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27, !noalias !1633 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb23PragmaTableOperatorDataE, i64 16), ptr %i.a, align 8, !tbaa !75, !noalias !1633
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !697, !noalias !1633
  store ptr %i.a, ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15PragmaTableInfo13GetColumnInfoERNS_17TableCatalogEntryERKNS_16ColumnDefinitionERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc i24 @_ZN6duckdbL16CheckConstraintsERNS_17TableCatalogEntryERKNS_16ColumnDefinitionE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(216) %1)
  tail call void @_ZN6duckdb16PragmaShowHelper15GetTableColumnsERKNS_16ColumnDefinitionENS_20ColumnConstraintInfoERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(216) %1, i24 %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc range(i24 0, 65794) i24 @_ZN6duckdbL16CheckConstraintsERNS_17TableCatalogEntryERKNS_16ColumnDefinitionE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb17TableCatalogEntry14GetConstraintsEv(ptr noundef nonnull align 8 dereferenceable(448) %0) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !580  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !580  ; 2 uses
  %.not46 = icmp eq ptr %i.b, %i.d
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.cont35, %bb.a
  %.sroa.034.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.034.1, %.cont35 ]
  %.sroa.5.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.5.1, %.cont35 ]
  %.sroa.3.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.3.1, %.cont35 ]
  %.sroa.5.0.insert.ext = zext nneg i8 %.sroa.5.0.lcssa to i24
  %.sroa.5.0.insert.shift = shl nuw nsw i24 %.sroa.5.0.insert.ext, 16
  %.sroa.3.0.insert.ext = zext nneg i8 %.sroa.3.0.lcssa to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.034.0.insert.ext = zext nneg i8 %.sroa.034.0.lcssa to i24
  %.sroa.034.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.034.0.insert.ext
  ret i24 %.sroa.034.0.insert.insert

bb.b:                                             ; preds = %.lr.ph, %.cont35
  %.sroa.3.050 = phi i8 [ 0, %.lr.ph ], [ %.sroa.3.1, %.cont35 ] ; 6 uses
  %.sroa.5.049 = phi i8 [ 0, %.lr.ph ], [ %.sroa.5.1, %.cont35 ] ; 6 uses
  %.sroa.034.048 = phi i8 [ 0, %.lr.ph ], [ %.sroa.034.1, %.cont35 ] ; 6 uses
  %.sroa.030.047 = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %.cont35 ] ; 4 uses
  %i.f = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.030.047)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !250
  switch i8 %i.h, label %.cont35 [
    i8 1, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.030.047)
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10Constraint4CastINS_17NotNullConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = call i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %1)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !272
  %i.n = icmp eq i64 %i.m, %i.l
  %spec.select = select i1 %i.n, i8 1, i8 %.sroa.034.048
  br label %.cont35

bb.d:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.030.047)
  %i.p = call noundef nonnull align 8 dereferenceable(49) ptr @_ZN6duckdb10Constraint4CastINS_16UniqueConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.o) ; 4 uses
  %i.q = call noundef zeroext i1 @_ZNK6duckdb16UniqueConstraint12IsPrimaryKeyEv(ptr noundef nonnull align 8 dereferenceable(49) %i.p) ; 4 uses
  %i.r = call noundef zeroext i1 @_ZNK6duckdb16UniqueConstraint8HasIndexEv(ptr noundef nonnull align 8 dereferenceable(49) %i.p)
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = call i64 @_ZNK6duckdb16UniqueConstraint8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(49) %i.p)
  %i.t = call i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %1)
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %.cont35

bb.f:                                             ; preds = %bb.e
  %spec.select38 = select i1 %i.q, i8 %.sroa.5.049, i8 1
  %spec.select39 = select i1 %i.q, i8 1, i8 %.sroa.3.050
  br label %.cont35

bb.g:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16UniqueConstraint14GetColumnNamesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.p) ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK6duckdb16ColumnDefinition7GetNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(216) %1)
  %i.z = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.w, ptr %i.y, ptr nonnull align 8 dereferenceable(32) %2)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit unwind label %bb.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit: ; preds = %bb.g
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !255
  %.not42 = icmp eq ptr %i.z, %i.aa
  %i.ab = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit
  call void @_ZdlPv(ptr noundef %i.ab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.not42, label %.cont35, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %spec.select40 = select i1 %i.q, i8 %.sroa.5.049, i8 1
  %spec.select41 = select i1 %i.q, i8 1, i8 %.sroa.3.050
  br label %.cont35

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.e
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ad

.cont35:                                          ; preds = %bb.h, %bb.f, %bb.c, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.sroa.034.1 = phi i8 [ %.sroa.034.048, %bb.b ], [ %.sroa.034.048, %bb.f ], [ %.sroa.034.048, %bb.h ], [ %.sroa.034.048, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.034.048, %bb.e ], [ %spec.select, %bb.c ] ; 2 uses
  %.sroa.5.1 = phi i8 [ %.sroa.5.049, %bb.b ], [ %spec.select38, %bb.f ], [ %spec.select40, %bb.h ], [ %.sroa.5.049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.5.049, %bb.e ], [ %.sroa.5.049, %bb.c ] ; 2 uses
  %.sroa.3.1 = phi i8 [ %.sroa.3.050, %bb.b ], [ %spec.select39, %bb.f ], [ %spec.select41, %bb.h ], [ %.sroa.3.050, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.3.050, %bb.e ], [ %.sroa.3.050, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.030.047, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16PragmaShowHelper15GetTableColumnsERKNS_16ColumnDefinitionENS_20ColumnConstraintInfoERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(216) %0, i24 %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !116
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !117
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !97
  %i.i = load i64, ptr %i.a, align 8, !tbaa !117
  store i64 %i.i, ptr %i.c, align 8, !tbaa !118
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !118
  store i8 %i.k, ptr %i.j, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !119
  %i.n = load ptr, ptr %5, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb9DataChunk8SetValueEmmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #26
  %i.p = load ptr, ptr %5, align 8, !tbaa !97     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.r = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
end_hunk_0
