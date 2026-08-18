inline.NumInlined: 4837
inline.NumDeleted: 1728
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
    i8 0, label %._crit_edge.i
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ah
  ]

._crit_edge.i:                                    ; preds = %bb.v
  %.phi.trans.insert119.i = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %.pre120.i = load ptr, ptr %.phi.trans.insert119.i, align 16, !noalias !7487
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i, %.thread48.i.i
  %i.es = phi ptr [ %i.dm, %.thread48.i.i ], [ %i.cq, %._crit_edge.i ] ; 4 uses
  %i.et = phi ptr [ %i.dn, %.thread48.i.i ], [ %i.cp, %._crit_edge.i ] ; 4 uses
  %i.eu = phi ptr [ %i.dr, %.thread48.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 4 uses
  %i.ev = phi ptr [ %i.dq, %.thread48.i.i ], [ %.pre120.i, %._crit_edge.i ] ; 2 uses
  %i.ew = phi ptr [ %.sroa.1023.0..sroa_idx.i.i, %.thread48.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 4 uses
  %i.ex = phi ptr [ %i.eb, %.thread48.i.i ], [ %i.er, %._crit_edge.i ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 2538 ; 3 uses
  store i8 0, ptr %i.ez, align 2, !noalias !7487
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.fa, align 1, !noalias !7487
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  store ptr %i.ev, ptr %i.fb, align 8, !noalias !7487
  store i8 1, ptr %i.ey, align 1, !noalias !7487
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1968 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.fc, ptr noundef nonnull align 8 dereferenceable(200) %i.ex, i64 200, i1 false), !noalias !7487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !7487
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState24resolve_table_references(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.fc)
          to label %bb.y unwind label %bb.x, !noalias !7491

bb.x:                                             ; preds = %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !7487
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7492)
  %i.fe = load i64, ptr %i.ca, align 8, !range !129, !alias.scope !7495, !noalias !7497, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.fe, 20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !7487
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !7487
  store i8 1, ptr %i.ez, align 2, !noalias !7487
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !7487
  %i.fh = load ptr, ptr %i.fb, align 8, !noalias !7487, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !7487
  %i.fi = getelementptr i8, ptr %1, i64 2184      ; 2 uses
  %.val40.i.i.i = load i64, ptr %i.fi, align 8, !noalias !7487, !noundef !4 ; 2 uses
  %i.fj = icmp ult i64 %.val40.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @200)
          to label %.noexc.i.i.i unwind label %bb.aa, !noalias !7491 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.z
  %i.fl = extractvalue { i64, i64 } %i.fk, 0
  %i.fm = extractvalue { i64, i64 } %i.fk, 1
  invoke void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bz, i64 noundef range(i64 0, 164703072086692426) %.val40.i.i.i, i64 noundef %i.fl, i64 noundef %i.fm)
          to label %bb.ab unwind label %bb.aa, !noalias !7491

bb.aa:                                            ; preds = %.noexc.i.i.i, %bb.z
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !7487
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i

