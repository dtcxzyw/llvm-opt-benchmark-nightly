inline.NumInlined: 7580
inline.NumDeleted: 2927
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake:bb.a
  %i.eu = phi ptr [ %i.do, %.thread48.i.i ], [ %i.cq, %._crit_edge.i ] ; 4 uses
  %i.ev = phi ptr [ %i.ds, %.thread48.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 4 uses
  %i.ew = phi ptr [ %i.dr, %.thread48.i.i ], [ %.pre122.i, %._crit_edge.i ] ; 2 uses
  %i.ex = phi ptr [ %.sroa.1023.0..sroa_idx.i.i, %.thread48.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 4 uses
  %i.ey = phi ptr [ %i.ec, %.thread48.i.i ], [ %i.es, %._crit_edge.i ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 2538 ; 3 uses
  store i8 0, ptr %i.fa, align 2, !noalias !8879
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.fb, align 1, !noalias !8879
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  store ptr %i.ew, ptr %i.fc, align 8, !noalias !8879
  store i8 1, ptr %i.ez, align 1, !noalias !8879
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 1968 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.fd, ptr noundef nonnull align 8 dereferenceable(200) %i.ey, i64 200, i1 false), !noalias !8879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !8879
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState24resolve_table_references(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.fd)
          to label %bb.z unwind label %bb.y, !noalias !8883

bb.x:                                             ; preds = %bb.v
  %.phi.trans.insert129.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2520
  %.val.i.pre.i.i.i = load ptr, ptr %.phi.trans.insert129.i.i.i, align 8, !alias.scope !8884, !noalias !8887
  %.phi.trans.insert131.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2528
  %.val1.i.pre.i.i.i = load ptr, ptr %.phi.trans.insert131.i.i.i, align 16, !alias.scope !8884, !noalias !8887
  br label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !8879
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8890)
  %i.ff = load i64, ptr %i.cb, align 8, !range !403, !alias.scope !8893, !noalias !8895, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ff, 20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false), !noalias !8879
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !8879
  store i8 1, ptr %i.fa, align 2, !noalias !8879
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !8879
  %i.fi = load ptr, ptr %i.fc, align 8, !noalias !8879, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.fj = getelementptr i8, ptr %1, i64 2184      ; 2 uses
  %.val40.i.i.i = load i64, ptr %i.fj, align 8, !noalias !8879, !noundef !4 ; 2 uses
  %i.fk = icmp ult i64 %.val40.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !8883 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !8896
  invoke void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.br, i64 noundef range(i64 0, 164703072086692426) %.val40.i.i.i)
          to label %bb.ac unwind label %bb.ab, !noalias !8883

bb.ab:                                            ; preds = %.noexc.i.i.i, %bb.aa
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i

