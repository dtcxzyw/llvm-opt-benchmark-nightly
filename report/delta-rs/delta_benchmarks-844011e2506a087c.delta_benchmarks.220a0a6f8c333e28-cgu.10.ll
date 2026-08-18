inline.NumInlined: 5210
inline.NumDeleted: 2104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  store i8 0, ptr %i.fa, align 1, !noalias !6931
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  store ptr %i.ev, ptr %i.fb, align 8, !noalias !6931
  store i8 1, ptr %i.ey, align 1, !noalias !6931
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1968 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.fc, ptr noundef nonnull align 8 dereferenceable(200) %i.ex, i64 200, i1 false), !noalias !6931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !6931
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState24resolve_table_references(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.fc)
          to label %bb.y unwind label %bb.x, !noalias !6935

bb.x:                                             ; preds = %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !6931
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6936)
  %i.fe = load i64, ptr %i.ca, align 8, !range !120, !alias.scope !6939, !noalias !6941, !noundef !8 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.fe, 20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !6931
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !6931
  store i8 1, ptr %i.ez, align 2, !noalias !6931
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !6931
  %i.fh = load ptr, ptr %i.fb, align 8, !noalias !6931, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !6931
  %i.fi = getelementptr i8, ptr %1, i64 2184      ; 2 uses
  %.val40.i.i.i = load i64, ptr %i.fi, align 8, !noalias !6931, !noundef !8 ; 2 uses
  %i.fj = icmp ult i64 %.val40.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i8, ptr %i.fl, align 8, !range !879, !noalias !6942, !noundef !8
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, label %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, !prof !46

_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.z
  %i.fo = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.fk, ptr noalias noundef align 8 dereferenceable_or_null(24) null)
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !6935 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aa, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #40
          to label %.noexc45.i.i.i unwind label %bb.ab, !noalias !6935

.noexc45.i.i.i:                                   ; preds = %bb.aa
  unreachable

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %.noexc.i.i.i, %bb.z
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.fo, %.noexc.i.i.i ], [ %i.fk, %bb.z ] ; 3 uses
  %i.fq = load i64, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !6955, !noundef !8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i.i.i, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !6955, !noundef !8
  %i.ft = add i64 %i.fq, 1
  store i64 %i.ft, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !6955
  invoke void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bz, i64 noundef range(i64 0, 164703072086692426) %.val40.i.i.i, i64 noundef %i.fq, i64 noundef %i.fs)
          to label %bb.ac unwind label %bb.ab, !noalias !6935

bb.ab:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.aa, %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !6931
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

