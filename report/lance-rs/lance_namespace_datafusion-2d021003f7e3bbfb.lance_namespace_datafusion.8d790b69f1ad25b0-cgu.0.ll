Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset12get_manifest0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.du = load i64, ptr %i.dt, align 8, !range !129, !invariant.load !111 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !128, !invariant.load !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) %i.dx) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !129, !invariant.load !111 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !128, !invariant.load !111
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) %i.ed) #44
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ak
  %.not.i20 = icmp eq ptr %i.dp, null
  br i1 %.not.i20, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread225, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !29975
  call void @llvm.experimental.noalias.scope.decl(metadata !29984)
  call void @llvm.experimental.noalias.scope.decl(metadata !29985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !29975
  store ptr %i.dp, ptr %i.l, align 8, !noalias !29986
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.dr, ptr %i.ee, align 8, !noalias !29986
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !range !128, !invariant.load !111, !alias.scope !29985, !noalias !29984
  %i.eh = add nsw i64 %i.eg, -1
  %i.ei = and i64 %i.eh, -16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29986
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !invariant.load !111, !alias.scope !29985, !noalias !29984, !nonnull !111
  invoke void %i.em(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.ek)
          to label %bb.aq unwind label %bb.an, !noalias !29984

bb.an:                                            ; preds = %bb.am
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !29987
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.ao, label %.body39.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.body39.i unwind label %bb.ap, !noalias !29984

bb.ap:                                            ; preds = %bb.ao
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !29984
  unreachable

bb.aq:                                            ; preds = %bb.am
  %i.er = load i128, ptr %i.k, align 16, !noalias !29986, !noundef !111
  %i.es = icmp eq i128 %i.er, 30315766894603180422979482736445024540 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29986
  %spec.select.i.i = select i1 %i.es, ptr %i.dp, ptr %i.dr
  %spec.select2.i.i = select i1 %i.es, ptr null, ptr %i.dp
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %spec.select.i.i, ptr %i.et, align 8, !alias.scope !29984, !noalias !29988
  store ptr %spec.select2.i.i, ptr %i.t, align 8, !alias.scope !29984, !noalias !29988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !29975
  br i1 %i.es, label %.thread.a, label %bb.at

.thread.a:                                        ; preds = %bb.aq
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !29975, !nonnull !111, !align !127, !noundef !111
  %.val27.i176 = load ptr, ptr %i.ev, align 8, !nonnull !111, !noundef !111
  %i.ew = getelementptr inbounds nuw i8, ptr %.val27.i176, i64 32
  %i.ex = atomicrmw add ptr %i.ew, i64 1 monotonic, align 8 ; 0 uses
  br label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.ar:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !29975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !29975
  %.pre.pre.i = load ptr, ptr %i.t, align 8, !noalias !29975 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !29975, !nonnull !111, !align !127, !noundef !111
  %.val27.i = load ptr, ptr %i.ez, align 8, !nonnull !111, !noundef !111
  %i.fa = getelementptr inbounds nuw i8, ptr %.val27.i, i64 40
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8 ; 0 uses
  %.not16.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not16.i, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread, label %bb.aw

bb.as:                                            ; preds = %bb.az, %bb.ag
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.fd = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !29975 ; 2 uses
  %i.fe = icmp ult i64 %i.fd, 6
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp samesign ugt i64 %i.fd, 1
  br i1 %i.ff, label %bb.av, label %.thread179

.thread179:                                       ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !29975, !nonnull !111, !align !127, !noundef !111
  %.val27.i182 = load ptr, ptr %i.fh, align 8, !nonnull !111, !noundef !111
  %i.fi = getelementptr inbounds nuw i8, ptr %.val27.i182, i64 40
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.aw

bb.au:                                            ; preds = %bb.av
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !29975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !29975
  %i.fl = load ptr, ptr %i.t, align 8, !noalias !29975, !noundef !111
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.body39.i, label %bb.az

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !29975
  store ptr @267, ptr %i.s, align 8, !noalias !29975
  %i.fn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 8, ptr %i.fn, align 8, !noalias !29975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !29975
  store ptr %i.s, ptr %i.r, align 8, !noalias !29975
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !29975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29989
  store i64 0, ptr %i.j, align 8, !noalias !29989
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @108, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 17, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @105, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 32, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @108, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 17, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 389, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !29989
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr @107, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !29989
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.r, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !29989
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j)
          to label %bb.ar unwind label %bb.au

bb.aw:                                            ; preds = %.thread179, %bb.ar
  %i.fo = phi ptr [ %i.dp, %.thread179 ], [ %.pre.pre.i, %bb.ar ]
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !29990
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.ax, label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread unwind label %bb.ay