bb.ac:                                            ; preds = %.noexc.i.i.i
  %i.fn = extractvalue { i64, i64 } %i.fl, 1
  %i.fo = extractvalue { i64, i64 } %i.fl, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 %i.fo, ptr %i.fp, align 8, !alias.scope !8899, !noalias !8896
  %i.fq = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %i.fn, ptr %i.fq, align 8, !alias.scope !8899, !noalias !8896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.br, i64 48, i1 false), !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !8896
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store ptr %i.fi, ptr %i.fr, align 16, !noalias !8879
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %i.ca, i64 48, i1 false), !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  store i8 0, ptr %i.fa, align 2, !noalias !8879
  %.sroa.091.0.copyload.i.i.i = load i64, ptr %i.fh, align 8, !noalias !8879
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2176
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !noalias !8879, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %i.fj, align 8, !noalias !8879 ; 2 uses
  %i.ft = icmp ult i64 %.sroa.6.0.copyload.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.5.0.copyload.i.i.i, i64 %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 2248
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.fv, align 8, !noalias !8879
  %.sroa.889.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.889.0..sroa_idx.i.i.i, align 16, !noalias !8879
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2264
  store i64 %.sroa.091.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !8879
  %.sroa.1090.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store ptr %i.fu, ptr %.sroa.1090.0..sroa_idx.i.i.i, align 16, !noalias !8879
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i, %bb.ac
  %i.fw = phi ptr [ %i.et, %bb.ac ], [ %i.jb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ] ; 11 uses
  %i.fx = phi ptr [ %i.eu, %bb.ac ], [ %i.jc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ] ; 10 uses
  %i.fy = phi ptr [ %i.ev, %bb.ac ], [ %i.jd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ] ; 11 uses
  %i.fz = phi ptr [ %i.ex, %bb.ac ], [ %i.je, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ] ; 10 uses
  %i.ga = phi ptr [ %i.ey, %bb.ac ], [ %i.jf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ] ; 10 uses
  %i.gb = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ac ], [ %.pre128.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ] ; 2 uses
  %i.gc = phi ptr [ %i.fu, %bb.ac ], [ %.pre.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 2280 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 2256 ; 2 uses
  %i.gg = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gg, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i.i.i: ; preds = %.preheader.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 2344
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %.backedge.i.i.i, %.preheader.i.i.i
  store i64 3, ptr %i.gd, align 8, !alias.scope !8902, !noalias !8905
  br label %.loopexit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.bh, %bb.ab
  %i.gm = phi ptr [ %i.et, %bb.ab ], [ %i.mc, %bb.bh ], [ %i.mi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %i.gn = phi ptr [ %i.eu, %bb.ab ], [ %i.md, %bb.bh ], [ %i.mj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %i.go = phi ptr [ %i.ev, %bb.ab ], [ %i.me, %bb.bh ], [ %i.mk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %i.gp = phi ptr [ %i.ex, %bb.ab ], [ %i.mf, %bb.bh ], [ %i.ml, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %i.gq = phi ptr [ %i.ey, %bb.ab ], [ %i.mg, %bb.bh ], [ %i.mm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %.pn26.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.ab ], [ %i.mh, %bb.bh ], [ %.pn26.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 2538
  %i.gs = load i8, ptr %i.gr, align 2, !range !101, !noalias !8879, !noundef !4
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.cf, label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %.sroa.10.0..sroa_idx85.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.sroa.10.0.copyload86.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx85.i.i.i, align 8, !alias.scope !8907, !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !8879
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !8879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8908)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.ff, ptr %i.gu, align 8, !alias.scope !8911, !noalias !8879
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i64 %.sroa.10.0.copyload86.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !8911, !noalias !8879
  store i64 36, ptr %i.bs, align 16, !alias.scope !8913, !noalias !8914
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit80.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit80.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i, %bb.ad
  %i.gv = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.et, %bb.ad ] ; 2 uses
  %i.gw = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.eu, %bb.ad ] ; 2 uses
  %i.gx = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.ev, %bb.ad ] ; 2 uses
  %.sroa.826.i.sroa.0.0.copyload.i = phi i64 [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.ff, %bb.ad ]
  %i.gy = phi ptr [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.ex, %bb.ad ] ; 2 uses
  %i.gz = phi ptr [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.ey, %bb.ad ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.ha, align 2, !noalias !8879
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(200) %i.hb)
          to label %.thread49.i.i unwind label %bb.cc, !noalias !8883

bb.ae:                                            ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i, %bb.y
  %i.hc = phi ptr [ %i.et, %bb.y ], [ %i.gm, %bb.cf ], [ %i.gm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i ] ; 2 uses
  %i.hd = phi ptr [ %i.eu, %bb.y ], [ %i.gn, %bb.cf ], [ %i.gn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i ] ; 2 uses
  %i.he = phi ptr [ %i.ev, %bb.y ], [ %i.go, %bb.cf ], [ %i.go, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i ] ; 2 uses
  %i.hf = phi ptr [ %i.ex, %bb.y ], [ %i.gp, %bb.cf ], [ %i.gp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i ] ; 2 uses
  %i.hg = phi ptr [ %i.ey, %bb.y ], [ %i.gq, %bb.cf ], [ %i.gq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i ] ; 2 uses
  %.pn32.pn.i.i.i = phi { ptr, i32 } [ %i.fe, %bb.y ], [ %.pn26.pn.pn.pn.pn.i.i.i, %bb.cf ], [ %.pn26.pn.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.hh, align 2, !noalias !8879
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.hj = load i8, ptr %i.hi, align 1, !range !101, !noalias !8879, !noundef !4
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.cg, label %bb.cb

bb.af:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #36
          to label %.noexc.i.i unwind label %bb.u, !noalias !8870

.noexc.i.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #36
          to label %.noexc8.i.i unwind label %bb.u, !noalias !8870

.noexc8.i.i:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ai
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !8879
  %.val38.i.i.i = load ptr, ptr %i.hr, align 8, !noalias !8879
  %.val39.i.i.i = load ptr, ptr %i.hs, align 16, !noalias !8879, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val38.i.i.i, ptr nonnull %.val39.i.i.i) #38
          to label %.body.i.i.i.a unwind label %bb.aw, !noalias !8883

bb.ai:                                            ; preds = %bb.bx, %bb.x
  %i.hm = phi ptr [ %i.cr, %bb.x ], [ %i.fw, %bb.bx ] ; 14 uses
  %i.hn = phi ptr [ %i.cq, %bb.x ], [ %i.fx, %bb.bx ] ; 13 uses
  %i.ho = phi ptr [ %.phi.trans.insert.i, %bb.x ], [ %i.fy, %bb.bx ] ; 14 uses
  %i.hp = phi ptr [ %.phi.trans.insert.i.i, %bb.x ], [ %i.fz, %bb.bx ] ; 14 uses
  %i.hq = phi ptr [ %i.es, %bb.x ], [ %i.ga, %bb.bx ] ; 13 uses
  %.val1.i.i.i.i = phi ptr [ %.val1.i.pre.i.i.i, %bb.x ], [ %i.op, %bb.bx ]
  %.val.i.i.i.i = phi ptr [ %.val.i.pre.i.i.i, %bb.x ], [ %i.oo, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !8879
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 2520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8884)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 2528 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !invariant.load !4, !noalias !8915, !nonnull !4
  invoke void %i.hu(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bw, ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ah, !noalias !8883, !inline_history !6349

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ai
  %i.hv = load i64, ptr %i.bw, align 8, !range !6350, !noalias !8879, !noundef !4 ; 4 uses
  %i.hw = icmp eq i64 %i.hv, 21
  br i1 %i.hw, label %.thread.i.i, label %bb.aj

.thread.i.i:                                      ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !8879
  store i8 3, ptr %i.hp, align 8, !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.cp

bb.aj:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.3100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.3100.0.copyload.i.i.i = load ptr, ptr %.sroa.3100.0..sroa_idx.i.i.i, align 8, !noalias !8879 ; 3 uses
  %.sroa.5101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.5101.0.copyload.i.i.i = load ptr, ptr %.sroa.5101.0..sroa_idx.i.i.i, align 8, !noalias !8879 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !8879
  %.val.i.i.i = load ptr, ptr %i.hr, align 8, !noalias !8879
  %.val37.i.i.i = load ptr, ptr %i.hs, align 16, !noalias !8879, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val.i.i.i, ptr nonnull %.val37.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %8, !noalias !8883

.body.i.i.i.a:                                    ; preds = %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %8, %bb.ah
  %3 = phi ptr [ %i.hm, %8 ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.hm, %bb.ah ], [ %i.fw, %bb.bv ] ; 2 uses
  %4 = phi ptr [ %i.hn, %8 ], [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.hn, %bb.ah ], [ %i.fx, %bb.bv ] ; 2 uses
  %5 = phi ptr [ %i.ho, %8 ], [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.ho, %bb.ah ], [ %i.fy, %bb.bv ] ; 2 uses
  %6 = phi ptr [ %i.hp, %8 ], [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.hp, %bb.ah ], [ %i.fz, %bb.bv ] ; 2 uses
  %7 = phi ptr [ %i.hq, %8 ], [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.hq, %bb.ah ], [ %i.ga, %bb.bv ] ; 2 uses
  %.pn18.i.i.i = phi { ptr, i32 } [ %9, %8 ], [ %i.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.hl, %bb.ah ], [ %i.nx, %bb.bv ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8916)
  call void @llvm.experimental.noalias.scope.decl(metadata !8919)
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !8922, !noalias !8879, !nonnull !4, !noundef !4
  %i.hz = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !8923
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ak:                                            ; preds = %.body.i.i.i.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hx) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.aw, !noalias !8883

8:                                                ; preds = %bb.aj
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.aj
  %.not.i48.i.i.i = icmp eq i64 %i.hv, 20
  br i1 %.not.i48.i.i.i, label %bb.al, label %bb.by

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.not16.i.i.i = icmp eq ptr %.sroa.3100.0.copyload.i.i.i, null
  br i1 %.not16.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5101.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !8879
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.ib, align 1, !noalias !8879
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 16 dereferenceable(64) %i.ic, i64 64, i1 false), !noalias !8879
  %i.id = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.3100.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5101.0.copyload.i.i.i)
          to label %bb.aq unwind label %bb.av, !noalias !8883 ; 2 uses