bb.ab:                                            ; preds = %.noexc.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store ptr %i.fh, ptr %i.fo, align 16, !noalias !7487
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false), !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !7487
  store i8 0, ptr %i.ez, align 2, !noalias !7487
  %.sroa.090.0.copyload.i.i.i = load i64, ptr %i.fg, align 8, !noalias !7487
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2176
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !noalias !7487, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %i.fi, align 8, !noalias !7487 ; 2 uses
  %i.fq = icmp ult i64 %.sroa.6.0.copyload.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw [56 x i8], ptr %.sroa.5.0.copyload.i.i.i, i64 %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 2248
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.fs, align 8, !noalias !7487
  %.sroa.888.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.888.0..sroa_idx.i.i.i, align 16, !noalias !7487
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2264
  store i64 %.sroa.090.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !7487
  %.sroa.1089.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store ptr %i.fr, ptr %.sroa.1089.0..sroa_idx.i.i.i, align 16, !noalias !7487
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i, %bb.ab
  %i.ft = phi ptr [ %i.es, %bb.ab ], [ %i.iy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 11 uses
  %i.fu = phi ptr [ %i.et, %bb.ab ], [ %i.iz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fv = phi ptr [ %i.eu, %bb.ab ], [ %i.ja, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 11 uses
  %i.fw = phi ptr [ %i.ew, %bb.ab ], [ %i.jb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fx = phi ptr [ %i.ex, %bb.ab ], [ %i.jc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fy = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ab ], [ %.pre127.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 2 uses
  %i.fz = phi ptr [ %i.fr, %bb.ab ], [ %.pre.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 2280 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 2256 ; 2 uses
  %i.gd = icmp eq ptr %i.fy, %i.fz
  br i1 %i.gd, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i: ; preds = %.preheader.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2344
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %.backedge.i.i.i, %.preheader.i.i.i
  store i64 3, ptr %i.ga, align 8, !alias.scope !7498, !noalias !7501
  br label %.loopexit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.bh, %bb.aa
  %i.gj = phi ptr [ %i.es, %bb.aa ], [ %i.lz, %bb.bh ], [ %i.mf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gk = phi ptr [ %i.et, %bb.aa ], [ %i.ma, %bb.bh ], [ %i.mg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gl = phi ptr [ %i.eu, %bb.aa ], [ %i.mb, %bb.bh ], [ %i.mh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gm = phi ptr [ %i.ew, %bb.aa ], [ %i.mc, %bb.bh ], [ %i.mi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gn = phi ptr [ %i.ex, %bb.aa ], [ %i.md, %bb.bh ], [ %i.mj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.pn26.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fn, %bb.aa ], [ %i.me, %bb.bh ], [ %.pn26.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 2538
  %i.gp = load i8, ptr %i.go, align 2, !range !34, !noalias !7487, !noundef !4
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.cf, label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %.sroa.10.0..sroa_idx84.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.sroa.10.0.copyload85.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx84.i.i.i, align 8, !alias.scope !7503, !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !7487
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !7487
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7504)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.fe, ptr %i.gr, align 8, !alias.scope !7507, !noalias !7487
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %.sroa.10.0.copyload85.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !7507, !noalias !7487
  store i64 36, ptr %i.br, align 16, !alias.scope !7509, !noalias !7510
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i, %bb.ac
  %i.gs = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.es, %bb.ac ] ; 2 uses
  %i.gt = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.et, %bb.ac ] ; 2 uses
  %i.gu = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.eu, %bb.ac ] ; 2 uses
  %.sroa.826.i.sroa.0.0.copyload.i = phi i64 [ %i.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.fe, %bb.ac ]
  %i.gv = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.ew, %bb.ac ] ; 2 uses
  %i.gw = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.ex, %bb.ac ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.gx, align 2, !noalias !7487
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.gy)
          to label %.thread49.i.i unwind label %bb.cc, !noalias !7491

bb.ad:                                            ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i, %bb.x
  %i.gz = phi ptr [ %i.es, %bb.x ], [ %i.gj, %bb.cf ], [ %i.gj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i ] ; 2 uses
  %i.ha = phi ptr [ %i.et, %bb.x ], [ %i.gk, %bb.cf ], [ %i.gk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i ] ; 2 uses
  %i.hb = phi ptr [ %i.eu, %bb.x ], [ %i.gl, %bb.cf ], [ %i.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i ] ; 2 uses
  %i.hc = phi ptr [ %i.ew, %bb.x ], [ %i.gm, %bb.cf ], [ %i.gm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i ] ; 2 uses
  %i.hd = phi ptr [ %i.ex, %bb.x ], [ %i.gn, %bb.cf ], [ %i.gn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i ] ; 2 uses
  %.pn32.pn.i.i.i = phi { ptr, i32 } [ %i.fd, %bb.x ], [ %.pn26.pn.pn.pn.pn.i.i.i, %bb.cf ], [ %.pn26.pn.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.he, align 2, !noalias !7487
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.hg = load i8, ptr %i.hf, align 1, !range !34, !noalias !7487, !noundef !4
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.cg, label %bb.cb

bb.ae:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #37
          to label %.noexc.i.i unwind label %bb.u, !noalias !7478

.noexc.i.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #37
          to label %.noexc8.i.i unwind label %bb.u, !noalias !7478

.noexc8.i.i:                                      ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ah
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !7487
  %.val38.i.i.i = load ptr, ptr %i.hp, align 8, !noalias !7487
  %i.hj = getelementptr i8, ptr %1, i64 2528
  %.val39.i.i.i = load ptr, ptr %i.hj, align 16, !noalias !7487, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val38.i.i.i, ptr nonnull %.val39.i.i.i) #34
          to label %.body.i.i.i.a unwind label %bb.aw, !noalias !7491

bb.ah:                                            ; preds = %bb.bx, %bb.v
  %i.hk = phi ptr [ %i.cq, %bb.v ], [ %i.ft, %bb.bx ] ; 15 uses
  %i.hl = phi ptr [ %i.cp, %bb.v ], [ %i.fu, %bb.bx ] ; 14 uses
  %i.hm = phi ptr [ %.phi.trans.insert.i, %bb.v ], [ %i.fv, %bb.bx ] ; 15 uses
  %i.hn = phi ptr [ %.phi.trans.insert.i.i, %bb.v ], [ %i.fw, %bb.bx ] ; 15 uses
  %i.ho = phi ptr [ %i.er, %bb.v ], [ %i.fx, %bb.bx ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !7487
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 2520 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ai unwind label %bb.ag, !noalias !7491

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load i64, ptr %i.bv, align 8, !range !712, !noalias !7487, !noundef !4 ; 4 uses
  %i.hr = icmp eq i64 %i.hq, 21
  br i1 %i.hr, label %.thread.i.i, label %bb.aj

.thread.i.i:                                      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !7487
  store i8 3, ptr %i.hn, align 8, !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.cp

bb.aj:                                            ; preds = %bb.ai
  %.sroa.399.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.399.0.copyload.i.i.i = load ptr, ptr %.sroa.399.0..sroa_idx.i.i.i, align 8, !noalias !7487 ; 3 uses
  %.sroa.5100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.5100.0.copyload.i.i.i = load ptr, ptr %.sroa.5100.0..sroa_idx.i.i.i, align 8, !noalias !7487 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !7487
  %.val.i.i.i = load ptr, ptr %i.hp, align 8, !noalias !7487 ; 5 uses
  %i.hs = getelementptr i8, ptr %1, i64 2528
  %.val37.i.i.i = load ptr, ptr %i.hs, align 16, !noalias !7487, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ht = load ptr, ptr %.val37.i.i.i, align 8, !invariant.load !4, !noalias !7491 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i, label %4, label %3

3:                                                ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.ht(ptr noundef nonnull %.val.i.i.i)
          to label %4 unwind label %11, !noalias !7491

4:                                                ; preds = %3, %bb.aj
  %5 = getelementptr inbounds nuw i8, ptr %.val37.i.i.i, i64 8
  %6 = load i64, ptr %5, align 8, !range !463, !invariant.load !4, !noalias !7491 ; 2 uses
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %.val37.i.i.i, i64 16
  %10 = load i64, ptr %9, align 8, !range !302, !invariant.load !4, !noalias !7491
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %6, i64 noundef range(i64 1, 536870913) %10) #35, !noalias !7491
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.val37.i.i.i, i64 8
  %14 = load i64, ptr %13, align 8, !range !463, !invariant.load !4, !noalias !7491 ; 2 uses
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.body.i.i.i.a, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %.val37.i.i.i, i64 16
  %18 = load i64, ptr %17, align 8, !range !302, !invariant.load !4, !noalias !7491
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %14, i64 noundef range(i64 1, 536870913) %18) #35, !noalias !7491
  br label %.body.i.i.i.a

.body.i.i.i.a:                                    ; preds = %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %16, %11, %bb.ag
  %19 = phi ptr [ %i.hk, %16 ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hk, %bb.ag ], [ %i.ft, %bb.bv ], [ %i.hk, %11 ] ; 2 uses
  %20 = phi ptr [ %i.hl, %16 ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hl, %bb.ag ], [ %i.fu, %bb.bv ], [ %i.hl, %11 ] ; 2 uses
  %21 = phi ptr [ %i.hm, %16 ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hm, %bb.ag ], [ %i.fv, %bb.bv ], [ %i.hm, %11 ] ; 2 uses
  %22 = phi ptr [ %i.hn, %16 ], [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hn, %bb.ag ], [ %i.fw, %bb.bv ], [ %i.hn, %11 ] ; 2 uses
  %23 = phi ptr [ %i.ho, %16 ], [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ho, %bb.ag ], [ %i.fx, %bb.bv ], [ %i.ho, %11 ] ; 2 uses
  %.pn18.i.i.i = phi { ptr, i32 } [ %12, %16 ], [ %i.ju, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hi, %bb.ag ], [ %i.nu, %bb.bv ], [ %12, %11 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7511)
  call void @llvm.experimental.noalias.scope.decl(metadata !7514)
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !7517, !noalias !7487, !nonnull !4, !noundef !4
  %i.hw = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !7518
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.ak:                                            ; preds = %.body.i.i.i.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hu) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aw, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %8, %4
  %.not.i47.i.i.i = icmp eq i64 %i.hq, 20
  br i1 %.not.i47.i.i.i, label %bb.al, label %bb.by

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.not16.i.i.i = icmp eq ptr %.sroa.399.0.copyload.i.i.i, null
  br i1 %.not16.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5100.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !7487
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.hy, align 1, !noalias !7487
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 16 dereferenceable(64) %i.hz, i64 64, i1 false), !noalias !7487
  %i.ia = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.399.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5100.0.copyload.i.i.i)
          to label %bb.aq unwind label %bb.av, !noalias !7491 ; 2 uses

bb.an:                                            ; preds = %bb.al
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7519)
  call void @llvm.experimental.noalias.scope.decl(metadata !7522)
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !7525, !noalias !7487, !nonnull !4, !noundef !4
  %i.id = atomicrmw sub ptr %i.ic, i64 1 release, align 8, !noalias !7526
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ib) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i unwind label %bb.as, !noalias !7491

