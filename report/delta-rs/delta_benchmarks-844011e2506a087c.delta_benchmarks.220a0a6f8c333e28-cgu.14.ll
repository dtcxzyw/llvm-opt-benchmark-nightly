inline.NumInlined: 5478
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.ms = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fv, %bb.bj ]
  %i.mt = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fw, %bb.bj ]
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

bb.bl:                                            ; preds = %bb.bi, %bb.bg
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.mn, %bb.bi ], [ %i.mh, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !17877
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bl, %bb.bf, %bb.bc
  %i.mv = phi ptr [ %i.fs, %bb.bl ], [ %i.ln, %bb.bc ], [ %i.ly, %bb.bf ]
  %i.mw = phi ptr [ %i.ft, %bb.bl ], [ %i.lo, %bb.bc ], [ %i.lz, %bb.bf ]
  %i.mx = phi ptr [ %i.fu, %bb.bl ], [ %i.lp, %bb.bc ], [ %i.ma, %bb.bf ]
  %i.my = phi ptr [ %i.fv, %bb.bl ], [ %i.lq, %bb.bc ], [ %i.mb, %bb.bf ]
  %i.mz = phi ptr [ %i.fw, %bb.bl ], [ %i.lr, %bb.bc ], [ %i.mc, %bb.bf ]
  %.pn26.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn11.i.i.i, %bb.bl ], [ %.pn26.pn.i.i.i, %bb.bc ], [ %i.md, %bb.bf ]
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.na)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i unwind label %bb.az, !noalias !17881

bb.bm:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !17944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !17947
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bw)
          to label %.noexc69.i.i.i unwind label %bb.bo, !noalias !17881

.noexc69.i.i.i:                                   ; preds = %bb.bm
  %i.nb = load ptr, ptr %i.bp, align 8, !noalias !17947, !noundef !17
  %.not.i68.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i68.i.i.i, label %.critedge.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc69.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gf, ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i64 64, i1 false), !noalias !17950
  %.pr109.i.i.i = load ptr, ptr %i.gf, align 16, !noalias !17877
  %i.nc = icmp eq ptr %.pr109.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !17947
  br i1 %i.nc, label %.backedge.i.i.i, label %bb.bp

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %bb.bn
  %i.nd = load ptr, ptr %i.ga, align 16, !alias.scope !17951, !noalias !17953, !nonnull !17, !noundef !17
  %i.ne = load ptr, ptr %i.gb, align 16, !alias.scope !17951, !noalias !17953, !nonnull !17, !noundef !17 ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.nd
  br i1 %i.nf, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %.noexc69.i.i.i
  %i.ng = load <2 x ptr>, ptr %i.gg, align 8, !noalias !17947
  store <2 x ptr> %i.ng, ptr %i.gh, align 8, !alias.scope !17944, !noalias !17950
  store ptr null, ptr %i.gf, align 16, !alias.scope !17944, !noalias !17950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !17947
  br label %.backedge.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bp:                                            ; preds = %bb.bn
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 1, ptr %i.ni, align 1, !noalias !17877
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.nj, ptr noundef nonnull align 16 dereferenceable(64) %i.gf, i64 64, i1 false), !noalias !17877
  %i.nk = load ptr, ptr %i.gd, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !17877
  call void @llvm.experimental.noalias.scope.decl(metadata !17955)
  call void @llvm.experimental.noalias.scope.decl(metadata !17958)
  %i.nl = load ptr, ptr %i.nj, align 16, !alias.scope !17958, !noalias !17960, !nonnull !17, !noundef !17 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !17958, !noalias !17960, !noundef !17
  %i.no = atomicrmw add ptr %i.nl, i64 1 monotonic, align 8, !noalias !17961
  %i.np = icmp slt i64 %i.no, 0
  br i1 %i.np, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.nr = load ptr, ptr %i.nq, align 16, !alias.scope !17958, !noalias !17960, !nonnull !17, !noundef !17 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.nt = load i64, ptr %i.ns, align 8, !alias.scope !17958, !noalias !17960, !noundef !17
  %i.nu = atomicrmw add ptr %i.nr, i64 1 monotonic, align 8, !noalias !17961
  %i.nv = icmp slt i64 %i.nu, 0
  br i1 %i.nv, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 16, !alias.scope !17958, !noalias !17960, !nonnull !17, !noundef !17 ; 2 uses
  %i.ny = getelementptr i8, ptr %1, i64 2440      ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !alias.scope !17958, !noalias !17960, !noundef !17
  %i.oa = atomicrmw add ptr %i.nx, i64 1 monotonic, align 8, !noalias !17961
  %i.ob = icmp slt i64 %i.oa, 0
  br i1 %i.ob, label %bb.bu, label %bb.bw

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.trap()
  unreachable

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.trap()
  unreachable

bb.bv:                                            ; preds = %bb.bw
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17877
  br label %bb.aw