bb.an:                                            ; preds = %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8924)
  call void @llvm.experimental.noalias.scope.decl(metadata !8927)
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !8930, !noalias !8879, !nonnull !4, !noundef !4
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !8931
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ie) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i unwind label %bb.as, !noalias !8883

bb.ap:                                            ; preds = %bb.aq
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.ij = extractvalue { ptr, ptr } %i.id, 0
  %i.ik = extractvalue { ptr, ptr } %i.id, 1
  %i.il = invoke noundef nonnull align 8 ptr @_RNvMs7_NtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtB5_16RustcVacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bv, ptr noundef nonnull %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ik)
          to label %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ap, !noalias !8883 ; 0 uses

_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !8879
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8932)
  call void @llvm.experimental.noalias.scope.decl(metadata !8935)
  %i.in = load ptr, ptr %i.im, align 8, !alias.scope !8938, !noalias !8879, !nonnull !4, !noundef !4
  %i.io = atomicrmw sub ptr %i.in, i64 1 release, align 8, !noalias !8939
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i

bb.ar:                                            ; preds = %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs7p2uQeJxui2_9deltalake.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.im) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i unwind label %bb.as, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.as, %bb.ak, %.body.i.i.i.a
  %i.iq = phi ptr [ %i.hm, %bb.as ], [ %3, %bb.ak ], [ %3, %.body.i.i.i.a ] ; 2 uses
  %i.ir = phi ptr [ %i.hn, %bb.as ], [ %4, %bb.ak ], [ %4, %.body.i.i.i.a ] ; 2 uses
  %i.is = phi ptr [ %i.ho, %bb.as ], [ %5, %bb.ak ], [ %5, %.body.i.i.i.a ] ; 2 uses
  %i.it = phi ptr [ %i.hp, %bb.as ], [ %6, %bb.ak ], [ %6, %.body.i.i.i.a ] ; 2 uses
  %i.iu = phi ptr [ %i.hq, %bb.as ], [ %7, %bb.ak ], [ %7, %.body.i.i.i.a ] ; 2 uses
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.iy, %bb.as ], [ %.pn18.i.i.i, %bb.ak ], [ %.pn18.i.i.i, %.body.i.i.i.a ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 16, !range !403, !noalias !8879, !noundef !4
  %i.ix = icmp eq i64 %i.iw, 20
  br i1 %i.ix, label %bb.at, label %bb.cd

bb.as:                                            ; preds = %bb.bz, %bb.ar, %bb.ao
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i: ; preds = %bb.ar, %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 16, !range !403, !noalias !8879, !noundef !4
  %.not17.i.i.i = icmp eq i64 %i.ja, 20
  br i1 %.not17.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.invoke.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i
  %i.jb = phi ptr [ %i.kh, %.invoke.i.i.i ], [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.jc = phi ptr [ %i.ki, %.invoke.i.i.i ], [ %i.kb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.jd = phi ptr [ %i.kj, %.invoke.i.i.i ], [ %i.kc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.je = phi ptr [ %i.kk, %.invoke.i.i.i ], [ %i.kd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.jf = phi ptr [ %i.kl, %.invoke.i.i.i ], [ %i.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 2537 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !range !101, !noalias !8879, !noundef !4
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i

bb.at:                                            ; preds = %bb.cd, %bb.bs, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.jj = phi ptr [ %i.jr, %bb.au ], [ %i.iq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.iq, %bb.cd ], [ %i.fw, %bb.bs ] ; 2 uses
  %i.jk = phi ptr [ %i.js, %bb.au ], [ %i.ir, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.ir, %bb.cd ], [ %i.fx, %bb.bs ] ; 2 uses
  %i.jl = phi ptr [ %i.jt, %bb.au ], [ %i.is, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.is, %bb.cd ], [ %i.fy, %bb.bs ] ; 2 uses
  %i.jm = phi ptr [ %i.ju, %bb.au ], [ %i.it, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.it, %bb.cd ], [ %i.fz, %bb.bs ] ; 2 uses
  %i.jn = phi ptr [ %i.jv, %bb.au ], [ %i.iu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.iu, %bb.cd ], [ %i.ga, %bb.bs ] ; 2 uses
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.jw, %bb.au ], [ %.pn20.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.pn20.i.i.i, %bb.cd ], [ %i.np, %bb.bs ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 2537
  %i.jp = load i8, ptr %i.jo, align 1, !range !101, !noalias !8879, !noundef !4
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i

bb.au:                                            ; preds = %bb.ca, %.invoke.i.i.i
  %i.jr = phi ptr [ %i.hm, %bb.ca ], [ %i.kh, %.invoke.i.i.i ]
  %i.js = phi ptr [ %i.hn, %bb.ca ], [ %i.ki, %.invoke.i.i.i ]
  %i.jt = phi ptr [ %i.ho, %bb.ca ], [ %i.kj, %.invoke.i.i.i ]
  %i.ju = phi ptr [ %i.hp, %bb.ca ], [ %i.kk, %.invoke.i.i.i ]
  %i.jv = phi ptr [ %i.hq, %bb.ca ], [ %i.kl, %.invoke.i.i.i ]
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.av, %bb.ap
  %i.jx = phi { ptr, i32 } [ %i.ii, %bb.ap ], [ %i.jy, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !8879
  br label %.body.i.i.i.a

bb.av:                                            ; preds = %bb.am
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.aw, !noalias !8883

bb.aw:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.az, %bb.av, %bb.ak, %bb.ah
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8883
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i: ; preds = %bb.bu, %bb.ao, %bb.an
  %i.ka = phi ptr [ %i.fw, %bb.bu ], [ %i.hm, %bb.ao ], [ %i.hm, %bb.an ] ; 2 uses
  %i.kb = phi ptr [ %i.fx, %bb.bu ], [ %i.hn, %bb.ao ], [ %i.hn, %bb.an ] ; 2 uses
  %i.kc = phi ptr [ %i.fy, %bb.bu ], [ %i.ho, %bb.ao ], [ %i.ho, %bb.an ] ; 2 uses
  %i.kd = phi ptr [ %i.fz, %bb.bu ], [ %i.hp, %bb.ao ], [ %i.hp, %bb.an ] ; 2 uses
  %i.ke = phi ptr [ %i.ga, %bb.bu ], [ %i.hq, %bb.ao ], [ %i.hq, %bb.an ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 16, !range !403, !noalias !8879, !noundef !4
  %.not23.i.i.i = icmp eq i64 %i.kg, 20
  br i1 %.not23.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i
  %i.kh = phi ptr [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.ki = phi ptr [ %i.kb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.kj = phi ptr [ %i.kc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.kk = phi ptr [ %i.kd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.kl = phi ptr [ %i.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ] ; 2 uses
  %i.km = phi ptr [ %i.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i ], [ %i.iz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit53.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.km)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.au, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i: ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  store i8 0, ptr %i.jg, align 1, !noalias !8879
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 16, !alias.scope !8940, !noalias !8942
  %.phi.trans.insert127.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %.pre128.i.i.i = load ptr, ptr %.phi.trans.insert127.i.i.i, align 16, !alias.scope !8940, !noalias !8942
  br label %.preheader.i.i.i

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.kn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit61.i.i.i unwind label %bb.ay, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i: ; preds = %bb.ce, %bb.ay, %bb.at
  %i.ko = phi ptr [ %i.ku, %bb.ay ], [ %i.jj, %bb.at ], [ %i.jj, %bb.ce ]
  %i.kp = phi ptr [ %i.kv, %bb.ay ], [ %i.jk, %bb.at ], [ %i.jk, %bb.ce ]
  %i.kq = phi ptr [ %i.kw, %bb.ay ], [ %i.jl, %bb.at ], [ %i.jl, %bb.ce ]
  %i.kr = phi ptr [ %i.kx, %bb.ay ], [ %i.jm, %bb.at ], [ %i.jm, %bb.ce ]
  %i.ks = phi ptr [ %i.ky, %bb.ay ], [ %i.jn, %bb.at ], [ %i.jn, %bb.ce ]
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.kz, %bb.ay ], [ %.pn24.i.i.i, %bb.at ], [ %.pn24.i.i.i, %bb.ce ]
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.kt, align 1, !noalias !8879
  br label %bb.az

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i, %bb.ax
  %i.ku = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i ], [ %i.jb, %bb.ax ]
  %i.kv = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i ], [ %i.jc, %bb.ax ]
  %i.kw = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i ], [ %i.jd, %bb.ax ]
  %i.kx = phi ptr [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i ], [ %i.je, %bb.ax ]
  %i.ky = phi ptr [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i ], [ %i.jf, %bb.ax ]
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i

bb.az:                                            ; preds = %bb.bl, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i
  %i.la = phi ptr [ %i.ko, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i ], [ %i.fw, %bb.bl ], [ %i.fw, %bb.ba ]
  %i.lb = phi ptr [ %i.kp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i ], [ %i.fx, %bb.bl ], [ %i.fx, %bb.ba ]
  %i.lc = phi ptr [ %i.kq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i ], [ %i.fy, %bb.bl ], [ %i.fy, %bb.ba ]
  %i.ld = phi ptr [ %i.kr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i ], [ %i.fz, %bb.bl ], [ %i.fz, %bb.ba ]
  %i.le = phi ptr [ %i.ks, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i ], [ %i.ga, %bb.bl ], [ %i.ga, %bb.ba ]
  %.pn26.pn.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i ], [ %i.mu, %bb.bl ], [ %i.lg, %bb.ba ]
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.aw, !noalias !8883

bb.ba:                                            ; preds = %bb.bb
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i.i.i
  %i.lh = phi ptr [ %i.gb, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i.i.i ], [ %i.mr, %.backedge.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8902)
  call void @llvm.experimental.noalias.scope.decl(metadata !8944)
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  store ptr %i.li, ptr %i.gf, align 16, !alias.scope !8944, !noalias !8945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gd, ptr noundef nonnull align 8 dereferenceable(56) %i.lh, i64 56, i1 false), !noalias !8946
  %.pr.i.i.i = load i64, ptr %i.gd, align 8, !noalias !8879
  %.not10.i.i.i = icmp eq i64 %.pr.i.i.i, 3
  br i1 %.not10.i.i.i, label %.loopexit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %i.lh, i64 56, i1 false), !noalias !8883
  %i.lj = load ptr, ptr %i.gh, align 8, !noalias !8879, !nonnull !4, !align !344, !noundef !4
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bz)
          to label %bb.bj unwind label %bb.ba, !noalias !8883

.loopexit.i.i.i:                                  ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit64.i.i.i unwind label %bb.bc, !noalias !8883

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i, %.loopexit.i.i.i
  %i.ll = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i ], [ %i.fw, %.loopexit.i.i.i ]
  %i.lm = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i ], [ %i.fx, %.loopexit.i.i.i ]
  %i.ln = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i ], [ %i.fy, %.loopexit.i.i.i ]
  %i.lo = phi ptr [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i ], [ %i.fz, %.loopexit.i.i.i ]
  %i.lp = phi ptr [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i ], [ %i.ga, %.loopexit.i.i.i ]
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit64.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !8879
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 1960
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !8879, !nonnull !4, !align !344, !noundef !4
  %i.lt = invoke noundef i56 @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState18get_parser_options(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ls)
          to label %bb.be unwind label %bb.bd, !noalias !8883 ; 3 uses

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit64.i.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit64.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.05.0.extract.trunc.i.i.i.i = trunc i56 %i.lt to i8
  %.sroa.05.1.extract.shift.i.i.i.i = lshr i56 %i.lt, 8
  %.sroa.05.1.extract.trunc.i.i.i.i = trunc i56 %.sroa.05.1.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.05.2.extract.shift.i.i.i.i = lshr i56 %i.lt, 16
  %.sroa.05.2.extract.trunc.i.i.i.i = trunc nuw i56 %.sroa.05.2.extract.shift.i.i.i.i to i40
  store ptr %i.lv, ptr %i.bu, align 8, !alias.scope !8947, !noalias !8950
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 %.sroa.05.0.extract.trunc.i.i.i.i, ptr %i.lw, align 8, !alias.scope !8947, !noalias !8950
  %.sroa.2.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 9
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %.sroa.2.0..sroa_idx2.i.i.i.i, align 1, !alias.scope !8947, !noalias !8950
  %.sroa.3.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  store i40 %.sroa.05.2.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx4.i.i.i.i, align 2, !alias.scope !8947, !noalias !8950
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bu, i64 15
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %i.lx, align 1, !alias.scope !8947, !noalias !8950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !8879
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 2539 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake:bb.a
  %i.mf = phi ptr [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.fz, %bb.bg ]
  %i.mg = phi ptr [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i ], [ %i.ga, %bb.bg ]
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i

bb.bi:                                            ; preds = %bb.bf, %bb.bd
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.ma, %bb.bf ], [ %i.lu, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !8879
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.bi, %bb.bc, %bb.az
  %i.mi = phi ptr [ %i.fw, %bb.bi ], [ %i.la, %bb.az ], [ %i.ll, %bb.bc ]
  %i.mj = phi ptr [ %i.fx, %bb.bi ], [ %i.lb, %bb.az ], [ %i.lm, %bb.bc ]
  %i.mk = phi ptr [ %i.fy, %bb.bi ], [ %i.lc, %bb.az ], [ %i.ln, %bb.bc ]
  %i.ml = phi ptr [ %i.fz, %bb.bi ], [ %i.ld, %bb.az ], [ %i.lo, %bb.bc ]
  %i.mm = phi ptr [ %i.ga, %bb.bi ], [ %i.le, %bb.az ], [ %i.lp, %bb.bc ]
  %.pn26.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn11.i.i.i, %bb.bi ], [ %.pn26.pn.i.i.i, %bb.az ], [ %i.lq, %bb.bc ]
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i unwind label %bb.aw, !noalias !8883