bb.ap:                                            ; preds = %bb.aq
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.ig = extractvalue { ptr, ptr } %i.ia, 0
  %i.ih = extractvalue { ptr, ptr } %i.ia, 1
  %i.ii = invoke noundef nonnull align 8 ptr @_RNvMs7_NtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtB5_16RustcVacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bu, ptr noundef nonnull %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ih)
          to label %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ap, !noalias !7491 ; 0 uses

_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7487
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7527)
  call void @llvm.experimental.noalias.scope.decl(metadata !7530)
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !7533, !noalias !7487, !nonnull !4, !noundef !4
  %i.il = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !7534
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i

bb.ar:                                            ; preds = %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ij) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i unwind label %bb.as, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.as, %bb.ak, %.body.i.i.i.a
  %i.in = phi ptr [ %i.hk, %bb.as ], [ %19, %bb.ak ], [ %19, %.body.i.i.i.a ] ; 2 uses
  %i.io = phi ptr [ %i.hl, %bb.as ], [ %20, %bb.ak ], [ %20, %.body.i.i.i.a ] ; 2 uses
  %i.ip = phi ptr [ %i.hm, %bb.as ], [ %21, %bb.ak ], [ %21, %.body.i.i.i.a ] ; 2 uses
  %i.iq = phi ptr [ %i.hn, %bb.as ], [ %22, %bb.ak ], [ %22, %.body.i.i.i.a ] ; 2 uses
  %i.ir = phi ptr [ %i.ho, %bb.as ], [ %23, %bb.ak ], [ %23, %.body.i.i.i.a ] ; 2 uses
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.iv, %bb.as ], [ %.pn18.i.i.i, %bb.ak ], [ %.pn18.i.i.i, %.body.i.i.i.a ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.it = load i64, ptr %i.is, align 16, !range !129, !noalias !7487, !noundef !4
  %i.iu = icmp eq i64 %i.it, 20
  br i1 %i.iu, label %bb.at, label %bb.cd

bb.as:                                            ; preds = %bb.bz, %bb.ar, %bb.ao
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i: ; preds = %bb.ar, %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 16, !range !129, !noalias !7487, !noundef !4
  %.not17.i.i.i = icmp eq i64 %i.ix, 20
  br i1 %.not17.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i
  %i.iy = phi ptr [ %i.ke, %.invoke.i.i.i ], [ %i.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.iz = phi ptr [ %i.kf, %.invoke.i.i.i ], [ %i.jy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.ja = phi ptr [ %i.kg, %.invoke.i.i.i ], [ %i.jz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.jb = phi ptr [ %i.kh, %.invoke.i.i.i ], [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.jc = phi ptr [ %i.ki, %.invoke.i.i.i ], [ %i.kb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 2537 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !range !34, !noalias !7487, !noundef !4
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i

bb.at:                                            ; preds = %bb.cd, %bb.bs, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.jg = phi ptr [ %i.jo, %bb.au ], [ %i.in, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.in, %bb.cd ], [ %i.ft, %bb.bs ] ; 2 uses
  %i.jh = phi ptr [ %i.jp, %bb.au ], [ %i.io, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.io, %bb.cd ], [ %i.fu, %bb.bs ] ; 2 uses
  %i.ji = phi ptr [ %i.jq, %bb.au ], [ %i.ip, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ip, %bb.cd ], [ %i.fv, %bb.bs ] ; 2 uses
  %i.jj = phi ptr [ %i.jr, %bb.au ], [ %i.iq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.iq, %bb.cd ], [ %i.fw, %bb.bs ] ; 2 uses
  %i.jk = phi ptr [ %i.js, %bb.au ], [ %i.ir, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ir, %bb.cd ], [ %i.fx, %bb.bs ] ; 2 uses
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.jt, %bb.au ], [ %.pn20.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %.pn20.i.i.i, %bb.cd ], [ %i.nm, %bb.bs ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 2537
  %i.jm = load i8, ptr %i.jl, align 1, !range !34, !noalias !7487, !noundef !4
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i

bb.au:                                            ; preds = %bb.ca, %.invoke.i.i.i
  %i.jo = phi ptr [ %i.hk, %bb.ca ], [ %i.ke, %.invoke.i.i.i ]
  %i.jp = phi ptr [ %i.hl, %bb.ca ], [ %i.kf, %.invoke.i.i.i ]
  %i.jq = phi ptr [ %i.hm, %bb.ca ], [ %i.kg, %.invoke.i.i.i ]
  %i.jr = phi ptr [ %i.hn, %bb.ca ], [ %i.kh, %.invoke.i.i.i ]
  %i.js = phi ptr [ %i.ho, %bb.ca ], [ %i.ki, %.invoke.i.i.i ]
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.av, %bb.ap
  %i.ju = phi { ptr, i32 } [ %i.if, %bb.ap ], [ %i.jv, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7487
  br label %.body.i.i.i.a

bb.av:                                            ; preds = %bb.am
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aw, !noalias !7491

bb.aw:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.az, %bb.av, %bb.ak, %bb.ag
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7491
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i: ; preds = %bb.bu, %bb.ao, %bb.an
  %i.jx = phi ptr [ %i.ft, %bb.bu ], [ %i.hk, %bb.ao ], [ %i.hk, %bb.an ] ; 2 uses
  %i.jy = phi ptr [ %i.fu, %bb.bu ], [ %i.hl, %bb.ao ], [ %i.hl, %bb.an ] ; 2 uses
  %i.jz = phi ptr [ %i.fv, %bb.bu ], [ %i.hm, %bb.ao ], [ %i.hm, %bb.an ] ; 2 uses
  %i.ka = phi ptr [ %i.fw, %bb.bu ], [ %i.hn, %bb.ao ], [ %i.hn, %bb.an ] ; 2 uses
  %i.kb = phi ptr [ %i.fx, %bb.bu ], [ %i.ho, %bb.ao ], [ %i.ho, %bb.an ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 16, !range !129, !noalias !7487, !noundef !4
  %.not23.i.i.i = icmp eq i64 %i.kd, 20
  br i1 %.not23.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i
  %i.ke = phi ptr [ %i.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.kf = phi ptr [ %i.jy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.kg = phi ptr [ %i.jz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.kh = phi ptr [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.ki = phi ptr [ %i.kb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ] ; 2 uses
  %i.kj = phi ptr [ %i.kc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i ], [ %i.iw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.kj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.au, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i: ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  store i8 0, ptr %i.jd, align 1, !noalias !7487
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 16, !alias.scope !7535, !noalias !7537
  %.phi.trans.insert126.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %.pre127.i.i.i = load ptr, ptr %.phi.trans.insert126.i.i.i, align 16, !alias.scope !7535, !noalias !7537
  br label %.preheader.i.i.i

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.kk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i unwind label %bb.ay, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i: ; preds = %bb.ce, %bb.ay, %bb.at
  %i.kl = phi ptr [ %i.kr, %bb.ay ], [ %i.jg, %bb.at ], [ %i.jg, %bb.ce ]
  %i.km = phi ptr [ %i.ks, %bb.ay ], [ %i.jh, %bb.at ], [ %i.jh, %bb.ce ]
  %i.kn = phi ptr [ %i.kt, %bb.ay ], [ %i.ji, %bb.at ], [ %i.ji, %bb.ce ]
  %i.ko = phi ptr [ %i.ku, %bb.ay ], [ %i.jj, %bb.at ], [ %i.jj, %bb.ce ]
  %i.kp = phi ptr [ %i.kv, %bb.ay ], [ %i.jk, %bb.at ], [ %i.jk, %bb.ce ]
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.kw, %bb.ay ], [ %.pn24.i.i.i, %bb.at ], [ %.pn24.i.i.i, %bb.ce ]
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.kq, align 1, !noalias !7487
  br label %bb.az

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i, %bb.ax
  %i.kr = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.iy, %bb.ax ]
  %i.ks = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.iz, %bb.ax ]
  %i.kt = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.ja, %bb.ax ]
  %i.ku = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.jb, %bb.ax ]
  %i.kv = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.jc, %bb.ax ]
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i

bb.az:                                            ; preds = %bb.bl, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i
  %i.kx = phi ptr [ %i.kl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i ], [ %i.ft, %bb.bl ], [ %i.ft, %bb.ba ]
  %i.ky = phi ptr [ %i.km, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i ], [ %i.fu, %bb.bl ], [ %i.fu, %bb.ba ]
  %i.kz = phi ptr [ %i.kn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i ], [ %i.fv, %bb.bl ], [ %i.fv, %bb.ba ]
  %i.la = phi ptr [ %i.ko, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i ], [ %i.fw, %bb.bl ], [ %i.fw, %bb.ba ]
  %i.lb = phi ptr [ %i.kp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i ], [ %i.fx, %bb.bl ], [ %i.fx, %bb.ba ]
  %.pn26.pn.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i ], [ %i.mr, %bb.bl ], [ %i.ld, %bb.ba ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aw, !noalias !7491

bb.ba:                                            ; preds = %bb.bb
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i
  %i.le = phi ptr [ %i.fy, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i ], [ %i.mo, %.backedge.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7498)
  call void @llvm.experimental.noalias.scope.decl(metadata !7539)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  store ptr %i.lf, ptr %i.gc, align 16, !alias.scope !7539, !noalias !7540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ga, ptr noundef nonnull align 8 dereferenceable(56) %i.le, i64 56, i1 false), !noalias !7541
  %.pr.i.i.i = load i64, ptr %i.ga, align 8, !noalias !7487
  %.not10.i.i.i = icmp eq i64 %.pr.i.i.i, 3
  br i1 %.not10.i.i.i, label %.loopexit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.le, i64 56, i1 false), !noalias !7491
  %i.lg = load ptr, ptr %i.ge, align 8, !noalias !7487, !nonnull !4, !align !10, !noundef !4
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.by)
          to label %bb.bj unwind label %bb.ba, !noalias !7491

.loopexit.i.i.i:                                  ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit63.i.i.i unwind label %bb.bc, !noalias !7491

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i, %.loopexit.i.i.i
  %i.li = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ft, %.loopexit.i.i.i ]
  %i.lj = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fu, %.loopexit.i.i.i ]
  %i.lk = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fv, %.loopexit.i.i.i ]
  %i.ll = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fw, %.loopexit.i.i.i ]
  %i.lm = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fx, %.loopexit.i.i.i ]
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit63.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !7487
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 1960
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !7487, !nonnull !4, !align !10, !noundef !4
  %i.lq = invoke noundef i56 @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState18get_parser_options(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lp)
          to label %bb.be unwind label %bb.bd, !noalias !7491 ; 3 uses

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit63.i.i.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit63.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.05.0.extract.trunc.i.i.i.i = trunc i56 %i.lq to i8
  %.sroa.05.1.extract.shift.i.i.i.i = lshr i56 %i.lq, 8
  %.sroa.05.1.extract.trunc.i.i.i.i = trunc i56 %.sroa.05.1.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.05.2.extract.shift.i.i.i.i = lshr i56 %i.lq, 16
  %.sroa.05.2.extract.trunc.i.i.i.i = trunc nuw i56 %.sroa.05.2.extract.shift.i.i.i.i to i40
  store ptr %i.ls, ptr %i.bt, align 8, !alias.scope !7542, !noalias !7545
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %.sroa.05.0.extract.trunc.i.i.i.i, ptr %i.lt, align 8, !alias.scope !7542, !noalias !7545
  %.sroa.2.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %.sroa.2.0..sroa_idx2.i.i.i.i, align 1, !alias.scope !7542, !noalias !7545
  %.sroa.3.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  store i40 %.sroa.05.2.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx4.i.i.i.i, align 2, !alias.scope !7542, !noalias !7545
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bt, i64 15
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %i.lu, align 1, !alias.scope !7542, !noalias !7545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !7487
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 2539 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.mc = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.fw, %bb.bg ]
  %i.md = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i ], [ %i.fx, %bb.bg ]
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i

