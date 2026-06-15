inline.NumInlined: 2416
inline.NumDeleted: 1256
begin_hunk_0_@_ZN6duckdb19VariantColumnWriter21AnalyzeSchemaFinalizeERKNS_25ParquetAnalyzeSchemaStateE:bb.a
bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60, %bb.u
  store ptr %i.dy, ptr %i.h, align 8, !tbaa !57
  store ptr %i.eu, ptr %i.i, align 8, !tbaa !54
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ev, ptr %i.ap, align 8, !tbaa !394
  %.pr103 = load ptr, ptr %8, align 8, !tbaa !68  ; 3 uses
  %.not.i67 = icmp eq ptr %.pr103, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i68: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66
  %i.ew = load ptr, ptr %.pr103, align 8, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %.pr103) #21, !inline_history !409
  br label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit69: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66, %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i68
  %i.ez = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.dd
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit69
  call void @_ZdlPv(ptr noundef %i.ez) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.fb = load ptr, ptr %9, align 8, !tbaa !390   ; 3 uses
  %i.fc = load ptr, ptr %i.cx, align 8, !tbaa !389 ; 2 uses
  %.not4.i.i.i73 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not4.i.i.i73, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77
  %.05.i.i.i75 = phi ptr [ %i.fg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 3 uses
  %i.fd = load ptr, ptr %.05.i.i.i75, align 8, !tbaa !67 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i74
  call void @_ZdlPv(ptr noundef %i.fd) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77: ; preds = %.lr.ph.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 32 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.fg, %i.fc
  br i1 %.not.i.i.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79, label %.lr.ph.i.i.i74, !llvm.loop !410

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77
  %.pr.i80 = load ptr, ptr %9, align 8, !tbaa !390
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.fh = phi ptr [ %.pr.i80, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %.not.i.i1.i82 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i82, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.x:                                             ; preds = %bb.d
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit87

bb.ab:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  %.not.i85 = icmp eq ptr %i.fn, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i86: ; preds = %bb.ab
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !65
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.fn) #21, !inline_history !409
  br label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i86, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.aa ], [ %i.fm, %bb.ab ], [ %i.fm, %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i86 ]
  %i.fr = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ag
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit87
  call void @_ZdlPv(ptr noundef %i.fr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fk, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #21
  br label %.body

.body:                                            ; preds = %bb.y, %bb.h, %bb.g, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ac ], [ %i.fj, %bb.y ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i38, %.noexc.i.i.i41
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.ae:                                            ; preds = %._crit_edge.i.i47
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit93

bb.af:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12ColumnWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i52, %bb.t
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %8, align 8, !tbaa !68    ; 3 uses
  %.not.i91 = icmp eq ptr %i.fw, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit93, label %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i92

_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i92: ; preds = %bb.af
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.fw) #21, !inline_history !409
  br label %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit93