bb.bj:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !8952)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !8955
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.by)
          to label %.noexc69.i.i.i unwind label %bb.bl, !noalias !8883

.noexc69.i.i.i:                                   ; preds = %bb.bj
  %i.mo = load ptr, ptr %i.bq, align 8, !noalias !8955, !noundef !4
  %.not.i68.i.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i68.i.i.i, label %.critedge.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc69.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gj, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !noalias !8958
  %.pr112.i.i.i = load ptr, ptr %i.gj, align 16, !noalias !8879
  %i.mp = icmp eq ptr %.pr112.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !8955
  br i1 %i.mp, label %.backedge.i.i.i, label %bb.bm

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.bk
  %i.mq = load ptr, ptr %i.ge, align 16, !alias.scope !8959, !noalias !8961, !nonnull !4, !noundef !4
  %i.mr = load ptr, ptr %i.gf, align 16, !alias.scope !8959, !noalias !8961, !nonnull !4, !noundef !4 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.mq
  br i1 %i.ms, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %.noexc69.i.i.i
  %i.mt = load <2 x ptr>, ptr %i.gk, align 8, !noalias !8955
  store <2 x ptr> %i.mt, ptr %i.gl, align 8, !alias.scope !8952, !noalias !8958
  store ptr null, ptr %i.gj, align 16, !alias.scope !8952, !noalias !8958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !8955
  br label %.backedge.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bm:                                            ; preds = %bb.bk
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 1, ptr %i.mv, align 1, !noalias !8879
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.mw, ptr noundef nonnull align 16 dereferenceable(64) %i.gj, i64 64, i1 false), !noalias !8879
  %i.mx = load ptr, ptr %i.gh, align 8, !noalias !8879, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !8879
  call void @llvm.experimental.noalias.scope.decl(metadata !8963)
  call void @llvm.experimental.noalias.scope.decl(metadata !8966)
  %i.my = load ptr, ptr %i.mw, align 16, !alias.scope !8966, !noalias !8968, !nonnull !4, !noundef !4 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !8966, !noalias !8968, !noundef !4
  %i.nb = atomicrmw add ptr %i.my, i64 1 monotonic, align 8, !noalias !8969
  %i.nc = icmp slt i64 %i.nb, 0
  br i1 %i.nc, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.ne = load ptr, ptr %i.nd, align 16, !alias.scope !8966, !noalias !8968, !nonnull !4, !noundef !4 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.ng = load i64, ptr %i.nf, align 8, !alias.scope !8966, !noalias !8968, !noundef !4
  %i.nh = atomicrmw add ptr %i.ne, i64 1 monotonic, align 8, !noalias !8969
  %i.ni = icmp slt i64 %i.nh, 0
  br i1 %i.ni, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 16, !alias.scope !8966, !noalias !8968, !nonnull !4, !noundef !4 ; 2 uses
  %i.nl = getelementptr i8, ptr %1, i64 2440      ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !alias.scope !8966, !noalias !8968, !noundef !4
  %i.nn = atomicrmw add ptr %i.nk, i64 1 monotonic, align 8, !noalias !8969
  %i.no = icmp slt i64 %i.nn, 0
  br i1 %i.no, label %bb.br, label %bb.bt

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.bt
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !8879
  br label %bb.at