bb.bi:                                            ; preds = %bb.bf, %bb.bd
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.lx, %bb.bf ], [ %i.lr, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7487
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bi, %bb.bc, %bb.az
  %i.mf = phi ptr [ %i.ft, %bb.bi ], [ %i.kx, %bb.az ], [ %i.li, %bb.bc ]
  %i.mg = phi ptr [ %i.fu, %bb.bi ], [ %i.ky, %bb.az ], [ %i.lj, %bb.bc ]
  %i.mh = phi ptr [ %i.fv, %bb.bi ], [ %i.kz, %bb.az ], [ %i.lk, %bb.bc ]
  %i.mi = phi ptr [ %i.fw, %bb.bi ], [ %i.la, %bb.az ], [ %i.ll, %bb.bc ]
  %i.mj = phi ptr [ %i.fx, %bb.bi ], [ %i.lb, %bb.az ], [ %i.lm, %bb.bc ]
  %.pn26.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn11.i.i.i, %bb.bi ], [ %.pn26.pn.i.i.i, %bb.az ], [ %i.ln, %bb.bc ]
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i unwind label %bb.aw, !noalias !7491

bb.bj:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !7547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !7550
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bx)
          to label %.noexc68.i.i.i unwind label %bb.bl, !noalias !7491

.noexc68.i.i.i:                                   ; preds = %bb.bj
  %i.ml = load ptr, ptr %i.bq, align 8, !noalias !7550, !noundef !4
  %.not.i67.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not.i67.i.i.i, label %.critedge.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc68.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gg, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !noalias !7553
  %.pr111.i.i.i = load ptr, ptr %i.gg, align 16, !noalias !7487
  %i.mm = icmp eq ptr %.pr111.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7550
  br i1 %i.mm, label %.backedge.i.i.i, label %bb.bm

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.bk
  %i.mn = load ptr, ptr %i.gb, align 16, !alias.scope !7554, !noalias !7556, !nonnull !4, !noundef !4
  %i.mo = load ptr, ptr %i.gc, align 16, !alias.scope !7554, !noalias !7556, !nonnull !4, !noundef !4 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.mn
  br i1 %i.mp, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %.noexc68.i.i.i
  %i.mq = load <2 x ptr>, ptr %i.gh, align 8, !noalias !7550
  store <2 x ptr> %i.mq, ptr %i.gi, align 8, !alias.scope !7547, !noalias !7553
  store ptr null, ptr %i.gg, align 16, !alias.scope !7547, !noalias !7553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7550
  br label %.backedge.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bm:                                            ; preds = %bb.bk
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 1, ptr %i.ms, align 1, !noalias !7487
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.mt, ptr noundef nonnull align 16 dereferenceable(64) %i.gg, i64 64, i1 false), !noalias !7487
  %i.mu = load ptr, ptr %i.ge, align 8, !noalias !7487, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !7487
  call void @llvm.experimental.noalias.scope.decl(metadata !7558)
  call void @llvm.experimental.noalias.scope.decl(metadata !7561)
  %i.mv = load ptr, ptr %i.mt, align 16, !alias.scope !7561, !noalias !7563, !nonnull !4, !noundef !4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !7561, !noalias !7563, !noundef !4
  %i.my = atomicrmw add ptr %i.mv, i64 1 monotonic, align 8, !noalias !7564
  %i.mz = icmp slt i64 %i.my, 0
  br i1 %i.mz, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.nb = load ptr, ptr %i.na, align 16, !alias.scope !7561, !noalias !7563, !nonnull !4, !noundef !4 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !7561, !noalias !7563, !noundef !4
  %i.ne = atomicrmw add ptr %i.nb, i64 1 monotonic, align 8, !noalias !7564
  %i.nf = icmp slt i64 %i.ne, 0
  br i1 %i.nf, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 16, !alias.scope !7561, !noalias !7563, !nonnull !4, !noundef !4 ; 2 uses
  %i.ni = getelementptr i8, ptr %1, i64 2440      ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !7561, !noalias !7563, !noundef !4
  %i.nk = atomicrmw add ptr %i.nh, i64 1 monotonic, align 8, !noalias !7564
  %i.nl = icmp slt i64 %i.nk, 0
  br i1 %i.nl, label %bb.br, label %bb.bt

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.bt
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !7487
  br label %bb.at