.body39.i:                                        ; preds = %bb.az, %bb.ay, %bb.au, %bb.ao, %bb.an
  %.pn17.i = phi { ptr, i32 } [ %i.fr, %bb.ay ], [ %i.fk, %bb.au ], [ %i.fk, %bb.az ], [ %i.en, %bb.an ], [ %i.en, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !29975
  br label %.body.i

bb.ay:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

bb.az:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 dereferenceable(16) %i.t) #49
          to label %.body39.i unwind label %bb.as

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !29975
  store i8 3, ptr %i.dg, align 8, !noalias !29975
  store i8 -2, ptr %0, align 8
  br label %common.ret

_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread: ; preds = %.thread.a, %bb.ar, %bb.aw, %bb.ax
  %.sroa.06.0.i178 = phi ptr [ %i.dp, %.thread.a ], [ null, %bb.aw ], [ null, %bb.ax ], [ null, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !29975
  store i8 1, ptr %i.dg, align 8, !noalias !29975
  %.not = icmp eq ptr %.sroa.06.0.i178, null
  br i1 %.not, label %bb.bc, label %bb.ba

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread225: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Y_4SendEL_EEB3f_EL_EEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !29975, !nonnull !111, !align !127, !noundef !111
  %.val29.i = load ptr, ptr %i.ft, align 8, !nonnull !111, !noundef !111
  %i.fu = getelementptr inbounds nuw i8, ptr %.val29.i, i64 40
  %i.fv = atomicrmw add ptr %i.fu, i64 1 monotonic, align 8 ; 0 uses
  store i8 1, ptr %i.dg, align 8, !noalias !29975
  br label %bb.bc

bb.ba:                                            ; preds = %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread, %bb.bs
  %.sroa.6143.2 = phi ptr [ %.sroa.3118.sroa.5.0.copyload, %bb.bs ], [ %.sroa.06.0.i178, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread ] ; 2 uses
  %.sroa.0137.2 = phi i8 [ %.sroa.3118.sroa.0.0.copyload, %bb.bs ], [ -1, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29991)
  call void @llvm.experimental.noalias.scope.decl(metadata !29992)
  call void @llvm.experimental.noalias.scope.decl(metadata !29993)
  call void @llvm.experimental.noalias.scope.decl(metadata !29994)
  %i.fx = load ptr, ptr %i.fw, align 16, !alias.scope !29995, !nonnull !111, !noundef !111
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !29995
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion.exit33

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion.exit33 unwind label %bb.bt

bb.bc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread225, %_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !111, !noundef !111
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ge = load i64, ptr %i.gd, align 16, !noundef !111
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !111, !align !127, !noundef !111
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr %i.gc, ptr %.sroa.8109.0..sroa_idx, align 16
  %.sroa.9110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i64 %i.ge, ptr %.sroa.9110.0..sroa_idx, align 8
  %.sroa.11112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.gh = load <2 x ptr>, ptr %i.ga, align 8
  store <2 x ptr> %i.gh, ptr %.sroa.11112.0..sroa_idx, align 8
  %.sroa.13114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 840
  store ptr %i.gg, ptr %.sroa.13114.0..sroa_idx, align 8
  %.sroa.15116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 851
  store i8 0, ptr %.sroa.15116.0..sroa_idx, align 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.be
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset13load_manifest0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 16 %i.gj) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.v