bb.bt:                                            ; preds = %bb.bp
  store ptr %i.my, ptr %i.bx, align 8, !alias.scope !8963, !noalias !8970
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.na, ptr %i.nq, align 8, !alias.scope !8963, !noalias !8970
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.ne, ptr %i.nr, align 8, !alias.scope !8963, !noalias !8970
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 %i.ng, ptr %i.ns, align 8, !alias.scope !8963, !noalias !8970
  %i.nt = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.nk, ptr %i.nt, align 8, !alias.scope !8963, !noalias !8970
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i64 %i.nm, ptr %i.nu, align 8, !alias.scope !8963, !noalias !8970
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.nv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.mx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bx)
          to label %bb.bu unwind label %bb.bs, !noalias !8883

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !8879
  %i.nw = load i64, ptr %i.nv, align 16, !range !403, !noalias !8879, !noundef !4
  %.not14.i.i.i = icmp eq i64 %i.nw, 20
  br i1 %.not14.i.i.i, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit50.i.i.i

bb.bv:                                            ; preds = %bb.bw
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

bb.bw:                                            ; preds = %bb.bu
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 2504
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.oa = load ptr, ptr %i.nz, align 8, !noalias !8879, !nonnull !4, !noundef !4 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.oc = load ptr, ptr %i.ob, align 16, !noalias !8879, !nonnull !4, !align !344, !noundef !4 ; 3 uses
  store ptr %i.oa, ptr %i.ny, align 8, !noalias !8879
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 2512
  store ptr %i.oc, ptr %i.od, align 16, !noalias !8879
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !range !605, !invariant.load !4, !noalias !8883
  %i.og = add nsw i64 %i.of, -1
  %i.oh = and i64 %i.og, -16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %.val43.i.i.i = load ptr, ptr %i.nj, align 16, !noalias !8879, !nonnull !4, !noundef !4
  %.val44.i.i.i = load i64, ptr %i.nl, align 8, !noalias !8879, !noundef !4
  %i.ok = getelementptr inbounds nuw i8, ptr %.val43.i.i.i, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 56
  %i.om = load ptr, ptr %i.ol, align 8, !invariant.load !4, !noalias !8883, !nonnull !4
  %i.on = invoke { ptr, ptr } %i.om(ptr noundef nonnull %i.oj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ok, i64 noundef %.val44.i.i.i)
          to label %bb.bx unwind label %bb.bv, !noalias !8883 ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.oo = extractvalue { ptr, ptr } %i.on, 0      ; 2 uses
  %i.op = extractvalue { ptr, ptr } %i.on, 1      ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store ptr %i.oo, ptr %i.oq, align 8, !noalias !8879
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store ptr %i.op, ptr %i.or, align 16, !noalias !8879
  br label %bb.ai

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !8879
  call void @llvm.experimental.noalias.scope.decl(metadata !8971)
  %i.os = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.hv, ptr %i.os, align 8, !alias.scope !8974, !noalias !8879
  %.sroa.2103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %.sroa.3100.0.copyload.i.i.i, ptr %.sroa.2103.0..sroa_idx.i.i.i, align 16, !alias.scope !8974, !noalias !8879
  %.sroa.3104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %.sroa.5101.0.copyload.i.i.i, ptr %.sroa.3104.0..sroa_idx.i.i.i, align 8, !alias.scope !8974, !noalias !8879
  store i64 36, ptr %i.bs, align 16, !alias.scope !8976, !noalias !8977
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8978)
  call void @llvm.experimental.noalias.scope.decl(metadata !8981)
  %i.ou = load ptr, ptr %i.ot, align 8, !alias.scope !8984, !noalias !8879, !nonnull !4, !noundef !4
  %i.ov = atomicrmw sub ptr %i.ou, i64 1 release, align 8, !noalias !8985
  %i.ow = icmp eq i64 %i.ov, 1
  br i1 %i.ow, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit71.i.i.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ot) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit71.i.i.i unwind label %bb.as, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit71.i.i.i: ; preds = %bb.bz, %bb.by
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 16, !range !403, !noalias !8879, !noundef !4
  %.not22.i.i.i = icmp eq i64 %i.oy, 20
  br i1 %.not22.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit71.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ox)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i unwind label %bb.au, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i: ; preds = %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit71.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.oz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i unwind label %bb.ay, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit74.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.pa, align 1, !noalias !8879
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.pb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i unwind label %bb.bc, !noalias !8883

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake.exit78.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit76.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit80.i.i.i unwind label %bb.bh, !noalias !8883

