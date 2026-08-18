inline.NumInlined: 5476
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
._crit_edge.i:                                    ; preds = %bb.v
  %.phi.trans.insert119.i = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %.pre120.i = load ptr, ptr %.phi.trans.insert119.i, align 16, !noalias !17877
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i, %.thread48.i.i
  %i.er = phi ptr [ %i.dl, %.thread48.i.i ], [ %i.cp, %._crit_edge.i ] ; 4 uses
  %i.es = phi ptr [ %i.dm, %.thread48.i.i ], [ %i.co, %._crit_edge.i ] ; 4 uses
  %i.et = phi ptr [ %i.dq, %.thread48.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 4 uses
  %i.eu = phi ptr [ %i.dp, %.thread48.i.i ], [ %.pre120.i, %._crit_edge.i ] ; 2 uses
  %i.ev = phi ptr [ %.sroa.1023.0..sroa_idx.i.i, %.thread48.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 4 uses
  %i.ew = phi ptr [ %i.ea, %.thread48.i.i ], [ %i.eq, %._crit_edge.i ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 2538 ; 3 uses
  store i8 0, ptr %i.ey, align 2, !noalias !17877
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.ez, align 1, !noalias !17877
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  store ptr %i.eu, ptr %i.fa, align 8, !noalias !17877
  store i8 1, ptr %i.ex, align 1, !noalias !17877
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1968 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.fb, ptr noundef nonnull align 8 dereferenceable(200) %i.ew, i64 200, i1 false), !noalias !17877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !17877
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState24resolve_table_references(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.fb)
          to label %bb.z unwind label %bb.y, !noalias !17881

bb.x:                                             ; preds = %bb.v
  %.phi.trans.insert129.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2520
  %.val.i.pre.i.i.i = load ptr, ptr %.phi.trans.insert129.i.i.i, align 8, !alias.scope !17882, !noalias !17885
  %.phi.trans.insert131.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2528
  %.val1.i.pre.i.i.i = load ptr, ptr %.phi.trans.insert131.i.i.i, align 16, !alias.scope !17882, !noalias !17885
  br label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17877
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17888)
  %i.fd = load i64, ptr %i.bz, align 8, !range !1787, !alias.scope !17891, !noalias !17893, !noundef !17 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.fd, 20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false), !noalias !17877
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17877
  store i8 1, ptr %i.ey, align 2, !noalias !17877
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !17877
  %i.fg = load ptr, ptr %i.fa, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !17877
  %i.fh = getelementptr i8, ptr %1, i64 2184      ; 2 uses
  %.val40.i.i.i = load i64, ptr %i.fh, align 8, !noalias !17877, !noundef !17 ; 2 uses
  %i.fi = icmp ult i64 %.val40.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @222)
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !17881 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.aa
  %i.fk = extractvalue { i64, i64 } %i.fj, 0
  %i.fl = extractvalue { i64, i64 } %i.fj, 1
  invoke void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.by, i64 noundef range(i64 0, 164703072086692426) %.val40.i.i.i, i64 noundef %i.fk, i64 noundef %i.fl)
          to label %bb.ac unwind label %bb.ab, !noalias !17881

bb.ab:                                            ; preds = %.noexc.i.i.i, %bb.aa
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17877
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

