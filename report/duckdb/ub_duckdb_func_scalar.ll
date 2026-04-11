inline.NumInlined: 4066
inline.NumDeleted: 1630
begin_hunk_0_@_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE:bb.a
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.ax, ptr %i.e, align 8
  store ptr %i.aw, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.val19 = phi ptr [ %i.ax, %._crit_edge ], [ null, %bb.a ] ; 3 uses
  %.lcssa29 = phi ptr [ %i.ay, %._crit_edge ], [ null, %bb.a ] ; 6 uses
  store ptr %.lcssa29, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE:bb.a

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 10 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 8 uses
  %.01535 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
end_hunk_1
begin_hunk_2_@_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE:bb.a

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.g
  store i64 %i.q, ptr %i.j, align 8, !tbaa !29
  %5 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE:bb.a

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc23 ], [ %i.am, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.j

end_hunk_3
begin_hunk_4_@_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE:bb.a

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread
  %i.aw = phi ptr [ %i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.av, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %i.ax = phi ptr [ %5, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %6, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.ay = phi ptr [ %i.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.ac, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.az = add nuw i64 %.01535, 1                  ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !24
end_hunk_4
begin_hunk_5_@_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.bf, ptr %i.k, align 8
  store ptr %i.be, ptr %i.l, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.val24 = phi ptr [ %i.bf, %._crit_edge ], [ null, %bb.a ] ; 3 uses
  %.lcssa32 = phi ptr [ %i.bg, %._crit_edge ], [ null, %bb.a ] ; 6 uses
  store ptr %.lcssa32, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_5
begin_hunk_6_@_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 10 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 8 uses
  %.01838 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
end_hunk_6
begin_hunk_7_@_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.g
  store i64 %i.y, ptr %i.q, align 8, !tbaa !29
  %5 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
end_hunk_7
begin_hunk_8_@_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc26 ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.j

end_hunk_8
begin_hunk_9_@_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread
  %i.be = phi ptr [ %i.p, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  %i.bf = phi ptr [ %5, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %6, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.bg = phi ptr [ %i.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.ak, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bh = add i64 %.01838, 2                      ; 2 uses
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !145
end_hunk_9
begin_hunk_10_@_ZNK6duckdb14StrfTimeFormat6Write2EPch:bb.a
  store i8 %i.e, ptr %1, align 1, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.h, ptr %i.f, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = or disjoint i8 %2, 48
  store i8 %i.i, ptr %1, align 1, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %3, %bb.b ], [ %4, %bb.c ]
  ret ptr %.0
}

end_hunk_10
begin_hunk_11_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.lv, ptr %5, align 1, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ad:                                            ; preds = %bb.ab
  %i.lz = trunc nuw nsw i32 %i.lq to i8
  %i.ma = or disjoint i8 %i.lz, 48
  store i8 %i.ma, ptr %5, align 1, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ae:                                            ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.mi, ptr %5, align 1, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ag:                                            ; preds = %bb.ae
  %i.mm = or disjoint i8 %i.md, 48
  store i8 %i.mm, ptr %5, align 1, !tbaa !18
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ah:                                            ; preds = %bb.a
end_hunk_12
begin_hunk_13_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.mu, ptr %5, align 1, !tbaa !18
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.mx, ptr %i.mv, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.my = trunc nuw nsw i32 %i.mp to i8
  %i.mz = or disjoint i8 %i.my, 48
  store i8 %i.mz, ptr %5, align 1, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ak:                                            ; preds = %bb.a
end_hunk_13
begin_hunk_14_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.nh, ptr %5, align 1, !tbaa !18
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.am:                                            ; preds = %bb.ak
  %i.nl = or disjoint i8 %i.nc, 48
  store i8 %i.nl, ptr %5, align 1, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.an:                                            ; preds = %bb.a
end_hunk_14
begin_hunk_15_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.nw, ptr %5, align 1, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ap:                                            ; preds = %bb.an
  %i.oa = or disjoint i8 %i.nr, 48
  store i8 %i.oa, ptr %5, align 1, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.aq:                                            ; preds = %bb.a
end_hunk_15
begin_hunk_16_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.oi, ptr %5, align 1, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.as:                                            ; preds = %bb.aq
  %i.om = or disjoint i8 %i.od, 48
  store i8 %i.om, ptr %5, align 1, !tbaa !18
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.at:                                            ; preds = %bb.a
end_hunk_16
begin_hunk_17_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  store i8 %i.ou, ptr %5, align 1, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ox, ptr %i.ov, align 1, !tbaa !18
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.av:                                            ; preds = %bb.at
  %i.oy = or disjoint i8 %i.op, 48
  store i8 %i.oy, ptr %5, align 1, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.aw:                                            ; preds = %bb.a
end_hunk_17
begin_hunk_18_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  call void @__cxa_free_exception(ptr %i.oz) #30
  br label %bb.bb

_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit: ; preds = %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit.loopexit149, %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit.i, %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit.loopexit, %bb.w, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.x, %bb.y, %bb.b, %bb.e, %bb.f, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit, %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit, %bb.aa, %bb.z, %bb.d, %bb.c
  %.087 = phi ptr [ %i.al, %bb.d ], [ %i.y, %bb.c ], [ %i.l, %bb.b ], [ %i.ax, %bb.e ], [ %i.bi, %bb.f ], [ %19, %bb.as ], [ %i.db, %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit ], [ %i.eb, %bb.l ], [ %i.eq, %bb.m ], [ %i.ew, %bb.n ], [ %i.fi, %bb.o ], [ %i.fu, %bb.p ], [ %i.kr, %bb.w ], [ %i.bk, %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit.loopexit ], [ %.0.i, %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit ], [ %i.fz, %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit.i ], [ %i.ln, %bb.aa ], [ %5, %bb.z ], [ %21, %bb.av ], [ %9, %bb.ad ], [ %11, %bb.ag ], [ %13, %bb.aj ], [ %15, %bb.am ], [ %17, %bb.ap ], [ %i.ll, %bb.y ], [ %i.lc, %bb.x ], [ %8, %bb.ac ], [ %10, %bb.af ], [ %12, %bb.ai ], [ %14, %bb.al ], [ %16, %bb.ao ], [ %18, %bb.ar ], [ %20, %bb.au ], [ %i.hz, %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit.loopexit149 ]
  ret ptr %.087

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba
end_hunk_18
begin_hunk_19_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  %i.ecs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ect = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ecu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ecv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ecw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.41068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_19
begin_hunk_20_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  br label %bb.nu

bb.nu:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.sink.in = phi ptr [ %18, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %17, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %.sink = load i8, ptr %.sink.in, align 1, !tbaa !18
  %i.edq = load i64, ptr %i.edf, align 8, !tbaa !14 ; 2 uses
  %i.edr = add i64 %i.edq, 1
end_hunk_20
begin_hunk_21_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  %i.egb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.egc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.egd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ege = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.egf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.41100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_21
begin_hunk_22_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  br label %bb.oj

bb.oj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread
  %.sink1775.in = phi ptr [ %20, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread ], [ %19, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893 ]
  %.sink1775 = load i8, ptr %.sink1775.in, align 1, !tbaa !18
  %i.eha = load i64, ptr %i.egp, align 8, !tbaa !14 ; 2 uses
  %i.ehb = add i64 %i.eha, 1
end_hunk_22