bb.bt:                                            ; preds = %bb.bp
  store ptr %i.mv, ptr %i.bw, align 8, !alias.scope !7558, !noalias !7565
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.mx, ptr %i.nn, align 8, !alias.scope !7558, !noalias !7565
  %i.no = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.nb, ptr %i.no, align 8, !alias.scope !7558, !noalias !7565
  %i.np = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %i.nd, ptr %i.np, align 8, !alias.scope !7558, !noalias !7565
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.nh, ptr %i.nq, align 8, !alias.scope !7558, !noalias !7565
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %i.nj, ptr %i.nr, align 8, !alias.scope !7558, !noalias !7565
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ns, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.mu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bw)
          to label %bb.bu unwind label %bb.bs, !noalias !7491

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !7487
  %i.nt = load i64, ptr %i.ns, align 16, !range !129, !noalias !7487, !noundef !4
  %.not14.i.i.i = icmp eq i64 %i.nt, 20
  br i1 %.not14.i.i.i, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit49.i.i.i

bb.bv:                                            ; preds = %bb.bw
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

bb.bw:                                            ; preds = %bb.bu
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 2504
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !7487, !nonnull !4, !noundef !4 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.nz = load ptr, ptr %i.ny, align 16, !noalias !7487, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  store ptr %i.nx, ptr %i.nv, align 8, !noalias !7487
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 2512
  store ptr %i.nz, ptr %i.oa, align 16, !noalias !7487
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !range !302, !invariant.load !4, !noalias !7491
  %i.od = add nsw i64 %i.oc, -1
  %i.oe = and i64 %i.od, -16
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %.val43.i.i.i = load ptr, ptr %i.ng, align 16, !noalias !7487, !nonnull !4, !noundef !4
  %.val44.i.i.i = load i64, ptr %i.ni, align 8, !noalias !7487, !noundef !4
  %i.oh = getelementptr inbounds nuw i8, ptr %.val43.i.i.i, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 56
  %i.oj = load ptr, ptr %i.oi, align 8, !invariant.load !4, !noalias !7491, !nonnull !4
  %i.ok = invoke { ptr, ptr } %i.oj(ptr noundef nonnull %i.og, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oh, i64 noundef %.val44.i.i.i)
          to label %bb.bx unwind label %bb.bv, !noalias !7491 ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ol = extractvalue { ptr, ptr } %i.ok, 0
  %i.om = extractvalue { ptr, ptr } %i.ok, 1
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store ptr %i.ol, ptr %i.on, align 8, !noalias !7487
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store ptr %i.om, ptr %i.oo, align 16, !noalias !7487
  br label %bb.ah

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !7487
  call void @llvm.experimental.noalias.scope.decl(metadata !7566)
  %i.op = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.hq, ptr %i.op, align 8, !alias.scope !7569, !noalias !7487
  %.sroa.2102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %.sroa.399.0.copyload.i.i.i, ptr %.sroa.2102.0..sroa_idx.i.i.i, align 16, !alias.scope !7569, !noalias !7487
  %.sroa.3103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %.sroa.5100.0.copyload.i.i.i, ptr %.sroa.3103.0..sroa_idx.i.i.i, align 8, !alias.scope !7569, !noalias !7487
  store i64 36, ptr %i.br, align 16, !alias.scope !7571, !noalias !7572
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7573)
  call void @llvm.experimental.noalias.scope.decl(metadata !7576)
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !7579, !noalias !7487, !nonnull !4, !noundef !4
  %i.os = atomicrmw sub ptr %i.or, i64 1 release, align 8, !noalias !7580
  %i.ot = icmp eq i64 %i.os, 1
  br i1 %i.ot, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.oq) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i unwind label %bb.as, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i: ; preds = %bb.bz, %bb.by
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 16, !range !129, !noalias !7487, !noundef !4
  %.not22.i.i.i = icmp eq i64 %i.ov, 20
  br i1 %.not22.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ou)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i unwind label %bb.au, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i: ; preds = %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit70.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ow)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i unwind label %bb.ay, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.ox, align 1, !noalias !7487
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.oy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i unwind label %bb.bc, !noalias !7491

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.oz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i unwind label %bb.bh, !noalias !7491