bb.be:                                            ; preds = %bb.a, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke fastcc void @_RNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset13load_manifest0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 16 captures(address) dereferenceable(544) %i.x, ptr noundef nonnull align 16 %i.gj, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.gk = load i64, ptr %i.x, align 16, !range !132, !noundef !111 ; 3 uses
  %i.gl = icmp eq i64 %i.gk, -2
  br i1 %i.gl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.bh:                                            ; preds = %bb.bf
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3118.sroa.0.0.copyload = load i8, ptr %.sroa.3118.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3118.sroa.3.0..sroa.3118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3118.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3118.sroa.3.0..sroa.3118.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.3118.sroa.5.0..sroa.3118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.3118.sroa.5.0.copyload = load ptr, ptr %.sroa.3118.sroa.5.0..sroa.3118.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.3118.sroa.7.0..sroa.3118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3118.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3118.sroa.7.0..sroa.3118.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5119, ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5119.0..sroa_idx, i64 480, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset13load_manifest0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 16 %i.gj)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bj:                                            ; preds = %bb.bh
  %i.gn = icmp eq i64 %i.gk, -1
  br i1 %i.gn, label %bb.bs, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.sroa.3122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %.sroa.3122.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5119, i64 480, i1 false)
  %.sroa.2121.sroa.2.0..sroa.2121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2121.sroa.2.0..sroa.2121.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3118.sroa.3, i64 7, i1 false)
  %.sroa.2121.sroa.4.0..sroa.2121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2121.sroa.4.0..sroa.2121.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3118.sroa.7, i64 40, i1 false)
  store i64 1, ptr %i.i, align 16, !noalias !29996
  %i.go = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.go, align 8, !noalias !29996
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %i.gk, ptr %i.gp, align 16
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %.sroa.3118.sroa.0.0.copyload, ptr %.sroa.2121.0..sroa_idx, align 8
  %.sroa.2121.sroa.3.0..sroa.2121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.3118.sroa.5.0.copyload, ptr %.sroa.2121.sroa.3.0..sroa.2121.0..sroa_idx.sroa_idx, align 16
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !29997
  %i.gq = call noundef align 16 dereferenceable_or_null(560) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 560, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !29997 ; 5 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.bl, label %bb.bo, !prof !114

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 560) #48
          to label %.noexc.i36 unwind label %bb.bm, !noalias !29996

.noexc.i36:                                       ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(544) %i.gp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.bn, !noalias !29996

bb.bn:                                            ; preds = %bb.bm
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !29996
  unreachable

bb.bo:                                            ; preds = %bb.bk
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(560) %i.gq, ptr noundef nonnull align 16 dereferenceable(560) %i.i, i64 560, i1 false), !noalias !29996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29996
  store ptr %i.gq, ptr %i.gu, align 8
  %i.gv = atomicrmw add ptr %i.gq, i64 1 monotonic, align 8
  %i.gw = icmp slt i64 %i.gv, 0
  br i1 %i.gw, label %bb.bp, label %.thread222

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.trap()
  unreachable

.thread222:                                       ; preds = %bb.bo
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.gx, ptr %.sroa.7131.0..sroa_idx, align 8
  %.sroa.8132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.gy, ptr %.sroa.8132.0..sroa_idx, align 16
  %.sroa.9133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.gq, ptr %.sroa.9133.0..sroa_idx, align 8
  %.sroa.11135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 0, ptr %.sroa.11135.0..sroa_idx, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 225
  br label %bb.bw

bb.bq:                                            ; preds = %.body51
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29998)
  call void @llvm.experimental.noalias.scope.decl(metadata !29999)
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !30000, !nonnull !111, !noundef !111
  %i.hd = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !noalias !30000
  %i.he = icmp eq i64 %i.hd, 1
  br i1 %i.he, label %bb.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.v

bb.bs:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6140, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3118.sroa.3, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9148, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3118.sroa.7, i64 40, i1 false)
  br label %bb.ba