_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit93: ; preds = %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i92, %bb.af, %bb.ae
  %.pn24 = phi { ptr, i32 } [ %i.fu, %bb.ae ], [ %i.fv, %bb.af ], [ %i.fv, %_ZNKSt14default_deleteIN6duckdb12ColumnWriterEEclEPS1_.exit.i92 ]
  %i.ga = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.dd
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit93
  call void @_ZdlPv(ptr noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt10unique_ptrIN6duckdb12ColumnWriterESt14default_deleteIS1_EED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #21
  br label %.body44

.body44:                                          ; preds = %bb.ad, %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.ft, %bb.ad ], [ %i.db, %bb.q ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ag

bb.ag:                                            ; preds = %.body44, %.body
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %.body44 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.x
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.ag ], [ %i.fi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.c
  %.pn24.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn.pn, %bb.ah ], [ %i.c, %bb.c ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL21ConstructShreddedTypeERKNS_18VariantAnalyzeDataERNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %18 = alloca %"struct.duckdb::(anonymous namespace)::ShredAnalysisState", align 8 ; 73 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %21 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %22 = alloca %"class.duckdb::vector.25", align 8 ; 11 uses
  %23 = alloca %"struct.duckdb::LogicalType", align 8 ; 10 uses
  %24 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %25 = alloca %"class.duckdb::vector.25", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store i64 0, ptr %18, align 8, !tbaa !423
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 21 uses
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 noundef zeroext 0)
  %i.b = load i64, ptr %0, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i64, ptr %i.c, align 8, !tbaa !225
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 noundef zeroext 13)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.c

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.b
  %i.f = load i8, ptr %19, align 8, !tbaa !71
  store i8 %i.f, ptr %1, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %19, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !186
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !106
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !106
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !106
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.az

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.o, align 8, !tbaa !89  ; 2 uses
  %i.p = load i64, ptr %18, align 8, !tbaa !423   ; 2 uses
  %.not.i = icmp ugt i64 %.val, %i.p
  br i1 %.not.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i, label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE1ELNS_13LogicalTypeIdE10EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i: ; preds = %bb.d
  store i64 %.val, ptr %18, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 10)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i
  %i.q = load i8, ptr %17, align 8, !tbaa !71
  store i8 %i.q, ptr %i.a, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !186
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.s, ptr %i.t, align 1, !tbaa !186
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !106
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !106
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !106
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %.pre = load i64, ptr %18, align 8, !tbaa !423
  br label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE1ELNS_13LogicalTypeIdE10EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE1ELNS_13LogicalTypeIdE10EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit: ; preds = %.noexc, %bb.d
  %i.y = phi i64 [ %.pre, %.noexc ], [ %i.p, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val77 = load i64, ptr %i.z, align 8, !tbaa !89 ; 2 uses
  %.not.i91 = icmp ugt i64 %.val77, %i.y
  br i1 %.not.i91, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i92, label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE3ELNS_13LogicalTypeIdE11EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i92: ; preds = %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE1ELNS_13LogicalTypeIdE10EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  store i64 %.val77, ptr %18, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 11)
          to label %.noexc93 unwind label %bb.j

.noexc93:                                         ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i92
  %i.aa = load i8, ptr %16, align 8, !tbaa !71
  store i8 %i.aa, ptr %i.a, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !106
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !106
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !106
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %.pre186 = load i64, ptr %18, align 8, !tbaa !423
  br label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE3ELNS_13LogicalTypeIdE11EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE3ELNS_13LogicalTypeIdE11EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit: ; preds = %.noexc93, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE1ELNS_13LogicalTypeIdE10EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  %i.ai = phi i64 [ %.pre186, %.noexc93 ], [ %i.y, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE1ELNS_13LogicalTypeIdE10EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val78 = load i64, ptr %i.aj, align 8, !tbaa !89 ; 2 uses
  %.not.i94 = icmp ugt i64 %.val78, %i.ai
  br i1 %.not.i94, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i95, label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE4ELNS_13LogicalTypeIdE12EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i95: ; preds = %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE3ELNS_13LogicalTypeIdE11EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  store i64 %.val78, ptr %18, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 noundef zeroext 12)
          to label %.noexc96 unwind label %bb.j

.noexc96:                                         ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i95
  %i.ak = load i8, ptr %15, align 8, !tbaa !71
  store i8 %i.ak, ptr %i.a, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !186
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.am, ptr %i.an, align 1, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !106
  %i.ar = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !106
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !106
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %.pre187 = load i64, ptr %18, align 8, !tbaa !423
  br label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE4ELNS_13LogicalTypeIdE12EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE4ELNS_13LogicalTypeIdE12EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit: ; preds = %.noexc96, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE3ELNS_13LogicalTypeIdE11EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  %i.as = phi i64 [ %.pre187, %.noexc96 ], [ %i.ai, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE3ELNS_13LogicalTypeIdE11EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val79 = load i64, ptr %i.at, align 8, !tbaa !89 ; 2 uses
  %.not.i97 = icmp ugt i64 %.val79, %i.as
  br i1 %.not.i97, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i98, label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE5ELNS_13LogicalTypeIdE13EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i98: ; preds = %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE4ELNS_13LogicalTypeIdE12EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  store i64 %.val79, ptr %18, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 noundef zeroext 13)
          to label %.noexc99 unwind label %bb.j