bb.cb:                                            ; preds = %bb.cg, %bb.cc, %bb.ad
  %i.pa = phi ptr [ %i.gs, %bb.cc ], [ %i.gz, %bb.cg ], [ %i.gz, %bb.ad ]
  %i.pb = phi ptr [ %i.gt, %bb.cc ], [ %i.ha, %bb.cg ], [ %i.ha, %bb.ad ]
  %i.pc = phi ptr [ %i.gu, %bb.cc ], [ %i.hb, %bb.cg ], [ %i.hb, %bb.ad ]
  %i.pd = phi ptr [ %i.gv, %bb.cc ], [ %i.hc, %bb.cg ], [ %i.hc, %bb.ad ]
  %i.pe = phi ptr [ %i.gw, %bb.cc ], [ %i.hd, %bb.cg ], [ %i.hd, %bb.ad ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.pg, %bb.cc ], [ %.pn32.pn.i.i.i, %bb.cg ], [ %.pn32.pn.i.i.i, %bb.ad ]
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pf, align 1, !noalias !7487
  store i8 2, ptr %i.pd, align 8, !noalias !7487
  br label %.body.i.i

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.thread49.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.ph, align 1, !noalias !7487
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i, i64 32, i1 false), !noalias !7581
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i, i64 272, i1 false), !noalias !7581
  store i8 1, ptr %i.gv, align 8, !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.ci

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.is) #34
          to label %bb.at unwind label %bb.aw, !noalias !7491