bb.bw:                                            ; preds = %bb.bs
  store ptr %i.nl, ptr %i.bv, align 8, !alias.scope !17955, !noalias !17962
  %i.od = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.nn, ptr %i.od, align 8, !alias.scope !17955, !noalias !17962
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.nr, ptr %i.oe, align 8, !alias.scope !17955, !noalias !17962
  %i.of = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.nt, ptr %i.of, align 8, !alias.scope !17955, !noalias !17962
  %i.og = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.nx, ptr %i.og, align 8, !alias.scope !17955, !noalias !17962
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 %i.nz, ptr %i.oh, align 8, !alias.scope !17955, !noalias !17962
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.oi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.nk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bv)
          to label %bb.bx unwind label %bb.bv, !noalias !17881

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17877
  %i.oj = load i64, ptr %i.oi, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not14.i.i.i = icmp eq i64 %i.oj, 20
  br i1 %.not14.i.i.i, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i

bb.by:                                            ; preds = %bb.bz
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 2504
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.on = load ptr, ptr %i.om, align 8, !noalias !17877, !nonnull !17, !noundef !17 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.op = load ptr, ptr %i.oo, align 16, !noalias !17877, !nonnull !17, !align !187, !noundef !17 ; 3 uses
  store ptr %i.on, ptr %i.ol, align 8, !noalias !17877
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 2512
  store ptr %i.op, ptr %i.oq, align 16, !noalias !17877
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.os = load i64, ptr %i.or, align 8, !range !313, !invariant.load !17, !noalias !17881
  %i.ot = add nsw i64 %i.os, -1
  %i.ou = and i64 %i.ot, -16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %.val43.i.i.i = load ptr, ptr %i.nw, align 16, !noalias !17877, !nonnull !17, !noundef !17
  %.val44.i.i.i = load i64, ptr %i.ny, align 8, !noalias !17877, !noundef !17
  %i.ox = getelementptr inbounds nuw i8, ptr %.val43.i.i.i, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %i.oz = load ptr, ptr %i.oy, align 8, !invariant.load !17, !noalias !17881, !nonnull !17
  %i.pa = invoke { ptr, ptr } %i.oz(ptr noundef nonnull %i.ow, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ox, i64 noundef %.val44.i.i.i)
          to label %bb.ca unwind label %bb.by, !noalias !17881 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.pb = extractvalue { ptr, ptr } %i.pa, 0      ; 2 uses
  %i.pc = extractvalue { ptr, ptr } %i.pa, 1      ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 2520
  store ptr %i.pb, ptr %i.pd, align 8, !noalias !17877
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store ptr %i.pc, ptr %i.pe, align 16, !noalias !17877
  br label %bb.ai

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !17877
  call void @llvm.experimental.noalias.scope.decl(metadata !17963)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.hr, ptr %i.pf, align 8, !alias.scope !17966, !noalias !17877
  %.sroa.2100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.sroa.397.0.copyload.i.i.i, ptr %.sroa.2100.0..sroa_idx.i.i.i, align 16, !alias.scope !17966, !noalias !17877
  %.sroa.3101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %.sroa.598.0.copyload.i.i.i, ptr %.sroa.3101.0..sroa_idx.i.i.i, align 8, !alias.scope !17966, !noalias !17877
  store i64 36, ptr %i.bq, align 16, !alias.scope !17968, !noalias !17969
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17970)
  call void @llvm.experimental.noalias.scope.decl(metadata !17973)
  %i.ph = load ptr, ptr %i.pg, align 8, !alias.scope !17976, !noalias !17877, !nonnull !17, !noundef !17
  %i.pi = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !noalias !17977
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i

bb.cc:                                            ; preds = %bb.cb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pg) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i unwind label %bb.av, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i: ; preds = %bb.cc, %bb.cb
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not22.i.i.i = icmp eq i64 %i.pl, 20
  br i1 %.not22.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.pk)
          to label %bb.ce unwind label %bb.ax, !noalias !17881

bb.ce:                                            ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit71.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.pm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i unwind label %bb.bb, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i: ; preds = %bb.ce
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.pn, align 1, !noalias !17877
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.po)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i unwind label %bb.bf, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i unwind label %bb.bk, !noalias !17881

bb.cf:                                            ; preds = %bb.ck, %bb.cg, %bb.ae
  %i.pq = phi ptr [ %i.gr, %bb.cg ], [ %i.gy, %bb.ck ], [ %i.gy, %bb.ae ]
  %i.pr = phi ptr [ %i.gs, %bb.cg ], [ %i.gz, %bb.ck ], [ %i.gz, %bb.ae ]
  %i.ps = phi ptr [ %i.gt, %bb.cg ], [ %i.ha, %bb.ck ], [ %i.ha, %bb.ae ]
  %i.pt = phi ptr [ %i.gu, %bb.cg ], [ %i.hb, %bb.ck ], [ %i.hb, %bb.ae ]
  %i.pu = phi ptr [ %i.gv, %bb.cg ], [ %i.hc, %bb.ck ], [ %i.hc, %bb.ae ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.pw, %bb.cg ], [ %.pn32.pn.i.i.i, %bb.ck ], [ %.pn32.pn.i.i.i, %bb.ae ]
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.pv, align 1, !noalias !17877
  store i8 2, ptr %i.pt, align 8, !noalias !17877
  br label %.body.i.i

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.thread49.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.px, align 1, !noalias !17877
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
  br label %bb.cm

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ji) #37
          to label %bb.aw unwind label %bb.az, !noalias !17881