bb.ac:                                            ; preds = %.noexc.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store ptr %i.fg, ptr %i.fn, align 16, !noalias !17877
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fo, ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 48, i1 false), !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17877
  store i8 0, ptr %i.ey, align 2, !noalias !17877
  %.sroa.091.0.copyload.i.i.i = load i64, ptr %i.ff, align 8, !noalias !17877
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2176
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !noalias !17877, !nonnull !17, !noundef !17 ; 4 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %i.fh, align 8, !noalias !17877 ; 2 uses
  %i.fp = icmp ult i64 %.sroa.6.0.copyload.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw [56 x i8], ptr %.sroa.5.0.copyload.i.i.i, i64 %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 2248
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.fr, align 8, !noalias !17877
  %.sroa.889.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.889.0..sroa_idx.i.i.i, align 16, !noalias !17877
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2264
  store i64 %.sroa.091.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !17877
  %.sroa.1090.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store ptr %i.fq, ptr %.sroa.1090.0..sroa_idx.i.i.i, align 16, !noalias !17877
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i, %bb.ac
  %i.fs = phi ptr [ %i.er, %bb.ac ], [ %i.ix, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 11 uses
  %i.ft = phi ptr [ %i.es, %bb.ac ], [ %i.iy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fu = phi ptr [ %i.et, %bb.ac ], [ %i.iz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 11 uses
  %i.fv = phi ptr [ %i.ev, %bb.ac ], [ %i.ja, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fw = phi ptr [ %i.ew, %bb.ac ], [ %i.jb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fx = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ac ], [ %.pre128.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 2 uses
  %i.fy = phi ptr [ %i.fq, %bb.ac ], [ %.pre.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2280 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 2256 ; 2 uses
  %i.gc = icmp eq ptr %i.fx, %i.fy
  br i1 %i.gc, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i: ; preds = %.preheader.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 2344
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %.backedge.i.i.i, %.preheader.i.i.i
  store i64 3, ptr %i.fz, align 8, !alias.scope !17894, !noalias !17897
  br label %.loopexit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.bh, %bb.ab
  %i.gi = phi ptr [ %i.er, %bb.ab ], [ %i.ly, %bb.bh ], [ %i.me, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gj = phi ptr [ %i.es, %bb.ab ], [ %i.lz, %bb.bh ], [ %i.mf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gk = phi ptr [ %i.et, %bb.ab ], [ %i.ma, %bb.bh ], [ %i.mg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gl = phi ptr [ %i.ev, %bb.ab ], [ %i.mb, %bb.bh ], [ %i.mh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gm = phi ptr [ %i.ew, %bb.ab ], [ %i.mc, %bb.bh ], [ %i.mi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.pn26.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.ab ], [ %i.md, %bb.bh ], [ %.pn26.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 2538
  %i.go = load i8, ptr %i.gn, align 2, !range !270, !noalias !17877, !noundef !17
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.cf, label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %.sroa.10.0..sroa_idx85.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.10.0.copyload86.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx85.i.i.i, align 8, !alias.scope !17899, !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17877
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !17877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17900)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.fd, ptr %i.gq, align 8, !alias.scope !17903, !noalias !17877
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %.sroa.10.0.copyload86.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !17903, !noalias !17877
  store i64 36, ptr %i.bq, align 16, !alias.scope !17905, !noalias !17906
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i, %bb.ad
  %i.gr = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.er, %bb.ad ] ; 2 uses
  %i.gs = phi ptr [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.es, %bb.ad ] ; 2 uses
  %i.gt = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.et, %bb.ad ] ; 2 uses
  %.sroa.826.i.sroa.0.0.copyload.i = phi i64 [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.fd, %bb.ad ]
  %i.gu = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.ev, %bb.ad ] ; 2 uses
  %i.gv = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.ew, %bb.ad ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.gw, align 2, !noalias !17877
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.gx)
          to label %.thread49.i.i unwind label %bb.cc, !noalias !17881

bb.ae:                                            ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i, %bb.y
  %i.gy = phi ptr [ %i.er, %bb.y ], [ %i.gi, %bb.cf ], [ %i.gi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.gz = phi ptr [ %i.es, %bb.y ], [ %i.gj, %bb.cf ], [ %i.gj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.ha = phi ptr [ %i.et, %bb.y ], [ %i.gk, %bb.cf ], [ %i.gk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hb = phi ptr [ %i.ev, %bb.y ], [ %i.gl, %bb.cf ], [ %i.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hc = phi ptr [ %i.ew, %bb.y ], [ %i.gm, %bb.cf ], [ %i.gm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %.pn32.pn.i.i.i = phi { ptr, i32 } [ %i.fc, %bb.y ], [ %.pn26.pn.pn.pn.pn.i.i.i, %bb.cf ], [ %.pn26.pn.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.hd, align 2, !noalias !17877
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.hf = load i8, ptr %i.he, align 1, !range !270, !noalias !17877, !noundef !17
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.cg, label %bb.cb

bb.af:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #42
          to label %.noexc.i.i unwind label %bb.u, !noalias !17868

.noexc.i.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #42
          to label %.noexc8.i.i unwind label %bb.u, !noalias !17868

.noexc8.i.i:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ai
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17877
  %.val38.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !17877
  %.val39.i.i.i = load ptr, ptr %i.ho, align 16, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val38.i.i.i, ptr nonnull %.val39.i.i.i) #37
          to label %.body.i.i.i.a unwind label %bb.aw, !noalias !17881

bb.ai:                                            ; preds = %bb.bx, %bb.x
  %i.hi = phi ptr [ %i.cp, %bb.x ], [ %i.fs, %bb.bx ] ; 14 uses
  %i.hj = phi ptr [ %i.co, %bb.x ], [ %i.ft, %bb.bx ] ; 13 uses
  %i.hk = phi ptr [ %.phi.trans.insert.i, %bb.x ], [ %i.fu, %bb.bx ] ; 14 uses
  %i.hl = phi ptr [ %.phi.trans.insert.i.i, %bb.x ], [ %i.fv, %bb.bx ] ; 14 uses
  %i.hm = phi ptr [ %i.eq, %bb.x ], [ %i.fw, %bb.bx ] ; 13 uses
  %.val1.i.i.i.i = phi ptr [ %.val1.i.pre.i.i.i, %bb.x ], [ %i.ol, %bb.bx ]
  %.val.i.i.i.i = phi ptr [ %.val.i.pre.i.i.i, %bb.x ], [ %i.ok, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !17877
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 2520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17882)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 2528 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !invariant.load !17, !noalias !17907, !nonnull !17
  invoke void %i.hq(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bu, ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ah, !noalias !17881, !inline_history !15634

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ai
  %i.hr = load i64, ptr %i.bu, align 8, !range !1799, !noalias !17877, !noundef !17 ; 4 uses
  %i.hs = icmp eq i64 %i.hr, 21
  br i1 %i.hs, label %.thread.i.i, label %bb.aj

.thread.i.i:                                      ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17877
  store i8 3, ptr %i.hl, align 8, !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.cp

bb.aj:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.sroa.3100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.3100.0.copyload.i.i.i = load ptr, ptr %.sroa.3100.0..sroa_idx.i.i.i, align 8, !noalias !17877 ; 3 uses
  %.sroa.5101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.5101.0.copyload.i.i.i = load ptr, ptr %.sroa.5101.0..sroa_idx.i.i.i, align 8, !noalias !17877 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17877
  %.val.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !17877
  %.val37.i.i.i = load ptr, ptr %i.ho, align 16, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val.i.i.i, ptr nonnull %.val37.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %8, !noalias !17881

.body.i.i.i.a:                                    ; preds = %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %8, %bb.ah
  %3 = phi ptr [ %i.hi, %8 ], [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hi, %bb.ah ], [ %i.fs, %bb.bv ] ; 2 uses
  %4 = phi ptr [ %i.hj, %8 ], [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hj, %bb.ah ], [ %i.ft, %bb.bv ] ; 2 uses
  %5 = phi ptr [ %i.hk, %8 ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hk, %bb.ah ], [ %i.fu, %bb.bv ] ; 2 uses
  %6 = phi ptr [ %i.hl, %8 ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hl, %bb.ah ], [ %i.fv, %bb.bv ] ; 2 uses
  %7 = phi ptr [ %i.hm, %8 ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hm, %bb.ah ], [ %i.fw, %bb.bv ] ; 2 uses
  %.pn18.i.i.i = phi { ptr, i32 } [ %9, %8 ], [ %i.jt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hh, %bb.ah ], [ %i.nt, %bb.bv ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17908)
  call void @llvm.experimental.noalias.scope.decl(metadata !17911)
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !17914, !noalias !17877, !nonnull !17, !noundef !17
  %i.hv = atomicrmw sub ptr %i.hu, i64 1 release, align 8, !noalias !17915
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.ak:                                            ; preds = %.body.i.i.i.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ht) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aw, !noalias !17881

8:                                                ; preds = %bb.aj
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.aj
  %.not.i48.i.i.i = icmp eq i64 %i.hr, 20
  br i1 %.not.i48.i.i.i, label %bb.al, label %bb.by

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.not16.i.i.i = icmp eq ptr %.sroa.3100.0.copyload.i.i.i, null
  br i1 %.not16.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5101.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !17877
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.hx, align 1, !noalias !17877
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 16 dereferenceable(64) %i.hy, i64 64, i1 false), !noalias !17877
  %i.hz = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.3100.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5101.0.copyload.i.i.i)
          to label %bb.aq unwind label %bb.av, !noalias !17881 ; 2 uses

bb.an:                                            ; preds = %bb.al
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17916)
  call void @llvm.experimental.noalias.scope.decl(metadata !17919)
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !17922, !noalias !17877, !nonnull !17, !noundef !17
  %i.ic = atomicrmw sub ptr %i.ib, i64 1 release, align 8, !noalias !17923
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ia) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i unwind label %bb.as, !noalias !17881

bb.ap:                                            ; preds = %bb.aq
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.if = extractvalue { ptr, ptr } %i.hz, 0
  %i.ig = extractvalue { ptr, ptr } %i.hz, 1
  %i.ih = invoke noundef nonnull align 8 ptr @_RNvMs7_NtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtB5_16RustcVacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bt, ptr noundef nonnull %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ig)
          to label %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ap, !noalias !17881 ; 0 uses

_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !17877
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17924)
  call void @llvm.experimental.noalias.scope.decl(metadata !17927)
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !17930, !noalias !17877, !nonnull !17, !noundef !17
  %i.ik = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !noalias !17931
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i

bb.ar:                                            ; preds = %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ii) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i unwind label %bb.as, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.as, %bb.ak, %.body.i.i.i.a
  %i.im = phi ptr [ %i.hi, %bb.as ], [ %3, %bb.ak ], [ %3, %.body.i.i.i.a ] ; 2 uses
  %i.in = phi ptr [ %i.hj, %bb.as ], [ %4, %bb.ak ], [ %4, %.body.i.i.i.a ] ; 2 uses
  %i.io = phi ptr [ %i.hk, %bb.as ], [ %5, %bb.ak ], [ %5, %.body.i.i.i.a ] ; 2 uses
  %i.ip = phi ptr [ %i.hl, %bb.as ], [ %6, %bb.ak ], [ %6, %.body.i.i.i.a ] ; 2 uses
  %i.iq = phi ptr [ %i.hm, %bb.as ], [ %7, %bb.ak ], [ %7, %.body.i.i.i.a ] ; 2 uses
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.iu, %bb.as ], [ %.pn18.i.i.i, %bb.ak ], [ %.pn18.i.i.i, %.body.i.i.i.a ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 16, !range !1787, !noalias !17877, !noundef !17
  %i.it = icmp eq i64 %i.is, 20
  br i1 %i.it, label %bb.at, label %bb.cd

bb.as:                                            ; preds = %bb.bz, %bb.ar, %bb.ao
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i: ; preds = %bb.ar, %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not17.i.i.i = icmp eq i64 %i.iw, 20
  br i1 %.not17.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i
  %i.ix = phi ptr [ %i.kd, %.invoke.i.i.i ], [ %i.jw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.iy = phi ptr [ %i.ke, %.invoke.i.i.i ], [ %i.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.iz = phi ptr [ %i.kf, %.invoke.i.i.i ], [ %i.jy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.ja = phi ptr [ %i.kg, %.invoke.i.i.i ], [ %i.jz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jb = phi ptr [ %i.kh, %.invoke.i.i.i ], [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 2537 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !range !270, !noalias !17877, !noundef !17
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i

bb.at:                                            ; preds = %bb.cd, %bb.bs, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.jf = phi ptr [ %i.jn, %bb.au ], [ %i.im, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.im, %bb.cd ], [ %i.fs, %bb.bs ] ; 2 uses
  %i.jg = phi ptr [ %i.jo, %bb.au ], [ %i.in, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.in, %bb.cd ], [ %i.ft, %bb.bs ] ; 2 uses
  %i.jh = phi ptr [ %i.jp, %bb.au ], [ %i.io, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.io, %bb.cd ], [ %i.fu, %bb.bs ] ; 2 uses
  %i.ji = phi ptr [ %i.jq, %bb.au ], [ %i.ip, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ip, %bb.cd ], [ %i.fv, %bb.bs ] ; 2 uses
  %i.jj = phi ptr [ %i.jr, %bb.au ], [ %i.iq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.iq, %bb.cd ], [ %i.fw, %bb.bs ] ; 2 uses
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.js, %bb.au ], [ %.pn20.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %.pn20.i.i.i, %bb.cd ], [ %i.nl, %bb.bs ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 2537
  %i.jl = load i8, ptr %i.jk, align 1, !range !270, !noalias !17877, !noundef !17
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i

bb.au:                                            ; preds = %bb.ca, %.invoke.i.i.i
  %i.jn = phi ptr [ %i.hi, %bb.ca ], [ %i.kd, %.invoke.i.i.i ]
  %i.jo = phi ptr [ %i.hj, %bb.ca ], [ %i.ke, %.invoke.i.i.i ]
  %i.jp = phi ptr [ %i.hk, %bb.ca ], [ %i.kf, %.invoke.i.i.i ]
  %i.jq = phi ptr [ %i.hl, %bb.ca ], [ %i.kg, %.invoke.i.i.i ]
  %i.jr = phi ptr [ %i.hm, %bb.ca ], [ %i.kh, %.invoke.i.i.i ]
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.av, %bb.ap
  %i.jt = phi { ptr, i32 } [ %i.ie, %bb.ap ], [ %i.ju, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !17877
  br label %.body.i.i.i.a

bb.av:                                            ; preds = %bb.am
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aw, !noalias !17881

bb.aw:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.az, %bb.av, %bb.ak, %bb.ah
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17881
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i: ; preds = %bb.bu, %bb.ao, %bb.an
  %i.jw = phi ptr [ %i.fs, %bb.bu ], [ %i.hi, %bb.ao ], [ %i.hi, %bb.an ] ; 2 uses
  %i.jx = phi ptr [ %i.ft, %bb.bu ], [ %i.hj, %bb.ao ], [ %i.hj, %bb.an ] ; 2 uses
  %i.jy = phi ptr [ %i.fu, %bb.bu ], [ %i.hk, %bb.ao ], [ %i.hk, %bb.an ] ; 2 uses
  %i.jz = phi ptr [ %i.fv, %bb.bu ], [ %i.hl, %bb.ao ], [ %i.hl, %bb.an ] ; 2 uses
  %i.ka = phi ptr [ %i.fw, %bb.bu ], [ %i.hm, %bb.ao ], [ %i.hm, %bb.an ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not23.i.i.i = icmp eq i64 %i.kc, 20
  br i1 %.not23.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i
  %i.kd = phi ptr [ %i.jw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.ke = phi ptr [ %i.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kf = phi ptr [ %i.jy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kg = phi ptr [ %i.jz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kh = phi ptr [ %i.ka, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.ki = phi ptr [ %i.kb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.iv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ki)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.au, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i: ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  store i8 0, ptr %i.jc, align 1, !noalias !17877
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 16, !alias.scope !17932, !noalias !17934
  %.phi.trans.insert127.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %.pre128.i.i.i = load ptr, ptr %.phi.trans.insert127.i.i.i, align 16, !alias.scope !17932, !noalias !17934
  br label %.preheader.i.i.i

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.kj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i unwind label %bb.ay, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i: ; preds = %bb.ce, %bb.ay, %bb.at
  %i.kk = phi ptr [ %i.kq, %bb.ay ], [ %i.jf, %bb.at ], [ %i.jf, %bb.ce ]
  %i.kl = phi ptr [ %i.kr, %bb.ay ], [ %i.jg, %bb.at ], [ %i.jg, %bb.ce ]
  %i.km = phi ptr [ %i.ks, %bb.ay ], [ %i.jh, %bb.at ], [ %i.jh, %bb.ce ]
  %i.kn = phi ptr [ %i.kt, %bb.ay ], [ %i.ji, %bb.at ], [ %i.ji, %bb.ce ]
  %i.ko = phi ptr [ %i.ku, %bb.ay ], [ %i.jj, %bb.at ], [ %i.jj, %bb.ce ]
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.kv, %bb.ay ], [ %.pn24.i.i.i, %bb.at ], [ %.pn24.i.i.i, %bb.ce ]
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.kp, align 1, !noalias !17877
  br label %bb.az

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i, %bb.ax
  %i.kq = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.ix, %bb.ax ]
  %i.kr = phi ptr [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.iy, %bb.ax ]
  %i.ks = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.iz, %bb.ax ]
  %i.kt = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.ja, %bb.ax ]
  %i.ku = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.jb, %bb.ax ]
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i

bb.az:                                            ; preds = %bb.bl, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i
  %i.kw = phi ptr [ %i.kk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.fs, %bb.bl ], [ %i.fs, %bb.ba ]
  %i.kx = phi ptr [ %i.kl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.ft, %bb.bl ], [ %i.ft, %bb.ba ]
  %i.ky = phi ptr [ %i.km, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.fu, %bb.bl ], [ %i.fu, %bb.ba ]
  %i.kz = phi ptr [ %i.kn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.fv, %bb.bl ], [ %i.fv, %bb.ba ]
  %i.la = phi ptr [ %i.ko, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.fw, %bb.bl ], [ %i.fw, %bb.ba ]
  %.pn26.pn.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.mq, %bb.bl ], [ %i.lc, %bb.ba ]
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aw, !noalias !17881

bb.ba:                                            ; preds = %bb.bb
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i
  %i.ld = phi ptr [ %i.fx, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i ], [ %i.mn, %.backedge.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17894)
  call void @llvm.experimental.noalias.scope.decl(metadata !17936)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  store ptr %i.le, ptr %i.gb, align 16, !alias.scope !17936, !noalias !17937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fz, ptr noundef nonnull align 8 dereferenceable(56) %i.ld, i64 56, i1 false), !noalias !17938
  %.pr.i.i.i = load i64, ptr %i.fz, align 8, !noalias !17877
  %.not10.i.i.i = icmp eq i64 %.pr.i.i.i, 3
  br i1 %.not10.i.i.i, label %.loopexit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.ld, i64 56, i1 false), !noalias !17881
  %i.lf = load ptr, ptr %i.gd, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bx)
          to label %bb.bj unwind label %bb.ba, !noalias !17881

.loopexit.i.i.i:                                  ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i unwind label %bb.bc, !noalias !17881

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i, %.loopexit.i.i.i
  %i.lh = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.fs, %.loopexit.i.i.i ]
  %i.li = phi ptr [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.ft, %.loopexit.i.i.i ]
  %i.lj = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.fu, %.loopexit.i.i.i ]
  %i.lk = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.fv, %.loopexit.i.i.i ]
  %i.ll = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.fw, %.loopexit.i.i.i ]
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !17877
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 1960
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  %i.lp = invoke noundef i56 @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState18get_parser_options(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lo)
          to label %bb.be unwind label %bb.bd, !noalias !17881 ; 3 uses

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.05.0.extract.trunc.i.i.i.i = trunc i56 %i.lp to i8
  %.sroa.05.1.extract.shift.i.i.i.i = lshr i56 %i.lp, 8
  %.sroa.05.1.extract.trunc.i.i.i.i = trunc i56 %.sroa.05.1.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.05.2.extract.shift.i.i.i.i = lshr i56 %i.lp, 16
  %.sroa.05.2.extract.trunc.i.i.i.i = trunc nuw i56 %.sroa.05.2.extract.shift.i.i.i.i to i40
  store ptr %i.lr, ptr %i.bs, align 8, !alias.scope !17939, !noalias !17942
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %.sroa.05.0.extract.trunc.i.i.i.i, ptr %i.ls, align 8, !alias.scope !17939, !noalias !17942
  %.sroa.2.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 9
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %.sroa.2.0..sroa_idx2.i.i.i.i, align 1, !alias.scope !17939, !noalias !17942
  %.sroa.3.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  store i40 %.sroa.05.2.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx4.i.i.i.i, align 2, !alias.scope !17939, !noalias !17942
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bs, i64 15
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %i.lt, align 1, !alias.scope !17939, !noalias !17942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !17877
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 2539 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.mb = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.fv, %bb.bg ]
  %i.mc = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.fw, %bb.bg ]
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

bb.bi:                                            ; preds = %bb.bf, %bb.bd
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.lw, %bb.bf ], [ %i.lq, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !17877
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bi, %bb.bc, %bb.az
  %i.me = phi ptr [ %i.fs, %bb.bi ], [ %i.kw, %bb.az ], [ %i.lh, %bb.bc ]
  %i.mf = phi ptr [ %i.ft, %bb.bi ], [ %i.kx, %bb.az ], [ %i.li, %bb.bc ]
  %i.mg = phi ptr [ %i.fu, %bb.bi ], [ %i.ky, %bb.az ], [ %i.lj, %bb.bc ]
  %i.mh = phi ptr [ %i.fv, %bb.bi ], [ %i.kz, %bb.az ], [ %i.lk, %bb.bc ]
  %i.mi = phi ptr [ %i.fw, %bb.bi ], [ %i.la, %bb.az ], [ %i.ll, %bb.bc ]
  %.pn26.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn11.i.i.i, %bb.bi ], [ %.pn26.pn.i.i.i, %bb.az ], [ %i.lm, %bb.bc ]
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i unwind label %bb.aw, !noalias !17881