bb.ce:                                            ; preds = %bb.at
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.pi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit81.i.i.i unwind label %bb.aw, !noalias !7491

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 2168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.pj) #34
          to label %bb.ad unwind label %bb.aw, !noalias !7491

bb.cg:                                            ; preds = %bb.ad
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.pk) #34
          to label %bb.cb unwind label %bb.aw, !noalias !7491

bb.ch:                                            ; preds = %bb.bg
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.pl, align 2, !noalias !7487
  store i8 0, ptr %i.lv, align 1, !noalias !7487
  %.sroa.024.0.copyload25.pre.i.i = load i64, ptr %i.br, align 16, !noalias !7581 ; 2 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.826.i.sroa.0.0.copyload95.i = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !7581
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 32, i1 false), !noalias !7581
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !7581
  store i8 1, ptr %i.fw, align 8, !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.pm = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 37
  br i1 %i.pm, label %bb.cp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.thread49.i.i
  %i.pn = phi ptr [ %i.ft, %bb.ch ], [ %i.gs, %.thread49.i.i ] ; 3 uses
  %i.po = phi ptr [ %i.fu, %bb.ch ], [ %i.gt, %.thread49.i.i ] ; 3 uses
  %i.pp = phi ptr [ %i.fv, %bb.ch ], [ %i.gu, %.thread49.i.i ] ; 3 uses
  %.sroa.826.i.sroa.0.0.i = phi i64 [ %.sroa.826.i.sroa.0.0.copyload95.i, %bb.ch ], [ %.sroa.826.i.sroa.0.0.copyload.i, %.thread49.i.i ] ; 2 uses
  %.sroa.024.0.copyload2552.i.i = phi i64 [ %.sroa.024.0.copyload25.pre.i.i, %bb.ch ], [ 36, %.thread49.i.i ] ; 2 uses
  %i.pq = phi ptr [ %i.fx, %bb.ch ], [ %i.gw, %.thread49.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, i64 32, i1 false), !noalias !7474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, i64 272, i1 false), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.pq)
          to label %bb.ck unwind label %bb.cj, !noalias !7478