bb.bt:                                            ; preds = %bb.dr, %bb.bb
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.bu:                                            ; preds = %bb.dg, %bb.df
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.bu
  %i.hh = phi ptr [ %i.hi, %bb.bu ], [ %i.no, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
end_hunk_0
begin_hunk_1_@llvm.smax.i32
!29783 = !{!29563}
!29784 = !{!29565}
!29785 = !{!29565, !29563}
!29786 = !{!29565, !29563, !29336, !29335, !29323}
!29787 = !{!29567}
!29788 = !{!29569}
!29789 = !{!29569, !29567}
!29790 = !{!29569, !29567, !29336, !29335, !29323}
!29791 = !{!29571}
!29792 = !{!29573}
!29793 = !{!29575}
!29794 = !{!29575, !29573, !29571}
!29795 = !{!29575, !29573, !29571, !29336, !29335, !29323}
!29796 = !{!29577}
!29797 = !{!29579}
!29798 = !{!29579, !29577}
!29799 = !{!29579, !29577, !29336, !29335, !29323}
!29800 = !{!29581}
!29801 = !{!29583}
!29802 = !{!29583, !29581}
!29803 = !{!29583, !29581, !29336, !29335, !29323}
!29804 = !{!29585}
!29805 = !{!29586, !29323}
!29806 = !{!29588}
!29807 = !{!29591, !29589}
!29808 = !{!29588, !29323}
!29809 = !{!29589, !29588}
!29810 = !{!29593}
!29811 = !{!29597, !29596, !29595, !29323}
!29812 = !{!29596, !29595, !29323}
!29813 = !{!29597, !29323}
!29814 = !{!29601, !29599}
!29815 = !{!29599}
!29816 = !{!29603, !29599}
!29817 = !{!29605}
!29818 = !{!29607}
!29819 = !{!29609}
!29820 = !{!29609, !29607, !29605}
!29821 = !{!29609, !29607, !29605, !29323}
!29822 = !{!29611}
!29823 = !{!29613}
!29824 = !{!29613, !29611}
!29825 = !{!29613, !29611, !29323}
!29826 = !{!29615}
!29827 = !{!29617}
!29828 = !{!29619}
!29829 = !{!29619, !29617, !29615}
!29830 = !{!29621}
!29831 = distinct !{!29831, i1 false, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29832 = distinct !{!29832, !29831, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringE8as_derefCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29833 = distinct !{!29833, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29834 = distinct !{!29834, !29833, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29835 = distinct !{!29835, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29836 = distinct !{!29836, !29835, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29837 = distinct !{!29837, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29838 = distinct !{!29838, !29837, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29839 = distinct !{!29839, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29840 = distinct !{!29840, !29839, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29841 = distinct !{!29841, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29842 = distinct !{!29842, !29841, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29843 = distinct !{!29843, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29844 = distinct !{!29844, !29843, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29845 = distinct !{!29845, i1 false, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!29846 = distinct !{!29846, !29845, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache12get_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29847 = distinct !{!29847, i1 false, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29848 = distinct !{!29848, !29847, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion: argument 2"}
!29849 = distinct !{!29849, !29847, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29850 = distinct !{!29850, !29847, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29851 = distinct !{!29851, i1 false, !"_RNvXs2_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema"}
!29852 = distinct !{!29852, !29851, !"_RNvXs2_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema: argument 0"}
!29853 = distinct !{!29853, i1 false, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish"}
!29854 = distinct !{!29854, !29853, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 1"}
!29855 = distinct !{!29855, !29853, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 0"}
!29856 = distinct !{!29856, i1 false, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29857 = distinct !{!29857, !29856, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29858 = distinct !{!29858, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29859 = distinct !{!29859, !29858, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29860 = distinct !{!29860, !29858, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2L_4SendEL_EEB32_EL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29861 = distinct !{null}
!29862 = distinct !{!29862, i1 false, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29863 = distinct !{!29863, !29862, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29864 = distinct !{!29864, !29862, !"_RINvMsE_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBM_6marker4SyncNtB1f_4SendEL_E8downcastNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29865 = distinct !{!29865, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29866 = distinct !{!29866, !29865, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29867 = distinct !{!29867, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29868 = distinct !{!29868, !29867, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29869 = distinct !{!29869, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29870 = distinct !{!29870, !29869, !"_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29871 = distinct !{!29871, i1 false, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29872 = distinct !{!29872, !29871, !"_RINvNtCs91CWldrXK7B_3log13___private_api8log_implNtB2_12GlobalLoggerECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29873 = distinct !{!29873, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29874 = distinct !{!29874, !29873, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2O_4SendEL_EEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29875 = distinct !{!29875, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29876 = distinct !{!29876, !29875, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29877 = distinct !{!29877, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29878 = distinct !{!29878, !29877, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29879 = distinct !{!29879, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29880 = distinct !{!29880, !29879, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29881 = distinct !{!29881, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29882 = distinct !{!29882, !29881, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29883 = distinct !{!29883, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29884 = distinct !{!29884, !29883, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29885 = distinct !{!29885, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29886 = distinct !{!29886, !29885, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29887 = distinct !{!29887, i1 false, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29888 = distinct !{!29888, !29887, !"_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29889 = distinct !{!29889, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29890 = distinct !{!29890, !29889, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29891 = distinct !{!29891, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29892 = distinct !{!29892, !29891, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29893 = distinct !{!29893, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29894 = distinct !{!29894, !29893, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29895 = distinct !{!29895, i1 false, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!29896 = distinct !{!29896, !29895, !"_RNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB8_10LanceCache15insert_with_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyE0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29897 = distinct !{!29897, i1 false, !"_RINvMNtCs63DIHKhvmTb_10lance_core5cacheNtB3_10CacheState10entry_sizeNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29898 = distinct !{!29898, !29897, !"_RINvMNtCs63DIHKhvmTb_10lance_core5cacheNtB3_10CacheState10entry_sizeNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29899 = distinct !{!29899, i1 false, !"_RNvMsd_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1R_3AnyNtNtB1T_6marker4SyncNtB3g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1T_6option6OptionjEEE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29900 = distinct !{!29900, !29899, !"_RNvMsd_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1R_3AnyNtNtB1T_6marker4SyncNtB3g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1T_6option6OptionjEEE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29901 = distinct !{!29901, i1 false, !"_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29902 = distinct !{!29902, !29901, !"_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29903 = distinct !{!29903, !29901, !"_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29904 = distinct !{!29904, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29905 = distinct !{!29905, !29904, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29906 = distinct !{!29906, i1 false, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!29907 = distinct !{!29907, !29906, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!29908 = distinct !{!29908, !29904, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29909 = distinct !{!29909, !29906, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!29910 = distinct !{!29910, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!29911 = distinct !{!29911, !29910, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!29912 = distinct !{!29912, i1 false, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!29913 = distinct !{!29913, !29912, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29914 = distinct !{!29914, i1 false, !"_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29915 = distinct !{!29915, !29914, !"_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29916 = distinct !{!29916, i1 false, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29917 = distinct !{!29917, !29916, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29918 = distinct !{!29918, !29916, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsc93vp1BCDlY_26lance_namespace_datafusion: argument 2"}
!29919 = distinct !{!29919, !29916, !"_RNvMNtCsfKiFC1ztrmh_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB11_3AnyNtNtB13_6marker4SyncNtB2q_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB13_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entryCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29920 = distinct !{!29920, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29921 = distinct !{!29921, !29920, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29922 = distinct !{!29922, i1 false, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!29923 = distinct !{!29923, !29922, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!29924 = distinct !{!29924, !29920, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29925 = distinct !{!29925, !29922, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!29926 = distinct !{!29926, i1 false, !"_RNvYNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29927 = distinct !{!29927, !29926, !"_RNvYNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29928 = distinct !{!29928, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!29929 = distinct !{!29929, !29928, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!29930 = distinct !{!29930, i1 false, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0E0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!29931 = distinct !{!29931, !29930, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBU_3AnyNtNtBW_6marker4SyncNtB2i_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBW_6option6OptionjEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1q_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE11rustc_entry0E0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29932 = distinct !{!29932, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29933 = distinct !{!29933, !29932, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29934 = distinct !{!29934, !29932, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBS_3AnyNtNtBU_6marker4SyncNtB2g_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBU_6option6OptionjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29935 = distinct !{!29935, i1 false, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB2f_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBT_6option6OptionjEEE14insert_no_growCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29936 = distinct !{!29936, !29935, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB2f_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBT_6option6OptionjEEE14insert_no_growCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29937 = distinct !{!29937, i1 false, !"_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB14_3AnyNtNtB16_6marker4SyncNtB2t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB16_6option6OptionjEE9or_insertCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29938 = distinct !{!29938, !29937, !"_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB14_3AnyNtNtB16_6marker4SyncNtB2t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB16_6option6OptionjEE9or_insertCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29939 = distinct !{!29939, !29935, !"_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB2f_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBT_6option6OptionjEEE14insert_no_growCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29940 = distinct !{!29940, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!29941 = distinct !{!29941, !29940, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!29942 = distinct !{!29942, i1 false, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29943 = distinct !{!29943, !29942, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion: argument 2"}
!29944 = distinct !{!29944, !29942, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!29945 = distinct !{!29945, !29942, !"_RINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtB6_10LanceCache9sized_keyNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29946 = distinct !{!29946, i1 false, !"_RNvXs2_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema"}
!29947 = distinct !{!29947, !29946, !"_RNvXs2_NtNtCshkPeWWG1flk_5lance7session6cachesNtB5_11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey6schema: argument 0"}
!29948 = distinct !{!29948, i1 false, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish"}
!29949 = distinct !{!29949, !29948, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 1"}
!29950 = distinct !{!29950, !29948, !"_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder6finish: argument 0"}
!29951 = distinct !{!29951, i1 false, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29952 = distinct !{!29952, !29951, !"_RNvYNtNtNtCshkPeWWG1flk_5lance7session6caches11ManifestKeyNtNtCs63DIHKhvmTb_10lance_core5cache8CacheKey5codecCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29953 = distinct !{!29953, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29954 = distinct !{!29954, !29953, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29955 = distinct !{!29955, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29956 = distinct !{!29956, !29955, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29957 = distinct !{!29957, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29958 = distinct !{!29958, !29957, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29959 = distinct !{!29959, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29960 = distinct !{!29960, !29959, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7session6caches15DSMetadataCacheECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29961 = distinct !{!29961, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29962 = distinct !{!29962, !29961, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29963 = distinct !{!29963, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!29964 = distinct !{!29964, !29963, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29965 = distinct !{!29965, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!29966 = distinct !{!29966, !29965, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!29967 = !{!29832}
!29968 = !{!29834}
!29969 = !{!29836}
!29970 = !{!29838}
!29971 = !{!29840}
!29972 = !{!29840, !29838, !29836, !29834}
!29973 = !{!29842}
!29974 = !{!29844, !29842}
!29975 = !{!29846}
!29976 = !{!29850, !29849, !29848, !29846}
!29977 = !{!29850, !29848}
!29978 = !{!29852}
!29979 = !{!29850, !29849}
!29980 = !{!29855, !29854, !29850, !29849, !29848, !29846}
!29981 = !{!29854, !29849, !29848, !29846}
!29982 = !{!29857}
!29983 = !{!29860, !29859}
!29984 = !{!29863}
!29985 = !{!29864}
!29986 = !{!29863, !29864, !29846}
!29987 = !{!29868, !29866, !29863, !29864}
!29988 = !{!29864, !29846}
!29989 = !{!29872, !29870, !29846}
!29990 = !{!29878, !29876, !29874}
!29991 = !{!29880}
!29992 = !{!29882}
!29993 = !{!29884}
!29994 = !{!29886}
!29995 = !{!29886, !29884, !29882, !29880}
!29996 = !{!29888}
!29997 = !{!29890, !29888}
!29998 = !{!29892}
!29999 = !{!29894}
!30000 = !{!29894, !29892}
!30001 = !{!29896}
!30002 = !{!29898, !29896}
!30003 = !{!29900, !29898, !29896}
!30004 = !{!29902}
!30005 = !{!29903, !29898, !29896}
!30006 = !{!29902, !29898, !29896}
!30007 = !{!29905}
!30008 = !{!29907}
!30009 = !{!29907, !29905, !29902}
!30010 = !{!29909, !29908, !29903, !29898, !29896}
!30011 = !{!29911, !29907, !29909, !29905, !29908, !29902, !29903, !29898, !29896}
!30012 = !{!29913, !29907, !29909, !29905, !29908, !29902, !29903, !29898, !29896}
!30013 = !{!29915, !29898, !29896}
!30014 = !{!29917}
!30015 = !{!29919, !29918, !29898, !29896}
!30016 = !{!29919, !29917, !29898, !29896}
!30017 = !{!29921}
!30018 = !{!29923}
!30019 = !{!29923, !29921, !29917}
!30020 = !{!29925, !29924, !29919, !29918, !29898, !29896}
!30021 = !{!29927, !29898, !29896}
!30022 = !{!29929, !29923, !29925, !29921, !29924, !29919, !29917, !29918, !29898, !29896}
!30023 = !{!29931, !29923, !29925, !29921, !29924, !29919, !29917, !29918, !29898, !29896}
!30024 = !{!29933, !29917}
!30025 = !{!29934, !29919, !29918, !29898, !29896}
!30026 = !{!29936}
!30027 = !{!29939, !29938, !29898, !29896}
!30028 = !{!29941, !29936, !29939, !29938, !29898, !29896}
!30029 = !{!29936, !29939, !29938, !29898, !29896}
!30030 = !{!29936, !29938, !29898, !29896}
!30031 = !{!29945, !29944, !29943, !29896}
!30032 = !{!29945, !29943, !29896}
!30033 = !{!29947}
!30034 = !{!29945, !29944, !29896}
!30035 = !{!29950, !29949, !29945, !29944, !29943, !29896}
!30036 = !{!29949, !29944, !29943, !29896}
!30037 = !{!29952}
!30038 = !{!29954, !29896}
!30039 = !{!29956}
!30040 = !{!29958}
!30041 = !{!29958, !29956}
!30042 = !{!29960}
!30043 = !{!29962}
!30044 = !{!29964}
!30045 = !{!29966}
!30046 = !{!29966, !29964, !29962, !29960}
!30047 = distinct !{!30047, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB1C_7Dataset13load_manifest0EENtB4_6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30048 = distinct !{!30048, !30047, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB1C_7Dataset13load_manifest0EENtB4_6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30049 = distinct !{!30049, !30047, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB1C_7Dataset13load_manifest0EENtB4_6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 2"}
!30050 = distinct !{!30050, !30047, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB1C_7Dataset13load_manifest0EENtB4_6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30051 = distinct !{!30051, i1 false, !"_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore14open_with_size0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!30052 = distinct !{!30052, !30051, !"_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore14open_with_size0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30053 = distinct !{!30053, !30051, !"_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore14open_with_size0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30054 = distinct !{!30054, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsgczF5crJ4sT_3std3env8VarErrorE3mapbNCNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB29_11ObjectStore14open_with_size00ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30055 = distinct !{!30055, !30054, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsgczF5crJ4sT_3std3env8VarErrorE3mapbNCNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB29_11ObjectStore14open_with_size00ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30056 = distinct !{!30056, !30054, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsgczF5crJ4sT_3std3env8VarErrorE3mapbNCNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB29_11ObjectStore14open_with_size00ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30057 = distinct !{!30057, i1 false, !"_RNCNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB9_11ObjectStore14open_with_size00Csc93vp1BCDlY_26lance_namespace_datafusion"}
!30058 = distinct !{!30058, !30057, !"_RNCNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB9_11ObjectStore14open_with_size00Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30059 = distinct !{!30059, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30060 = distinct !{!30060, !30059, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30061 = distinct !{!30061, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30062 = distinct !{!30062, !30061, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30063 = distinct !{!30063, i1 false, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultbNtNtCsgczF5crJ4sT_3std3env8VarErrorE9unwrap_orCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30064 = distinct !{!30064, !30063, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultbNtNtCsgczF5crJ4sT_3std3env8VarErrorE9unwrap_orCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30065 = distinct !{!30065, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30066 = distinct !{!30066, !30065, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30067 = distinct !{!30067, !30065, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30068 = distinct !{!30068, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30069 = distinct !{!30069, !30068, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30070 = distinct !{!30070, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30071 = distinct !{!30071, !30070, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30072 = distinct !{!30072, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30073 = distinct !{!30073, !30072, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30074 = distinct !{!30074, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30075 = distinct !{!30075, !30074, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30076 = distinct !{!30076, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30077 = distinct !{!30077, !30076, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30078 = distinct !{!30078, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30079 = distinct !{!30079, !30078, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30080 = distinct !{!30080, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30081 = distinct !{!30081, !30080, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30082 = distinct !{!30082, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30083 = distinct !{!30083, !30082, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30084 = distinct !{!30084, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_reader11SmallReaderECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30085 = distinct !{!30085, !30084, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io13object_reader11SmallReaderECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30086 = distinct !{!30086, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io13object_reader16SmallReaderInnerEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30087 = distinct !{!30087, !30086, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io13object_reader16SmallReaderInnerEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30088 = distinct !{!30088, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io13object_reader16SmallReaderInnerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30089 = distinct !{!30089, !30088, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io13object_reader16SmallReaderInnerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30090 = distinct !{!30090, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30091 = distinct !{!30091, !30090, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30092 = distinct !{!30092, i1 false, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30093 = distinct !{!30093, !30092, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30094 = distinct !{!30094, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB21_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB34_7Dataset13load_manifest00ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30095 = distinct !{!30095, !30094, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB21_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB34_7Dataset13load_manifest00ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30096 = distinct !{!30096, !30094, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB21_NCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB34_7Dataset13load_manifest00ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30097 = distinct !{!30097, i1 false, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset13load_manifest00Csc93vp1BCDlY_26lance_namespace_datafusion"}
!30098 = distinct !{!30098, !30097, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset13load_manifest00Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30099 = distinct !{!30099, !30097, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset13load_manifest00Csc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30100 = distinct !{!30100, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30101 = distinct !{!30101, !30100, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30102 = distinct !{!30102, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30103 = distinct !{!30103, !30102, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30104 = distinct !{!30104, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30105 = distinct !{!30105, !30104, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30106 = distinct !{!30106, !30104, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30107 = distinct !{!30107, i1 false, !"_RNCNvNtCsjjbR6Jfsbqw_8lance_io5utils15read_last_block0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!30108 = distinct !{!30108, !30107, !"_RNCNvNtCsjjbR6Jfsbqw_8lance_io5utils15read_last_block0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30109 = distinct !{!30109, !30107, !"_RNCNvNtCsjjbR6Jfsbqw_8lance_io5utils15read_last_block0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30110 = distinct !{!30110, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30111 = distinct !{!30111, !30110, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30112 = distinct !{!30112, !30110, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30113 = distinct !{!30113, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30114 = distinct !{!30114, !30113, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30115 = distinct !{!30115, !30113, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30116 = distinct !{!30116, i1 false, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2R_7Dataset13load_manifest0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30117 = distinct !{!30117, !30116, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2R_7Dataset13load_manifest0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30118 = distinct !{!30118, !30116, !"_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE7map_errNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB2R_7Dataset13load_manifest0s_0ECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30119 = distinct !{!30119, i1 false, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset13load_manifest0s_0Csc93vp1BCDlY_26lance_namespace_datafusion"}
!30120 = distinct !{!30120, !30119, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset13load_manifest0s_0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30121 = distinct !{!30121, !30119, !"_RNCNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB9_7Dataset13load_manifest0s_0Csc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30122 = distinct !{!30122, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtCs3PfUT229lOd_12object_store5ErrorE3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30123 = distinct !{!30123, !30122, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtCs3PfUT229lOd_12object_store5ErrorE3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30124 = distinct !{!30124, i1 false, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset13load_manifest"}
!30125 = distinct !{!30125, !30124, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset13load_manifest: argument 0"}
!30126 = distinct !{!30126, !30124, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset13load_manifest: argument 4"}
!30127 = distinct !{!30127, !30124, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset13load_manifest: argument 3"}
!30128 = distinct !{!30128, !30124, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset13load_manifest: argument 2"}
!30129 = distinct !{!30129, !30124, !"_RNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB5_7Dataset13load_manifest: argument 1"}
!30130 = distinct !{!30130, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBM_7Dataset13load_manifest0E3pinCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30131 = distinct !{!30131, !30130, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBM_7Dataset13load_manifest0E3pinCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30132 = distinct !{!30132, i1 false, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBM_7Dataset13load_manifest0E3newCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30133 = distinct !{!30133, !30132, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBM_7Dataset13load_manifest0E3newCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30134 = distinct !{!30134, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30135 = distinct !{!30135, !30134, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30136 = distinct !{!30136, !30134, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30137 = distinct !{!30137, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30138 = distinct !{!30138, !30137, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30139 = distinct !{!30139, !30137, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30140 = distinct !{!30140, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30141 = distinct !{!30141, !30140, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30142 = distinct !{!30142, i1 false, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!30143 = distinct !{!30143, !30142, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!30144 = distinct !{!30144, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30145 = distinct !{!30145, !30144, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30146 = distinct !{!30146, i1 false, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop"}
!30147 = distinct !{!30147, !30146, !"_RNvXs1_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop: argument 0"}
!30148 = distinct !{!30148, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30149 = distinct !{!30149, !30148, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30150 = distinct !{!30150, !30148, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1G_EE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30151 = distinct !{null}
!30152 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtB1y_7Dataset13load_manifest0EEECsc93vp1BCDlY_26lance_namespace_datafusion, null}
!30153 = distinct !{!30153, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30154 = distinct !{!30154, !30153, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30155 = distinct !{!30155, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30156 = distinct !{!30156, !30155, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30157 = distinct !{!30157, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30158 = distinct !{!30158, !30157, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30159 = distinct !{!30159, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30160 = distinct !{!30160, !30159, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30161 = distinct !{!30161, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30162 = distinct !{!30162, !30161, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30163 = distinct !{!30163, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30164 = distinct !{!30164, !30163, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30165 = distinct !{!30165, !30163, !"_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30166 = distinct !{!30166, i1 false, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtCs3PfUT229lOd_12object_store5ErrorEE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30167 = distinct !{!30167, !30166, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtCs3PfUT229lOd_12object_store5ErrorEE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30168 = distinct !{!30168, !30166, !"_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtCs3PfUT229lOd_12object_store5ErrorEE13from_residualCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30169 = distinct !{!30169, i1 false, !"_RNvXs1_CsjZ57lhftoIJ_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder8read_u32"}
!30170 = distinct !{!30170, !30169, !"_RNvXs1_CsjZ57lhftoIJ_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder8read_u32: argument 0"}
!30171 = distinct !{!30171, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb8ManifestNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30172 = distinct !{!30172, !30171, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb8ManifestNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30173 = distinct !{!30173, !30171, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb8ManifestNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30174 = distinct !{!30174, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30175 = distinct !{!30175, !30174, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30176 = distinct !{!30176, !30174, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30177 = distinct !{!30177, i1 false, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion"}
!30178 = distinct !{!30178, !30177, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 1"}
!30179 = distinct !{!30179, !30177, !"_RINvNtCscI6d9CVNmLh_4core4hint8must_useNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
!30180 = distinct !{!30180, i1 false, !"_RNvXs1_CsjZ57lhftoIJ_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder8read_u32"}
!30181 = distinct !{!30181, !30180, !"_RNvXs1_CsjZ57lhftoIJ_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder8read_u32: argument 0"}
!30182 = distinct !{!30182, i1 false, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb12IndexSectionNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion"}
!30183 = distinct !{!30183, !30182, !"_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtCs9KQ7US1M400_11lance_table6format2pb12IndexSectionNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorENtNtNtB7_3ops9try_trait3Try6branchCsc93vp1BCDlY_26lance_namespace_datafusion: argument 0"}
end_hunk_1