bb.bj:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !17944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !17947
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bw)
          to label %.noexc69.i.i.i unwind label %bb.bl, !noalias !17881

.noexc69.i.i.i:                                   ; preds = %bb.bj
  %i.mk = load ptr, ptr %i.bp, align 8, !noalias !17947, !noundef !17
  %.not.i68.i.i.i = icmp eq ptr %i.mk, null
  br i1 %.not.i68.i.i.i, label %.critedge.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc69.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gf, ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i64 64, i1 false), !noalias !17950
  %.pr112.i.i.i = load ptr, ptr %i.gf, align 16, !noalias !17877
  %i.ml = icmp eq ptr %.pr112.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !17947
  br i1 %i.ml, label %.backedge.i.i.i, label %bb.bm

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.bk
  %i.mm = load ptr, ptr %i.ga, align 16, !alias.scope !17951, !noalias !17953, !nonnull !17, !noundef !17
  %i.mn = load ptr, ptr %i.gb, align 16, !alias.scope !17951, !noalias !17953, !nonnull !17, !noundef !17 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.mm
  br i1 %i.mo, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %.noexc69.i.i.i
  %i.mp = load <2 x ptr>, ptr %i.gg, align 8, !noalias !17947
  store <2 x ptr> %i.mp, ptr %i.gh, align 8, !alias.scope !17944, !noalias !17950
  store ptr null, ptr %i.gf, align 16, !alias.scope !17944, !noalias !17950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !17947
  br label %.backedge.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bm:                                            ; preds = %bb.bk
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 1, ptr %i.mr, align 1, !noalias !17877
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ms, ptr noundef nonnull align 16 dereferenceable(64) %i.gf, i64 64, i1 false), !noalias !17877
  %i.mt = load ptr, ptr %i.gd, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !17877
  call void @llvm.experimental.noalias.scope.decl(metadata !17955)
  call void @llvm.experimental.noalias.scope.decl(metadata !17958)
  %i.mu = load ptr, ptr %i.ms, align 16, !alias.scope !17958, !noalias !17960, !nonnull !17, !noundef !17 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !17958, !noalias !17960, !noundef !17
  %i.mx = atomicrmw add ptr %i.mu, i64 1 monotonic, align 8, !noalias !17961
  %i.my = icmp slt i64 %i.mx, 0
  br i1 %i.my, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.na = load ptr, ptr %i.mz, align 16, !alias.scope !17958, !noalias !17960, !nonnull !17, !noundef !17 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !17958, !noalias !17960, !noundef !17
  %i.nd = atomicrmw add ptr %i.na, i64 1 monotonic, align 8, !noalias !17961
  %i.ne = icmp slt i64 %i.nd, 0
  br i1 %i.ne, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 16, !alias.scope !17958, !noalias !17960, !nonnull !17, !noundef !17 ; 2 uses
  %i.nh = getelementptr i8, ptr %1, i64 2440      ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !17958, !noalias !17960, !noundef !17
  %i.nj = atomicrmw add ptr %i.ng, i64 1 monotonic, align 8, !noalias !17961
  %i.nk = icmp slt i64 %i.nj, 0
  br i1 %i.nk, label %bb.br, label %bb.bt

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.bt
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17877
  br label %bb.at