.noexc99:                                         ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i98
  %i.au = load i8, ptr %14, align 8, !tbaa !71
  store i8 %i.au, ptr %i.a, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !186
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !186
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !106
  %i.bb = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !106
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !106
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pre188 = load i64, ptr %18, align 8, !tbaa !423
  br label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE5ELNS_13LogicalTypeIdE13EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE5ELNS_13LogicalTypeIdE13EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit: ; preds = %.noexc99, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE4ELNS_13LogicalTypeIdE12EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  %i.bc = phi i64 [ %.pre188, %.noexc99 ], [ %i.as, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE4ELNS_13LogicalTypeIdE12EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val80 = load i64, ptr %i.bd, align 8, !tbaa !89 ; 2 uses
  %.not.i100 = icmp ugt i64 %.val80, %i.bc
  br i1 %.not.i100, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i101, label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE6ELNS_13LogicalTypeIdE14EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i101: ; preds = %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE5ELNS_13LogicalTypeIdE13EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  store i64 %.val80, ptr %18, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 noundef zeroext 14)
          to label %.noexc102 unwind label %bb.j

.noexc102:                                        ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i101
  %i.be = load i8, ptr %13, align 8, !tbaa !71
  store i8 %i.be, ptr %i.a, align 8, !tbaa !71
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !186
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !106
  %i.bl = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !106
  store <2 x ptr> %i.bk, ptr %i.bi, align 8, !tbaa !106
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %.pre189 = load i64, ptr %18, align 8, !tbaa !423
  br label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE6ELNS_13LogicalTypeIdE14EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE6ELNS_13LogicalTypeIdE14EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit: ; preds = %.noexc102, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE5ELNS_13LogicalTypeIdE13EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  %i.bm = phi i64 [ %.pre189, %.noexc102 ], [ %i.bc, %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE5ELNS_13LogicalTypeIdE13EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val81 = load i64, ptr %i.bn, align 8, !tbaa !89 ; 2 uses
  %.not.i103 = icmp ugt i64 %.val81, %i.bm
  br i1 %.not.i103, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i104, label %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE13ELNS_13LogicalTypeIdE22EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i.i104: ; preds = %_ZN6duckdbL14CheckPrimitiveILNS_18VariantLogicalTypeE6ELNS_13LogicalTypeIdE14EEEvRKNS_18VariantAnalyzeDataERNS_12_GLOBAL__N_118ShredAnalysisStateE.exit
  store i64 %.val81, ptr %18, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
end_hunk_0
begin_hunk_1_@_ZN6duckdbL21ConstructShreddedTypeERKNS_18VariantAnalyzeDataERNS_11LogicalTypeE:bb.a
bb.aa:                                            ; preds = %bb.x
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJRKS6_RS8_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %.sroa.0173.0 = load ptr, ptr %.sroa.0173.0184, align 8, !tbaa !425 ; 2 uses
  %.not = icmp eq ptr %.sroa.0173.0, null
  br i1 %.not, label %.critedge76, label %.lr.ph

bb.ac:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.hi, %bb.z ], [ %i.hh, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.an

bb.ad:                                            ; preds = %bb.x
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.al

.critedge76:                                      ; preds = %bb.ab
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.pre200 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83 ; 4 uses
  %.pre201 = load ptr, ptr %22, align 8, !tbaa !85 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.hj = ptrtoint ptr %.pre200 to i64
  %i.hk = ptrtoint ptr %.pre201 to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.pre200, %.pre201
  br i1 %.not.i.i.i.i.i, label %.noexc147, label %bb.ae

bb.ae:                                            ; preds = %.critedge76
  %i.hm = sdiv exact i64 %i.hl, 56
  %i.hn = icmp ugt i64 %i.hm, 164703072086692425
  br i1 %i.hn, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !70

.noexc.i.i.i:                                     ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc146 unwind label %bb.aj

.noexc146:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #24
          to label %.noexc147 unwind label %bb.aj

.noexc147:                                        ; preds = %.critedge76.thread, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, %.critedge76
  %i.hp = phi i64 [ 0, %.critedge76 ], [ %i.hl, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i ], [ 0, %.critedge76.thread ]
  %i.hq = phi ptr [ %.pre200, %.critedge76 ], [ %.pre200, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %.critedge76.thread ]
  %i.hr = phi ptr [ %.pre201, %.critedge76 ], [ %.pre201, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %.critedge76.thread ]
  %i.hs = phi ptr [ null, %.critedge76 ], [ %i.ho, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %.critedge76.thread ] ; 6 uses
  store ptr %i.hs, ptr %25, align 8, !tbaa !85
  %i.ht = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !83
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hp
  %i.hv = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !86
  %i.hw = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %i.hr, ptr %i.hq, ptr noundef %i.hs)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %.noexc147
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.hs) #23
  br label %.body