bb.cb:                                            ; preds = %bb.cg, %bb.cc, %bb.ae
  %i.pd = phi ptr [ %i.gv, %bb.cc ], [ %i.hc, %bb.cg ], [ %i.hc, %bb.ae ]
  %i.pe = phi ptr [ %i.gw, %bb.cc ], [ %i.hd, %bb.cg ], [ %i.hd, %bb.ae ]
  %i.pf = phi ptr [ %i.gx, %bb.cc ], [ %i.he, %bb.cg ], [ %i.he, %bb.ae ]
  %i.pg = phi ptr [ %i.gy, %bb.cc ], [ %i.hf, %bb.cg ], [ %i.hf, %bb.ae ]
  %i.ph = phi ptr [ %i.gz, %bb.cc ], [ %i.hg, %bb.cg ], [ %i.hg, %bb.ae ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.pj, %bb.cc ], [ %.pn32.pn.i.i.i, %bb.cg ], [ %.pn32.pn.i.i.i, %bb.ae ]
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pi, align 1, !noalias !8879
  store i8 2, ptr %i.pg, align 8, !noalias !8879
  br label %.body.i.i

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit80.i.i.i
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.thread49.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit80.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pk, align 1, !noalias !8879
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i, i64 32, i1 false), !noalias !8986
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i, i64 272, i1 false), !noalias !8986
  store i8 1, ptr %i.gy, align 8, !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.ci

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.iv) #38
          to label %bb.at unwind label %bb.aw, !noalias !8883