bb.bt:                                            ; preds = %bb.bp
  store ptr %i.mu, ptr %i.bv, align 8, !alias.scope !17955, !noalias !17962
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.mw, ptr %i.nm, align 8, !alias.scope !17955, !noalias !17962
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.na, ptr %i.nn, align 8, !alias.scope !17955, !noalias !17962
  %i.no = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.nc, ptr %i.no, align 8, !alias.scope !17955, !noalias !17962
  %i.np = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.ng, ptr %i.np, align 8, !alias.scope !17955, !noalias !17962
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 %i.ni, ptr %i.nq, align 8, !alias.scope !17955, !noalias !17962
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.nr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.mt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bv)
          to label %bb.bu unwind label %bb.bs, !noalias !17881

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17877
  %i.ns = load i64, ptr %i.nr, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not14.i.i.i = icmp eq i64 %i.ns, 20
  br i1 %.not14.i.i.i, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i

bb.bv:                                            ; preds = %bb.bw
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

bb.bw:                                            ; preds = %bb.bu
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 2504
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.nw = load ptr, ptr %i.nv, align 8, !noalias !17877, !nonnull !17, !noundef !17 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.ny = load ptr, ptr %i.nx, align 16, !noalias !17877, !nonnull !17, !align !187, !noundef !17 ; 3 uses
  store ptr %i.nw, ptr %i.nu, align 8, !noalias !17877
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 2512
  store ptr %i.ny, ptr %i.nz, align 16, !noalias !17877
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !range !313, !invariant.load !17, !noalias !17881
  %i.oc = add nsw i64 %i.ob, -1
  %i.od = and i64 %i.oc, -16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %.val43.i.i.i = load ptr, ptr %i.nf, align 16, !noalias !17877, !nonnull !17, !noundef !17
  %.val44.i.i.i = load i64, ptr %i.nh, align 8, !noalias !17877, !noundef !17
  %i.og = getelementptr inbounds nuw i8, ptr %.val43.i.i.i, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 56
  %i.oi = load ptr, ptr %i.oh, align 8, !invariant.load !17, !noalias !17881, !nonnull !17
  %i.oj = invoke { ptr, ptr } %i.oi(ptr noundef nonnull %i.of, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.og, i64 noundef %.val44.i.i.i)
          to label %bb.bx unwind label %bb.bv, !noalias !17881 ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ok = extractvalue { ptr, ptr } %i.oj, 0      ; 2 uses
  %i.ol = extractvalue { ptr, ptr } %i.oj, 1      ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store ptr %i.ok, ptr %i.om, align 8, !noalias !17877
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store ptr %i.ol, ptr %i.on, align 16, !noalias !17877
  br label %bb.ai

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !17877
  call void @llvm.experimental.noalias.scope.decl(metadata !17963)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.hr, ptr %i.oo, align 8, !alias.scope !17966, !noalias !17877
  %.sroa.2103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.sroa.3100.0.copyload.i.i.i, ptr %.sroa.2103.0..sroa_idx.i.i.i, align 16, !alias.scope !17966, !noalias !17877
  %.sroa.3104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %.sroa.5101.0.copyload.i.i.i, ptr %.sroa.3104.0..sroa_idx.i.i.i, align 8, !alias.scope !17966, !noalias !17877
  store i64 36, ptr %i.bq, align 16, !alias.scope !17968, !noalias !17969
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17970)
  call void @llvm.experimental.noalias.scope.decl(metadata !17973)
  %i.oq = load ptr, ptr %i.op, align 8, !alias.scope !17976, !noalias !17877, !nonnull !17, !noundef !17
  %i.or = atomicrmw sub ptr %i.oq, i64 1 release, align 8, !noalias !17977
  %i.os = icmp eq i64 %i.or, 1
  br i1 %i.os, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.op) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i unwind label %bb.as, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i: ; preds = %bb.bz, %bb.by
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.ou = load i64, ptr %i.ot, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not22.i.i.i = icmp eq i64 %i.ou, 20
  br i1 %.not22.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ot)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i unwind label %bb.au, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i: ; preds = %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ov)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i unwind label %bb.ay, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.ow, align 1, !noalias !17877
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ox)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i unwind label %bb.bc, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.oy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i unwind label %bb.bh, !noalias !17881