bb.ah:                                            ; preds = %.noexc147
  store ptr %i.hw, ptr %i.ht, align 8, !tbaa !83
  invoke void @_ZN6duckdb11LogicalType6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %24, ptr noundef nonnull %25)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i152 unwind label %bb.ak

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i152: ; preds = %bb.ah
  %i.hy = load i8, ptr %24, align 8, !tbaa !71
  store i8 %i.hy, ptr %1, align 8, !tbaa !71
  %i.hz = getelementptr inbounds nuw i8, ptr %24, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !186
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !186
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ie = load <2 x ptr>, ptr %i.id, align 8, !tbaa !106
  %i.if = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !106
  store <2 x ptr> %i.ie, ptr %i.ic, align 8, !tbaa !106
  store <2 x ptr> %i.if, ptr %i.id, align 8, !tbaa !106
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #21
  %i.ig = load ptr, ptr %25, align 8, !tbaa !85   ; 3 uses
  %i.ih = load ptr, ptr %i.ht, align 8, !tbaa !83 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i152, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.im, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.ig, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i152 ] ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ii) #21
  %i.ij = load ptr, ptr %.05.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ij) #23
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.im, %i.ih
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !90

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %25, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i152
  %i.in = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ig, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i152 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.in) #23
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.al

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #21
  br label %.body