bb.ce:                                            ; preds = %bb.at
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.pl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs7p2uQeJxui2_9deltalake.exit82.i.i.i unwind label %bb.aw, !noalias !8883

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs7p2uQeJxui2_9deltalake.exit67.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 2168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.pm) #38
          to label %bb.ae unwind label %bb.aw, !noalias !8883

bb.cg:                                            ; preds = %bb.ae
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(200) %i.pn) #38
          to label %bb.cb unwind label %bb.aw, !noalias !8883

bb.ch:                                            ; preds = %bb.bg
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.po, align 2, !noalias !8879
  store i8 0, ptr %i.ly, align 1, !noalias !8879
  %.sroa.024.0.copyload25.pre.i.i = load i64, ptr %i.bs, align 16, !noalias !8986 ; 2 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.826.i.sroa.0.0.copyload97.i = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !8986
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 32, i1 false), !noalias !8986
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !8986
  store i8 1, ptr %i.fz, align 8, !noalias !8879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.pp = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 37
  br i1 %i.pp, label %bb.cp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.thread49.i.i
  %i.pq = phi ptr [ %i.fw, %bb.ch ], [ %i.gv, %.thread49.i.i ] ; 3 uses
  %i.pr = phi ptr [ %i.fx, %bb.ch ], [ %i.gw, %.thread49.i.i ] ; 3 uses
  %i.ps = phi ptr [ %i.fy, %bb.ch ], [ %i.gx, %.thread49.i.i ] ; 3 uses
  %.sroa.826.i.sroa.0.0.i = phi i64 [ %.sroa.826.i.sroa.0.0.copyload97.i, %bb.ch ], [ %.sroa.826.i.sroa.0.0.copyload.i, %.thread49.i.i ] ; 2 uses
  %.sroa.024.0.copyload2552.i.i = phi i64 [ %.sroa.024.0.copyload25.pre.i.i, %bb.ch ], [ 36, %.thread49.i.i ] ; 2 uses
  %i.pt = phi ptr [ %i.ga, %bb.ch ], [ %i.gz, %.thread49.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, i64 32, i1 false), !noalias !8866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, i64 272, i1 false), !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.pt)
          to label %bb.ck unwind label %bb.cj, !noalias !8870