bb.ci:                                            ; preds = %bb.aw
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.py)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i unwind label %bb.az, !noalias !17881

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 2168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.pz) #37
          to label %bb.ae unwind label %bb.az, !noalias !17881

bb.ck:                                            ; preds = %bb.ae
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.qa) #37
          to label %bb.cf unwind label %bb.az, !noalias !17881

bb.cl:                                            ; preds = %bb.bj
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %i.qb, align 2, !noalias !17877
  store i8 0, ptr %i.ml, align 1, !noalias !17877
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
  %i.qc = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 37
  br i1 %i.qc, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread49.i.i
  %i.qd = phi ptr [ %i.fs, %bb.cl ], [ %i.gr, %.thread49.i.i ] ; 3 uses
  %i.qe = phi ptr [ %i.ft, %bb.cl ], [ %i.gs, %.thread49.i.i ] ; 3 uses
  %i.qf = phi ptr [ %i.fu, %bb.cl ], [ %i.gt, %.thread49.i.i ] ; 3 uses
  %.sroa.826.i.sroa.0.0.i = phi i64 [ %.sroa.826.i.sroa.0.0.copyload95.i, %bb.cl ], [ %.sroa.826.i.sroa.0.0.copyload.i, %.thread49.i.i ] ; 2 uses
  %.sroa.024.0.copyload2552.i.i = phi i64 [ %.sroa.024.0.copyload25.pre.i.i, %bb.cl ], [ 36, %.thread49.i.i ] ; 2 uses
  %i.qg = phi ptr [ %i.fw, %bb.cl ], [ %i.gv, %.thread49.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i, i64 32, i1 false), !noalias !17864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, i64 272, i1 false), !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.qg)
          to label %bb.co unwind label %bb.cn, !noalias !17868

bb.cn:                                            ; preds = %bb.cm
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.co:                                            ; preds = %bb.cm
  %i.qi = icmp eq i64 %.sroa.024.0.copyload2552.i.i, 36
  br i1 %i.qi, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, i64 272, i1 false), !noalias !17864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !17864
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, i64 32, i1 false), !noalias !17864
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cs, %.body.i.i
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17868
  unreachable

bb.cs:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.cb) #37
          to label %.body16.thread.i unwind label %bb.cr, !noalias !17868

bb.ct:                                            ; preds = %bb.cl, %.thread.i.i
  %i.qk = phi ptr [ %i.hi, %.thread.i.i ], [ %i.fs, %bb.cl ]
  %i.ql = phi ptr [ %i.hk, %.thread.i.i ], [ %i.fu, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17864
  store i8 3, ptr %i.ql, align 2, !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  br label %bb.pe

bb.cu:                                            ; preds = %bb.cq, %bb.cp, %bb.r
  %i.qm = phi ptr [ %i.dl, %bb.r ], [ %i.qd, %bb.cq ], [ %i.qd, %bb.cp ] ; 7 uses
  %i.qn = phi ptr [ %i.dm, %bb.r ], [ %i.qe, %bb.cq ], [ %i.qe, %bb.cp ] ; 7 uses
  %i.qo = phi ptr [ %i.dq, %bb.r ], [ %i.qf, %bb.cq ], [ %i.qf, %bb.cp ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.i, %bb.cq ], [ %.sroa.826.i.sroa.0.0.i, %bb.cp ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cq ], [ %.sroa.024.0.copyload2552.i.i, %bb.cp ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.qp, align 1, !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.i.sroa.6.i, i64 32, i1 false), !noalias !17979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.734.i.i, i64 272, i1 false), !noalias !17979
  store i8 1, ptr %i.qo, align 2, !noalias !17864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.857.sroa.6.i, i64 32, i1 false), !noalias !17859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.958.i, i64 272, i1 false), !noalias !17859
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.857.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  %i.qq = icmp eq i64 %.sroa.032.1.i.i, 36
  br i1 %i.qq, label %bb.de, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 1731 ; 2 uses
  store i8 1, ptr %i.qr, align 1, !noalias !17859
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 2800 ; 4 uses
  store i64 %.sroa.032.1.i.i, ptr %i.qs, align 16, !noalias !17859
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2808
  store i64 %.sroa.433.i.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17859
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i, i64 32, i1 false), !noalias !17859
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.661.i, i64 272, i1 false), !noalias !17859
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.qn)
          to label %bb.cx unwind label %bb.cw, !noalias !17863

bb.cw:                                            ; preds = %bb.cv
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !17859
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 1728
  invoke void @_RNvMsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_10SQLOptions11verify_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.qu, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.qs)
          to label %bb.cz unwind label %bb.cy, !noalias !17863

bb.cy:                                            ; preds = %bb.cx
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !17859
  br label %bb.dd
end_hunk_0