bb.cb:                                            ; preds = %bb.cg, %bb.cc, %bb.ae
  %i.oz = phi ptr [ %i.gr, %bb.cc ], [ %i.gy, %bb.cg ], [ %i.gy, %bb.ae ]
  %i.pa = phi ptr [ %i.gs, %bb.cc ], [ %i.gz, %bb.cg ], [ %i.gz, %bb.ae ]
  %i.pb = phi ptr [ %i.gt, %bb.cc ], [ %i.ha, %bb.cg ], [ %i.ha, %bb.ae ]
  %i.pc = phi ptr [ %i.gu, %bb.cc ], [ %i.hb, %bb.cg ], [ %i.hb, %bb.ae ]
  %i.pd = phi ptr [ %i.gv, %bb.cc ], [ %i.hc, %bb.cg ], [ %i.hc, %bb.ae ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.pf, %bb.cc ], [ %.pn32.pn.i.i.i, %bb.cg ], [ %.pn32.pn.i.i.i, %bb.ae ]
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pe, align 1, !noalias !17877
  store i8 2, ptr %i.pc, align 8, !noalias !17877
  br label %.body.i.i

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.thread49.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pg, align 1, !noalias !17877
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i, i64 32, i1 false), !noalias !17978
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2751.i.sroa_idx.i, i64 272, i1 false), !noalias !17978
  store i8 1, ptr %i.gu, align 8, !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.ci

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ir) #37
          to label %bb.at unwind label %bb.aw, !noalias !17881