bb.ac:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store ptr %i.fh, ptr %i.fv, align 16, !noalias !6931
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false), !noalias !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !6931
  store i8 0, ptr %i.ez, align 2, !noalias !6931
  %.sroa.091.0.copyload.i.i.i = load i64, ptr %i.fg, align 8, !noalias !6931
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2176
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !noalias !6931, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %i.fi, align 8, !noalias !6931 ; 2 uses
  %i.fx = icmp ult i64 %.sroa.6.0.copyload.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %.sroa.5.0.copyload.i.i.i, i64 %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2248
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.fz, align 8, !noalias !6931
  %.sroa.889.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.889.0..sroa_idx.i.i.i, align 16, !noalias !6931
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2264
  store i64 %.sroa.091.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !6931
  %.sroa.1090.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store ptr %i.fy, ptr %.sroa.1090.0..sroa_idx.i.i.i, align 16, !noalias !6931
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i, %bb.ac
  %i.ga = phi ptr [ %i.es, %bb.ac ], [ %i.jf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 11 uses
  %i.gb = phi ptr [ %i.et, %bb.ac ], [ %i.jg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.gc = phi ptr [ %i.eu, %bb.ac ], [ %i.jh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 11 uses
  %i.gd = phi ptr [ %i.ew, %bb.ac ], [ %i.ji, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.ge = phi ptr [ %i.ex, %bb.ac ], [ %i.jj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.gf = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ac ], [ %.pre128.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 2 uses
  %i.gg = phi ptr [ %i.fy, %bb.ac ], [ %.pre.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 2280 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2256 ; 2 uses
  %i.gk = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gk, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i: ; preds = %.preheader.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 1960 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 2344
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %.backedge.i.i.i, %.preheader.i.i.i
  store i64 3, ptr %i.gh, align 8, !alias.scope !6956, !noalias !6959
  br label %.loopexit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.bi, %bb.ab
  %i.gq = phi ptr [ %i.es, %bb.ab ], [ %i.mg, %bb.bi ], [ %i.mm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gr = phi ptr [ %i.et, %bb.ab ], [ %i.mh, %bb.bi ], [ %i.mn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gs = phi ptr [ %i.eu, %bb.ab ], [ %i.mi, %bb.bi ], [ %i.mo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gt = phi ptr [ %i.ew, %bb.ab ], [ %i.mj, %bb.bi ], [ %i.mp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gu = phi ptr [ %i.ex, %bb.ab ], [ %i.mk, %bb.bi ], [ %i.mq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.pn26.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fu, %bb.ab ], [ %i.ml, %bb.bi ], [ %.pn26.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 2538
  %i.gw = load i8, ptr %i.gv, align 2, !range !879, !noalias !6931, !noundef !8
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.cg, label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %.sroa.10.0..sroa_idx85.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.sroa.10.0.copyload86.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx85.i.i.i, align 8, !alias.scope !6961, !noalias !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !6931
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, i64 24, i1 false), !noalias !6931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6962)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.fe, ptr %i.gy, align 8, !alias.scope !6965, !noalias !6931
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %.sroa.10.0.copyload86.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !6965, !noalias !6931
  store i64 36, ptr %i.br, align 16, !alias.scope !6967, !noalias !6968
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i, %bb.ad
  %i.gz = phi ptr [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.es, %bb.ad ] ; 2 uses
  %i.ha = phi ptr [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.et, %bb.ad ] ; 2 uses
  %i.hb = phi ptr [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.eu, %bb.ad ] ; 2 uses
  %.sroa.826.i.sroa.0.0.copyload.i = phi i64 [ %i.hx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.fe, %bb.ad ]
  %i.hc = phi ptr [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.ew, %bb.ad ] ; 2 uses
  %i.hd = phi ptr [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.ex, %bb.ad ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.he, align 2, !noalias !6931
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.hf)
          to label %.thread50.i.i unwind label %bb.cd, !noalias !6935

bb.ae:                                            ; preds = %bb.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i, %bb.x
  %i.hg = phi ptr [ %i.es, %bb.x ], [ %i.gq, %bb.cg ], [ %i.gq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hh = phi ptr [ %i.et, %bb.x ], [ %i.gr, %bb.cg ], [ %i.gr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hi = phi ptr [ %i.eu, %bb.x ], [ %i.gs, %bb.cg ], [ %i.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hj = phi ptr [ %i.ew, %bb.x ], [ %i.gt, %bb.cg ], [ %i.gt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hk = phi ptr [ %i.ex, %bb.x ], [ %i.gu, %bb.cg ], [ %i.gu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %.pn32.pn.i.i.i = phi { ptr, i32 } [ %i.fd, %bb.x ], [ %.pn26.pn.pn.pn.pn.i.i.i, %bb.cg ], [ %.pn26.pn.pn.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.hl, align 2, !noalias !6931
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 2539
  %i.hn = load i8, ptr %i.hm, align 1, !range !879, !noalias !6931, !noundef !8
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ch, label %bb.cc

bb.af:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #40
          to label %.noexc.i.i unwind label %bb.u, !noalias !6922

.noexc.i.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.v
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #40
          to label %.noexc8.i.i unwind label %bb.u, !noalias !6922

.noexc8.i.i:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ai
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !6931
  %.val38.i.i.i = load ptr, ptr %i.hw, align 8, !noalias !6931
  %i.hq = getelementptr i8, ptr %1, i64 2528
  %.val39.i.i.i = load ptr, ptr %i.hq, align 16, !noalias !6931, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val38.i.i.i, ptr nonnull %.val39.i.i.i) #38
          to label %.body.i.i.i.a unwind label %bb.ax, !noalias !6935

bb.ai:                                            ; preds = %bb.by, %bb.v
  %i.hr = phi ptr [ %i.cq, %bb.v ], [ %i.ga, %bb.by ] ; 14 uses
  %i.hs = phi ptr [ %i.cp, %bb.v ], [ %i.gb, %bb.by ] ; 13 uses
  %i.ht = phi ptr [ %.phi.trans.insert.i, %bb.v ], [ %i.gc, %bb.by ] ; 14 uses
  %i.hu = phi ptr [ %.phi.trans.insert.i.i, %bb.v ], [ %i.gd, %bb.by ] ; 14 uses
  %i.hv = phi ptr [ %i.er, %bb.v ], [ %i.ge, %bb.by ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !6931
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 2520 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ah, !noalias !6935

bb.aj:                                            ; preds = %bb.ai
  %i.hx = load i64, ptr %i.bv, align 8, !range !5488, !noalias !6931, !noundef !8 ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 21
  br i1 %i.hy, label %.thread.i.i, label %bb.ak

.thread.i.i:                                      ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !6931
  store i8 3, ptr %i.hu, align 8, !noalias !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.cq

bb.ak:                                            ; preds = %bb.aj
  %.sroa.3100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.3100.0.copyload.i.i.i = load ptr, ptr %.sroa.3100.0..sroa_idx.i.i.i, align 8, !noalias !6931 ; 3 uses
  %.sroa.5101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.5101.0.copyload.i.i.i = load ptr, ptr %.sroa.5101.0..sroa_idx.i.i.i, align 8, !noalias !6931 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !6931
  %.val.i.i.i = load ptr, ptr %i.hw, align 8, !noalias !6931
  %i.hz = getelementptr i8, ptr %1, i64 2528
  %i.ia = load ptr, ptr %i.hz, align 16, !noalias !6931, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val.i.i.i, ptr nonnull %i.ia)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %8, !noalias !6935

.body.i.i.i.a:                                    ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %8, %bb.ah
  %3 = phi ptr [ %i.hr, %8 ], [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hr, %bb.ah ], [ %i.ga, %bb.bw ] ; 2 uses
  %4 = phi ptr [ %i.hs, %8 ], [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hs, %bb.ah ], [ %i.gb, %bb.bw ] ; 2 uses
  %5 = phi ptr [ %i.ht, %8 ], [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ht, %bb.ah ], [ %i.gc, %bb.bw ] ; 2 uses
  %6 = phi ptr [ %i.hu, %8 ], [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hu, %bb.ah ], [ %i.gd, %bb.bw ] ; 2 uses
  %7 = phi ptr [ %i.hv, %8 ], [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hv, %bb.ah ], [ %i.ge, %bb.bw ] ; 2 uses
  %.pn18.i.i.i = phi { ptr, i32 } [ %9, %8 ], [ %i.kb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hp, %bb.ah ], [ %i.ob, %bb.bw ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6969)
  call void @llvm.experimental.noalias.scope.decl(metadata !6972)
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !6975, !noalias !6931, !nonnull !8, !noundef !8
  %i.id = atomicrmw sub ptr %i.ic, i64 1 release, align 8, !noalias !6976
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.al:                                            ; preds = %.body.i.i.i.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ib) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ax, !noalias !6935

8:                                                ; preds = %bb.ak
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ak
  %.not.i48.i.i.i = icmp eq i64 %i.hx, 20
  br i1 %.not.i48.i.i.i, label %bb.am, label %bb.bz

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.not16.i.i.i = icmp eq ptr %.sroa.3100.0.copyload.i.i.i, null
  br i1 %.not16.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5101.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !6931
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.if, align 1, !noalias !6931
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 16 dereferenceable(64) %i.ig, i64 64, i1 false), !noalias !6931
  %i.ih = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.3100.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5101.0.copyload.i.i.i)
          to label %bb.ar unwind label %bb.aw, !noalias !6935 ; 2 uses

bb.ao:                                            ; preds = %bb.am
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6977)
  call void @llvm.experimental.noalias.scope.decl(metadata !6980)
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !6983, !noalias !6931, !nonnull !8, !noundef !8
  %i.ik = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !noalias !6984
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ii) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i unwind label %bb.at, !noalias !6935

bb.aq:                                            ; preds = %bb.ar
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.ar:                                            ; preds = %bb.an
  %i.in = extractvalue { ptr, ptr } %i.ih, 0
  %i.io = extractvalue { ptr, ptr } %i.ih, 1
  %i.ip = invoke noundef nonnull align 8 ptr @_RNvMs7_NtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtB5_16RustcVacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bu, ptr noundef nonnull %i.in, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.io)
          to label %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aq, !noalias !6935 ; 0 uses

_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !6931
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6985)
  call void @llvm.experimental.noalias.scope.decl(metadata !6988)
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !6991, !noalias !6931, !nonnull !8, !noundef !8
  %i.is = atomicrmw sub ptr %i.ir, i64 1 release, align 8, !noalias !6992
  %i.it = icmp eq i64 %i.is, 1
  br i1 %i.it, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i

bb.as:                                            ; preds = %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.iq) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i unwind label %bb.at, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.at, %bb.al, %.body.i.i.i.a
  %i.iu = phi ptr [ %i.hr, %bb.at ], [ %3, %bb.al ], [ %3, %.body.i.i.i.a ] ; 2 uses
  %i.iv = phi ptr [ %i.hs, %bb.at ], [ %4, %bb.al ], [ %4, %.body.i.i.i.a ] ; 2 uses
  %i.iw = phi ptr [ %i.ht, %bb.at ], [ %5, %bb.al ], [ %5, %.body.i.i.i.a ] ; 2 uses
  %i.ix = phi ptr [ %i.hu, %bb.at ], [ %6, %bb.al ], [ %6, %.body.i.i.i.a ] ; 2 uses
  %i.iy = phi ptr [ %i.hv, %bb.at ], [ %7, %bb.al ], [ %7, %.body.i.i.i.a ] ; 2 uses
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.jc, %bb.at ], [ %.pn18.i.i.i, %bb.al ], [ %.pn18.i.i.i, %.body.i.i.i.a ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 16, !range !120, !noalias !6931, !noundef !8
  %i.jb = icmp eq i64 %i.ja, 20
  br i1 %i.jb, label %bb.au, label %bb.ce

bb.at:                                            ; preds = %bb.ca, %bb.as, %bb.ap
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i: ; preds = %bb.as, %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 16, !range !120, !noalias !6931, !noundef !8
  %.not17.i.i.i = icmp eq i64 %i.je, 20
  br i1 %.not17.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i
  %i.jf = phi ptr [ %i.kl, %.invoke.i.i.i ], [ %i.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jg = phi ptr [ %i.km, %.invoke.i.i.i ], [ %i.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jh = phi ptr [ %i.kn, %.invoke.i.i.i ], [ %i.kg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.ji = phi ptr [ %i.ko, %.invoke.i.i.i ], [ %i.kh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jj = phi ptr [ %i.kp, %.invoke.i.i.i ], [ %i.ki, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 2537 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !range !879, !noalias !6931, !noundef !8
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i

bb.au:                                            ; preds = %bb.ce, %bb.bt, %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.jn = phi ptr [ %i.jv, %bb.av ], [ %i.iu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.iu, %bb.ce ], [ %i.ga, %bb.bt ] ; 2 uses
  %i.jo = phi ptr [ %i.jw, %bb.av ], [ %i.iv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.iv, %bb.ce ], [ %i.gb, %bb.bt ] ; 2 uses
  %i.jp = phi ptr [ %i.jx, %bb.av ], [ %i.iw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.iw, %bb.ce ], [ %i.gc, %bb.bt ] ; 2 uses
  %i.jq = phi ptr [ %i.jy, %bb.av ], [ %i.ix, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ix, %bb.ce ], [ %i.gd, %bb.bt ] ; 2 uses
  %i.jr = phi ptr [ %i.jz, %bb.av ], [ %i.iy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.iy, %bb.ce ], [ %i.ge, %bb.bt ] ; 2 uses
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.ka, %bb.av ], [ %.pn20.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %.pn20.i.i.i, %bb.ce ], [ %i.nt, %bb.bt ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 2537
  %i.jt = load i8, ptr %i.js, align 1, !range !879, !noalias !6931, !noundef !8
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i

bb.av:                                            ; preds = %bb.cb, %.invoke.i.i.i
  %i.jv = phi ptr [ %i.hr, %bb.cb ], [ %i.kl, %.invoke.i.i.i ]
  %i.jw = phi ptr [ %i.hs, %bb.cb ], [ %i.km, %.invoke.i.i.i ]
  %i.jx = phi ptr [ %i.ht, %bb.cb ], [ %i.kn, %.invoke.i.i.i ]
  %i.jy = phi ptr [ %i.hu, %bb.cb ], [ %i.ko, %.invoke.i.i.i ]
  %i.jz = phi ptr [ %i.hv, %bb.cb ], [ %i.kp, %.invoke.i.i.i ]
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.aw, %bb.aq
  %i.kb = phi { ptr, i32 } [ %i.im, %bb.aq ], [ %i.kc, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !6931
  br label %.body.i.i.i.a

bb.aw:                                            ; preds = %bb.an
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ax, !noalias !6935

bb.ax:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.ba, %bb.aw, %bb.al, %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6935
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i: ; preds = %bb.bv, %bb.ap, %bb.ao
  %i.ke = phi ptr [ %i.ga, %bb.bv ], [ %i.hr, %bb.ap ], [ %i.hr, %bb.ao ] ; 2 uses
  %i.kf = phi ptr [ %i.gb, %bb.bv ], [ %i.hs, %bb.ap ], [ %i.hs, %bb.ao ] ; 2 uses
  %i.kg = phi ptr [ %i.gc, %bb.bv ], [ %i.ht, %bb.ap ], [ %i.ht, %bb.ao ] ; 2 uses
  %i.kh = phi ptr [ %i.gd, %bb.bv ], [ %i.hu, %bb.ap ], [ %i.hu, %bb.ao ] ; 2 uses
  %i.ki = phi ptr [ %i.ge, %bb.bv ], [ %i.hv, %bb.ap ], [ %i.hv, %bb.ao ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 16, !range !120, !noalias !6931, !noundef !8
  %.not23.i.i.i = icmp eq i64 %i.kk, 20
  br i1 %.not23.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i
  %i.kl = phi ptr [ %i.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.km = phi ptr [ %i.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kn = phi ptr [ %i.kg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.ko = phi ptr [ %i.kh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kp = phi ptr [ %i.ki, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kq = phi ptr [ %i.kj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.jd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.kq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.av, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i: ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  store i8 0, ptr %i.jk, align 1, !noalias !6931
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 16, !alias.scope !6993, !noalias !6995
  %.phi.trans.insert127.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %.pre128.i.i.i = load ptr, ptr %.phi.trans.insert127.i.i.i, align 16, !alias.scope !6993, !noalias !6995
  br label %.preheader.i.i.i

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.kr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i unwind label %bb.az, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i: ; preds = %bb.cf, %bb.az, %bb.au
  %i.ks = phi ptr [ %i.ky, %bb.az ], [ %i.jn, %bb.au ], [ %i.jn, %bb.cf ]
  %i.kt = phi ptr [ %i.kz, %bb.az ], [ %i.jo, %bb.au ], [ %i.jo, %bb.cf ]
  %i.ku = phi ptr [ %i.la, %bb.az ], [ %i.jp, %bb.au ], [ %i.jp, %bb.cf ]
  %i.kv = phi ptr [ %i.lb, %bb.az ], [ %i.jq, %bb.au ], [ %i.jq, %bb.cf ]
  %i.kw = phi ptr [ %i.lc, %bb.az ], [ %i.jr, %bb.au ], [ %i.jr, %bb.cf ]
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.ld, %bb.az ], [ %.pn24.i.i.i, %bb.au ], [ %.pn24.i.i.i, %bb.cf ]
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.kx, align 1, !noalias !6931
  br label %bb.ba

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i, %bb.ay
  %i.ky = phi ptr [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.jf, %bb.ay ]
  %i.kz = phi ptr [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.jg, %bb.ay ]
  %i.la = phi ptr [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.jh, %bb.ay ]
  %i.lb = phi ptr [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.ji, %bb.ay ]
  %i.lc = phi ptr [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.jj, %bb.ay ]
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i

bb.ba:                                            ; preds = %bb.bm, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i
  %i.le = phi ptr [ %i.ks, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.ga, %bb.bm ], [ %i.ga, %bb.bb ]
  %i.lf = phi ptr [ %i.kt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.gb, %bb.bm ], [ %i.gb, %bb.bb ]
  %i.lg = phi ptr [ %i.ku, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.gc, %bb.bm ], [ %i.gc, %bb.bb ]
  %i.lh = phi ptr [ %i.kv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.gd, %bb.bm ], [ %i.gd, %bb.bb ]
  %i.li = phi ptr [ %i.kw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.ge, %bb.bm ], [ %i.ge, %bb.bb ]
  %.pn26.pn.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i ], [ %i.my, %bb.bm ], [ %i.lk, %bb.bb ]
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ax, !noalias !6935

bb.bb:                                            ; preds = %bb.bc
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i
  %i.ll = phi ptr [ %i.gf, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i ], [ %i.mv, %.backedge.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6956)
  call void @llvm.experimental.noalias.scope.decl(metadata !6997)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  store ptr %i.lm, ptr %i.gj, align 16, !alias.scope !6997, !noalias !6998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gh, ptr noundef nonnull align 8 dereferenceable(56) %i.ll, i64 56, i1 false), !noalias !6999
  %.pr.i.i.i = load i64, ptr %i.gh, align 8, !noalias !6931
  %.not10.i.i.i = icmp eq i64 %.pr.i.i.i, 3
  br i1 %.not10.i.i.i, label %.loopexit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.ll, i64 56, i1 false), !noalias !6935
  %i.ln = load ptr, ptr %i.gl, align 8, !noalias !6931, !nonnull !8, !align !139, !noundef !8
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ln, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.by)
          to label %bb.bk unwind label %bb.bb, !noalias !6935

.loopexit.i.i.i:                                  ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i unwind label %bb.bd, !noalias !6935

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i, %.loopexit.i.i.i
  %i.lp = phi ptr [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.ga, %.loopexit.i.i.i ]
  %i.lq = phi ptr [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.gb, %.loopexit.i.i.i ]
  %i.lr = phi ptr [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.gc, %.loopexit.i.i.i ]
  %i.ls = phi ptr [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.gd, %.loopexit.i.i.i ]
  %i.lt = phi ptr [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i ], [ %i.ge, %.loopexit.i.i.i ]
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !6931
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 1960
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !6931, !nonnull !8, !align !139, !noundef !8
  %i.lx = invoke noundef i56 @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState18get_parser_options(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lw)
          to label %bb.bf unwind label %bb.be, !noalias !6935 ; 3 uses

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.05.0.extract.trunc.i.i.i.i = trunc i56 %i.lx to i8
  %.sroa.05.1.extract.shift.i.i.i.i = lshr i56 %i.lx, 8
  %.sroa.05.1.extract.trunc.i.i.i.i = trunc i56 %.sroa.05.1.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.05.2.extract.shift.i.i.i.i = lshr i56 %i.lx, 16
  %.sroa.05.2.extract.trunc.i.i.i.i = trunc nuw i56 %.sroa.05.2.extract.shift.i.i.i.i to i40
  store ptr %i.lz, ptr %i.bt, align 8, !alias.scope !7000, !noalias !7003
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %.sroa.05.0.extract.trunc.i.i.i.i, ptr %i.ma, align 8, !alias.scope !7000, !noalias !7003
  %.sroa.2.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %.sroa.2.0..sroa_idx2.i.i.i.i, align 1, !alias.scope !7000, !noalias !7003
  %.sroa.3.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  store i40 %.sroa.05.2.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx4.i.i.i.i, align 2, !alias.scope !7000, !noalias !7003
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bt, i64 15
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %i.mb, align 1, !alias.scope !7000, !noalias !7003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !6931
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 2539 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.mj = phi ptr [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.gd, %bb.bh ]
  %i.mk = phi ptr [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i ], [ %i.ge, %bb.bh ]
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

bb.bj:                                            ; preds = %bb.bg, %bb.be
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.me, %bb.bg ], [ %i.ly, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !6931
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bj, %bb.bd, %bb.ba
  %i.mm = phi ptr [ %i.ga, %bb.bj ], [ %i.le, %bb.ba ], [ %i.lp, %bb.bd ]
  %i.mn = phi ptr [ %i.gb, %bb.bj ], [ %i.lf, %bb.ba ], [ %i.lq, %bb.bd ]
  %i.mo = phi ptr [ %i.gc, %bb.bj ], [ %i.lg, %bb.ba ], [ %i.lr, %bb.bd ]
  %i.mp = phi ptr [ %i.gd, %bb.bj ], [ %i.lh, %bb.ba ], [ %i.ls, %bb.bd ]
  %i.mq = phi ptr [ %i.ge, %bb.bj ], [ %i.li, %bb.ba ], [ %i.lt, %bb.bd ]
  %.pn26.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn11.i.i.i, %bb.bj ], [ %.pn26.pn.i.i.i, %bb.ba ], [ %i.lu, %bb.bd ]
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i unwind label %bb.ax, !noalias !6935

bb.bk:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !7008
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bx)
          to label %.noexc69.i.i.i unwind label %bb.bm, !noalias !6935

.noexc69.i.i.i:                                   ; preds = %bb.bk
  %i.ms = load ptr, ptr %i.bq, align 8, !noalias !7008, !noundef !8
  %.not.i68.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i68.i.i.i, label %.critedge.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.noexc69.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !noalias !7011
  %.pr112.i.i.i = load ptr, ptr %i.gn, align 16, !noalias !6931
  %i.mt = icmp eq ptr %.pr112.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7008
  br i1 %i.mt, label %.backedge.i.i.i, label %bb.bn

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.bl
  %i.mu = load ptr, ptr %i.gi, align 16, !alias.scope !7012, !noalias !7014, !nonnull !8, !noundef !8
  %i.mv = load ptr, ptr %i.gj, align 16, !alias.scope !7012, !noalias !7014, !nonnull !8, !noundef !8 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.mu
  br i1 %i.mw, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %.noexc69.i.i.i
  %i.mx = load <2 x ptr>, ptr %i.go, align 8, !noalias !7008
  store <2 x ptr> %i.mx, ptr %i.gp, align 8, !alias.scope !7005, !noalias !7011
  store ptr null, ptr %i.gn, align 16, !alias.scope !7005, !noalias !7011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7008
  br label %.backedge.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bn:                                            ; preds = %bb.bl
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 1, ptr %i.mz, align 1, !noalias !6931
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.na, ptr noundef nonnull align 16 dereferenceable(64) %i.gn, i64 64, i1 false), !noalias !6931
  %i.nb = load ptr, ptr %i.gl, align 8, !noalias !6931, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !6931
  call void @llvm.experimental.noalias.scope.decl(metadata !7016)
  call void @llvm.experimental.noalias.scope.decl(metadata !7019)
  %i.nc = load ptr, ptr %i.na, align 16, !alias.scope !7019, !noalias !7021, !nonnull !8, !noundef !8 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !7019, !noalias !7021, !noundef !8
  %i.nf = atomicrmw add ptr %i.nc, i64 1 monotonic, align 8, !noalias !7022
  %i.ng = icmp slt i64 %i.nf, 0
  br i1 %i.ng, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.ni = load ptr, ptr %i.nh, align 16, !alias.scope !7019, !noalias !7021, !nonnull !8, !noundef !8 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !7019, !noalias !7021, !noundef !8
  %i.nl = atomicrmw add ptr %i.ni, i64 1 monotonic, align 8, !noalias !7022
  %i.nm = icmp slt i64 %i.nl, 0
  br i1 %i.nm, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 16, !alias.scope !7019, !noalias !7021, !nonnull !8, !noundef !8 ; 2 uses
  %i.np = getelementptr i8, ptr %1, i64 2440      ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !7019, !noalias !7021, !noundef !8
  %i.nr = atomicrmw add ptr %i.no, i64 1 monotonic, align 8, !noalias !7022
  %i.ns = icmp slt i64 %i.nr, 0
  br i1 %i.ns, label %bb.bs, label %bb.bu

bb.br:                                            ; preds = %bb.bo
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.trap()
  unreachable

bb.bt:                                            ; preds = %bb.bu
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !6931
  br label %bb.au

bb.bu:                                            ; preds = %bb.bq
  store ptr %i.nc, ptr %i.bw, align 8, !alias.scope !7016, !noalias !7023
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.ne, ptr %i.nu, align 8, !alias.scope !7016, !noalias !7023
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.ni, ptr %i.nv, align 8, !alias.scope !7016, !noalias !7023
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %i.nk, ptr %i.nw, align 8, !alias.scope !7016, !noalias !7023
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.no, ptr %i.nx, align 8, !alias.scope !7016, !noalias !7023
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %i.nq, ptr %i.ny, align 8, !alias.scope !7016, !noalias !7023
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.nz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.nb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bw)
          to label %bb.bv unwind label %bb.bt, !noalias !6935

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !6931
  %i.oa = load i64, ptr %i.nz, align 16, !range !120, !noalias !6931, !noundef !8
  %.not14.i.i.i = icmp eq i64 %i.oa, 20
  br i1 %.not14.i.i.i, label %bb.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i

bb.bw:                                            ; preds = %bb.bx
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.a

bb.bx:                                            ; preds = %bb.bv
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 2504
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.oe = load ptr, ptr %i.od, align 8, !noalias !6931, !nonnull !8, !noundef !8 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.og = load ptr, ptr %i.of, align 16, !noalias !6931, !nonnull !8, !align !139, !noundef !8 ; 3 uses
  store ptr %i.oe, ptr %i.oc, align 8, !noalias !6931
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 2512
  store ptr %i.og, ptr %i.oh, align 16, !noalias !6931
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oj = load i64, ptr %i.oi, align 8, !range !121, !invariant.load !8, !noalias !6935
  %i.ok = add nsw i64 %i.oj, -1
  %i.ol = and i64 %i.ok, -16
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %.val43.i.i.i = load ptr, ptr %i.nn, align 16, !noalias !6931, !nonnull !8, !noundef !8
  %.val44.i.i.i = load i64, ptr %i.np, align 8, !noalias !6931, !noundef !8
  %i.oo = getelementptr inbounds nuw i8, ptr %.val43.i.i.i, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 56
  %i.oq = load ptr, ptr %i.op, align 8, !invariant.load !8, !noalias !6935, !nonnull !8
  %i.or = invoke { ptr, ptr } %i.oq(ptr noundef nonnull %i.on, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oo, i64 noundef %.val44.i.i.i)
          to label %bb.by unwind label %bb.bw, !noalias !6935 ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.os = extractvalue { ptr, ptr } %i.or, 0
  %i.ot = extractvalue { ptr, ptr } %i.or, 1
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store ptr %i.os, ptr %i.ou, align 8, !noalias !6931
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store ptr %i.ot, ptr %i.ov, align 16, !noalias !6931
  br label %bb.ai

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !6931
  call void @llvm.experimental.noalias.scope.decl(metadata !7024)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.hx, ptr %i.ow, align 8, !alias.scope !7027, !noalias !6931
  %.sroa.2103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %.sroa.3100.0.copyload.i.i.i, ptr %.sroa.2103.0..sroa_idx.i.i.i, align 16, !alias.scope !7027, !noalias !6931
  %.sroa.3104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %.sroa.5101.0.copyload.i.i.i, ptr %.sroa.3104.0..sroa_idx.i.i.i, align 8, !alias.scope !7027, !noalias !6931
  store i64 36, ptr %i.br, align 16, !alias.scope !7029, !noalias !7030
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7031)
  call void @llvm.experimental.noalias.scope.decl(metadata !7034)
  %i.oy = load ptr, ptr %i.ox, align 8, !alias.scope !7037, !noalias !6931, !nonnull !8, !noundef !8
  %i.oz = atomicrmw sub ptr %i.oy, i64 1 release, align 8, !noalias !7038
  %i.pa = icmp eq i64 %i.oz, 1
  br i1 %i.pa, label %bb.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i

bb.ca:                                            ; preds = %bb.bz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ox) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i unwind label %bb.at, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 16, !range !120, !noalias !6931, !noundef !8
  %.not22.i.i.i = icmp eq i64 %i.pc, 20
  br i1 %.not22.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.pb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i unwind label %bb.av, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i: ; preds = %bb.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.pd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i unwind label %bb.az, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.pe, align 1, !noalias !6931
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.pf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i unwind label %bb.bd, !noalias !6935

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit78.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i unwind label %bb.bi, !noalias !6935

bb.cc:                                            ; preds = %bb.ch, %bb.cd, %bb.ae
  %i.ph = phi ptr [ %i.gz, %bb.cd ], [ %i.hg, %bb.ch ], [ %i.hg, %bb.ae ]
  %i.pi = phi ptr [ %i.ha, %bb.cd ], [ %i.hh, %bb.ch ], [ %i.hh, %bb.ae ]
  %i.pj = phi ptr [ %i.hb, %bb.cd ], [ %i.hi, %bb.ch ], [ %i.hi, %bb.ae ]
  %i.pk = phi ptr [ %i.hc, %bb.cd ], [ %i.hj, %bb.ch ], [ %i.hj, %bb.ae ]
  %i.pl = phi ptr [ %i.hd, %bb.cd ], [ %i.hk, %bb.ch ], [ %i.hk, %bb.ae ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.pn, %bb.cd ], [ %.pn32.pn.i.i.i, %bb.ch ], [ %.pn32.pn.i.i.i, %bb.ae ]
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pm, align 1, !noalias !6931
  store i8 2, ptr %i.pk, align 8, !noalias !6931
  br label %.body.i.i

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.thread50.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit80.i.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.po, align 1, !noalias !6931
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2752.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx2752.i.sroa_idx.i, i64 32, i1 false), !noalias !7039
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2752.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx2752.i.sroa_idx.i, i64 272, i1 false), !noalias !7039
  store i8 1, ptr %i.hc, align 8, !noalias !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.cj

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.iz) #38
          to label %bb.au unwind label %bb.ax, !noalias !6935

bb.cf:                                            ; preds = %bb.au
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.pp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit82.i.i.i unwind label %bb.ax, !noalias !6935

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 2168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.pq) #38
          to label %bb.ae unwind label %bb.ax, !noalias !6935

bb.ch:                                            ; preds = %bb.ae
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.pr) #38
          to label %bb.cc unwind label %bb.ax, !noalias !6935

bb.ci:                                            ; preds = %bb.bh
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.ps, align 2, !noalias !6931
  store i8 0, ptr %i.mc, align 1, !noalias !6931
  %.sroa.024.0.copyload25.pre.i.i = load i64, ptr %i.br, align 16, !noalias !7039 ; 2 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.826.i.sroa.0.0.copyload95.i = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !7039
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 32, i1 false), !noalias !7039
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !7039
  store i8 1, ptr %i.gd, align 8, !noalias !6931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.pt = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 37
  br i1 %i.pt, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.thread50.i.i
  %i.pu = phi ptr [ %i.ga, %bb.ci ], [ %i.gz, %.thread50.i.i ] ; 3 uses
  %i.pv = phi ptr [ %i.gb, %bb.ci ], [ %i.ha, %.thread50.i.i ] ; 3 uses
  %i.pw = phi ptr [ %i.gc, %bb.ci ], [ %i.hb, %.thread50.i.i ] ; 3 uses
  %.sroa.826.i.sroa.0.0.i = phi i64 [ %.sroa.826.i.sroa.0.0.copyload95.i, %bb.ci ], [ %.sroa.826.i.sroa.0.0.copyload.i, %.thread50.i.i ] ; 2 uses
  %.sroa.024.0.copyload2553.i.i = phi i64 [ %.sroa.024.0.copyload25.pre.i.i, %bb.ci ], [ 36, %.thread50.i.i ] ; 2 uses
  %i.px = phi ptr [ %i.ge, %bb.ci ], [ %i.hd, %.thread50.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, i64 32, i1 false), !noalias !6918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, i64 272, i1 false), !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.px)
          to label %bb.cl unwind label %bb.ck, !noalias !6922