.body:                                            ; preds = %bb.aj, %bb.ag, %bb.af, %bb.ak
  %.pn64 = phi { ptr, i32 } [ %i.ip, %bb.ak ], [ %i.io, %bb.aj ], [ %i.hx, %bb.ag ], [ %i.hx, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.an

bb.al:                                            ; preds = %bb.ad, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  %.not181 = phi i1 [ false, %bb.ad ], [ true, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ]
  %i.iq = load ptr, ptr %22, align 8, !tbaa !85   ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !83 ; 2 uses
  %.not4.i.i.i158 = icmp eq ptr %i.iq, %i.is
  br i1 %.not4.i.i.i158, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i166, label %.lr.ph.i.i.i159

.lr.ph.i.i.i159:                                  ; preds = %bb.al, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i162
  %.05.i.i.i160 = phi ptr [ %i.ix, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i162 ], [ %i.iq, %bb.al ] ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i160, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.it) #21
  %i.iu = load ptr, ptr %.05.i.i.i160, align 8, !tbaa !67 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i.i.i160, i64 16
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i161: ; preds = %.lr.ph.i.i.i159
  call void @_ZdlPv(ptr noundef %i.iu) #23
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i162

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i162: ; preds = %.lr.ph.i.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i161
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i160, i64 56 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %i.ix, %i.is
  br i1 %.not.i.i.i163, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i164, label %.lr.ph.i.i.i159, !llvm.loop !90

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i164: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i162
  %.pr.i165 = load ptr, ptr %22, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i166

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i166: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i164, %bb.al
  %i.iy = phi ptr [ %.pr.i165, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i164 ], [ %i.iq, %bb.al ] ; 2 uses
  %.not.i.i1.i167 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i1.i167, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit169, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i166
  call void @_ZdlPv(ptr noundef nonnull %i.iy) #23
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit169

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit169: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i166, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.an:                                            ; preds = %.body, %bb.ac
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %.body ], [ %.pn, %bb.ac ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.az

bb.ao:                                            ; preds = %bb.s, %bb.e
  %i.iz = load i8, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.ja = icmp eq i8 %i.iz, 0
  br i1 %i.ja, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %26

26:                                               ; preds = %bb.ao
  %27 = icmp eq ptr %1, %i.a
  br i1 %27, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %26
  store i8 %i.iz, ptr %1, align 8, !tbaa !71
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 9
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !186
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !186
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !194 ; 2 uses
  %i.ji = load <2 x ptr>, ptr %i.jf, align 8, !tbaa !106
  %.not.i.i.i.i.i.i170 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i.i170, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 3 uses
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i.i171 = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i.i.i.i.i171, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.jn = atomicrmw volatile add ptr %i.jj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !194 ; 8 uses
  store <2 x ptr> %i.ji, ptr %i.je, align 8, !tbaa !106
  %.not.i.i.i.i.i172 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i172, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.jq, align 8, !tbaa !195
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !197
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !65
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #21, !inline_history !426
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !65
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #21, !inline_history !426
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.av:                                            ; preds = %bb.at
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jt, %bb.aw ], [ %i.kd, %bb.ax ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.ay, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !70

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #21
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.au, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %26, %bb.p, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit169, %bb.ao, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %.6 = phi i1 [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ], [ %i.gl, %bb.p ], [ %.not181, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit169 ], [ false, %bb.ao ], [ true, %26 ], [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i ], [ true, %bb.au ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i ], [ true, %bb.ay ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  ret i1 %.6

bb.az:                                            ; preds = %bb.r, %bb.k, %bb.an, %bb.v, %bb.j, %bb.c
  %.pn73 = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.gm, %bb.j ], [ %i.gn, %bb.k ], [ %.pn68.pn, %bb.r ], [ %.pn64.pn, %bb.an ], [ %i.hd, %bb.v ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  resume { ptr, i32 } %.pn73
}

declare void @_ZN6duckdb12ColumnWriter21CreateWriterRecursiveERNS_13ClientContextERNS_13ParquetWriterENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERKNS_11LogicalTypeERKSB_bNS_12optional_ptrIKNS_13ChildFieldIDsELb1EEENSJ_IKNS_13ShreddingTypeELb1EEEmmb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64, i64, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !390    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !67 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !410

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !390
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19VariantColumnWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) #21
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb19VariantColumnWriter12HasTransformEv(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19VariantColumnWriter15TransformedTypeEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(241) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.25", align 16 ; 12 uses
  %3 = alloca %"class.duckdb::vector.25", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not27 = icmp eq ptr %i.b, %i.d
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.e = load <2 x ptr>, ptr %2, align 16, !tbaa !81
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre31 = load ptr, ptr %.phi.trans.insert30, align 16, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %.pre31, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.g = phi <2 x ptr> [ %i.e, %._crit_edge.loopexit ], [ splat (ptr null), %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.i, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11LogicalType6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull %3)
          to label %bb.g unwind label %bb.j

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.024.028 = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12ColumnWriterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.028)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12ColumnWriterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.028)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJRS6_RS8_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %3, align 16, !tbaa !85    ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !83   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.r, %bb.g ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #21
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.u) #23
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !90

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !85
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.g ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #23
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.h
  %i.z = load ptr, ptr %2, align 16, !tbaa !85    ; 3 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i20, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i16
  %.05.i.i.i14 = phi ptr [ %i.af, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i16 ], [ %i.z, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #21
  %i.ac = load ptr, ptr %.05.i.i.i14, align 8, !tbaa !67 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i13
  call void @_ZdlPv(ptr noundef %i.ac) #23
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i16

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i16: ; preds = %.lr.ph.i.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 56 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i18, label %.lr.ph.i.i.i13, !llvm.loop !90

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i18: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i16
  %.pr.i19 = load ptr, ptr %2, align 16, !tbaa !85
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i20

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i20: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i18, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
end_hunk_1