bb.ce:                                            ; preds = %bb.at
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ph)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i unwind label %bb.aw, !noalias !17881

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 2168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.pi) #37
          to label %bb.ae unwind label %bb.aw, !noalias !17881

bb.cg:                                            ; preds = %bb.ae
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.pj) #37
          to label %bb.cb unwind label %bb.aw, !noalias !17881

bb.ch:                                            ; preds = %bb.bg
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.pk, align 2, !noalias !17877
  store i8 0, ptr %i.lu, align 1, !noalias !17877
  %.sroa.024.0.copyload25.pre.i.i = load i64, ptr %i.bq, align 16, !noalias !17978 ; 2 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.826.i.sroa.0.0.copyload95.i = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !17978
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 32, i1 false), !noalias !17978
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !17978
  store i8 1, ptr %i.fv, align 8, !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.pl = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 37
  br i1 %i.pl, label %bb.cp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.thread49.i.i
  %i.pm = phi ptr [ %i.fs, %bb.ch ], [ %i.gr, %.thread49.i.i ] ; 3 uses
  %i.pn = phi ptr [ %i.ft, %bb.ch ], [ %i.gs, %.thread49.i.i ] ; 3 uses
  %i.po = phi ptr [ %i.fu, %bb.ch ], [ %i.gt, %.thread49.i.i ] ; 3 uses
  %.sroa.826.i.sroa.0.0.i = phi i64 [ %.sroa.826.i.sroa.0.0.copyload95.i, %bb.ch ], [ %.sroa.826.i.sroa.0.0.copyload.i, %.thread49.i.i ] ; 2 uses
  %.sroa.024.0.copyload2552.i.i = phi i64 [ %.sroa.024.0.copyload25.pre.i.i, %bb.ch ], [ 36, %.thread49.i.i ] ; 2 uses
  %i.pp = phi ptr [ %i.fw, %bb.ch ], [ %i.gv, %.thread49.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, i64 32, i1 false), !noalias !17864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, i64 272, i1 false), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.pp)
          to label %bb.ck unwind label %bb.cj, !noalias !17868