bb.cj:                                            ; preds = %bb.ci
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.ck:                                            ; preds = %bb.ci
  %i.ps = icmp eq i64 %.sroa.024.0.copyload2552.i.i, 36
  br i1 %i.ps, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, i64 272, i1 false), !noalias !7474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !7474
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !7474
  br label %bb.cq

bb.cn:                                            ; preds = %bb.co, %.body.i.i
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7478
  unreachable

bb.co:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.cc) #34
          to label %.body16.thread.i unwind label %bb.cn, !noalias !7478

bb.cp:                                            ; preds = %bb.ch, %.thread.i.i
  %i.pu = phi ptr [ %i.hk, %.thread.i.i ], [ %i.ft, %bb.ch ]
  %i.pv = phi ptr [ %i.hm, %.thread.i.i ], [ %i.fv, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !7474
  store i8 3, ptr %i.pv, align 2, !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  br label %bb.pg

bb.cq:                                            ; preds = %bb.cm, %bb.cl, %bb.r
  %i.pw = phi ptr [ %i.dm, %bb.r ], [ %i.pn, %bb.cm ], [ %i.pn, %bb.cl ] ; 7 uses
  %i.px = phi ptr [ %i.dn, %bb.r ], [ %i.po, %bb.cm ], [ %i.po, %bb.cl ] ; 7 uses
  %i.py = phi ptr [ %i.dr, %bb.r ], [ %i.pp, %bb.cm ], [ %i.pp, %bb.cl ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.i, %bb.cm ], [ %.sroa.826.i.sroa.0.0.i, %bb.cl ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cm ], [ %.sroa.024.0.copyload2552.i.i, %bb.cl ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.pz, align 1, !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !7474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, i64 32, i1 false), !noalias !7582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, i64 272, i1 false), !noalias !7582
  store i8 1, ptr %i.py, align 2, !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, i64 32, i1 false), !noalias !7469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, i64 272, i1 false), !noalias !7469
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  %i.qa = icmp eq i64 %.sroa.032.1.i.i, 36
  br i1 %i.qa, label %bb.da, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 1731 ; 2 uses
  store i8 1, ptr %i.qb, align 1, !noalias !7469
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 2800 ; 4 uses
  store i64 %.sroa.032.1.i.i, ptr %i.qc, align 16, !noalias !7469
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2808
  store i64 %.sroa.433.i.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7469
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !7469
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, i64 272, i1 false), !noalias !7469
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.px)
          to label %bb.ct unwind label %bb.cs, !noalias !7473

bb.cs:                                            ; preds = %bb.cr
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !7469
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 1728
  invoke void @_RNvMsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_10SQLOptions11verify_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.qe, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.qc)
          to label %bb.cv unwind label %bb.cu, !noalias !7473

bb.cu:                                            ; preds = %bb.ct
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !7469
  br label %bb.cz
end_hunk_1