bb.ck:                                            ; preds = %bb.cj
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.cl:                                            ; preds = %bb.cj
  %i.pz = icmp eq i64 %.sroa.024.0.copyload2553.i.i, 36
  br i1 %i.pz, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, i64 272, i1 false), !noalias !6918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !6918
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !6918
  br label %bb.cr

bb.co:                                            ; preds = %bb.cp, %.body.i.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6922
  unreachable

bb.cp:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.cc) #38
          to label %.body16.thread.i unwind label %bb.co, !noalias !6922

bb.cq:                                            ; preds = %bb.ci, %.thread.i.i
  %i.qb = phi ptr [ %i.hr, %.thread.i.i ], [ %i.ga, %bb.ci ]
  %i.qc = phi ptr [ %i.ht, %.thread.i.i ], [ %i.gc, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !6918
  store i8 3, ptr %i.qc, align 2, !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  br label %bb.ph

bb.cr:                                            ; preds = %bb.cn, %bb.cm, %bb.r
  %i.qd = phi ptr [ %i.dm, %bb.r ], [ %i.pu, %bb.cn ], [ %i.pu, %bb.cm ] ; 7 uses
  %i.qe = phi ptr [ %i.dn, %bb.r ], [ %i.pv, %bb.cn ], [ %i.pv, %bb.cm ] ; 7 uses
  %i.qf = phi ptr [ %i.dr, %bb.r ], [ %i.pw, %bb.cn ], [ %i.pw, %bb.cm ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.i, %bb.cn ], [ %.sroa.826.i.sroa.0.0.i, %bb.cm ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cn ], [ %.sroa.024.0.copyload2553.i.i, %bb.cm ] ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.qg, align 1, !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !6918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, i64 32, i1 false), !noalias !7040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, i64 272, i1 false), !noalias !7040
  store i8 1, ptr %i.qf, align 2, !noalias !6918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, i64 32, i1 false), !noalias !6913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, i64 272, i1 false), !noalias !6913
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  %i.qh = icmp eq i64 %.sroa.032.1.i.i, 36
  br i1 %i.qh, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 1731 ; 2 uses
  store i8 1, ptr %i.qi, align 1, !noalias !6913
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 2800 ; 4 uses
  store i64 %.sroa.032.1.i.i, ptr %i.qj, align 16, !noalias !6913
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2808
  store i64 %.sroa.433.i.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6913
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !6913
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, i64 272, i1 false), !noalias !6913
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.qe)
          to label %bb.cu unwind label %bb.ct, !noalias !6917

bb.ct:                                            ; preds = %bb.cs
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !6913
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 1728
  invoke void @_RNvMsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_10SQLOptions11verify_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.ql, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.qj)
          to label %bb.cw unwind label %bb.cv, !noalias !6917

bb.cv:                                            ; preds = %bb.cu
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !6913
  br label %bb.da
end_hunk_1