bb.cj:                                            ; preds = %bb.ci
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.ck:                                            ; preds = %bb.ci
  %i.pr = icmp eq i64 %.sroa.024.0.copyload2552.i.i, 36
  br i1 %i.pr, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, i64 272, i1 false), !noalias !17864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !17864
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !17864
  br label %bb.cq

bb.cn:                                            ; preds = %bb.co, %.body.i.i
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17868
  unreachable

bb.co:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.cb) #37
          to label %.body16.thread.i unwind label %bb.cn, !noalias !17868

bb.cp:                                            ; preds = %bb.ch, %.thread.i.i
  %i.pt = phi ptr [ %i.hi, %.thread.i.i ], [ %i.fs, %bb.ch ]
  %i.pu = phi ptr [ %i.hk, %.thread.i.i ], [ %i.fu, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17864
  store i8 3, ptr %i.pu, align 2, !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  br label %bb.pa

bb.cq:                                            ; preds = %bb.cm, %bb.cl, %bb.r
  %i.pv = phi ptr [ %i.dl, %bb.r ], [ %i.pm, %bb.cm ], [ %i.pm, %bb.cl ] ; 7 uses
  %i.pw = phi ptr [ %i.dm, %bb.r ], [ %i.pn, %bb.cm ], [ %i.pn, %bb.cl ] ; 7 uses
  %i.px = phi ptr [ %i.dq, %bb.r ], [ %i.po, %bb.cm ], [ %i.po, %bb.cl ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.i, %bb.cm ], [ %.sroa.826.i.sroa.0.0.i, %bb.cl ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cm ], [ %.sroa.024.0.copyload2552.i.i, %bb.cl ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.py, align 1, !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, i64 32, i1 false), !noalias !17979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, i64 272, i1 false), !noalias !17979
  store i8 1, ptr %i.px, align 2, !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, i64 32, i1 false), !noalias !17859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, i64 272, i1 false), !noalias !17859
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  %i.pz = icmp eq i64 %.sroa.032.1.i.i, 36
  br i1 %i.pz, label %bb.da, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1731 ; 2 uses
  store i8 1, ptr %i.qa, align 1, !noalias !17859
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 2800 ; 4 uses
  store i64 %.sroa.032.1.i.i, ptr %i.qb, align 16, !noalias !17859
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2808
  store i64 %.sroa.433.i.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17859
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !17859
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, i64 272, i1 false), !noalias !17859
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.pw)
          to label %bb.ct unwind label %bb.cs, !noalias !17863

bb.cs:                                            ; preds = %bb.cr
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !17859
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 1728
  invoke void @_RNvMsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_10SQLOptions11verify_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.qd, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.qb)
          to label %bb.cv unwind label %bb.cu, !noalias !17863

bb.cu:                                            ; preds = %bb.ct
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !17859
  br label %bb.cz
end_hunk_1