bb.cj:                                            ; preds = %bb.ci
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.ck:                                            ; preds = %bb.ci
  %i.pv = icmp eq i64 %.sroa.024.0.copyload2552.i.i, 36
  br i1 %i.pv, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, i64 272, i1 false), !noalias !8866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !8866
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !8866
  br label %bb.cq

bb.cn:                                            ; preds = %bb.co, %.body.i.i
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8870
  unreachable

bb.co:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(200) %i.cd) #38
          to label %.body16.thread.i unwind label %bb.cn, !noalias !8870

bb.cp:                                            ; preds = %bb.ch, %.thread.i.i
  %i.px = phi ptr [ %i.hm, %.thread.i.i ], [ %i.fw, %bb.ch ]
  %i.py = phi ptr [ %i.ho, %.thread.i.i ], [ %i.fy, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !8866
  store i8 3, ptr %i.py, align 2, !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.859.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.960.i)
  br label %bb.pe

bb.cq:                                            ; preds = %bb.cm, %bb.cl, %bb.r
  %i.pz = phi ptr [ %i.dn, %bb.r ], [ %i.pq, %bb.cm ], [ %i.pq, %bb.cl ] ; 7 uses
  %i.qa = phi ptr [ %i.do, %bb.r ], [ %i.pr, %bb.cm ], [ %i.pr, %bb.cl ] ; 7 uses
  %i.qb = phi ptr [ %i.ds, %bb.r ], [ %i.ps, %bb.cm ], [ %i.ps, %bb.cl ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.i, %bb.cm ], [ %.sroa.826.i.sroa.0.0.i, %bb.cl ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cm ], [ %.sroa.024.0.copyload2552.i.i, %bb.cl ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.qc, align 1, !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !8866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.859.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, i64 32, i1 false), !noalias !8987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.960.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, i64 272, i1 false), !noalias !8987
  store i8 1, ptr %i.qb, align 2, !noalias !8866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.859.sroa.6.i, i64 32, i1 false), !noalias !8861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.663.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.960.i, i64 272, i1 false), !noalias !8861
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.859.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.960.i)
  %i.qd = icmp eq i64 %.sroa.032.1.i.i, 36
  br i1 %i.qd, label %bb.da, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 1731 ; 2 uses
  store i8 1, ptr %i.qe, align 1, !noalias !8861
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 2800 ; 4 uses
  store i64 %.sroa.032.1.i.i, ptr %i.qf, align 16, !noalias !8861
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2808
  store i64 %.sroa.433.i.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8861
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !8861
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.663.i, i64 272, i1 false), !noalias !8861
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.qa)
          to label %bb.ct unwind label %bb.cs, !noalias !8865

bb.cs:                                            ; preds = %bb.cr
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !8861
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 1728
  invoke void @_RNvMsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_10SQLOptions11verify_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ce, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.qh, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.qf)
          to label %bb.cv unwind label %bb.cu, !noalias !8865

bb.cu:                                            ; preds = %bb.ct
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !8861
  br label %bb.cz
end_hunk_1
