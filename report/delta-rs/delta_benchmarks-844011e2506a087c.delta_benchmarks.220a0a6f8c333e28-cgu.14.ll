inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15779
  store ptr %i.e, ptr %i.a, align 8, !noalias !15779
  %.sroa.5130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5130.0..sroa_idx.i, align 8, !noalias !15779
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gf, align 8, !noalias !15779
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5132.0..sroa_idx.i, align 8, !noalias !15779
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @40, ptr noundef nonnull %i.a)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit76.i unwind label %bb.bs, !noalias !15806

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit76.i:   ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15779
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bw unwind label %bb.bu, !noalias !15806

bb.bu:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit76.i
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i77.i = load i64, ptr %i.b, align 8, !range !95, !alias.scope !15857, !noalias !15779, !noundef !17 ; 2 uses
  %i.gh = icmp eq i64 %.val2.i.i77.i, 0
  br i1 %i.gh, label %.body82.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val3.i.i78.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15864, !noalias !15779, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i78.i, i64 noundef %.val2.i.i77.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !15865
  br label %.body82.i

bb.bw:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit76.i
  %.val.i.i80.i = load i64, ptr %i.b, align 8, !range !95, !alias.scope !15857, !noalias !15779, !noundef !17 ; 2 uses
  %i.gi = icmp eq i64 %.val.i.i80.i, 0
  br i1 %i.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.val1.i.i81.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15864, !noalias !15779, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i81.i, i64 noundef %.val.i.i80.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !15868
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15779
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ca unwind label %bb.by, !noalias !15806

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i85.i = load i64, ptr %i.e, align 8, !range !95, !alias.scope !15871, !noalias !15779, !noundef !17 ; 2 uses
  %i.gk = icmp eq i64 %.val2.i.i85.i, 0
  br i1 %i.gk, label %.body90.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val3.i.i86.i = load ptr, ptr %i.gl, align 8, !alias.scope !15878, !noalias !15779, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i86.i, i64 noundef %.val2.i.i85.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !15879
  br label %.body90.i

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i
  %.val.i.i88.i = load i64, ptr %i.e, align 8, !range !95, !alias.scope !15871, !noalias !15779, !noundef !17 ; 2 uses
  %i.gm = icmp eq i64 %.val.i.i88.i, 0
  br i1 %i.gm, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i89.i = load ptr, ptr %i.gn, align 8, !alias.scope !15878, !noalias !15779, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i89.i, i64 noundef %.val.i.i88.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !15882
  br label %bb.cc

.body90.i:                                        ; preds = %bb.bz, %bb.by, %.body82.i, %bb.bq
  %.pn17.i = phi { ptr, i32 } [ %i.gc, %bb.bq ], [ %.pn15.i, %.body82.i ], [ %i.gj, %bb.by ], [ %i.gj, %bb.bz ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15779
  call void @llvm.experimental.noalias.scope.decl(metadata !15885)
  %i.go = load ptr, ptr %i.h, align 8, !alias.scope !15885, !noalias !15779, !noundef !17 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.body58.i, label %bb.bk

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15779
  %.sroa.0143.0.copyload.i = load ptr, ptr %i.f, align 8, !alias.scope !15886, !noalias !15779
  %.sroa.5144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5144.0.copyload.i = load ptr, ptr %.sroa.5144.0..sroa_idx.i, align 8, !alias.scope !15886, !noalias !15779
  %.sroa.6145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6145.0.copyload.i = load i64, ptr %.sroa.6145.0..sroa_idx.i, align 8, !alias.scope !15886, !noalias !15779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15779
  br label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit63.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15779
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15890)
  call void @llvm.experimental.noalias.scope.decl(metadata !15893)
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !15896, !noalias !15779, !nonnull !17, !noundef !17
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !15897
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit94.i

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit63.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gq) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit94.i unwind label %bb.ce, !noalias !15806

bb.ce:                                            ; preds = %bb.cj, %bb.cd
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit94.i: ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit63.i
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gv)
          to label %bb.ch unwind label %bb.cf, !noalias !15806

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit94.i
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i95.i = load i64, ptr %i.gv, align 8, !range !95, !alias.scope !15898, !noalias !15779, !noundef !17 ; 2 uses
  %i.gx = icmp eq i64 %.val2.i.i95.i, 0
  br i1 %i.gx, label %.body.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val3.i.i96.i = load ptr, ptr %i.gy, align 8, !alias.scope !15905, !noalias !15779, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i96.i, i64 noundef %.val2.i.i95.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !15906
  br label %.body.i

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit94.i
  %.val.i.i98.i = load i64, ptr %i.gv, align 8, !range !95, !alias.scope !15898, !noalias !15779, !noundef !17 ; 2 uses
  %i.gz = icmp eq i64 %.val.i.i98.i, 0
  %i.ha = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.12136.sroa.0.1.i, i64 0 ; 2 uses
  br i1 %i.gz, label %bb.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i: ; preds = %bb.ch, %bb.aw
  %i.hb = phi ptr [ %i.ek, %bb.aw ], [ %i.ex, %bb.ch ]
  %i.hc = phi ptr [ %i.el, %bb.aw ], [ %i.ey, %bb.ch ]
  %.val.i.i98.sink.i = phi i64 [ %.val.i.i.i, %bb.aw ], [ %.val.i.i98.i, %bb.ch ]
  %.sroa.0133.2.ph.i = phi i64 [ %.sroa.0133.0.i, %bb.aw ], [ %.sroa.0133.1.i, %bb.ch ]
  %.sroa.5134.2.ph.i = phi ptr [ %.sroa.5134.0.i, %bb.aw ], [ %.sroa.5134.1.i, %bb.ch ]
  %.sroa.9135.2.ph.i = phi ptr [ %.sroa.9135.0.i, %bb.aw ], [ %.sroa.9135.1.i, %bb.ch ]
  %i.hd = phi <2 x i64> [ %i.em, %bb.aw ], [ %i.ha, %bb.ch ]
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val1.i.i99.i = load ptr, ptr %i.he, align 8, !noalias !15779, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i99.i, i64 noundef %.val.i.i98.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !15806
  br label %bb.cm

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15779
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15909)
  call void @llvm.experimental.noalias.scope.decl(metadata !15912)
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !15915, !noalias !15779, !nonnull !17, !noundef !17
  %i.hh = atomicrmw sub ptr %i.hg, i64 1 release, align 8, !noalias !15916
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit56.i

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hf) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit56.i unwind label %bb.ce, !noalias !15806

bb.ck:                                            ; preds = %.body.i
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.hj) #37
          to label %bb.x unwind label %bb.ax, !noalias !15806

common.ret:                                       ; preds = %bb.de, %bb.cl
  %storemerge = phi i8 [ 1, %bb.de ], [ 3, %bb.cl ]
  store i8 %storemerge, ptr %i.u, align 8
  ret void

bb.cl:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15779
  store i8 3, ptr %i.ex, align 8, !noalias !15779
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  br label %common.ret

bb.cm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i, %bb.ch, %bb.aw
  %i.hk = phi ptr [ %i.ek, %bb.aw ], [ %i.ex, %bb.ch ], [ %i.hb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ]
  %i.hl = phi ptr [ %i.el, %bb.aw ], [ %i.ey, %bb.ch ], [ %i.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ]
  %.sroa.0133.2.i = phi i64 [ %.sroa.0133.0.i, %bb.aw ], [ %.sroa.0133.1.i, %bb.ch ], [ %.sroa.0133.2.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ] ; 2 uses
  %.sroa.5134.2.i = phi ptr [ %.sroa.5134.0.i, %bb.aw ], [ %.sroa.5134.1.i, %bb.ch ], [ %.sroa.5134.2.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ] ; 5 uses
  %.sroa.9135.2.i = phi ptr [ %.sroa.9135.0.i, %bb.aw ], [ %.sroa.9135.1.i, %bb.ch ], [ %.sroa.9135.2.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ] ; 4 uses
  %i.hm = phi <2 x i64> [ %i.em, %bb.aw ], [ %i.ha, %bb.ch ], [ %i.hd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 305
  store i8 0, ptr %i.hn, align 1, !noalias !15779
  store i8 1, ptr %i.hk, align 8, !noalias !15779
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.hl)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.co:                                            ; preds = %bb.cm
  %.not.i = icmp eq i64 %.sroa.0133.2.i, 20
  br i1 %.not.i, label %bb.cp, label %bb.dp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5134.2.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9135.2.i) ]
  store ptr %.sroa.5134.2.i, ptr %i.t, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.9135.2.i, ptr %i.hp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 313 ; 2 uses
  store i8 0, ptr %i.hq, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %i.hr, i64 56, i1 false)
  %i.hs = atomicrmw add ptr %.sroa.5134.2.i, i64 1 monotonic, align 8
  %i.ht = icmp slt i64 %i.hs, 0
  br i1 %i.ht, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.trap()
  unreachable

bb.cr:                                            ; preds = %bb.ct
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.dn

bb.cs:                                            ; preds = %bb.cp
  %i.hv = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.5134.2.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.9135.2.i)
          to label %bb.ct unwind label %bb.do     ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.hw = extractvalue { ptr, ptr } %i.hv, 0
  %i.hx = extractvalue { ptr, ptr } %i.hv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 -9223372036854775808, ptr %i.n, align 8
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder4scanNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.o, ptr noundef nonnull %i.hw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.cu unwind label %bb.cr

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !15917)
  %i.hy = load i64, ptr %i.p, align 8, !range !1787, !alias.scope !15920, !noalias !15917, !noundef !17 ; 2 uses
  %.not.i23 = icmp eq i64 %i.hy, 20
  %i.hz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !15922 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %.not.i23, label %bb.cv, label %bb.dm

bb.cv:                                            ; preds = %bb.cu
  %i.ic = load i8, ptr %i.ib, align 8, !range !270, !alias.scope !15920, !noalias !15917, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.id = trunc nuw i8 %i.ic to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.q, ptr noundef nonnull %i.ia, i1 noundef zeroext %i.id)
          to label %bb.cx unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !15923)
  %i.if = load i64, ptr %i.q, align 16, !range !1795, !alias.scope !15926, !noalias !15923, !noundef !17 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 36
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.856.sroa.0.0.copyload98 = load i64, ptr %i.ih, align 8, !alias.scope !15928 ; 2 uses
  %.sroa.856.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.856.sroa.8.0.copyload100 = load ptr, ptr %.sroa.856.sroa.8.0..sroa_idx, align 16, !alias.scope !15928 ; 2 uses
  %.sroa.856.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.856.sroa.9.0.copyload102 = load ptr, ptr %.sroa.856.sroa.9.0..sroa_idx, align 8, !alias.scope !15928 ; 2 uses
  %.sroa.856.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ii = load <2 x i64>, ptr %.sroa.856.sroa.10.0..sroa_idx, align 16, !alias.scope !15928 ; 2 uses
  br i1 %i.ig, label %bb.dk, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.1058.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.576.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.1058.0..sroa_idx59, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.if, ptr %i.r, align 16
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.856.sroa.0.0.copyload98, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.475.sroa.4.0..sroa.475.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.856.sroa.8.0.copyload100, ptr %.sroa.475.sroa.4.0..sroa.475.0..sroa_idx.sroa_idx, align 16
  %.sroa.475.sroa.5.0..sroa.475.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.856.sroa.9.0.copyload102, ptr %.sroa.475.sroa.5.0..sroa.475.0..sroa_idx.sroa_idx, align 8
  %.sroa.475.sroa.6.0..sroa.475.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store <2 x i64> %i.ii, ptr %.sroa.475.sroa.6.0..sroa.475.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ik)
          to label %bb.da unwind label %bb.dh

bb.cz:                                            ; preds = %bb.da
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.k, ptr noundef nonnull align 16 dereferenceable(320) %i.r, i64 320, i1 false)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame3new(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1680) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.k)
          to label %bb.db unwind label %bb.cz

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.077.0.copyload = load i64, ptr %i.m, align 16
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.882.0.copyload = load ptr, ptr %.sroa.882.0..sroa_idx, align 16
  %.sroa.1085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.1085.0.copyload = load ptr, ptr %.sroa.1085.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.im = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !15929)
  call void @llvm.experimental.noalias.scope.decl(metadata !15932)
  %i.in = load ptr, ptr %i.t, align 8, !alias.scope !15935, !nonnull !17, !noundef !17
  %i.io = atomicrmw sub ptr %i.in, i64 1 release, align 8, !noalias !15935
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.dc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.dd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit26: ; preds = %bb.df, %bb.dg, %bb.dd, %bb.r
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.r ], [ %i.it, %bb.dd ], [ %.pn13.pn, %bb.dg ], [ %.pn13.pn, %bb.df ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 313
  %i.ir = load i8, ptr %i.iq, align 1, !range !270, !noundef !17
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.ds, label %bb.b

bb.dd:                                            ; preds = %bb.dl, %bb.dc
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit26

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i8 0, ptr %i.hq, align 1
  br label %bb.de

bb.de:                                            ; preds = %bb.dq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.077.0 = phi i64 [ 36, %bb.dq ], [ %.sroa.077.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %.sroa.579.0 = phi i64 [ %.sroa.579.2, %bb.dq ], [ %.sroa.579.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %.sroa.882.0 = phi ptr [ %.sroa.882.2, %bb.dq ], [ %.sroa.882.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %.sroa.1085.0 = phi ptr [ %.sroa.1085.2, %bb.dq ], [ %.sroa.1085.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.iu = phi <2 x i64> [ %i.jg, %bb.dq ], [ %i.im, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ]
  store i64 %.sroa.077.0, ptr %0, align 16
  %.sroa.579.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.579.0, ptr %.sroa.579.0..sroa_idx80, align 8
  %.sroa.882.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.882.0, ptr %.sroa.882.0..sroa_idx83, align 16
  %.sroa.1085.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.1085.0, ptr %.sroa.1085.0..sroa_idx86, align 8
  %.sroa.13.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.iu, ptr %.sroa.13.0..sroa_idx88, align 16
  %.sroa.15.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15.0..sroa_idx92, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15, i64 288, i1 false)
  br label %common.ret

bb.df:                                            ; preds = %bb.cz, %bb.dj, %bb.dh
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.dj ], [ %i.iy, %bb.dh ], [ %i.il, %bb.cz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !15936)
  call void @llvm.experimental.noalias.scope.decl(metadata !15939)
  %i.iv = load ptr, ptr %i.t, align 8, !alias.scope !15942, !nonnull !17, !noundef !17
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !noalias !15942
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.dg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit26

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit26 unwind label %bb.di

bb.dh:                                            ; preds = %bb.cy
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.r) #37
          to label %bb.df unwind label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.ds, %bb.do, %bb.dh, %.body
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.dj:                                            ; preds = %bb.cw, %bb.dn
  %.pn13 = phi { ptr, i32 } [ %i.ie, %bb.cw ], [ %.pn6122, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.df

bb.dk:                                            ; preds = %bb.cx, %bb.dm
  %.sroa.579.1 = phi i64 [ %i.hy, %bb.dm ], [ %.sroa.856.sroa.0.0.copyload98, %bb.cx ] ; 2 uses
  %.sroa.882.1 = phi ptr [ %i.ia, %bb.dm ], [ %.sroa.856.sroa.8.0.copyload100, %bb.cx ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.10290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %i.ep = load <2 x ptr>, ptr %i.eo, align 8, !noalias !15954
  store <2 x ptr> %i.ep, ptr %i.ef, align 8, !noalias !15954
  store i8 0, ptr %.sroa.10290.0..sroa_idx.i, align 8, !noalias !15954
  br i1 %i.en, label %bb.cy, label %bb.eb

bb.ch:                                            ; preds = %bb.ci
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15954
  br label %.body184.i

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.ei, i64 40, i1 false), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15954
  store ptr %i.w, ptr %i.s, align 8, !noalias !15954
  %.sroa.5360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5360.0..sroa_idx.i, align 8, !noalias !15954
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @137, ptr noundef nonnull %i.s)
          to label %bb.ck unwind label %bb.ch, !noalias !15958

.body176.i:                                       ; preds = %bb.cm, %bb.cl, %bb.cj
  %.pn72.i = phi { ptr, i32 } [ %i.er, %bb.cj ], [ %i.et, %bb.cl ], [ %i.et, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15954
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #37
          to label %.body184.i unwind label %bb.aw, !noalias !15958

bb.cj:                                            ; preds = %bb.ck
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15954
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #37
          to label %.body176.i unwind label %bb.aw, !noalias !15958

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !16039, !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15954
  store i64 0, ptr %i.r, align 8, !noalias !15954
  %.sroa.4420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4420.0..sroa_idx.i, align 8, !noalias !15954
  %.sroa.5421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.5421.0..sroa_idx.i, align 8, !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15954
  store ptr %i.u, ptr %i.q, align 8, !noalias !15954
  %.sroa.5362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5362.0..sroa_idx.i, align 8, !noalias !15954
  %i.es = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.es, align 8, !noalias !15954
  %.sroa.5364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5364.0..sroa_idx.i, align 8, !noalias !15954
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @40, ptr noundef nonnull %i.q)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit170.i unwind label %bb.cj, !noalias !15958

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit170.i:  ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15954
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.cn unwind label %bb.cl, !noalias !15958

bb.cl:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit170.i
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i171.i = load i64, ptr %i.r, align 8, !range !95, !alias.scope !16043, !noalias !15954, !noundef !17 ; 2 uses
  %i.eu = icmp eq i64 %.val2.i.i171.i, 0
  br i1 %i.eu, label %.body176.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.val3.i.i172.i = load ptr, ptr %.sroa.4420.0..sroa_idx.i, align 8, !alias.scope !16050, !noalias !15954, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i172.i, i64 noundef %.val2.i.i171.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !16051
  br label %.body176.i

bb.cn:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit170.i
  %.val.i.i174.i = load i64, ptr %i.r, align 8, !range !95, !alias.scope !16043, !noalias !15954, !noundef !17 ; 2 uses
  %i.ev = icmp eq i64 %.val.i.i174.i, 0
  br i1 %i.ev, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit178.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val1.i.i175.i = load ptr, ptr %.sroa.4420.0..sroa_idx.i, align 8, !alias.scope !16050, !noalias !15954, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i175.i, i64 noundef %.val.i.i174.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !16054
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit178.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit178.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15954
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.cr unwind label %bb.cp, !noalias !15958

bb.cp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit178.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i179.i = load i64, ptr %i.u, align 8, !range !95, !alias.scope !16057, !noalias !15954, !noundef !17 ; 2 uses
  %i.ex = icmp eq i64 %.val2.i.i179.i, 0
  br i1 %i.ex, label %.body184.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val3.i.i180.i = load ptr, ptr %i.ey, align 8, !alias.scope !16064, !noalias !15954, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i180.i, i64 noundef %.val2.i.i179.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !16065
  br label %.body184.i

bb.cr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit178.i
  %.val.i.i182.i = load i64, ptr %i.u, align 8, !range !95, !alias.scope !16057, !noalias !15954, !noundef !17 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i182.i, 0
  br i1 %i.ez, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i183.i = load ptr, ptr %i.fa, align 8, !alias.scope !16064, !noalias !15954, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i183.i, i64 noundef %.val.i.i182.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !16068
  br label %bb.ct

.body184.i:                                       ; preds = %bb.cq, %bb.cp, %.body176.i, %bb.ch
  %.pn74.i = phi { ptr, i32 } [ %i.eq, %bb.ch ], [ %.pn72.i, %.body176.i ], [ %i.ew, %bb.cp ], [ %i.ew, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15954
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w) #37
          to label %bb.cu unwind label %bb.aw, !noalias !15958

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15954
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15954
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.fb, align 8, !noalias !15954
  store i64 36, ptr %i.a, align 16, !noalias !15954
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %bb.cw unwind label %bb.cv, !noalias !15958

bb.cu:                                            ; preds = %bb.cv, %.body184.i
  %.pn80.i = phi { ptr, i32 } [ %i.fc, %bb.cv ], [ %.pn74.i, %.body184.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.cv:                                            ; preds = %bb.ct
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15954
  br label %bb.gg

bb.cx:                                            ; preds = %bb.cy
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15954
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.fg) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aw, !noalias !15958

bb.cy:                                            ; preds = %bb.cg, %bb.f
  %.sink15.i191.sroa.gep310.i53 = phi ptr [ %.sink15.i191.sroa.gep310.i, %bb.f ], [ %.sink15.i191.sroa.gep310.i54, %bb.cg ] ; 2 uses
  %.sink15.i191.sroa.gep.i50 = phi ptr [ %.sink15.i191.sroa.gep.i, %bb.f ], [ %.sink15.i191.sroa.gep.i51, %bb.cg ]
  %.sink18.i189.sroa.gep309.i47 = phi ptr [ %.sink18.i189.sroa.gep309.i, %bb.f ], [ %.sink18.i189.sroa.gep309.i48, %bb.cg ] ; 2 uses
  %.sink18.i189.sroa.gep.i44 = phi ptr [ %.sink18.i189.sroa.gep.i, %bb.f ], [ %.sink18.i189.sroa.gep.i45, %bb.cg ]
  %i.fe = phi ptr [ %i.aw, %bb.f ], [ %i.ed, %bb.cg ] ; 9 uses
  %i.ff = phi ptr [ %i.av, %bb.f ], [ %i.ee, %bb.cg ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15954
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ae, ptr noundef nonnull align 8 %i.fg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cz unwind label %bb.cx, !noalias !15958

bb.cz:                                            ; preds = %bb.cy
  %i.fh = load i64, ptr %i.ae, align 8, !range !1799, !noalias !15954, !noundef !17 ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 21
  br i1 %i.fi, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15954
  store i64 37, ptr %0, align 16, !alias.scope !15958, !noalias !16071
  br label %.thread76

bb.db:                                            ; preds = %bb.cz
  %.sroa.3293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.3293.0.copyload.i = load ptr, ptr %.sroa.3293.0..sroa_idx.i, align 8, !noalias !15954 ; 3 uses
  %.sroa.5294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5294.0.copyload.i = load ptr, ptr %.sroa.5294.0..sroa_idx.i, align 8, !noalias !15954 ; 3 uses
  %.sroa.7295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7295.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7295.0..sroa_idx.i, i64 16, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15954
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.fg)
          to label %bb.dd unwind label %bb.dc, !noalias !15958

bb.dc:                                            ; preds = %bb.db
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.dd:                                            ; preds = %bb.db
  %.not.i187.i = icmp eq i64 %i.fh, 20
  br i1 %.not.i187.i, label %bb.de, label %bb.dz

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3293.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5294.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15954
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15954
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16072)
  call void @llvm.experimental.noalias.scope.decl(metadata !16075)
  %i.fo = load i64, ptr %i.fn, align 8, !range !283, !alias.scope !16075, !noalias !16077, !noundef !17 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !16075, !noalias !16077, !nonnull !17, !noundef !17 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !16075, !noalias !16077, !noundef !17 ; 3 uses
  %i.ft = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !16078
  %i.fu = icmp slt i64 %i.ft, 0                   ; 3 uses
  switch i64 %i.fo, label %default.unreachable23 [
    i64 0, label %bb.df
    i64 1, label %bb.dg
    i64 2, label %bb.dh
  ]

bb.df:                                            ; preds = %bb.de
  br i1 %i.fu, label %bb.di, label %bb.ds

bb.dg:                                            ; preds = %bb.de
  br i1 %i.fu, label %bb.dk, label %bb.dj

bb.dh:                                            ; preds = %bb.de
  br i1 %i.fu, label %bb.dn, label %bb.dm

bb.di:                                            ; preds = %bb.df
  call void @llvm.trap()
  unreachable

.sink.split.i188.i:                               ; preds = %bb.dq, %bb.dj
  %.sink18.i189.sroa.phi.i = phi ptr [ %.sink18.i189.sroa.gep.i44, %bb.dq ], [ %.sink18.i189.sroa.gep309.i47, %bb.dj ]
  %.sink16.i190.i = phi ptr [ %i.gc, %bb.dq ], [ %i.fq, %bb.dj ]
  %.sink15.i191.sroa.phi.i = phi ptr [ %.sink15.i191.sroa.gep.i50, %bb.dq ], [ %.sink15.i191.sroa.gep310.i53, %bb.dj ]
  %.sink13.i192.i = phi i64 [ %i.ge, %bb.dq ], [ %i.fs, %bb.dj ]
  %.sink12.ph.i193.i = phi i64 [ 40, %bb.dq ], [ 24, %bb.dj ]
  %.sink10.ph.i194.i = phi ptr [ %i.gi, %bb.dq ], [ %i.fw, %bb.dj ]
  %.sink9.ph.i195.i = phi i64 [ 48, %bb.dq ], [ 32, %bb.dj ]
  %.sink7.ph.i196.i = phi i64 [ %i.gk, %bb.dq ], [ %i.fy, %bb.dj ]
  store ptr %.sink16.i190.i, ptr %.sink18.i189.sroa.phi.i, align 8, !alias.scope !16072, !noalias !16079
  store i64 %.sink13.i192.i, ptr %.sink15.i191.sroa.phi.i, align 8, !alias.scope !16072, !noalias !16079
  br label %bb.ds

bb.dj:                                            ; preds = %bb.dg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !16075, !noalias !16077, !nonnull !17, !noundef !17 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !16075, !noalias !16077, !noundef !17
  %i.fz = atomicrmw add ptr %i.fw, i64 1 monotonic, align 8, !noalias !16078
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %bb.dl, label %.sink.split.i188.i

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.trap()
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.trap()
  unreachable

bb.dm:                                            ; preds = %bb.dh
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !16075, !noalias !16077, !nonnull !17, !noundef !17 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !16075, !noalias !16077, !noundef !17
  %i.gf = atomicrmw add ptr %i.gc, i64 1 monotonic, align 8, !noalias !16078
  %i.gg = icmp slt i64 %i.gf, 0
  br i1 %i.gg, label %bb.dp, label %bb.do

bb.dn:                                            ; preds = %bb.dh
  call void @llvm.trap()
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !16075, !noalias !16077, !nonnull !17, !noundef !17 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !16075, !noalias !16077, !noundef !17
  %i.gl = atomicrmw add ptr %i.gi, i64 1 monotonic, align 8, !noalias !16078
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.dr, label %bb.dq

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.trap()
  unreachable

bb.dq:                                            ; preds = %bb.do
  store ptr %i.fq, ptr %.sink18.i189.sroa.gep309.i47, align 8, !alias.scope !16072, !noalias !16079
  store i64 %i.fs, ptr %.sink15.i191.sroa.gep310.i53, align 8, !alias.scope !16072, !noalias !16079
  br label %.sink.split.i188.i

bb.dr:                                            ; preds = %bb.do
  call void @llvm.trap()
  unreachable

bb.ds:                                            ; preds = %.sink.split.i188.i, %bb.df
  %.sink12.i197.i = phi i64 [ 8, %bb.df ], [ %.sink12.ph.i193.i, %.sink.split.i188.i ]
  %.sink10.i198.i = phi ptr [ %i.fq, %bb.df ], [ %.sink10.ph.i194.i, %.sink.split.i188.i ]
  %.sink9.i199.i = phi i64 [ 16, %bb.df ], [ %.sink9.ph.i195.i, %.sink.split.i188.i ]
  %.sink7.i200.i = phi i64 [ %i.fs, %bb.df ], [ %.sink7.ph.i196.i, %.sink.split.i188.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink12.i197.i
  store ptr %.sink10.i198.i, ptr %i.gn, align 8, !alias.scope !16072, !noalias !16079
  %i.go = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink9.i199.i
  store i64 %.sink7.i200.i, ptr %i.go, align 8, !alias.scope !16072, !noalias !16079
  store i64 %i.fo, ptr %i.ab, align 8, !alias.scope !16072, !noalias !16079
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ab, ptr noundef nonnull %.sroa.3293.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5294.0.copyload.i)
          to label %bb.dt unwind label %bb.dx, !noalias !15958

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16080)
  %i.gp = load i64, ptr %i.ac, align 8, !range !1787, !alias.scope !16083, !noalias !16085, !noundef !17 ; 2 uses
  %.not.i204.i = icmp eq i64 %i.gp, 20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !16086, !noalias !15954 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !16086, !noalias !15954 ; 2 uses
  br i1 %.not.i204.i, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15954
  store ptr %i.gr, ptr %i.ad, align 8, !noalias !15954
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.gt, ptr %i.gu, align 8, !noalias !15954
  %i.gv = icmp eq ptr %i.gr, null
  br i1 %i.gv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gw = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !16087
  %i.gx = icmp eq i64 %i.gw, 1
  br i1 %i.gx, label %bb.dw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.dw:                                            ; preds = %bb.dv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.thread445.i, !noalias !15958

.thread445.i:                                     ; preds = %bb.dw
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.dw, %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15954
  %i.gz = load ptr, ptr %i.fk, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gz)
          to label %bb.gg unwind label %.thread.i, !noalias !15958

bb.dx:                                            ; preds = %bb.ds
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.dy:                                            ; preds = %bb.dt
  %.sroa.12307.0..sroa_idx308.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.4314.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4314.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12307.0..sroa_idx308.i, i64 16, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16094)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.gp, ptr %i.hc, align 8, !alias.scope !16097, !noalias !15954
  %.sroa.2312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.gr, ptr %.sroa.2312.0..sroa_idx.i, align 16, !alias.scope !16097, !noalias !15954
  %.sroa.3313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.gt, ptr %.sroa.3313.0..sroa_idx.i, align 8, !alias.scope !16097, !noalias !15954
  store i64 36, ptr %i.a, align 16, !alias.scope !16099, !noalias !16100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15954
  br label %bb.gg

bb.dz:                                            ; preds = %bb.dd
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7295.i, i64 16, i1 false), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16101)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.fh, ptr %i.hd, align 8, !alias.scope !16104, !noalias !15954
  %.sroa.2297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.3293.0.copyload.i, ptr %.sroa.2297.0..sroa_idx.i, align 16, !alias.scope !16104, !noalias !15954
  %.sroa.3298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.5294.0.copyload.i, ptr %.sroa.3298.0..sroa_idx.i, align 8, !alias.scope !16104, !noalias !15954
  store i64 36, ptr %i.a, align 16, !alias.scope !16106, !noalias !16107
  br label %bb.gg

bb.ea:                                            ; preds = %bb.eb
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15954
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.hh) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aw, !noalias !15958

bb.eb:                                            ; preds = %bb.cg, %bb.f
  %.sink15.i212.sroa.gep354.i65 = phi ptr [ %.sink15.i212.sroa.gep354.i, %bb.f ], [ %.sink15.i212.sroa.gep354.i66, %bb.cg ] ; 2 uses
  %.sink15.i212.sroa.gep.i62 = phi ptr [ %.sink15.i212.sroa.gep.i, %bb.f ], [ %.sink15.i212.sroa.gep.i63, %bb.cg ]
  %.sink18.i210.sroa.gep353.i59 = phi ptr [ %.sink18.i210.sroa.gep353.i, %bb.f ], [ %.sink18.i210.sroa.gep353.i60, %bb.cg ] ; 2 uses
  %.sink18.i210.sroa.gep.i56 = phi ptr [ %.sink18.i210.sroa.gep.i, %bb.f ], [ %.sink18.i210.sroa.gep.i57, %bb.cg ]
  %i.hf = phi ptr [ %i.aw, %bb.f ], [ %i.ed, %bb.cg ] ; 9 uses
  %i.hg = phi ptr [ %i.av, %bb.f ], [ %i.ee, %bb.cg ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15954
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aa, ptr noundef nonnull align 8 %i.hh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ec unwind label %bb.ea, !noalias !15958

bb.ec:                                            ; preds = %bb.eb
  %i.hi = load i64, ptr %i.aa, align 8, !range !1799, !noalias !15954, !noundef !17 ; 3 uses
  %i.hj = icmp eq i64 %i.hi, 21
  br i1 %i.hj, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15954
  store i64 37, ptr %0, align 16, !alias.scope !15958, !noalias !16071
  br label %.thread76

bb.ee:                                            ; preds = %bb.ec
  %.sroa.3336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.3336.0.copyload.i = load ptr, ptr %.sroa.3336.0..sroa_idx.i, align 8, !noalias !15954 ; 3 uses
  %.sroa.5337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5337.0.copyload.i = load ptr, ptr %.sroa.5337.0..sroa_idx.i, align 8, !noalias !15954 ; 3 uses
  %.sroa.7338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7338.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7338.0..sroa_idx.i, i64 16, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15954
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.hh)
          to label %bb.eg unwind label %bb.ef, !noalias !15958

bb.ef:                                            ; preds = %bb.ee
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.eg:                                            ; preds = %bb.ee
  %.not.i207.i = icmp eq i64 %i.hi, 20
  br i1 %.not.i207.i, label %bb.eh, label %bb.fc

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3336.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5337.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15954
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15954
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16108)
  call void @llvm.experimental.noalias.scope.decl(metadata !16111)
  %i.hp = load i64, ptr %i.ho, align 8, !range !283, !alias.scope !16111, !noalias !16113, !noundef !17 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !16111, !noalias !16113, !nonnull !17, !noundef !17 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !16111, !noalias !16113, !noundef !17 ; 3 uses
  %i.hu = atomicrmw add ptr %i.hr, i64 1 monotonic, align 8, !noalias !16114
  %i.hv = icmp slt i64 %i.hu, 0                   ; 3 uses
  switch i64 %i.hp, label %default.unreachable23 [
    i64 0, label %bb.ei
    i64 1, label %bb.ej
    i64 2, label %bb.ek
  ]

bb.ei:                                            ; preds = %bb.eh
  br i1 %i.hv, label %bb.el, label %bb.ev

bb.ej:                                            ; preds = %bb.eh
  br i1 %i.hv, label %bb.en, label %bb.em

bb.ek:                                            ; preds = %bb.eh
  br i1 %i.hv, label %bb.eq, label %bb.ep

bb.el:                                            ; preds = %bb.ei
  call void @llvm.trap()
  unreachable

.sink.split.i209.i:                               ; preds = %bb.et, %bb.em
  %.sink18.i210.sroa.phi.i = phi ptr [ %.sink18.i210.sroa.gep.i56, %bb.et ], [ %.sink18.i210.sroa.gep353.i59, %bb.em ]
  %.sink16.i211.i = phi ptr [ %i.id, %bb.et ], [ %i.hr, %bb.em ]
  %.sink15.i212.sroa.phi.i = phi ptr [ %.sink15.i212.sroa.gep.i62, %bb.et ], [ %.sink15.i212.sroa.gep354.i65, %bb.em ]
  %.sink13.i213.i = phi i64 [ %i.if, %bb.et ], [ %i.ht, %bb.em ]
  %.sink12.ph.i214.i = phi i64 [ 40, %bb.et ], [ 24, %bb.em ]
  %.sink10.ph.i215.i = phi ptr [ %i.ij, %bb.et ], [ %i.hx, %bb.em ]
  %.sink9.ph.i216.i = phi i64 [ 48, %bb.et ], [ 32, %bb.em ]
  %.sink7.ph.i217.i = phi i64 [ %i.il, %bb.et ], [ %i.hz, %bb.em ]
  store ptr %.sink16.i211.i, ptr %.sink18.i210.sroa.phi.i, align 8, !alias.scope !16108, !noalias !16115
  store i64 %.sink13.i213.i, ptr %.sink15.i212.sroa.phi.i, align 8, !alias.scope !16108, !noalias !16115
  br label %bb.ev

bb.em:                                            ; preds = %bb.ej
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !16111, !noalias !16113, !nonnull !17, !noundef !17 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !16111, !noalias !16113, !noundef !17
  %i.ia = atomicrmw add ptr %i.hx, i64 1 monotonic, align 8, !noalias !16114
  %i.ib = icmp slt i64 %i.ia, 0
  br i1 %i.ib, label %bb.eo, label %.sink.split.i209.i

bb.en:                                            ; preds = %bb.ej
  call void @llvm.trap()
  unreachable

bb.eo:                                            ; preds = %bb.em
  call void @llvm.trap()
  unreachable

bb.ep:                                            ; preds = %bb.ek
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !16111, !noalias !16113, !nonnull !17, !noundef !17 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !16111, !noalias !16113, !noundef !17
  %i.ig = atomicrmw add ptr %i.id, i64 1 monotonic, align 8, !noalias !16114
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.es, label %bb.er

bb.eq:                                            ; preds = %bb.ek
  call void @llvm.trap()
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !16111, !noalias !16113, !nonnull !17, !noundef !17 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !16111, !noalias !16113, !noundef !17
  %i.im = atomicrmw add ptr %i.ij, i64 1 monotonic, align 8, !noalias !16114
  %i.in = icmp slt i64 %i.im, 0
  br i1 %i.in, label %bb.eu, label %bb.et

bb.es:                                            ; preds = %bb.ep
  call void @llvm.trap()
  unreachable

bb.et:                                            ; preds = %bb.er
  store ptr %i.hr, ptr %.sink18.i210.sroa.gep353.i59, align 8, !alias.scope !16108, !noalias !16115
  store i64 %i.ht, ptr %.sink15.i212.sroa.gep354.i65, align 8, !alias.scope !16108, !noalias !16115
  br label %.sink.split.i209.i

bb.eu:                                            ; preds = %bb.er
  call void @llvm.trap()
  unreachable

bb.ev:                                            ; preds = %.sink.split.i209.i, %bb.ei
  %.sink12.i218.i = phi i64 [ 8, %bb.ei ], [ %.sink12.ph.i214.i, %.sink.split.i209.i ]
  %.sink10.i219.i = phi ptr [ %i.hr, %bb.ei ], [ %.sink10.ph.i215.i, %.sink.split.i209.i ]
  %.sink9.i220.i = phi i64 [ 16, %bb.ei ], [ %.sink9.ph.i216.i, %.sink.split.i209.i ]
  %.sink7.i221.i = phi i64 [ %i.ht, %bb.ei ], [ %.sink7.ph.i217.i, %.sink.split.i209.i ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink12.i218.i
  store ptr %.sink10.i219.i, ptr %i.io, align 8, !alias.scope !16108, !noalias !16115
  %i.ip = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink9.i220.i
  store i64 %.sink7.i221.i, ptr %i.ip, align 8, !alias.scope !16108, !noalias !16115
  store i64 %i.hp, ptr %i.x, align 8, !alias.scope !16108, !noalias !16115
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.x, ptr noundef nonnull %.sroa.3336.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5337.0.copyload.i)
          to label %bb.ew unwind label %bb.fa, !noalias !15958

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16116)
  %i.iq = load i64, ptr %i.y, align 8, !range !1787, !alias.scope !16119, !noalias !16121, !noundef !17 ; 2 uses
  %.not.i225.i = icmp eq i64 %i.iq, 20
  %i.ir = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !16122, !noalias !15954 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !16122, !noalias !15954 ; 2 uses
  br i1 %.not.i225.i, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15954
  store ptr %i.is, ptr %i.z, align 8, !noalias !15954
  %i.iv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.iu, ptr %i.iv, align 8, !noalias !15954
  %i.iw = icmp eq ptr %i.is, null
  br i1 %i.iw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit228.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ix = atomicrmw sub ptr %i.is, i64 1 release, align 8, !noalias !16123
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %bb.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit228.i

bb.ez:                                            ; preds = %bb.ey
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit228.i unwind label %.thread466.i, !noalias !15958

.thread466.i:                                     ; preds = %bb.ez
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit228.i: ; preds = %bb.ez, %bb.ey, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15954
  %i.ja = load ptr, ptr %i.hl, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ja)
          to label %bb.gg unwind label %.thread463.i, !noalias !15958

bb.fa:                                            ; preds = %bb.ev
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread463.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit228.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.fb:                                            ; preds = %bb.ew
  %.sroa.12351.0..sroa_idx352.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.4358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4358.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12351.0..sroa_idx352.i, i64 16, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16130)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.iq, ptr %i.jd, align 8, !alias.scope !16133, !noalias !15954
  %.sroa.2356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.is, ptr %.sroa.2356.0..sroa_idx.i, align 16, !alias.scope !16133, !noalias !15954
  %.sroa.3357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.iu, ptr %.sroa.3357.0..sroa_idx.i, align 8, !alias.scope !16133, !noalias !15954
  store i64 36, ptr %i.a, align 16, !alias.scope !16135, !noalias !16136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15954
  br label %bb.gg

bb.fc:                                            ; preds = %bb.eg
  %.sroa.4342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4342.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7338.i, i64 16, i1 false), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16137)
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.hi, ptr %i.je, align 8, !alias.scope !16140, !noalias !15954
  %.sroa.2340.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.3336.0.copyload.i, ptr %.sroa.2340.0..sroa_idx.i, align 16, !alias.scope !16140, !noalias !15954
  %.sroa.3341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.5337.0.copyload.i, ptr %.sroa.3341.0..sroa_idx.i, align 8, !alias.scope !16140, !noalias !15954
  store i64 36, ptr %i.a, align 16, !alias.scope !16142, !noalias !16143
  br label %bb.gg

bb.fd:                                            ; preds = %bb.fe
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15954
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ji) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aw, !noalias !15958

bb.fe:                                            ; preds = %bb.f, %bb.ak
  %.sink15.i236.sroa.gep408.i74 = phi ptr [ %.sink15.i236.sroa.gep408.i, %bb.f ], [ %.sink15.i236.sroa.gep408.i75, %bb.ak ] ; 2 uses
  %.sink15.i236.sroa.gep.i72 = phi ptr [ %.sink15.i236.sroa.gep.i, %bb.f ], [ %.sink15.i236.sroa.gep.i73, %bb.ak ]
  %.sink18.i234.sroa.gep407.i70 = phi ptr [ %.sink18.i234.sroa.gep407.i, %bb.f ], [ %.sink18.i234.sroa.gep407.i71, %bb.ak ] ; 2 uses
  %.sink18.i234.sroa.gep.i68 = phi ptr [ %.sink18.i234.sroa.gep.i, %bb.f ], [ %.sink18.i234.sroa.gep.i69, %bb.ak ]
  %i.jg = phi ptr [ %i.aw, %bb.f ], [ %i.ax, %bb.ak ] ; 9 uses
  %i.jh = phi ptr [ %i.av, %bb.f ], [ %i.ay, %bb.ak ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15954
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 8 %i.ji, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ff unwind label %bb.fd, !noalias !15958

bb.ff:                                            ; preds = %bb.fe
  %i.jj = load i64, ptr %i.k, align 8, !range !1799, !noalias !15954, !noundef !17 ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 21
  br i1 %i.jk, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15954
  br label %.thread76

bb.fh:                                            ; preds = %bb.ff
  %.sroa.3390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3390.0.copyload.i = load ptr, ptr %.sroa.3390.0..sroa_idx.i, align 8, !noalias !15954 ; 3 uses
  %.sroa.5391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5391.0.copyload.i = load ptr, ptr %.sroa.5391.0..sroa_idx.i, align 8, !noalias !15954 ; 3 uses
  %.sroa.7392.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7392.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7392.0..sroa_idx.i, i64 16, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15954
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ji)
          to label %bb.fj unwind label %bb.fi, !noalias !15958

bb.fi:                                            ; preds = %bb.fh
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.fj:                                            ; preds = %bb.fh
  %.not.i231.i = icmp eq i64 %i.jj, 20
  br i1 %.not.i231.i, label %bb.fk, label %bb.gf

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3390.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5391.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15954
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15954
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16144)
  call void @llvm.experimental.noalias.scope.decl(metadata !16147)
  %i.jq = load i64, ptr %i.jp, align 8, !range !283, !alias.scope !16147, !noalias !16149, !noundef !17 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !alias.scope !16147, !noalias !16149, !nonnull !17, !noundef !17 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !16147, !noalias !16149, !noundef !17 ; 3 uses
  %i.jv = atomicrmw add ptr %i.js, i64 1 monotonic, align 8, !noalias !16150
  %i.jw = icmp slt i64 %i.jv, 0                   ; 3 uses
  switch i64 %i.jq, label %default.unreachable23 [
    i64 0, label %bb.fl
    i64 1, label %bb.fm
    i64 2, label %bb.fn
  ]

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.jw, label %bb.fo, label %bb.fy

bb.fm:                                            ; preds = %bb.fk
  br i1 %i.jw, label %bb.fq, label %bb.fp

bb.fn:                                            ; preds = %bb.fk
  br i1 %i.jw, label %bb.ft, label %bb.fs

bb.fo:                                            ; preds = %bb.fl
  call void @llvm.trap()
  unreachable

.sink.split.i233.i:                               ; preds = %bb.fw, %bb.fp
  %.sink18.i234.sroa.phi.i = phi ptr [ %.sink18.i234.sroa.gep.i68, %bb.fw ], [ %.sink18.i234.sroa.gep407.i70, %bb.fp ]
  %.sink16.i235.i = phi ptr [ %i.ke, %bb.fw ], [ %i.js, %bb.fp ]
  %.sink15.i236.sroa.phi.i = phi ptr [ %.sink15.i236.sroa.gep.i72, %bb.fw ], [ %.sink15.i236.sroa.gep408.i74, %bb.fp ]
  %.sink13.i237.i = phi i64 [ %i.kg, %bb.fw ], [ %i.ju, %bb.fp ]
  %.sink12.ph.i238.i = phi i64 [ 40, %bb.fw ], [ 24, %bb.fp ]
  %.sink10.ph.i239.i = phi ptr [ %i.kk, %bb.fw ], [ %i.jy, %bb.fp ]
  %.sink9.ph.i240.i = phi i64 [ 48, %bb.fw ], [ 32, %bb.fp ]
  %.sink7.ph.i241.i = phi i64 [ %i.km, %bb.fw ], [ %i.ka, %bb.fp ]
  store ptr %.sink16.i235.i, ptr %.sink18.i234.sroa.phi.i, align 8, !alias.scope !16144, !noalias !16151
  store i64 %.sink13.i237.i, ptr %.sink15.i236.sroa.phi.i, align 8, !alias.scope !16144, !noalias !16151
  br label %bb.fy

bb.fp:                                            ; preds = %bb.fm
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !16147, !noalias !16149, !nonnull !17, !noundef !17 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !16147, !noalias !16149, !noundef !17
  %i.kb = atomicrmw add ptr %i.jy, i64 1 monotonic, align 8, !noalias !16150
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %bb.fr, label %.sink.split.i233.i

bb.fq:                                            ; preds = %bb.fm
  call void @llvm.trap()
  unreachable

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.trap()
  unreachable

bb.fs:                                            ; preds = %bb.fn
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !16147, !noalias !16149, !nonnull !17, !noundef !17 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !16147, !noalias !16149, !noundef !17
  %i.kh = atomicrmw add ptr %i.ke, i64 1 monotonic, align 8, !noalias !16150
  %i.ki = icmp slt i64 %i.kh, 0
  br i1 %i.ki, label %bb.fv, label %bb.fu

bb.ft:                                            ; preds = %bb.fn
  call void @llvm.trap()
  unreachable

bb.fu:                                            ; preds = %bb.fs
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !16147, !noalias !16149, !nonnull !17, !noundef !17 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !16147, !noalias !16149, !noundef !17
  %i.kn = atomicrmw add ptr %i.kk, i64 1 monotonic, align 8, !noalias !16150
  %i.ko = icmp slt i64 %i.kn, 0
  br i1 %i.ko, label %bb.fx, label %bb.fw

bb.fv:                                            ; preds = %bb.fs
  call void @llvm.trap()
  unreachable

bb.fw:                                            ; preds = %bb.fu
  store ptr %i.js, ptr %.sink18.i234.sroa.gep407.i70, align 8, !alias.scope !16144, !noalias !16151
  store i64 %i.ju, ptr %.sink15.i236.sroa.gep408.i74, align 8, !alias.scope !16144, !noalias !16151
  br label %.sink.split.i233.i

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.trap()
  unreachable

bb.fy:                                            ; preds = %.sink.split.i233.i, %bb.fl
  %.sink12.i242.i = phi i64 [ 8, %bb.fl ], [ %.sink12.ph.i238.i, %.sink.split.i233.i ]
  %.sink10.i243.i = phi ptr [ %i.js, %bb.fl ], [ %.sink10.ph.i239.i, %.sink.split.i233.i ]
  %.sink9.i244.i = phi i64 [ 16, %bb.fl ], [ %.sink9.ph.i240.i, %.sink.split.i233.i ]
  %.sink7.i245.i = phi i64 [ %i.ju, %bb.fl ], [ %.sink7.ph.i241.i, %.sink.split.i233.i ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink12.i242.i
  store ptr %.sink10.i243.i, ptr %i.kp, align 8, !alias.scope !16144, !noalias !16151
  %i.kq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink9.i244.i
  store i64 %.sink7.i245.i, ptr %i.kq, align 8, !alias.scope !16144, !noalias !16151
  store i64 %i.jq, ptr %i.h, align 8, !alias.scope !16144, !noalias !16151
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull %.sroa.3390.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5391.0.copyload.i)
          to label %bb.fz unwind label %bb.gd, !noalias !15958

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16152)
  %i.kr = load i64, ptr %i.i, align 8, !range !1787, !alias.scope !16155, !noalias !16157, !noundef !17 ; 2 uses
  %.not.i249.i = icmp eq i64 %i.kr, 20
  %i.ks = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !16158, !noalias !15954 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !16158, !noalias !15954 ; 2 uses
  br i1 %.not.i249.i, label %bb.ga, label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15954
  store ptr %i.kt, ptr %i.j, align 8, !noalias !15954
  %i.kw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.kv, ptr %i.kw, align 8, !noalias !15954
  %i.kx = icmp eq ptr %i.kt, null
  br i1 %i.kx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit252.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ky = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !16159
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %bb.gc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit252.i

bb.gc:                                            ; preds = %bb.gb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit252.i unwind label %.thread487.i, !noalias !15958

.thread487.i:                                     ; preds = %bb.gc
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit252.i: ; preds = %bb.gc, %bb.gb, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15954
  %i.lb = load ptr, ptr %i.jm, align 8, !noalias !15954, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lb)
          to label %bb.gg unwind label %.thread484.i, !noalias !15958

bb.gd:                                            ; preds = %bb.fy
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread484.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit252.i
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ge:                                            ; preds = %bb.fz
  %.sroa.12405.0..sroa_idx406.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4412.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12405.0..sroa_idx406.i, i64 16, i1 false), !noalias !15954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16166)
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.kr, ptr %i.le, align 8, !alias.scope !16169, !noalias !15954
  %.sroa.2410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.kt, ptr %.sroa.2410.0..sroa_idx.i, align 16, !alias.scope !16169, !noalias !15954
  %.sroa.3411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.kv, ptr %.sroa.3411.0..sroa_idx.i, align 8, !alias.scope !16169, !noalias !15954
  store i64 36, ptr %i.a, align 16, !alias.scope !16171, !noalias !16172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15954
  br label %bb.gg

bb.gf:                                            ; preds = %bb.fj
  %.sroa.4396.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4396.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7392.i, i64 16, i1 false), !noalias !15954
  call void @llvm.experimental.noalias.scope.decl(metadata !16173)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.jj, ptr %i.lf, align 8, !alias.scope !16176, !noalias !15954
  %.sroa.2394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.3390.0.copyload.i, ptr %.sroa.2394.0..sroa_idx.i, align 16, !alias.scope !16176, !noalias !15954
  %.sroa.3395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.5391.0.copyload.i, ptr %.sroa.3395.0..sroa_idx.i, align 8, !alias.scope !16176, !noalias !15954
  store i64 36, ptr %i.a, align 16, !alias.scope !16178, !noalias !16179
  br label %bb.gg

.thread76:                                        ; preds = %bb.fg, %bb.ed, %bb.da, %bb.cc
  %.ph = phi ptr [ %i.ed, %bb.cc ], [ %i.fe, %bb.da ], [ %i.hf, %bb.ed ], [ %i.jg, %bb.fg ]
  %.sink.i.ph = phi i8 [ 3, %bb.cc ], [ 4, %bb.da ], [ 5, %bb.ed ], [ 6, %bb.fg ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !15954
end_hunk_1
begin_hunk_2_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks15run_tpcds_query0B3_:bb.a
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !16187, !nonnull !17, !align !187, !noundef !17
  store ptr %i.dm, ptr %i.dk, align 16, !noalias !16187
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.do = load ptr, ptr %i.dn, align 16, !noalias !16187, !nonnull !17, !noundef !17
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !16187, !noundef !17
  store ptr %i.do, ptr %i.di, align 16, !noalias !16187
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.dq, ptr %i.dr, align 8, !noalias !16187
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ds)
          to label %bb.y unwind label %bb.x, !noalias !16191

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !16187
  br label %bb.jf

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !16187
  br label %bb.jq

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16187
  %.phi.trans.insert382.i = getelementptr inbounds nuw i8, ptr %0, i64 984
  %.val.i172.pre.i = load ptr, ptr %.phi.trans.insert382.i, align 8, !alias.scope !16192, !noalias !16195
  %.phi.trans.insert384.i = getelementptr inbounds nuw i8, ptr %0, i64 992
  %.val1.i173.pre.i = load ptr, ptr %.phi.trans.insert384.i, align 16, !alias.scope !16192, !noalias !16195
  br label %bb.kg

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16187
  %.phi.trans.insert386.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.val.i188.pre.i = load ptr, ptr %.phi.trans.insert386.i, align 16, !alias.scope !16198, !noalias !16201
  %.phi.trans.insert388.i = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.val1.i189.pre.i = load ptr, ptr %.phi.trans.insert388.i, align 8, !alias.scope !16198, !noalias !16201
  br label %bb.lc

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !16187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !16187
  %.phi.trans.insert390.i = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %.val.i.pre.i = load ptr, ptr %.phi.trans.insert390.i, align 16, !alias.scope !16204, !noalias !16207
  %.phi.trans.insert392.i = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.val1.i.pre.i = load ptr, ptr %.phi.trans.insert392.i, align 8, !alias.scope !16204, !noalias !16207
  br label %bb.ac

bb.w:                                             ; preds = %bb.mn, %bb.x
  %i.dt = phi ptr [ %i.dv, %bb.x ], [ %i.afd, %bb.mn ]
  %i.du = phi ptr [ %i.dw, %bb.x ], [ %i.afe, %bb.mn ]
  %.pn87.i = phi { ptr, i32 } [ %i.dx, %bb.x ], [ %.pn80.pn.pn.pn.i, %bb.mn ]
  store i8 2, ptr %i.dt, align 2, !noalias !16187
  br label %.body

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.q
  %i.dv = phi ptr [ %i.aen, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dh, %bb.q ]
  %i.dw = phi ptr [ %i.aeo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.di, %bb.q ]
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @185, ptr %i.dy, align 16, !noalias !16187
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr getelementptr inbounds nuw (i8, ptr @185, i64 384), ptr %i.dz, align 8, !noalias !16187
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.y
  %i.ea = phi ptr [ %i.ef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dh, %bb.y ] ; 4 uses
  %i.eb = phi ptr [ %i.eg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.di, %bb.y ] ; 5 uses
  %i.ec = phi ptr [ %.pre375.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ getelementptr inbounds nuw (i8, ptr @185, i64 384), %bb.y ]
  %i.ed = phi ptr [ %.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ @185, %bb.y ] ; 3 uses
  %i.ee = icmp eq ptr %i.ed, %i.ec
  br i1 %i.ee, label %.thread198, label %bb.bk

bb.aa:                                            ; preds = %bb.p
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #42
          to label %.noexc unwind label %bb.ny

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.p
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #42
          to label %.noexc59 unwind label %bb.ny

.noexc59:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.lo, %bb.v
  %i.ef = phi ptr [ %i.dg, %bb.v ], [ %i.aau, %bb.lo ] ; 15 uses
  %i.eg = phi ptr [ %i.df, %bb.v ], [ %i.aav, %bb.lo ] ; 14 uses
  %.val1.i.i = phi ptr [ %.val1.i.pre.i, %bb.v ], [ %i.acd, %bb.lo ]
  %.val.i.i = phi ptr [ %.val.i.pre.i, %bb.v ], [ %i.acc, %bb.lo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !16187
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16204)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !17, !noalias !16210, !nonnull !17
  invoke void %i.ek(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aq, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ad, !noalias !16191, !inline_history !16211

bb.ad:                                            ; preds = %bb.ac
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16187
  %.val104.i = load ptr, ptr %i.eh, align 16, !noalias !16187
  %.val105.i = load ptr, ptr %i.ei, align 8, !noalias !16187, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val104.i, ptr nonnull %.val105.i) #37
          to label %.body109.i unwind label %bb.lq, !noalias !16191

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ac
  %i.em = load i64, ptr %i.aq, align 8, !range !1799, !noalias !16187, !noundef !17 ; 3 uses
  %i.en = icmp eq i64 %i.em, 21
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16187
  br label %.thread

bb.af:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.3335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.3335.0.copyload.i = load ptr, ptr %.sroa.3335.0..sroa_idx.i, align 8, !noalias !16187 ; 3 uses
  %.sroa.5336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.5336.0.copyload.i = load ptr, ptr %.sroa.5336.0..sroa_idx.i, align 8, !noalias !16187 ; 3 uses
  %.sroa.7337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7337.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7337.0..sroa_idx.i, i64 16, i1 false), !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16187
  %.val106.i = load ptr, ptr %i.eh, align 16, !noalias !16187 ; 5 uses
  %.val107.i = load ptr, ptr %i.ei, align 8, !noalias !16187, !nonnull !17, !align !187, !noundef !17 ; 5 uses
  %i.eo = load ptr, ptr %.val107.i, align 8, !invariant.load !17, !noalias !16191 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val106.i) ]
  invoke void %i.eo(ptr noundef nonnull %.val106.i)
          to label %bb.ah unwind label %bb.ai, !noalias !16191

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %.val107.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !range !95, !invariant.load !17, !noalias !16191 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %.val107.i, i64 16
  %i.et = load i64, ptr %i.es, align 8, !range !313, !invariant.load !17, !noalias !16191
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val106.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val106.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) %i.et) #39, !noalias !16191
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val107.i, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !range !95, !invariant.load !17, !noalias !16191 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.body109.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %.val107.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !range !313, !invariant.load !17, !noalias !16191
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val106.i, i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) %i.ez) #39, !noalias !16191
  br label %.body109.i

.body109.i:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.ai, %bb.ad
  %.pn52.i = phi { ptr, i32 } [ %i.el, %bb.ad ], [ %i.eu, %bb.ai ], [ %i.eu, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16187
  br label %bb.ar

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ah
  %.not.i111.i = icmp eq i64 %i.em, 20
  br i1 %.not.i111.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.4341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !16187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4341.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7337.i, i64 16, i1 false), !noalias !16187
  store i64 %i.em, ptr %i.an, align 8, !noalias !16212
  %.sroa.2339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.3335.0.copyload.i, ptr %.sroa.2339.0..sroa_idx.i, align 8, !noalias !16212
  %.sroa.3340.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.5336.0.copyload.i, ptr %.sroa.3340.0..sroa_idx.i, align 8, !noalias !16212
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.an)
          to label %bb.mx unwind label %bb.al, !noalias !16191

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3335.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5336.0.copyload.i) ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !16187, !nonnull !17, !align !187, !noundef !17
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.fd = load ptr, ptr %i.fc, align 16, !noalias !16187, !nonnull !17, !noundef !17
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !16187, !noundef !17
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.ff, ptr noundef nonnull %.sroa.3335.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5336.0.copyload.i)
          to label %bb.am unwind label %bb.al, !noalias !16191

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16187
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !16215)
  %i.fh = load i64, ptr %i.as, align 8, !range !1787, !alias.scope !16218, !noalias !16220, !noundef !17 ; 2 uses
  %.not.i113.i = icmp eq i64 %i.fh, 20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !16221, !noalias !16187 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !16221, !noalias !16187 ; 2 uses
  br i1 %.not.i113.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.14322.0..sroa_idx323.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.4345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !16187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4345.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14322.0..sroa_idx323.i, i64 16, i1 false), !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16187
  store i64 %i.fh, ptr %i.am, align 8, !noalias !16222
  %.sroa.2343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.fj, ptr %.sroa.2343.0..sroa_idx.i, align 8, !noalias !16222
  %.sroa.3344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.fl, ptr %.sroa.3344.0..sroa_idx.i, align 8, !noalias !16222
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.am)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit115.i unwind label %bb.as, !noalias !16191

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit115.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !16187
  br label %bb.mo

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16187
  store ptr %i.fj, ptr %i.at, align 8, !noalias !16187
  %i.fm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.fl, ptr %i.fm, align 8, !noalias !16187
  %i.fn = icmp eq ptr %i.fj, null
  br i1 %i.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !16225
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.as, !noalias !16191

bb.ar:                                            ; preds = %bb.lm, %bb.as, %bb.al, %.body109.i
  %i.fq = phi ptr [ %i.ef, %bb.al ], [ %i.ef, %bb.as ], [ %i.ef, %.body109.i ], [ %i.aau, %bb.lm ]
  %i.fr = phi ptr [ %i.eg, %bb.al ], [ %i.eg, %bb.as ], [ %i.eg, %.body109.i ], [ %i.aav, %bb.lm ]
  %.pn56.i = phi { ptr, i32 } [ %i.fg, %bb.al ], [ %i.ft, %bb.as ], [ %.pn52.i, %.body109.i ], [ %.pn48.i, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16187
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 864
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.fs) #37
          to label %.body118.i unwind label %bb.lq, !noalias !16191

bb.as:                                            ; preds = %bb.aq, %bb.an
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16187
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 936
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.fv)
          to label %bb.au unwind label %bb.at, !noalias !16191

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.fu) #37
          to label %bb.av unwind label %bb.ba, !noalias !16191

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.fu)
          to label %bb.ay unwind label %bb.ax, !noalias !16191

bb.av:                                            ; preds = %bb.ax, %bb.at
  %.pn.i.i = phi { ptr, i32 } [ %i.gb, %bb.ax ], [ %i.fw, %bb.at ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16232)
  call void @llvm.experimental.noalias.scope.decl(metadata !16235)
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !16238, !noalias !16187, !nonnull !17, !noundef !17
  %i.fz = atomicrmw sub ptr %i.fy, i64 1 release, align 8, !noalias !16241
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.aw, label %.body118.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fx) #41
          to label %.body118.i unwind label %bb.ba, !noalias !16191

bb.ax:                                            ; preds = %bb.au
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ay:                                            ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16242)
  call void @llvm.experimental.noalias.scope.decl(metadata !16245)
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !16248, !noalias !16187, !nonnull !17, !noundef !17
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !16249
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gc) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bb, !noalias !16191

bb.ba:                                            ; preds = %bb.aw, %bb.at
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !16191
  unreachable

.body118.i:                                       ; preds = %bb.kz, %bb.ld, %bb.li, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i193.i, %bb.kq, %bb.kr, %bb.kw, %bb.ms, %bb.mr, %bb.bb, %bb.aw, %bb.av, %bb.ar
  %i.gh = phi ptr [ %i.yy, %bb.kq ], [ %i.ef, %bb.mr ], [ %i.fq, %bb.ar ], [ %i.ef, %bb.av ], [ %i.ef, %bb.aw ], [ %i.ef, %bb.bb ], [ %i.ef, %bb.ms ], [ %i.yy, %bb.kw ], [ %i.yy, %bb.kr ], [ %i.yy, %bb.kz ], [ %i.aau, %bb.ld ], [ %i.aau, %bb.li ], [ %i.aau, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i193.i ] ; 2 uses
  %i.gi = phi ptr [ %i.yz, %bb.kq ], [ %i.eg, %bb.mr ], [ %i.fr, %bb.ar ], [ %i.eg, %bb.av ], [ %i.eg, %bb.aw ], [ %i.eg, %bb.bb ], [ %i.eg, %bb.ms ], [ %i.yz, %bb.kw ], [ %i.yz, %bb.kr ], [ %i.yz, %bb.kz ], [ %i.aav, %bb.ld ], [ %i.aav, %bb.li ], [ %i.aav, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i193.i ] ; 2 uses
  %.pn58.pn.i = phi { ptr, i32 } [ %.pn.i182.i, %bb.kq ], [ %.pn.i215.i, %bb.mr ], [ %.pn56.i, %bb.ar ], [ %.pn.i.i, %bb.av ], [ %.pn.i.i, %bb.aw ], [ %i.gm, %bb.bb ], [ %.pn.i215.i, %bb.ms ], [ %i.aal, %bb.kw ], [ %.pn.i182.i, %bb.kr ], [ %.pn44.i, %bb.kz ], [ %i.aba, %bb.ld ], [ %i.abj, %bb.li ], [ %i.abj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i193.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.gk = load i8, ptr %i.gj, align 4, !range !270, !noalias !16187, !noundef !17
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ns, label %.body204.i

bb.bb:                                            ; preds = %bb.mv, %bb.az
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.az, %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 852
  store i8 0, ptr %i.gn, align 4, !noalias !16187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !16187
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i8 0, ptr %i.go, align 16, !noalias !16187
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 849
  store i8 0, ptr %i.gp, align 1, !noalias !16187
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 592
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.gq)
          to label %bb.be unwind label %bb.bd, !noalias !16191

bb.bc:                                            ; preds = %.body229.i, %.body.i, %bb.iw, %bb.bd
  %i.gr = phi ptr [ %i.gw, %bb.bd ], [ %i.ads, %.body229.i ], [ %i.vb, %.body.i ], [ %i.vb, %bb.iw ] ; 2 uses
  %i.gs = phi ptr [ %i.gx, %bb.bd ], [ %i.adt, %.body229.i ], [ %i.vc, %.body.i ], [ %i.vc, %bb.iw ] ; 2 uses
  %.pn71.i = phi { ptr, i32 } [ %i.gy, %bb.bd ], [ %.pn68.pn.i, %.body229.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.xc, %bb.iw ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 850
  %i.gu = load i8, ptr %i.gt, align 2, !range !270, !noalias !16187, !noundef !17
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.nv, label %.body235.i

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.gw = phi ptr [ %i.ado, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.gx = phi ptr [ %i.adp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.eg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 850
  store i8 0, ptr %i.gz, align 2, !noalias !16187
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %bb.bh unwind label %bb.bf, !noalias !16191

bb.bf:                                            ; preds = %bb.be
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.ha, align 16, !range !95, !alias.scope !16250, !noalias !16187, !noundef !17 ; 2 uses
  %i.hc = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.hc, label %.body120.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val3.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !16261, !noalias !16187, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !16262
  br label %.body120.i

bb.bh:                                            ; preds = %bb.be
  %.val.i.i.i.i.i = load i64, ptr %i.ha, align 16, !range !95, !alias.scope !16250, !noalias !16187, !noundef !17 ; 2 uses
  %i.he = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.he, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
end_hunk_2
begin_hunk_3_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks4main0B3_:bb.a
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107.i, i64 noundef %i.aeg, i64 noundef range(i64 1, -9223372036854775807) %i.aej) #39, !noalias !17030
  br label %.body153.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i277, %bb.od
  %i.aek = trunc nuw i64 %i.adw to i1
  br i1 %i.aek, label %bb.of, label %bb.og

bb.of:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.2229.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.2229.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2229.16..sroa_idx.i, i64 96, i1 false), !noalias !17026
  br label %bb.nx

bb.og:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.ael, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2229.i, i64 120, i1 false), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225.i)
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aem)
          to label %bb.oj unwind label %bb.oi, !noalias !17030

bb.oh:                                            ; preds = %bb.pk, %bb.oi
  %i.aen = phi ptr [ %i.aeq, %bb.oi ], [ %i.agx, %bb.pk ]
  %i.aeo = phi ptr [ %i.aer, %bb.oi ], [ %i.agy, %bb.pk ]
  %.pn90.i = phi { ptr, i32 } [ %i.aes, %bb.oi ], [ %.pn87.pn.i, %bb.pk ]
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.aep) #37
          to label %.body212.i unwind label %bb.ms, !noalias !17030

bb.oi:                                            ; preds = %bb.qs, %bb.pj, %bb.og
  %i.aeq = phi ptr [ %i.aig, %bb.qs ], [ %i.agu, %bb.pj ], [ %i.adp, %bb.og ]
  %i.aer = phi ptr [ %i.aih, %bb.qs ], [ %i.agv, %bb.pj ], [ %i.adq, %bb.og ]
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %bb.oh

bb.oj:                                            ; preds = %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17026
  store ptr %i.aem, ptr %i.adr, align 16, !noalias !17026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17026
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtNtB9_5table10DeltaTable14table_provider(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ael)
          to label %bb.ol unwind label %bb.ok, !noalias !17030

bb.ok:                                            ; preds = %bb.oj
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.ol:                                            ; preds = %bb.oj
  %i.aeu = invoke { ptr, ptr } @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_20TableProviderBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.af)
          to label %bb.oo unwind label %bb.on, !noalias !17030 ; 2 uses

bb.om:                                            ; preds = %bb.on, %bb.ok
  %.pn31.i278 = phi { ptr, i32 } [ %i.aev, %bb.on ], [ %i.aet, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  br label %bb.op

bb.on:                                            ; preds = %bb.ol
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.oo:                                            ; preds = %bb.ol
  %i.aew = extractvalue { ptr, ptr } %i.aeu, 0    ; 2 uses
  %i.aex = extractvalue { ptr, ptr } %i.aeu, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17026
  store ptr %i.aew, ptr %i.ads, align 8, !noalias !17026
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.aex, ptr %i.aey, align 16, !noalias !17026
  br label %bb.oq

bb.op:                                            ; preds = %bb.pf, %bb.oz, %.body163.i, %bb.om
  %i.aez = phi ptr [ %i.afl, %bb.oz ], [ %i.afl, %bb.pf ], [ %i.afl, %.body163.i ], [ %i.adp, %bb.om ]
  %i.afa = phi ptr [ %i.afm, %bb.oz ], [ %i.afm, %bb.pf ], [ %i.afm, %.body163.i ], [ %i.adq, %bb.om ]
  %.pn87.i = phi { ptr, i32 } [ %i.agi, %bb.oz ], [ %i.ags, %bb.pf ], [ %.pn35.i, %.body163.i ], [ %.pn31.i278, %bb.om ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17026
  br label %bb.pk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i259: ; preds = %bb.sy, %bb.sx, %bb.nx
  %i.afb = phi ptr [ %i.agu, %bb.sy ], [ %i.agu, %bb.sx ], [ %i.adn, %bb.nx ] ; 3 uses
  %i.afc = phi ptr [ %i.agv, %bb.sy ], [ %i.agv, %bb.sx ], [ %i.ado, %bb.nx ] ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.afe = load i8, ptr %i.afd, align 8, !range !270, !noalias !17026, !noundef !17
  %i.aff = trunc nuw i8 %i.afe to i1
  br i1 %i.aff, label %bb.ta, label %bb.mr

.body212.i:                                       ; preds = %bb.sv, %bb.su, %bb.qu, %bb.oh, %.body153.i
  %i.afg = phi ptr [ %i.abf, %.body153.i ], [ %i.aen, %bb.oh ], [ %i.ajj, %bb.qu ], [ %i.agu, %bb.sv ], [ %i.agu, %bb.su ] ; 2 uses
  %i.afh = phi ptr [ %i.abg, %.body153.i ], [ %i.aeo, %bb.oh ], [ %i.ajk, %bb.qu ], [ %i.agv, %bb.sv ], [ %i.agv, %bb.su ] ; 2 uses
  %.pn92.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.pn.pn.i, %.body153.i ], [ %.pn90.i, %bb.oh ], [ %i.ajl, %bb.qu ], [ %.pn.i.i258, %bb.sv ], [ %.pn.i.i258, %bb.su ] ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.afj = load i8, ptr %i.afi, align 8, !range !270, !noalias !17026, !noundef !17
  %i.afk = trunc nuw i8 %i.afj to i1
  br i1 %i.afk, label %bb.td, label %bb.mv

bb.oq:                                            ; preds = %bb.oo, %bb.lb
  %i.afl = phi ptr [ %i.ya, %bb.lb ], [ %i.adp, %bb.oo ] ; 6 uses
  %i.afm = phi ptr [ %i.xz, %bb.lb ], [ %i.adq, %bb.oo ] ; 5 uses
  %.val1.i158.i = phi ptr [ %.val1.i158.pre.i, %bb.lb ], [ %i.aex, %bb.oo ]
  %.val.i157.i = phi ptr [ %.val.i157.pre.i, %bb.lb ], [ %i.aew, %bb.oo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17026
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17037)
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.val1.i158.i, i64 24
  %i.afq = load ptr, ptr %i.afp, align 8, !invariant.load !17, !noalias !17125, !nonnull !17
  invoke void %i.afq(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noundef nonnull %.val.i157.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.or, !noalias !17030, !inline_history !16211

bb.or:                                            ; preds = %bb.oq
  %i.afr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17026
  %.val113.i = load ptr, ptr %i.afn, align 8, !noalias !17026
  %.val114.i = load ptr, ptr %i.afo, align 16, !noalias !17026, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val113.i, ptr nonnull %.val114.i) #37
          to label %.body163.i unwind label %bb.ms, !noalias !17030

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.oq
  %i.afs = load i64, ptr %i.ae, align 8, !range !1799, !noalias !17026, !noundef !17 ; 3 uses
  %i.aft = icmp eq i64 %i.afs, 21
  br i1 %i.aft, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  br label %.thread456

bb.ot:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !17026 ; 3 uses
  %.sroa.5249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5249.0.copyload.i = load ptr, ptr %.sroa.5249.0..sroa_idx.i, align 8, !noalias !17026 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17026
  %.val115.i = load ptr, ptr %i.afn, align 8, !noalias !17026 ; 5 uses
  %.val116.i = load ptr, ptr %i.afo, align 16, !noalias !17026, !nonnull !17, !align !187, !noundef !17 ; 5 uses
  %i.afu = load ptr, ptr %.val116.i, align 8, !invariant.load !17, !noalias !17030 ; 2 uses
  %.not.i.i160.i = icmp eq ptr %i.afu, null
  br i1 %.not.i.i160.i, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val115.i) ]
  invoke void %i.afu(ptr noundef nonnull %.val115.i)
          to label %bb.ov unwind label %bb.ow, !noalias !17030

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %i.afv = getelementptr inbounds nuw i8, ptr %.val116.i, i64 8
  %i.afw = load i64, ptr %i.afv, align 8, !range !95, !invariant.load !17, !noalias !17030 ; 2 uses
  %i.afx = icmp eq i64 %i.afw, 0
  br i1 %i.afx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i162.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i162.i: ; preds = %bb.ov
  %i.afy = getelementptr inbounds nuw i8, ptr %.val116.i, i64 16
  %i.afz = load i64, ptr %i.afy, align 8, !range !313, !invariant.load !17, !noalias !17030
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val115.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val115.i, i64 noundef %i.afw, i64 noundef range(i64 1, -9223372036854775807) %i.afz) #39, !noalias !17030
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ow:                                            ; preds = %bb.ou
  %i.aga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.val116.i, i64 8
  %i.agc = load i64, ptr %i.agb, align 8, !range !95, !invariant.load !17, !noalias !17030 ; 2 uses
  %i.agd = icmp eq i64 %i.agc, 0
  br i1 %i.agd, label %.body163.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i161.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i161.i: ; preds = %bb.ow
  %i.age = getelementptr inbounds nuw i8, ptr %.val116.i, i64 16
  %i.agf = load i64, ptr %i.age, align 8, !range !313, !invariant.load !17, !noalias !17030
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val115.i, i64 noundef %i.agc, i64 noundef range(i64 1, -9223372036854775807) %i.agf) #39, !noalias !17030
  br label %.body163.i

.body163.i:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i161.i, %bb.ow, %bb.or
  %.pn35.i = phi { ptr, i32 } [ %i.afr, %bb.or ], [ %i.aga, %bb.ow ], [ %i.aga, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i161.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  br label %bb.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i162.i, %bb.ov
  %.not.i.i270 = icmp eq i64 %i.afs, 20
  br i1 %.not.i.i270, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.4253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4253.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !17026
  store i64 %i.afs, ptr %i.j, align 8, !noalias !17126
  %.sroa.2251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.2251.0..sroa_idx.i, align 8, !noalias !17126
  %.sroa.3252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.5249.0.copyload.i, ptr %.sroa.3252.0..sroa_idx.i, align 8, !noalias !17126
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.pi unwind label %bb.oz, !noalias !17030

bb.oy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5249.0.copyload.i) ]
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.agh = load ptr, ptr %i.agg, align 16, !noalias !17026, !nonnull !17, !align !187, !noundef !17
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 5, ptr noundef nonnull %.sroa.3.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5249.0.copyload.i)
          to label %bb.pa unwind label %bb.oz, !noalias !17030

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %i.agi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  br label %bb.op

bb.pa:                                            ; preds = %bb.oy
  call void @llvm.experimental.noalias.scope.decl(metadata !17129)
  %i.agj = load i64, ptr %i.ag, align 8, !range !1787, !alias.scope !17132, !noalias !17134, !noundef !17 ; 2 uses
  %.not.i166.i = icmp eq i64 %i.agj, 20
  %i.agk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !alias.scope !17135, !noalias !17026 ; 4 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.agn = load ptr, ptr %i.agm, align 8, !alias.scope !17135, !noalias !17026 ; 2 uses
  br i1 %.not.i166.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %.sroa.14.0..sroa_idx237.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.4257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx237.i, i64 16, i1 false), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  store i64 %i.agj, ptr %i.i, align 8, !noalias !17136
  %.sroa.2255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.agl, ptr %.sroa.2255.0..sroa_idx.i, align 8, !noalias !17136
  %.sroa.3256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.agn, ptr %.sroa.3256.0..sroa_idx.i, align 8, !noalias !17136
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit168.i unwind label %bb.pf, !noalias !17030

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit168.i: ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17026
  br label %bb.ph

bb.pc:                                            ; preds = %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  store ptr %i.agl, ptr %i.ah, align 8, !noalias !17026
  %i.ago = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.agn, ptr %i.ago, align 8, !noalias !17026
  %i.agp = icmp eq ptr %i.agl, null
  br i1 %i.agp, label %bb.pg, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.agq = atomicrmw sub ptr %i.agl, i64 1 release, align 8, !noalias !17139
  %i.agr = icmp eq i64 %i.agq, 1
  br i1 %i.agr, label %bb.pe, label %bb.pg

bb.pe:                                            ; preds = %bb.pd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #41
          to label %bb.pg unwind label %bb.pf, !noalias !17030

bb.pf:                                            ; preds = %bb.pe, %bb.pb
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

bb.pg:                                            ; preds = %bb.pe, %bb.pd, %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17026
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr @207, ptr %i.agg, align 16, !noalias !17026
  store i64 39, ptr %i.afn, align 8, !noalias !17026
  %.sroa.10272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store ptr %i.agt, ptr %.sroa.10272.0..sroa_idx.i, align 16, !noalias !17026
  %.sroa.11273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3768
  store i8 0, ptr %.sroa.11273.0..sroa_idx.i, align 8, !noalias !17026
  br label %bb.pl

bb.ph:                                            ; preds = %bb.pi, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit168.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17026
  br label %bb.pj

bb.pi:                                            ; preds = %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17026
  br label %bb.ph

bb.pj:                                            ; preds = %bb.qe, %bb.ph
  %i.agu = phi ptr [ %i.aia, %bb.qe ], [ %i.afl, %bb.ph ] ; 6 uses
  %i.agv = phi ptr [ %i.aib, %bb.qe ], [ %i.afm, %bb.ph ] ; 6 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.agw)
          to label %bb.sr unwind label %bb.oi, !noalias !17030

bb.pk:                                            ; preds = %.body170.i, %bb.op
  %i.agx = phi ptr [ %i.aez, %bb.op ], [ %i.aid, %.body170.i ]
  %i.agy = phi ptr [ %i.afa, %bb.op ], [ %i.aie, %.body170.i ]
  %.pn87.pn.i = phi { ptr, i32 } [ %.pn87.i, %bb.op ], [ %.pn84.pn.i, %.body170.i ]
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.agz) #37
          to label %bb.oh unwind label %bb.ms, !noalias !17030

bb.pl:                                            ; preds = %bb.pg, %bb.lc
  %i.aha = phi ptr [ %i.afl, %bb.pg ], [ %i.ya, %bb.lc ] ; 6 uses
  %i.ahb = phi ptr [ %i.afm, %bb.pg ], [ %i.xz, %bb.lc ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !17026
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 captures(address) dereferenceable(336) %i.ac, ptr noundef nonnull align 16 %i.ahc, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.pn unwind label %bb.pm, !noalias !17030

bb.pm:                                            ; preds = %bb.pl
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17026
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ahc) #37
          to label %.body170.i unwind label %bb.ms, !noalias !17030

bb.pn:                                            ; preds = %bb.pl
  %i.ahe = load i64, ptr %i.ac, align 16, !range !13828, !noalias !17026, !noundef !17 ; 3 uses
  %i.ahf = icmp eq i64 %i.ahe, 37
  br i1 %i.ahf, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17026
  br label %.thread456

bb.pp:                                            ; preds = %bb.pn
  %.sroa.3276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3276.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3276.0..sroa_idx.i, i64 40, i1 false), !noalias !17026
  %.sroa.5277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5277.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5277.0..sroa_idx.i, i64 288, i1 false), !noalias !17026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17026
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.ahh = load i8, ptr %i.ahg, align 8, !range !3592, !noalias !17026, !noundef !17
  %cond.i.i = icmp eq i8 %i.ahh, 3
  br i1 %cond.i.i, label %bb.pq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.pq:                                            ; preds = %bb.pp
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 2372
  %i.ahk = load i8, ptr %i.ahj, align 4, !range !94, !noalias !17026, !noundef !17
  switch i8 %i.ahk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 4, label %bb.pu
    i8 3, label %bb.pr
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 3194
  %i.ahm = load i8, ptr %i.ahl, align 2, !range !3592, !noalias !17026, !noundef !17
  %cond.i.i.i.i = icmp eq i8 %i.ahm, 3
  br i1 %cond.i.i.i.i, label %bb.ps, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.ps:                                            ; preds = %bb.pr
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 2392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ahn)
          to label %bb.pt unwind label %.body.i.i.i, !noalias !17030

.body.i.i.i:                                      ; preds = %bb.ps
  %i.aho = landingpad { ptr, i32 }
          cleanup
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 3193
  store i8 0, ptr %i.ahp, align 1, !noalias !17026
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.ahi) #37
          to label %bb.py unwind label %bb.px, !noalias !17030

bb.pt:                                            ; preds = %bb.ps
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 3193
  store i8 0, ptr %i.ahq, align 1, !noalias !17026
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.pu:                                            ; preds = %bb.pq
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 2384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ahr)
          to label %bb.pw unwind label %bb.pz, !noalias !17030

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.pt, %bb.pr
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.ahi)
          to label %bb.pw unwind label %bb.pv, !noalias !17030

bb.pv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %bb.py

bb.pw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.pu
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 2371
  store i8 0, ptr %i.aht, align 1, !noalias !17026
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.px:                                            ; preds = %.body.i.i.i
  %i.ahu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17030
  unreachable

bb.py:                                            ; preds = %bb.pz, %bb.pv, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ahw, %bb.pz ], [ %i.ahs, %bb.pv ], [ %i.aho, %.body.i.i.i ]
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 2371
  store i8 0, ptr %i.ahv, align 1, !noalias !17026
  br label %.body170.i

end_hunk_3
begin_hunk_4_@_RNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable12try_from_url0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.add = icmp eq i64 %i.adc, 1
  br i1 %i.add, label %bb.ix, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ix:                                            ; preds = %bb.iw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ada) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.iz

bb.iy:                                            ; preds = %bb.iu, %bb.ir
  %i.ade = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.iz:                                            ; preds = %bb.ix
  %i.adf = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ja:                                            ; preds = %bb.p, %bb.jb
  %i.adg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.jb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.adh) #37
          to label %.body17 unwind label %bb.ja
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame19collect_partitioned0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.3.sroa.0.i = alloca [24 x i8], align 8   ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [256 x i8], align 8               ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [240 x i8], align 8               ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  %i.o = load i8, ptr %i.n, align 16, !range !94, !noundef !17
  switch i8 %i.o, label %default.unreachable83 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.c
    i8 4, label %bb.y
  ]

default.unreachable83:                            ; preds = %bb.as, %bb.ao, %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 673 ; 2 uses
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.r, align 2
  store i8 1, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.s, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame8task_ctx(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.s)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17588
  store i64 1, ptr %i.j, align 8, !noalias !17588
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.u, align 8, !noalias !17588
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(240) %i.m, i64 240, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !17591
  %i.w = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !17591 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.i, !prof !7

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #40
          to label %.noexc.i unwind label %bb.g, !noalias !17588

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.j) #37
          to label %.body unwind label %bb.h, !noalias !17588

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17588
  unreachable

.body:                                            ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit21

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef nonnull align 8 dereferenceable(256) %i.j, i64 256, i1 false), !noalias !17588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17588
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.w, ptr %i.aa, align 16
  store i8 1, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 0, ptr %i.p, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ab, ptr noundef nonnull align 16 dereferenceable(336) %i.s, i64 336, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1744
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 16
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit21: ; preds = %bb.cm, %bb.cn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.v, %.body
  %.pn11 = phi { ptr, i32 } [ %i.ay, %bb.v ], [ %.pn, %.body ], [ %.pn8.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %.pn8.pn, %bb.cn ], [ %.pn8.pn, %bb.cm ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !range !270, !noundef !17
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.cp, label %bb.co

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #42
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #42
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ah) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.w

bb.m:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 4 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame20create_physical_plan0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 16 %i.ah, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.k, align 8, !range !1799, !noundef !17 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 21
  br i1 %i.aj, label %bb.o, label %bb.p

common.ret:                                       ; preds = %bb.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.o
  %.sink = phi i8 [ 4, %bb.cg ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.o ]
  store i8 %.sink, ptr %i.n, align 16
  ret void

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.531.0.copyload = load ptr, ptr %.sroa.531.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7.sroa.2.0.copyload = load i64, ptr %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ah)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.r:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %i.ai, 20
  br i1 %.not.i, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.531.0.copyload) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 674
  store ptr %.sroa.3.0.copyload, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.531.0.copyload, ptr %i.al, align 8
  store i8 0, ptr %3, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ao = load ptr, ptr %i.an, align 16, !nonnull !17, !noundef !17
  store ptr %.sroa.3.0.copyload, ptr %i.ah, align 16
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 712
  store ptr %.sroa.531.0.copyload, ptr %.sroa.844.0..sroa_idx, align 8
  %.sroa.1046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %i.ao, ptr %.sroa.1046.0..sroa_idx, align 16
  %.sroa.1247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 794
  store i8 0, ptr %.sroa.1247.0..sroa_idx, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 794
  br label %bb.z

bb.s:                                             ; preds = %bb.ci, %.body15
  %.pn6 = phi { ptr, i32 } [ %i.fx, %bb.ci ], [ %eh.lpad-body16, %.body15 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.as = load i8, ptr %i.ar, align 2, !range !270, !noundef !17
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.t:                                             ; preds = %bb.r
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %4, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17594)
  call void @llvm.experimental.noalias.scope.decl(metadata !17597)
  %i.av = load ptr, ptr %i.au, align 16, !alias.scope !17600, !nonnull !17, !noundef !17
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !17600
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.u, %bb.t, %bb.cj
  %.sroa.051.0 = phi i64 [ %.sroa.087.1.i, %bb.cj ], [ %i.ai, %bb.t ], [ %i.ai, %bb.u ]
  %.sroa.352.0 = phi ptr [ %.sroa.4.i.sroa.0.0, %bb.cj ], [ %.sroa.3.0.copyload, %bb.t ], [ %.sroa.3.0.copyload, %bb.u ]
  %.sroa.553.0 = phi ptr [ %.sroa.4.i.sroa.6.0, %bb.cj ], [ %.sroa.531.0.copyload, %bb.t ], [ %.sroa.531.0.copyload, %bb.u ]
  %.sroa.654.0 = phi i64 [ %.sroa.4.i.sroa.7.0, %bb.cj ], [ %.sroa.7.sroa.0.0.copyload, %bb.t ], [ %.sroa.7.sroa.0.0.copyload, %bb.u ]
  %.sroa.755.0 = phi i64 [ %.sroa.788.1.i, %bb.cj ], [ %.sroa.7.sroa.2.0.copyload, %bb.t ], [ %.sroa.7.sroa.2.0.copyload, %bb.u ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.ba, align 1
  store i64 %.sroa.051.0, ptr %0, align 8
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.352.0, ptr %.sroa.352.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.553.0, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.654.0, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.755.0, ptr %.sroa.755.0..sroa_idx, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.cn, %bb.cl, %bb.cp, %.body15, %bb.l
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.l, %bb.q, %bb.ck, %bb.cl, %bb.s
  %.pn8.pn = phi { ptr, i32 } [ %.pn6, %bb.ck ], [ %.pn6, %bb.s ], [ %.pn6, %bb.cl ], [ %i.ak, %bb.q ], [ %i.ag, %bb.l ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.bc, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.be = load i8, ptr %i.bd, align 1, !range !270, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit21

bb.x:                                             ; preds = %bb.am, %bb.al
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %bb.ak, %bb.x
  %i.bh = phi ptr [ %i.bi, %bb.x ], [ %i.cw, %bb.ak ]
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.bg, %bb.x ], [ %.pn29.pn.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.bh) #37
          to label %bb.s unwind label %bb.w

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 794
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !3592, !noalias !17601
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 794 ; 6 uses
  switch i8 %.pre, label %default.unreachable83 [
    i8 0, label %bb.z
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.ao
  ]

bb.z:                                             ; preds = %.thread, %bb.y
  %i.bk = phi ptr [ %i.aq, %.thread ], [ %i.bj, %bb.y ] ; 5 uses
  %i.bl = phi ptr [ %i.ap, %.thread ], [ %i.bi, %bb.y ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 793 ; 3 uses
  store i8 0, ptr %i.bm, align 1, !noalias !17601
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  store i8 0, ptr %i.bn, align 8, !noalias !17601
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.bp = load ptr, ptr %i.bo, align 16, !noalias !17601, !nonnull !17, !noundef !17
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !17601, !nonnull !17, !align !187, !noundef !17
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.bt = load ptr, ptr %i.bs, align 16, !noalias !17601, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17601
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan26execute_stream_partitioned(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noundef nonnull %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.br, ptr noundef nonnull %i.bt)
          to label %bb.ab unwind label %bb.aa, !noalias !17605

bb.aa:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17601
  br label %bb.ak

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !17606)
  %i.bv = load i64, ptr %i.h, align 8, !range !1787, !alias.scope !17609, !noalias !17611, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bv, 20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %i.bw, align 8, !alias.scope !17612, !noalias !17601 ; 3 uses
  %.sroa.8.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.i.sroa.7.0.copyload = load ptr, ptr %.sroa.8.i.sroa.7.0..sroa_idx, align 8, !alias.scope !17612, !noalias !17601 ; 5 uses
  %.sroa.8.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.8.i.sroa.8.0.copyload = load i64, ptr %.sroa.8.i.sroa.8.0..sroa_idx, align 8, !alias.scope !17612, !noalias !17601 ; 4 uses
  br i1 %.not.i.i, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17601
  store ptr %.sroa.8.i.sroa.0.0.copyload, ptr %i.i, align 8, !noalias !17601
  %.sroa.8.i.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.8.i.sroa.7.0.copyload, ptr %.sroa.8.i.sroa.7.0..sroa_idx65, align 8, !noalias !17601
  %.sroa.8.i.sroa.8.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.8.i.sroa.8.0.copyload, ptr %.sroa.8.i.sroa.8.0..sroa_idx67, align 8, !noalias !17601
  store i8 1, ptr %i.bm, align 1, !noalias !17601
  %i.bx = invoke { ptr, i64 } @_RNvMs_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs2VbMhdeEr66_16delta_benchmarks()
          to label %bb.af unwind label %bb.ae, !noalias !17605 ; 2 uses

bb.ad:                                            ; preds = %bb.ai, %bb.ae
  %i.by = phi ptr [ %i.ct, %bb.ai ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.bz = phi ptr [ %i.cu, %bb.ai ], [ %i.ce, %bb.ae ] ; 2 uses
  %.pn21.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn.i, %bb.ai ], [ %i.cf, %bb.ae ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 793
  %i.cb = load i8, ptr %i.ca, align 1, !range !270, !noalias !17601, !noundef !17
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.cf, label %bb.ak

bb.ae:                                            ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.ac
  %i.cd = phi ptr [ %i.dq, %bb.cc ], [ %i.dq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.bk, %bb.ac ]
  %i.ce = phi ptr [ %i.dr, %bb.cc ], [ %i.dr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.bl, %bb.ac ]
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  %i.cg = ptrtoint ptr %.sroa.8.i.sroa.0.0.copyload to i64
  %i.ch = extractvalue { ptr, i64 } %i.bx, 0
  %i.ci = extractvalue { ptr, i64 } %i.bx, 1
  store ptr %i.ch, ptr %i.bl, align 8, !noalias !17601
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 %i.ci, ptr %i.cj, align 8, !noalias !17601
  store i8 0, ptr %i.bm, align 1, !noalias !17601
  %i.ck = icmp ult i64 %.sroa.8.i.sroa.8.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.i.sroa.7.0.copyload, i64 %.sroa.8.i.sroa.8.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17613
  store ptr %.sroa.8.i.sroa.7.0.copyload, ptr %i.d, align 8, !noalias !17620
  %.sroa.057.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.8.i.sroa.7.0.copyload, ptr %.sroa.057.sroa.5.0..sroa_idx.i, align 8, !noalias !17620
  %.sroa.057.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cg, ptr %.sroa.057.sroa.6.0..sroa_idx.i, align 8, !noalias !17620
  %.sroa.057.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cl, ptr %.sroa.057.sroa.7.0..sroa_idx.i, align 8, !noalias !17620
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtBa_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB12_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB12_6marker4SendEL_EEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB5K_8adapters9enumerateINtB6A_9EnumeratepEB5E_4fold9enumerateBX_uNCINvNvB5E_8for_each4callTjBX_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl, i64 noundef 0)
          to label %bb.ah unwind label %bb.ag, !noalias !17605

bb.ag:                                            ; preds = %bb.af
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.body40.i:                                        ; preds = %bb.ce, %bb.cd, %bb.bj, %bb.bi
  %i.cn = phi ptr [ %i.fo, %bb.ce ], [ %i.fo, %bb.cd ], [ %i.dq, %bb.bi ], [ %i.dq, %bb.bj ]
  %i.co = phi ptr [ %i.fp, %bb.ce ], [ %i.fp, %bb.cd ], [ %i.dr, %bb.bi ], [ %i.dr, %bb.bj ]
  %.pn21.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.i, %bb.ce ], [ %.pn21.pn.pn.pn.i, %bb.cd ], [ %i.ep, %bb.bi ], [ %i.ep, %bb.bj ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 792
  store i8 0, ptr %i.cp, align 8, !noalias !17601
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17613
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 0, ptr %i.cq, align 16, !alias.scope !17621, !noalias !17601
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 728
  store ptr inttoptr (i64 8 to ptr), ptr %i.cr, align 8, !alias.scope !17621, !noalias !17601
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 736
  store i64 0, ptr %i.cs, align 16, !alias.scope !17621, !noalias !17601
  store i8 1, ptr %i.bn, align 8, !noalias !17601
  br label %.thread105.i

bb.ai:                                            ; preds = %.body40.i, %bb.ag
  %i.ct = phi ptr [ %i.cn, %.body40.i ], [ %i.bk, %bb.ag ]
  %i.cu = phi ptr [ %i.co, %.body40.i ], [ %i.bl, %bb.ag ] ; 2 uses
  %.pn21.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.i, %.body40.i ], [ %i.cm, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_set7JoinSetTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cu) #37
          to label %bb.ad unwind label %bb.bu, !noalias !17605

bb.aj:                                            ; preds = %bb.ab
  %.sroa.10.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
end_hunk_4
begin_hunk_5_@_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame20create_physical_plan0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %bb.ad unwind label %.body.i8, !noalias !17711

.body.i8:                                         ; preds = %bb.ac
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7, i64 noundef 1680, i64 noundef 8) #39, !noalias !17711
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bu) #37
          to label %.body10 unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7, i64 noundef 1680, i64 noundef 8) #39, !noalias !17711
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bu)
          to label %common.ret unwind label %bb.af

bb.ae:                                            ; preds = %.body.i8
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.body10:                                          ; preds = %bb.af, %.body.i8, %bb.b
  %.pn4 = phi { ptr, i32 } [ %.pn2, %bb.b ], [ %i.by, %bb.af ], [ %i.bw, %.body.i8 ]
  store i8 2, ptr %i.d, align 16
  resume { ptr, i32 } %.pn4

bb.af:                                            ; preds = %bb.ad
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body10

bb.ag:                                            ; preds = %.body, %bb.b
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame7collect0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.533.i = alloca [16 x i8], align 8        ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 12 uses
  %i.h = alloca [240 x i8], align 8               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  %i.j = load i8, ptr %i.i, align 16, !range !94, !noundef !17
  switch i8 %i.j, label %default.unreachable66 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.c
    i8 4, label %bb.y
  ]

default.unreachable66:                            ; preds = %bb.ai, %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 673 ; 2 uses
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.m, align 2
  store i8 1, ptr %i.k, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.n, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame8task_ctx(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.n)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17714
  store i64 1, ptr %i.e, align 8, !noalias !17714
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !17714
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(240) %i.h, i64 240, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !17717
  %i.r = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !17717 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.i, !prof !7

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #40
          to label %.noexc.i unwind label %bb.g, !noalias !17714

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.e) #37
          to label %.body unwind label %bb.h, !noalias !17714

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17714
  unreachable

.body:                                            ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit20

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.r, ptr noundef nonnull align 8 dereferenceable(256) %i.e, i64 256, i1 false), !noalias !17714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17714
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.r, ptr %i.v, align 16
  store i8 1, ptr %i.l, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.k, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.w, ptr noundef nonnull align 16 dereferenceable(336) %i.n, i64 336, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1744
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 16
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit20: ; preds = %bb.bf, %bb.bg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.v, %.body
  %.pn11 = phi { ptr, i32 } [ %i.at, %bb.v ], [ %.pn, %.body ], [ %.pn8.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %.pn8.pn, %bb.bg ], [ %.pn8.pn, %bb.bf ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !range !270, !noundef !17
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.bi, label %bb.bh

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #42
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #42
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ac) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.w

bb.m:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame20create_physical_plan0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 16 %i.ac, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.f, align 8, !range !1799, !noundef !17 ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 21
  br i1 %i.ae, label %bb.o, label %bb.p

common.ret:                                       ; preds = %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.o
  %.sink = phi i8 [ 4, %bb.az ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.o ]
  store i8 %.sink, ptr %i.i, align 16
  ret void

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.530.0.copyload = load ptr, ptr %.sroa.530.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ac)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.r:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %i.ad, 20
  br i1 %.not.i, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.0.copyload) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 674
  store ptr %.sroa.3.0.copyload, ptr %i.g, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.530.0.copyload, ptr %i.ag, align 8
  store i8 0, ptr %3, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.aj = load ptr, ptr %i.ai, align 16, !nonnull !17, !noundef !17
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %.sroa.3.0.copyload, ptr %.sroa.741.0..sroa_idx, align 16
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %.sroa.530.0.copyload, ptr %.sroa.842.0..sroa_idx, align 8
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr %i.aj, ptr %.sroa.943.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 777
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 777
  br label %bb.z

bb.s:                                             ; preds = %bb.bb, %.body14
  %.pn6 = phi { ptr, i32 } [ %i.da, %bb.bb ], [ %eh.lpad-body15, %.body14 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.an = load i8, ptr %i.am, align 2, !range !270, !noundef !17
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %4, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17720)
  call void @llvm.experimental.noalias.scope.decl(metadata !17723)
  %i.aq = load ptr, ptr %i.ap, align 16, !alias.scope !17726, !nonnull !17, !noundef !17
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !17726
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.u, %bb.t, %bb.bc
  %.sroa.050.0 = phi i64 [ %.sroa.025.0.i, %bb.bc ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ]
  %.sroa.351.0 = phi ptr [ %.sroa.327.0.i, %bb.bc ], [ %.sroa.3.0.copyload, %bb.t ], [ %.sroa.3.0.copyload, %bb.u ]
  %.sroa.552.0 = phi ptr [ %.sroa.430.0.i, %bb.bc ], [ %.sroa.530.0.copyload, %bb.t ], [ %.sroa.530.0.copyload, %bb.u ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.av, align 1
  store i64 %.sroa.050.0, ptr %0, align 8
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.351.0, ptr %.sroa.351.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.552.0, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.i, i64 16, i1 false)
  br label %common.ret

bb.w:                                             ; preds = %bb.bg, %bb.be, %bb.bi, %.body14, %bb.l
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.l, %bb.q, %bb.bd, %bb.be, %bb.s
  %.pn8.pn = phi { ptr, i32 } [ %.pn6, %bb.bd ], [ %.pn6, %bb.s ], [ %.pn6, %bb.be ], [ %i.af, %bb.q ], [ %i.ab, %bb.l ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.ax, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.az = load i8, ptr %i.ay, align 1, !range !270, !noundef !17
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit20

bb.x:                                             ; preds = %bb.ag, %bb.af
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.ae, %bb.x
  %i.bc = phi ptr [ %i.bd, %bb.x ], [ %i.by, %bb.ae ]
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %.pn2.pn.i, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.bc) #37
          to label %bb.s unwind label %bb.w

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 777
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !3592, !noalias !17727
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 777 ; 4 uses
  switch i8 %.pre, label %default.unreachable66 [
    i8 0, label %bb.z
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ai
  ]

bb.z:                                             ; preds = %.thread, %bb.y
  %i.bf = phi ptr [ %i.al, %.thread ], [ %i.be, %bb.y ] ; 3 uses
  %i.bg = phi ptr [ %i.ak, %.thread ], [ %i.bd, %bb.y ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  store i8 0, ptr %i.bh, align 8, !noalias !17727
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.bj = load ptr, ptr %i.bi, align 16, !noalias !17727, !nonnull !17, !noundef !17
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !17727, !nonnull !17, !align !187, !noundef !17
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.bn = load ptr, ptr %i.bm, align 16, !noalias !17727, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17727
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.bl, ptr noundef nonnull %i.bn)
          to label %bb.ab unwind label %bb.aa, !noalias !17727

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17727
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !17731)
  %i.bp = load i64, ptr %i.d, align 8, !range !1787, !alias.scope !17734, !noalias !17736, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !17737, !noalias !17727 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !17737, !noalias !17727 ; 4 uses
  br i1 %.not.i.i, label %.thread.i, label %bb.ad

.thread.i:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17727
  store i8 0, ptr %i.bh, align 8, !noalias !17727
  store ptr %i.br, ptr %i.bg, align 8, !noalias !17727
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %i.bt, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !17727
  %.sroa.923.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  store i8 0, ptr %.sroa.923.0..sroa_idx.i, align 8, !noalias !17727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17727
  br label %bb.aj

bb.ac:                                            ; preds = %.body.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.bv = load i8, ptr %i.bu, align 8, !range !270, !noalias !17727, !noundef !17
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ay, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %.sroa.12.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx16.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17727
  store i8 0, ptr %i.bh, align 8, !noalias !17727
  br label %bb.ba

bb.ae:                                            ; preds = %bb.ay, %bb.ac, %bb.aa
  %i.bx = phi ptr [ %i.bf, %bb.aa ], [ %i.cb, %bb.ay ], [ %i.cb, %bb.ac ]
  %i.by = phi ptr [ %i.bg, %bb.aa ], [ %i.cc, %bb.ay ], [ %i.cc, %bb.ac ]
  %.pn2.pn.i = phi { ptr, i32 } [ %i.bo, %bb.aa ], [ %eh.lpad-body.i, %bb.ay ], [ %eh.lpad-body.i, %bb.ac ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i8 0, ptr %i.bz, align 8, !noalias !17727
  store i8 2, ptr %i.bx, align 1, !noalias !17727
  br label %.body14

bb.af:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #42
          to label %.noexc16 unwind label %bb.x

.noexc16:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #42
          to label %.noexc17 unwind label %bb.x

.noexc17:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ap, %bb.ao
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.an, %bb.ah
  %i.cb = phi ptr [ %i.be, %bb.ah ], [ %i.ck, %bb.an ] ; 2 uses
  %i.cc = phi ptr [ %i.bd, %bb.ah ], [ %i.cl, %bb.an ] ; 3 uses
  %.sroa.0.050.i = phi ptr [ undef, %bb.ah ], [ %.sroa.0.051.i, %bb.an ]
  %.sroa.9.046.i = phi ptr [ undef, %bb.ah ], [ %.sroa.9.047.i, %bb.an ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ca, %bb.ah ], [ %.pn.i.i, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17727
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.cc) #37
          to label %bb.ac unwind label %bb.ax, !noalias !17738

bb.ai:                                            ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !3592, !noalias !17739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17743)
  switch i8 %.pre.i, label %default.unreachable66 [
    i8 0, label %._crit_edge
    i8 1, label %bb.ao
    i8 2, label %bb.ap
    i8 3, label %bb.ak
  ]

._crit_edge:                                      ; preds = %bb.ai
  %.pre60 = load ptr, ptr %i.bd, align 16, !noalias !17739
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.pre62 = load ptr, ptr %.phi.trans.insert61, align 8, !noalias !17739
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %.thread.i
  %i.cd = phi ptr [ %i.bf, %.thread.i ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.ce = phi ptr [ %i.bg, %.thread.i ], [ %i.bd, %._crit_edge ] ; 2 uses
  %i.cf = phi ptr [ %i.bt, %.thread.i ], [ %.pre62, %._crit_edge ]
  %i.cg = phi ptr [ %i.br, %.thread.i ], [ %.pre60, %._crit_edge ]
  %i.ch = phi ptr [ %.sroa.923.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  %.sroa.0.053.i = phi ptr [ %i.br, %.thread.i ], [ undef, %._crit_edge ] ; 2 uses
  %.sroa.9.049.i = phi ptr [ %i.bt, %.thread.i ], [ undef, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17739
  invoke void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1t_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1t_6marker4SendEL_EEINtNtB1Z_3vec3VecB41_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf)
          to label %bb.am unwind label %bb.al, !noalias !17739

end_hunk_5
begin_hunk_6_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i28.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !17822, !noalias !17796, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i28.i.i, i64 noundef %.val.i.i27.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17826
  br label %bb.af

bb.aa:                                            ; preds = %bb.r, %.body.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17800
  unreachable

bb.ab:                                            ; preds = %select.unfold
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %.noexc32
  %i.cf = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %.val26 = load ptr, ptr %i.cf, align 8, !nonnull !17, !noundef !17
  %i.cg = getelementptr i8, ptr %i.bj, i64 -8
  %.val27 = load ptr, ptr %i.cg, align 8, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val27, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !313, !invariant.load !17
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = and i64 %i.cj, -16
  %i.cl = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !invariant.load !17, !nonnull !17
  %i.cp = invoke { ptr, ptr } %i.co(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @120, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.k)
          to label %bb.ae unwind label %bb.ad     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  %i.cr = extractvalue { ptr, ptr } %i.cp, 0      ; 2 uses
  %i.cs = extractvalue { ptr, ptr } %i.cp, 1      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store ptr %i.cs, ptr %i.cu, align 8
  br label %bb.ap

bb.af:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17796
  %i.cv = load <2 x ptr>, ptr %i.e, align 16, !noalias !17829
  %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx, align 16, !noalias !17829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17791
  %i.cx = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.cw, i64 0
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.af
  %.sroa.072.0 = phi i64 [ 10, %bb.af ], [ %i.dn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.cy = phi <2 x i64> [ %i.cx, %bb.af ], [ %i.dq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.cz = phi <2 x ptr> [ %i.cv, %bb.af ], [ %i.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.da, align 8, !range !95, !alias.scope !17830, !noundef !17 ; 2 uses
  %i.dc = icmp eq i64 %.val2.i.i, 0
  br i1 %i.dc, label %.body35, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %.val3.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !17837, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17838
  br label %.body35

bb.aj:                                            ; preds = %bb.ag
  %.val.i.i = load i64, ptr %i.da, align 8, !range !95, !alias.scope !17830, !noundef !17 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i, 0
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %.val1.i.i = load ptr, ptr %i.df, align 8, !alias.scope !17837, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17841
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit

.body:                                            ; preds = %bb.ad, %bb.ao, %bb.au, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %.body.i.i, %bb.w, %bb.x, %bb.ab, %.loopexit.split-lp, %.loopexit
  %.pn8.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.by, %bb.x ], [ %.pn.i.i, %.body.i.i ], [ %i.by, %bb.w ], [ %i.ce, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %i.dx, %bb.au ], [ %i.di, %bb.ao ], [ %i.dx, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.cq, %bb.ad ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg) #37
          to label %.body35 unwind label %bb.al

bb.al:                                            ; preds = %bb.f, %bb.ao, %.body, %.body35
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.ba, %.body35
  %.pn13 = phi { ptr, i32 } [ %i.em, %bb.ba ], [ %.pn11, %.body35 ], [ %i.y, %bb.g ], [ %i.v, %bb.d ], [ %i.y, %bb.f ]
  store i8 2, ptr %i.g, align 8
  resume { ptr, i32 } %.pn13

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #42
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #42
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val20 = load ptr, ptr %i.dj, align 8
  %.val21 = load ptr, ptr %i.dk, align 8, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val20, ptr nonnull %.val21) #37
          to label %.body unwind label %bb.al

bb.ap:                                            ; preds = %bb.b, %bb.ae
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.b ], [ %i.cs, %bb.ae ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.b ], [ %i.cr, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 1720 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17764)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !17, !noalias !17844, !nonnull !17
  invoke void %i.dm(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ao, !inline_history !16211

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ap
  %i.dn = load i64, ptr %i.f, align 8, !range !1799, !noundef !17 ; 3 uses
  %i.do = icmp eq i64 %i.dn, 21
  br i1 %i.do, label %bb.aq, label %bb.ar

common.ret:                                       ; preds = %bb.bb, %bb.aq
  %storemerge = phi i8 [ 3, %bb.aq ], [ 1, %bb.bb ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.aq:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.ar:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dp = load <2 x ptr>, ptr %.sroa.367.0..sroa_idx, align 8 ; 4 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dq = load <2 x i64>, ptr %.sroa.768.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val18 = load ptr, ptr %i.dj, align 8          ; 5 uses
  %.val19 = load ptr, ptr %i.dk, align 8, !nonnull !17, !align !187, !noundef !17 ; 5 uses
  %i.dr = load ptr, ptr %.val19, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i38, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  invoke void %i.dr(ptr noundef nonnull %.val18)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ds = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.at
  %i.dv = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !313, !invariant.load !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.au:                                            ; preds = %bb.as
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.au
  %i.eb = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) %i.ec) #39
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.at
  %.not.i41 = icmp eq i64 %i.dn, 20
  br i1 %.not.i41, label %bb.av, label %bb.ag

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ed = extractelement <2 x ptr> %i.dp, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.ee = extractelement <2 x ptr> %i.dp, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i42 = load i64, ptr %i.ef, align 8, !range !95, !alias.scope !17845, !noundef !17 ; 2 uses
  %i.eh = icmp eq i64 %.val2.i.i42, 0
  br i1 %i.eh, label %.body35, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %.val3.i.i43 = load ptr, ptr %i.ei, align 8, !alias.scope !17852, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i43, i64 noundef %.val2.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17853
  br label %.body35

bb.ay:                                            ; preds = %bb.av
  %.val.i.i45 = load i64, ptr %i.ef, align 8, !range !95, !alias.scope !17845, !noundef !17 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i45, 0
  br i1 %i.ej, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %.val1.i.i46 = load ptr, ptr %i.ek, align 8, !alias.scope !17852, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !17856
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49: ; preds = %bb.az, %bb.ay
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.el)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49
  %.sroa.072.1 = phi i64 [ %.sroa.072.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49 ]
  %i.en = phi <2 x i64> [ %i.cy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49 ]
  %i.eo = phi <2 x ptr> [ %i.cz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit49 ]
  store i64 %.sroa.072.1, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.eo, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.1075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.en, ptr %.sroa.1075.0..sroa_idx, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ak, %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ep)
          to label %bb.bb unwind label %bb.ba
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.825.i.i.i = alloca [24 x i8], align 8    ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 19 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [320 x i8], align 16              ; 5 uses
  %i.u = alloca [1680 x i8], align 8              ; 6 uses
  %i.v = alloca [336 x i8], align 16              ; 6 uses
  %i.w = alloca [320 x i8], align 16              ; 6 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.8277.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.am = alloca [48 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  %i.ao = alloca [8 x i8], align 8                ; 12 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.3272.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.7268.i.i = alloca [32 x i8], align 8     ; 7 uses
  %.sroa.5251.i.i = alloca [24 x i8], align 8     ; 7 uses
  %.sroa.8248.i.i = alloca [24 x i8], align 8     ; 11 uses
  %i.aq = alloca [320 x i8], align 16             ; 5 uses
  %i.ar = alloca [1680 x i8], align 8             ; 6 uses
  %i.as = alloca [336 x i8], align 16             ; 6 uses
  %i.at = alloca [320 x i8], align 16             ; 6 uses
  %i.au = alloca [336 x i8], align 16             ; 42 uses
  %i.av = alloca [336 x i8], align 16             ; 7 uses
  %i.aw = alloca [56 x i8], align 8               ; 8 uses
  %i.ax = alloca [336 x i8], align 16             ; 7 uses
  %i.ay = alloca [2016 x i8], align 16            ; 8 uses
  %i.az = alloca [336 x i8], align 16             ; 7 uses
  %i.ba = alloca [64 x i8], align 8               ; 7 uses
  %i.bb = alloca [336 x i8], align 16             ; 7 uses
  %i.bc = alloca [432 x i8], align 8              ; 8 uses
  %i.bd = alloca [336 x i8], align 16             ; 7 uses
  %i.be = alloca [432 x i8], align 8              ; 8 uses
  %i.bf = alloca [336 x i8], align 16             ; 7 uses
  %i.bg = alloca [56 x i8], align 8               ; 8 uses
  %i.bh = alloca [336 x i8], align 16             ; 7 uses
  %i.bi = alloca [56 x i8], align 8               ; 8 uses
  %i.bj = alloca [336 x i8], align 16             ; 7 uses
  %i.bk = alloca [528 x i8], align 8              ; 8 uses
  %i.bl = alloca [336 x i8], align 16             ; 7 uses
  %i.bm = alloca [3024 x i8], align 16            ; 8 uses
  %i.bn = alloca [336 x i8], align 16             ; 7 uses
  %i.bo = alloca [2152 x i8], align 8             ; 8 uses
  %i.bp = alloca [64 x i8], align 8               ; 7 uses
  %i.bq = alloca [320 x i8], align 16             ; 21 uses
  %i.br = alloca [200 x i8], align 8              ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 9 uses
  %i.bt = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.bu = alloca [40 x i8], align 8               ; 9 uses
  %i.bv = alloca [48 x i8], align 8               ; 10 uses
  %i.bw = alloca [48 x i8], align 8               ; 7 uses
  %i.bx = alloca [56 x i8], align 8               ; 7 uses
  %i.by = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %i.bz = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.433.i.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.734.i.i = alloca [272 x i8], align 16    ; 6 uses
  %.sroa.3.i.sroa.5.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.7.i = alloca [272 x i8], align 8 ; 6 uses
  %.sroa.826.i.sroa.8.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.826.i.sroa.9.i = alloca [272 x i8], align 8 ; 8 uses
  %i.ca = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cb = alloca [200 x i8], align 8              ; 11 uses
  %.sroa.784.i = alloca [32 x i8], align 16       ; 8 uses
  %.sroa.885.i = alloca [288 x i8], align 16      ; 6 uses
  %.sroa.18.sroa.6.i = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.18.sroa.7.i = alloca [288 x i8], align 8 ; 7 uses
  %i.cc = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.3.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.661.i = alloca [272 x i8], align 16      ; 6 uses
  %.sroa.857.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.958.i = alloca [272 x i8], align 16      ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 8, !range !3592, !noundef !17
  switch i8 %i.ce, label %default.unreachable66 [
    i8 0, label %.thread67
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable66:                            ; preds = %bb.mx, %bb.ky, %bb.dn, %bb.di, %bb.v, %bb.m, %bb.e, %bb.a
  unreachable

.thread67:                                        ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.cg = load ptr, ptr %i.cf, align 16, !nonnull !17, !align !187, !noundef !17
  %i.ch = load ptr, ptr %1, align 16, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !17
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store ptr %i.ch, ptr %.sroa.717.0..sroa_idx, align 16
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store i64 %i.cj, ptr %.sroa.818.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.cg, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1732
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1733
  store i24 65793, ptr %.sroa.13.0..sroa_idx, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.784.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.885.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.661.i)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1732
  br label %bb.f

.body12:                                          ; preds = %.body
  store i8 2, ptr %i.cd, align 8
end_hunk_6
begin_hunk_7_@_RNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge24prepare_source_and_table0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.pn45.pn = phi { ptr, i32 } [ %i.ng, %bb.hv ], [ %i.kn, %bb.ew ], [ %i.kj, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.ak) #37
          to label %.body176 unwind label %bb.aa

bb.hx:                                            ; preds = %.thread428, %bb.gz
  %.pn79.pn431 = phi { ptr, i32 } [ %.pn79, %.thread428 ], [ %.pn77.ph, %bb.gz ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.ao) #37
          to label %.body201 unwind label %bb.aa

bb.hy:                                            ; preds = %bb.em
  %i.nh = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  store i64 4, ptr %i.nh, align 16, !alias.scope !18564, !noalias !18567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hz:                                            ; preds = %bb.hp
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body196

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ie, %bb.id, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit198
  store i8 0, ptr %i.ik, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.nk = load i8, ptr %i.nj, align 1, !range !270, !noundef !17
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.if, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ia:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit198
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %bb.id unwind label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.nm, align 16, !range !95, !alias.scope !18569, !noundef !17 ; 2 uses
  %i.no = icmp eq i64 %.val2.i, 0
  br i1 %i.no, label %.body205, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.val3.i = load ptr, ptr %i.np, align 8, !alias.scope !18574, !nonnull !17, !noundef !17
  %i.nq = mul nuw i64 %.val2.i, 96
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18575
  br label %.body205

bb.id:                                            ; preds = %bb.ia
  %.val.i203 = load i64, ptr %i.nm, align 16, !range !95, !alias.scope !18569, !noundef !17 ; 2 uses
  %i.nr = icmp eq i64 %.val.i203, 0
  br i1 %i.nr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.val1.i204 = load ptr, ptr %i.ns, align 8, !alias.scope !18574, !nonnull !17, !noundef !17
  %i.nt = mul nuw i64 %.val.i203, 96
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i204, i64 noundef %i.nt, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18578
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.if:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %bb.ii unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.nv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i207 = load i64, ptr %i.nu, align 8, !range !95, !alias.scope !18581, !noundef !17 ; 2 uses
  %i.nw = icmp eq i64 %.val2.i207, 0
  br i1 %i.nw, label %.body211, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.val3.i208 = load ptr, ptr %i.nx, align 16, !alias.scope !18586, !nonnull !17, !noundef !17
  %i.ny = mul nuw i64 %.val2.i207, 40
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i208, i64 noundef %i.ny, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18587
  br label %.body211

bb.ii:                                            ; preds = %bb.if
  %.val.i209 = load i64, ptr %i.nu, align 8, !range !95, !alias.scope !18581, !noundef !17 ; 2 uses
  %i.nz = icmp eq i64 %.val.i209, 0
  br i1 %i.nz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.val1.i210 = load ptr, ptr %i.oa, align 16, !alias.scope !18586, !nonnull !17, !noundef !17
  %i.ob = mul nuw i64 %.val.i209, 40
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i210, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18590
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ik:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 650 ; 2 uses
  %i.od = load i8, ptr %i.oc, align 2, !range !270, !noundef !17
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.il, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ip, %bb.io, %bb.ik
  store i8 0, ptr %i.oc, align 2
  br label %bb.bf

bb.il:                                            ; preds = %bb.ik
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.of)
          to label %bb.io unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.of, align 16, !range !95, !alias.scope !18593, !noundef !17 ; 2 uses
  %i.oh = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.oh, label %.body213, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val3.i.i.i = load ptr, ptr %i.oi, align 8, !alias.scope !18602, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !18603
  br label %.body213

bb.io:                                            ; preds = %bb.il
  %.val.i.i.i = load i64, ptr %i.of, align 16, !range !95, !alias.scope !18593, !noundef !17 ; 2 uses
  %i.oj = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.oj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val1.i.i.i = load ptr, ptr %i.ok, align 8, !alias.scope !18602, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !18606
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.invoke: ; preds = %bb.bi, %bb.bj, %bb.gh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %1)
          to label %bb.gj unwind label %bb.h

bb.iq:                                            ; preds = %.body196
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.ay) #37
          to label %.body148 unwind label %bb.aa

bb.ir:                                            ; preds = %.body148
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ol) #37
          to label %.body205 unwind label %bb.aa

bb.is:                                            ; preds = %.body205
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 584
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.om) #37
          to label %.body211 unwind label %bb.aa

bb.it:                                            ; preds = %bb.bd
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.on) #37
          to label %.body213 unwind label %bb.aa

bb.iu:                                            ; preds = %.body213
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.oo) #37
          to label %bb.bk unwind label %bb.aa
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !17 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !18614 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !18614 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !18614 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !18614 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !17
  %i.t = load i8, ptr %i.r, align 1, !noundef !17
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !18609, !noalias !18612
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !18612, !noalias !18609
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !18609, !noalias !18612
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !18612, !noalias !18609
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBa_5table13TableProvider14scan_with_args0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !3592, !noundef !17
  switch i8 %i.c, label %default.unreachable56 [
    i8 0, label %bb.c
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.b
  ]

default.unreachable56:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !18615, !noalias !18618
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert50, align 8, !alias.scope !18615, !noalias !18618
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !187, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.g, align 8, !align !612, !noundef !17 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.i = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.i, align 8, !align !187, !noundef !17 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.j, align 8           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18621)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.val11, 3               ; 3 uses
  %i.m = icmp eq i64 %.val11, 0
  br i1 %i.m, label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !18624
  %i.n = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18624 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #40
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val10, i64 %i.l, i1 false), !noalias !18631
  br label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.g ], [ inttoptr (i64 8 to ptr), %bb.d ]
  store i64 %.val11, ptr %i.k, align 8, !alias.scope !18621, !noalias !18632
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !18621, !noalias !18632
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !18621, !noalias !18632
  %i.p = icmp eq i64 %.val11, -9223372036854775808
  %i.q = select i1 %i.p, ptr null, ptr %i.k
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !18621, !noalias !18632
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.j:                                             ; preds = %bb.h, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.not.i15 = phi ptr [ null, %bb.h ], [ %i.q, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %.val12 = load i64, ptr %i.f, align 8, !range !260, !noundef !17
  %i.s = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !17, !align !187, !noundef !17
  %i.x = invoke { ptr, ptr } @_RNvXs3_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtB9_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i15, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.z = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.p

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.u, %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.ae, %bb.o ], [ %i.as, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.y, %bb.k ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #37
          to label %.body19 unwind label %bb.af

.body19:                                          ; preds = %bb.ac, %bb.ad, %bb.y, %bb.x, %bb.i, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bl, %bb.ac ], [ %.pn, %.body ], [ %i.r, %bb.i ], [ %i.bc, %bb.y ], [ %i.bl, %bb.ad ], [ %i.bc, %bb.x ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn3

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #42
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #42
  unreachable

bb.o:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %i.af, align 8
  %.val7 = load ptr, ptr %i.ag, align 8, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val6, ptr nonnull %.val7) #37
          to label %.body unwind label %bb.af

bb.p:                                             ; preds = %bb.b, %bb.l
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.b ], [ %i.aa, %bb.l ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.b ], [ %i.z, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18615)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !17, !noalias !18633, !nonnull !17
  invoke void %i.ai(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.o, !inline_history !17709

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.p
  %i.aj = load i64, ptr %i.a, align 8, !range !1799, !noundef !17 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 21
  br i1 %i.ak, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.q:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load <2 x ptr>, ptr %.sroa.343.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.af, align 8            ; 5 uses
  %.val5 = load ptr, ptr %i.ag, align 8, !nonnull !17, !align !187, !noundef !17 ; 5 uses
  %i.am = load ptr, ptr %.val5, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.am(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !313, !invariant.load !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %i.ar) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.ax) #39
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.t
  %.not.i18 = icmp eq i64 %i.aj, 20
  br i1 %.not.i18, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ay = extractelement <2 x ptr> %i.al, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.az = extractelement <2 x ptr> %i.al, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ba = load i64, ptr %3, align 8, !range !188, !alias.scope !18634, !noundef !17
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !range !95, !alias.scope !18637, !noundef !17 ; 2 uses
  %i.bd = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bd, label %.body19, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i = load ptr, ptr %i.be, align 8, !alias.scope !18642, !nonnull !17, !noundef !17
  %i.bf = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18643
  br label %.body19

bb.z:                                             ; preds = %bb.w
  %.val.i.i = load i64, ptr %3, align 8, !range !95, !alias.scope !18637, !noundef !17 ; 2 uses
  %i.bg = icmp eq i64 %.val.i.i, 0
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split: ; preds = %bb.z, %bb.ae
  %.val.i.i24.sink = phi i64 [ %.val.i.i24, %bb.ae ], [ %.val.i.i, %bb.z ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val1.i.i25 = load ptr, ptr %i.bh, align 8, !nonnull !17, !noundef !17
  %i.bi = shl nuw i64 %.val.i.i24.sink, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i25, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !17
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split, %bb.ae, %bb.aa, %bb.z, %bb.v
  store i64 %i.aj, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.al, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bj = load i64, ptr %4, align 8, !range !188, !alias.scope !18646, !noundef !17
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i21 = load i64, ptr %4, align 8, !range !95, !alias.scope !18649, !noundef !17 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i21, 0
  br i1 %i.bm, label %.body19, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i22 = load ptr, ptr %i.bn, align 8, !alias.scope !18654, !nonnull !17, !noundef !17
  %i.bo = shl nuw i64 %.val2.i.i21, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i22, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !18655
  br label %.body19

bb.ae:                                            ; preds = %bb.ab
  %.val.i.i24 = load i64, ptr %4, align 8, !range !95, !alias.scope !18649, !noundef !17 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i24, 0
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split

bb.af:                                            ; preds = %bb.o, %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array9into_dataCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBb_5types9Int32TypeENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array9into_dataCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !align !187, !noundef !17 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !1395, !noundef !17
  %switch.offset = sub nuw nsw i64 5, %i.j
  %i.k = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  tail call void @llvm.assume(i1 %i.l)
  %.not72 = icmp samesign ugt i64 %switch.offset, %i.k
  br i1 %.not72, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.j, %bb.n, %switch.lookup, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  store i64 5, ptr %i.e, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.771.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !17, !nonnull !17
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #43
  br i1 %i.r, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 8, !range !283, !noundef !17
  %.not73 = icmp eq i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !noundef !17 ; 2 uses
  %.not76 = icmp eq ptr %i.u, null
  br i1 %.not76, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !noundef !17 ; 2 uses
  %.not74 = icmp eq ptr %i.v, null
  br i1 %.not74, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.540.sroa.5.0 = phi i64 [ %i.x, %bb.g ], [ undef, %bb.e ]
  %.sroa.039.0 = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !noundef !17 ; 2 uses
  %.not77 = icmp eq ptr %i.z, null
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.6.sroa.5.0 = phi i64 [ undef, %bb.h ], [ %i.ab, %bb.i ]
  %.sroa.031.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !8407, !noundef !17
  store i64 %i.ae, ptr %i.c, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.028.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.028.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = load <2 x i32>, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  store ptr @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.af, align 8
  store ptr @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 %.sroa.039.0, ptr %i.d, align 8
  store ptr %i.u, ptr %.sroa.028.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.540.sroa.5.0, ptr %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.031.0, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.028.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.6.sroa.5.0, ptr %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.530.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  store <2 x i32> %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @218, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !17, !nonnull !17
  call void %i.ai(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.sroa.568.sroa.5.0 = phi i64 [ %i.ak, %bb.k ], [ undef, %bb.f ]
  %.sroa.067.0 = phi i64 [ 1, %bb.k ], [ 2, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !noundef !17 ; 2 uses
  %.not75 = icmp eq ptr %i.am, null
  br i1 %.not75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ao = load i64, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.663.sroa.5.0 = phi i64 [ undef, %bb.l ], [ %i.ao, %bb.m ]
  %.sroa.058.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.067.0, ptr %i.a, align 8
  %.sroa.049.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.049.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aq = load <2 x i32>, ptr %i.ap, align 8
  store ptr %i.v, ptr %.sroa.049.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.568.sroa.5.0, ptr %.sroa.049.sroa.3.sroa.3.0..sroa.049.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.058.0, ptr %.sroa.049.sroa.4.0..sroa_idx, align 8
  store ptr %i.am, ptr %.sroa.049.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.663.sroa.5.0, ptr %.sroa.049.sroa.6.sroa.3.0..sroa.049.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.551.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.752.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.853.0..sroa_idx, align 8
  store <2 x i32> %i.aq, ptr %.sroa.954.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.1356.0..sroa_idx, align 8
  %.sroa.1557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %4, ptr %.sroa.1557.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !17, !nonnull !17
  call void %i.as(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a) #43
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18665
  store i32 2, ptr %i.a, align 8, !noalias !18665
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18665
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18668
  store i64 %i.l, ptr %i.g, align 8, !noalias !18677
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !18677
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !18677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18677
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !18678

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18668
  store i32 2, ptr %i.f, align 8, !noalias !18668
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !18668

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !18668
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18668
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !18677 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18677
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18668
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.497.0.copyload.i.i = load i64, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !18677
  %i.u = load <2 x i64>, ptr %i.h, align 16, !noalias !18677
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !18677 ; 2 uses
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.698.0.copyload.i.i = load ptr, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !18677 ; 2 uses
  %.sroa.799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load <2 x i64>, ptr %.sroa.799.0..sroa_idx.i.i, align 16, !noalias !18677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18677
  switch i64 %.sroa.497.0.copyload.i.i, label %bb.h [
    i64 22, label %bb.g
    i64 21, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ], !prof !18679

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0123.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0122.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.698.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0123.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0122.i.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !range !8407, !noalias !18677, !noundef !17
  %i.y = ptrtoint ptr %.sroa.10.0122.i.i to i64
  %i.z = inttoptr i64 %i.x to ptr
  %i.aa = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.y, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %i.z, %bb.g ], [ %.sroa.5.0.copyload.i.i, %bb.f ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.8.0123.i.i, %bb.g ], [ %.sroa.698.0.copyload.i.i, %bb.f ]
  %i.ab = phi <2 x i64> [ <i64 undef, i64 21>, %bb.g ], [ %i.u, %bb.f ]
  %i.ac = phi <2 x i64> [ %i.aa, %bb.g ], [ %i.v, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18680
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !noalias !18677
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !18677
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18677
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ac, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !18677
  store i32 1, ptr %i.e, align 8, !noalias !18680
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread127.i.i unwind label %bb.i, !noalias !18677

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !18677 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18677
  unreachable

.thread127.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18680
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !17, !noalias !18677 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.o, !noalias !18677

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !95, !invariant.load !17, !noalias !18677 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.u, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !313, !invariant.load !17, !noalias !18677
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #39, !noalias !18677
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !95, !invariant.load !17, !noalias !18677 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !313, !invariant.load !17, !noalias !18677
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #39, !noalias !18677
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.o
  resume { ptr, i32 } %i.aq

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.t unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.63.0.i.i = phi ptr [ null, %bb.s ], [ %i.bb, %bb.t ]
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.s ], [ %i.bc, %bb.t ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f
  %i.bd = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bd, label %default.unreachable [
    i8 3, label %bb.v
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12
    i8 1, label %bb.aa
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.n, %bb.k, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.v:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.z unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

bb.z:                                             ; preds = %bb.w
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8: ; preds = %bb.y, %bb.z
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.y ], [ %i.bi, %bb.z ]
  %.sroa.8.0.i3.i = phi ptr [ undef, %bb.y ], [ %i.bj, %bb.z ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i6.i, align 8
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.02.0.i5.i, ptr %.sroa.5.0..sroa_idx.i7.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.8.0.i3.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18695
  store i32 2, ptr %i.a, align 8, !noalias !18695
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18695
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18698
  store i64 %i.l, ptr %i.g, align 8, !noalias !18707
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !18707
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !18707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18707
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !18708

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18698
  store i32 2, ptr %i.f, align 8, !noalias !18698
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !18698

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !18698
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18698
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !18707 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18707
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18698
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.497.0.copyload.i.i = load i64, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !18707
  %i.u = load <2 x i64>, ptr %i.h, align 16, !noalias !18707
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !18707 ; 2 uses
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.698.0.copyload.i.i = load ptr, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !18707 ; 2 uses
  %.sroa.799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load <2 x i64>, ptr %.sroa.799.0..sroa_idx.i.i, align 16, !noalias !18707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18707
  switch i64 %.sroa.497.0.copyload.i.i, label %bb.h [
    i64 22, label %bb.g
    i64 21, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ], !prof !18679

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0123.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0122.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.698.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0123.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0122.i.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !range !8407, !noalias !18707, !noundef !17
  %i.y = ptrtoint ptr %.sroa.10.0122.i.i to i64
  %i.z = inttoptr i64 %i.x to ptr
  %i.aa = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.y, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %i.z, %bb.g ], [ %.sroa.5.0.copyload.i.i, %bb.f ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.8.0123.i.i, %bb.g ], [ %.sroa.698.0.copyload.i.i, %bb.f ]
  %i.ab = phi <2 x i64> [ <i64 undef, i64 21>, %bb.g ], [ %i.u, %bb.f ]
  %i.ac = phi <2 x i64> [ %i.aa, %bb.g ], [ %i.v, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18709
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !noalias !18707
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !18707
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18707
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ac, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !18707
  store i32 1, ptr %i.e, align 8, !noalias !18709
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread127.i.i unwind label %bb.i, !noalias !18707

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !18707 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18707
  unreachable

.thread127.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18709
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !17, !noalias !18707 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.o, !noalias !18707

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !95, !invariant.load !17, !noalias !18707 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.u, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !313, !invariant.load !17, !noalias !18707
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #39, !noalias !18707
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !95, !invariant.load !17, !noalias !18707 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !313, !invariant.load !17, !noalias !18707
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #39, !noalias !18707
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.o
  resume { ptr, i32 } %i.aq

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.t unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.63.0.i.i = phi ptr [ null, %bb.s ], [ %i.bb, %bb.t ]
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.s ], [ %i.bc, %bb.t ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f
  %i.bd = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bd, label %default.unreachable [
    i8 3, label %bb.v
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12
    i8 1, label %bb.aa
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.n, %bb.k, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.v:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.z unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

bb.z:                                             ; preds = %bb.w
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8: ; preds = %bb.y, %bb.z
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.y ], [ %i.bi, %bb.z ]
  %.sroa.8.0.i3.i = phi ptr [ undef, %bb.y ], [ %i.bj, %bb.z ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i6.i, align 8
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.02.0.i5.i, ptr %.sroa.5.0..sroa_idx.i7.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.8.0.i3.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
end_hunk_9
begin_hunk_10_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18724
  store i32 2, ptr %i.a, align 8, !noalias !18724
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18724
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtB1m_9scheduler14current_thread6HandleEEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18727
  store i64 %i.l, ptr %i.g, align 8, !noalias !18736
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !18736
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !18736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18736
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !18737

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18727
  store i32 2, ptr %i.f, align 8, !noalias !18727
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !18727

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !18727
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18727
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !18736 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18736
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18727
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.497.0.copyload.i.i = load i64, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !18736
  %i.u = load <2 x i64>, ptr %i.h, align 16, !noalias !18736
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !18736 ; 2 uses
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.698.0.copyload.i.i = load ptr, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !18736 ; 2 uses
  %.sroa.799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load <2 x i64>, ptr %.sroa.799.0..sroa_idx.i.i, align 16, !noalias !18736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18736
  switch i64 %.sroa.497.0.copyload.i.i, label %bb.h [
    i64 22, label %bb.g
    i64 21, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ], !prof !18679

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0123.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0122.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.698.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0123.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0122.i.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !range !8407, !noalias !18736, !noundef !17
  %i.y = ptrtoint ptr %.sroa.10.0122.i.i to i64
  %i.z = inttoptr i64 %i.x to ptr
  %i.aa = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.y, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %i.z, %bb.g ], [ %.sroa.5.0.copyload.i.i, %bb.f ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.8.0123.i.i, %bb.g ], [ %.sroa.698.0.copyload.i.i, %bb.f ]
  %i.ab = phi <2 x i64> [ <i64 undef, i64 21>, %bb.g ], [ %i.u, %bb.f ]
  %i.ac = phi <2 x i64> [ %i.aa, %bb.g ], [ %i.v, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18738
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !noalias !18736
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !18736
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18736
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ac, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !18736
  store i32 1, ptr %i.e, align 8, !noalias !18738
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread127.i.i unwind label %bb.i, !noalias !18736

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !18736 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18736
  unreachable

.thread127.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18738
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !17, !noalias !18736 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.o, !noalias !18736

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !95, !invariant.load !17, !noalias !18736 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.u, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !313, !invariant.load !17, !noalias !18736
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #39, !noalias !18736
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !95, !invariant.load !17, !noalias !18736 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !313, !invariant.load !17, !noalias !18736
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #39, !noalias !18736
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.o
  resume { ptr, i32 } %i.aq

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.t unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.63.0.i.i = phi ptr [ null, %bb.s ], [ %i.bb, %bb.t ]
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.s ], [ %i.bc, %bb.t ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f
  %i.bd = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bd, label %default.unreachable [
    i8 3, label %bb.v
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12
    i8 1, label %bb.aa
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.n, %bb.k, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.v:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.z unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

bb.z:                                             ; preds = %bb.w
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8: ; preds = %bb.y, %bb.z
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.y ], [ %i.bi, %bb.z ]
  %.sroa.8.0.i3.i = phi ptr [ undef, %bb.y ], [ %i.bj, %bb.z ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i6.i, align 8
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.02.0.i5.i, ptr %.sroa.5.0..sroa_idx.i7.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.8.0.i3.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
end_hunk_10
begin_hunk_11_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18753
  store i32 2, ptr %i.a, align 8, !noalias !18753
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18753
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBH_IB26_IBH_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtBL_4sync3ArcNtNtNtNtB1m_9scheduler12multi_thread6handle6HandleEEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18756
  store i64 %i.l, ptr %i.g, align 8, !noalias !18765
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !18765
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !18765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18765
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !18766

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18756
  store i32 2, ptr %i.f, align 8, !noalias !18756
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !18756

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !18756
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18756
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !18765 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18765
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18756
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.497.0.copyload.i.i = load i64, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !18765
  %i.u = load <2 x i64>, ptr %i.h, align 16, !noalias !18765
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !18765 ; 2 uses
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.698.0.copyload.i.i = load ptr, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !18765 ; 2 uses
  %.sroa.799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = load <2 x i64>, ptr %.sroa.799.0..sroa_idx.i.i, align 16, !noalias !18765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18765
  switch i64 %.sroa.497.0.copyload.i.i, label %bb.h [
    i64 22, label %bb.g
    i64 21, label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ], !prof !18679

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0123.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0122.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.698.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0123.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0122.i.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !range !8407, !noalias !18765, !noundef !17
  %i.y = ptrtoint ptr %.sroa.10.0122.i.i to i64
  %i.z = inttoptr i64 %i.x to ptr
  %i.aa = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.y, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %i.z, %bb.g ], [ %.sroa.5.0.copyload.i.i, %bb.f ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.8.0123.i.i, %bb.g ], [ %.sroa.698.0.copyload.i.i, %bb.f ]
  %i.ab = phi <2 x i64> [ <i64 undef, i64 21>, %bb.g ], [ %i.u, %bb.f ]
  %i.ac = phi <2 x i64> [ %i.aa, %bb.g ], [ %i.v, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18767
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !noalias !18765
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !18765
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18765
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ac, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !18765
  store i32 1, ptr %i.e, align 8, !noalias !18767
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %.thread127.i.i unwind label %bb.i, !noalias !18765

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.af)
          to label %bb.k unwind label %bb.j, !noalias !18765 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18765
  unreachable

.thread127.i.i:                                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18767
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1      ; 6 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !17, !noalias !18765 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ak(ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.o, !noalias !18765

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !95, !invariant.load !17, !noalias !18765 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.u, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !313, !invariant.load !17, !noalias !18765
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #39, !noalias !18765
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !95, !invariant.load !17, !noalias !18765 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !313, !invariant.load !17, !noalias !18765
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #39, !noalias !18765
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.o
  resume { ptr, i32 } %i.aq

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.t unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.63.0.i.i = phi ptr [ null, %bb.s ], [ %i.bb, %bb.t ]
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.s ], [ %i.bc, %bb.t ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f
  %i.bd = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bd, label %default.unreachable [
    i8 3, label %bb.v
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12
    i8 1, label %bb.aa
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.n, %bb.k, %.thread127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.v:                                             ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.z unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

bb.z:                                             ; preds = %bb.w
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputTjINtNtB19_6result6ResultINtNtB1F_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8: ; preds = %bb.y, %bb.z
  %.sroa.63.0.i2.i = phi ptr [ null, %bb.y ], [ %i.bi, %bb.z ]
  %.sroa.8.0.i3.i = phi ptr [ undef, %bb.y ], [ %i.bj, %bb.z ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.4.0..sroa_idx.i6.i, align 8
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.02.0.i5.i, ptr %.sroa.5.0..sroa_idx.i7.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.8.0.i3.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i9.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
end_hunk_11
begin_hunk_12_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18782
  store i32 2, ptr %i.a, align 16, !noalias !18782
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18782
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 8 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 8 uses
  %i.e = alloca [112 x i8], align 16              ; 9 uses
  %i.f = alloca [112 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.7.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.12.sroa.5.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.v, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18785
  store ptr %i.i, ptr %i.g, align 8, !noalias !18794
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !18794
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !18794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18794
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !18795

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18785
  store i32 2, ptr %i.f, align 16, !noalias !18785
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !18785

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !18785
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18785
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !18794 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18794
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18785
  %.sroa.086.0.copyload.i.i = load i64, ptr %i.h, align 16, !noalias !18794 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !18794 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !18794 ; 2 uses
  %.sroa.688.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load <2 x i64>, ptr %.sroa.688.0..sroa_idx.i.i, align 8, !noalias !18794
  %.sroa.889.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.889.0..sroa_idx.i.i, i64 56, i1 false), !noalias !18794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18794
  switch i64 %.sroa.086.0.copyload.i.i, label %bb.h [
    i64 -9223372036854775741, label %bb.g
    i64 -9223372036854775742, label %bb.v
  ], !prof !18679

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0108.i.i = phi ptr [ %i.r, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0107.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0108.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0107.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 16, !range !8407, !noalias !18794, !noundef !17
  %i.w = ptrtoint ptr %.sroa.10.0107.i.i to i64
  %i.x = inttoptr i64 %i.v to ptr
  %i.y = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.w, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, i64 56, i1 false), !noalias !18794
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ %i.x, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.h ], [ %.sroa.8.0108.i.i, %bb.g ]
  %.sroa.012.0.i.i = phi i64 [ %.sroa.086.0.copyload.i.i, %bb.h ], [ -9223372036854775742, %bb.g ]
  %i.z = phi <2 x i64> [ %i.t, %bb.h ], [ %i.y, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18796
  store i64 %.sroa.012.0.i.i, ptr %i.aa, align 16, !noalias !18794
  %.sroa.684.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.684.0..sroa_idx.i.i, align 8, !noalias !18794
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !18794
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.z, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18794
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, i64 56, i1 false), !noalias !18794
  store i32 1, ptr %i.e, align 16, !noalias !18796
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.e)
          to label %.thread112.i.i unwind label %bb.j, !noalias !18794

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !noalias !18794 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18794
  unreachable

.thread112.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18796
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !17, !noalias !18794 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.p, !noalias !18794

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !95, !invariant.load !17, !noalias !18794 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.w, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !313, !invariant.load !17, !noalias !18794
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #39, !noalias !18794
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !95, !invariant.load !17, !noalias !18794 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !313, !invariant.load !17, !noalias !18794
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #39, !noalias !18794
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.p
  resume { ptr, i32 } %i.an

bb.q:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.u unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.u:                                             ; preds = %bb.r
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.t ], [ %i.az, %bb.u ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.t ], [ %i.ay, %bb.u ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 16, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -9223372036854775742, ptr %i.ba, align 16
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  %i.bb = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bb, label %default.unreachable [
    i8 3, label %bb.x
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12
    i8 1, label %bb.ac
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.w:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.o, %bb.l, %.thread112.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bd)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

bb.ab:                                            ; preds = %bb.y
  %i.bg = extractvalue { ptr, ptr } %i.be, 0
  %i.bh = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8: ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.aa ], [ %i.bh, %bb.ab ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.aa ], [ %i.bg, %bb.ab ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 16, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775742, ptr %i.bi, align 16
end_hunk_12
begin_hunk_13_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18848
  store i32 2, ptr %i.a, align 16, !noalias !18848
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18848
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 16              ; 4 uses
  %i.b = alloca [208 x i8], align 16              ; 8 uses
  %i.c = alloca [208 x i8], align 16              ; 4 uses
  %i.d = alloca [208 x i8], align 16              ; 8 uses
  %i.e = alloca [208 x i8], align 16              ; 9 uses
  %i.f = alloca [208 x i8], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.7.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.12.sroa.5.sroa.5.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.v, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18851
  store ptr %i.i, ptr %i.g, align 8, !noalias !18860
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !18860
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !18860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18860
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !18861

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18851
  store i32 2, ptr %i.f, align 16, !noalias !18851
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !18851

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !18851
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18851
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !18860 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18860
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18851
  %.sroa.086.0.copyload.i.i = load i64, ptr %i.h, align 16, !noalias !18860 ; 2 uses
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.487.0.copyload.i.i = load ptr, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !18860 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !18860 ; 2 uses
  %.sroa.688.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load <2 x i64>, ptr %.sroa.688.0..sroa_idx.i.i, align 8, !noalias !18860
  %.sroa.889.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.889.0..sroa_idx.i.i, i64 56, i1 false), !noalias !18860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18860
  switch i64 %.sroa.086.0.copyload.i.i, label %bb.h [
    i64 -9223372036854775741, label %bb.g
    i64 -9223372036854775742, label %bb.v
  ], !prof !18679

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.0108.i.i = phi ptr [ %i.r, %.thread.i.i ], [ %.sroa.487.0.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.10.0107.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0108.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0107.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 16, !range !8407, !noalias !18860, !noundef !17
  %i.w = ptrtoint ptr %.sroa.10.0107.i.i to i64
  %i.x = inttoptr i64 %i.v to ptr
  %i.y = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.w, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i, i64 56, i1 false), !noalias !18860
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.0.0.i.i = phi ptr [ %.sroa.487.0.copyload.i.i, %bb.h ], [ %i.x, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.h ], [ %.sroa.8.0108.i.i, %bb.g ]
  %.sroa.012.0.i.i = phi i64 [ %.sroa.086.0.copyload.i.i, %bb.h ], [ -9223372036854775742, %bb.g ]
  %i.z = phi <2 x i64> [ %i.t, %bb.h ], [ %i.y, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18862
  store i64 %.sroa.012.0.i.i, ptr %i.aa, align 16, !noalias !18860
  %.sroa.684.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.684.0..sroa_idx.i.i, align 8, !noalias !18860
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 16, !noalias !18860
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.z, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18860
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i, i64 56, i1 false), !noalias !18860
  store i32 1, ptr %i.e, align 16, !noalias !18862
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.e)
          to label %.thread112.i.i unwind label %bb.j, !noalias !18860

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !noalias !18860 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !18860
  unreachable

.thread112.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18862
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !17, !noalias !18860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.p, !noalias !18860

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !95, !invariant.load !17, !noalias !18860 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.w, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !313, !invariant.load !17, !noalias !18860
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #39, !noalias !18860
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !95, !invariant.load !17, !noalias !18860 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !313, !invariant.load !17, !noalias !18860
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #39, !noalias !18860
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.p
  resume { ptr, i32 } %i.an

bb.q:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.c)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.u unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.u:                                             ; preds = %bb.r
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.t ], [ %i.az, %bb.u ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.t ], [ %i.ay, %bb.u ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 16, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -9223372036854775742, ptr %i.ba, align 16
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i1.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 16
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  %i.bb = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bb, label %default.unreachable [
    i8 3, label %bb.x
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12
    i8 1, label %bb.ac
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit
  ]

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread12: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.w:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.o, %bb.l, %.thread112.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 16
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(208) %i.a)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bd)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

bb.ab:                                            ; preds = %bb.y
  %i.bg = extractvalue { ptr, ptr } %i.be, 0
  %i.bh = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCs2VbMhdeEr66_16delta_benchmarks.exit.thread8: ; preds = %bb.aa, %bb.ab
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.aa ], [ %i.bh, %bb.ab ]
  %.sroa.63.0.i3.i = phi ptr [ null, %bb.aa ], [ %i.bg, %bb.ab ]
  %.sroa.02.0.in.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i5.i = load i64, ptr %.sroa.02.0.in.i4.i, align 16, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775742, ptr %i.bi, align 16
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext15create_function0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit110.i: ; preds = %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20800
  br label %bb.as

bb.bi:                                            ; preds = %bb.ba
  %.sroa.10176.0..sroa_idx177.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3181.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10176.0..sroa_idx177.i, i64 24, i1 false), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20800
  call void @llvm.experimental.noalias.scope.decl(metadata !20875)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ef, ptr %i.ep, align 8, !alias.scope !20878, !noalias !20800
  %.sroa.2180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.eh, ptr %.sroa.2180.0..sroa_idx.i, align 16, !alias.scope !20878, !noalias !20800
  store i64 36, ptr %i.a, align 16, !alias.scope !20880, !noalias !20881
  %i.eq = cmpxchg ptr %i.du, i64 8, i64 0 release monotonic, align 8, !noalias !20797
  %.sroa.18.0.in.i.i.i.i111.i = extractvalue { i64, i1 } %i.eq, 1
  br i1 %.sroa.18.0.in.i.i.i.i111.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit113.i, label %bb.bj, !prof !84

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.du, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit113.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit107.thread213.i, !noalias !20797

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit113.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20800
  br label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit107.thread213.i, %bb.bf, %bb.be
  %.pn38211.ph.i = phi { ptr, i32 } [ %i.eo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit107.thread213.i ], [ %.pn36.i, %bb.be ], [ %.pn36.i, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20800
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit107.thread.i
  %.pn38211.i = phi { ptr, i32 } [ %i.dy, %bb.bk ], [ %i.dy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit107.thread.i ], [ %.pn38211.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20800
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit107.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.u, !noalias !20797

bb.bl:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  store ptr %.sroa.4.0.copyload.i, ptr %i.e, align 8, !noalias !20800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20800
  %i.er = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.es = load ptr, ptr %i.er, align 8, !noalias !20800, !nonnull !17, !align !187, !noundef !17
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %.val62.i = load ptr, ptr %i.et, align 8, !noalias !20797, !nonnull !17, !noundef !17 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val62.i, i64 16 ; 8 uses
  %i.ev = cmpxchg weak ptr %i.eu, i64 0, i64 8 acquire monotonic, align 8, !noalias !20797
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  br i1 %i.ew, label %bb.bn, label %bb.bm, !prof !84

bb.bm:                                            ; preds = %bb.bl
  %i.ex = invoke noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.eu, i64 undef, i32 noundef 1000000000)
          to label %bb.bn unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread.i, !noalias !20797 ; 0 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread.i: ; preds = %bb.bm
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20800
  call void @llvm.experimental.noalias.scope.decl(metadata !20882)
  call void @llvm.experimental.noalias.scope.decl(metadata !20885)
  %i.ez = load ptr, ptr %i.e, align 8, !alias.scope !20888, !noalias !20800, !nonnull !17, !noundef !17
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !20889
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fc = getelementptr inbounds nuw i8, ptr %.val62.i, i64 24
  %i.fd = load ptr, ptr %i.e, align 8, !noalias !20800, !nonnull !17, !noundef !17
  invoke void @_RNvXs5_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8VI8w5SIoU4_15datafusion_expr8registry16FunctionRegistry13register_udwf(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.fc, ptr noundef nonnull %i.fd)
          to label %bb.bp unwind label %bb.bo, !noalias !20797

bb.bo:                                            ; preds = %bb.bn
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20800
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !20890)
  %i.ff = load i64, ptr %i.c, align 8, !range !1787, !alias.scope !20893, !noalias !20895, !noundef !17 ; 2 uses
  %.not.i117.i = icmp eq i64 %i.ff, 20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !20896, !noalias !20800 ; 4 uses
  br i1 %.not.i117.i, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20800
  store ptr %i.fh, ptr %i.d, align 8, !noalias !20800
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fj = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !20897
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bv, !noalias !20797

bb.bt:                                            ; preds = %bb.bv, %bb.bo
  %.pn27.i = phi { ptr, i32 } [ %i.fm, %bb.bv ], [ %i.fe, %bb.bo ] ; 2 uses
  %i.fl = cmpxchg ptr %i.eu, i64 8, i64 0 release monotonic, align 8, !noalias !20797
  %.sroa.18.0.in.i.i.i.i119.i = extractvalue { i64, i1 } %i.fl, 1
  br i1 %.sroa.18.0.in.i.i.i.i119.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i, label %bb.bu, !prof !84

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.eu, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i unwind label %bb.u, !noalias !20797

bb.bv:                                            ; preds = %bb.bs
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.fn = cmpxchg ptr %i.eu, i64 8, i64 0 release monotonic, align 8, !noalias !20797
  %.sroa.18.0.in.i.i.i.i122.i = extractvalue { i64, i1 } %i.fn, 1
  br i1 %.sroa.18.0.in.i.i.i.i122.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit124.i, label %bb.bw, !prof !84

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.eu, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit124.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread224.i, !noalias !20797

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread224.i: ; preds = %bb.by, %bb.bw
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit124.i: ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20800
  br label %bb.as

bb.bx:                                            ; preds = %bb.bp
  %.sroa.10187.0..sroa_idx188.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3192.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10187.0..sroa_idx188.i, i64 24, i1 false), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20800
  call void @llvm.experimental.noalias.scope.decl(metadata !20904)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ff, ptr %i.fp, align 8, !alias.scope !20907, !noalias !20800
  %.sroa.2191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.fh, ptr %.sroa.2191.0..sroa_idx.i, align 16, !alias.scope !20907, !noalias !20800
  store i64 36, ptr %i.a, align 16, !alias.scope !20909, !noalias !20910
  %i.fq = cmpxchg ptr %i.eu, i64 8, i64 0 release monotonic, align 8, !noalias !20797
  %.sroa.18.0.in.i.i.i.i125.i = extractvalue { i64, i1 } %i.fq, 1
  br i1 %.sroa.18.0.in.i.i.i.i125.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit127.i, label %bb.by, !prof !84

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.eu, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit127.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread224.i, !noalias !20797

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit127.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20800
  br label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit127.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit113.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit99.i, %bb.t
  %i.fr = getelementptr inbounds nuw i8, ptr %.val, i64 2001 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !range !270, !noalias !20800, !noundef !17
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.cm, label %bb.cl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread224.i, %bb.bu, %bb.bt
  %.pn29222.ph.i = phi { ptr, i32 } [ %i.fo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread224.i ], [ %.pn27.i, %bb.bt ], [ %.pn27.i, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20800
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread.i
  %.pn29222.i = phi { ptr, i32 } [ %i.ey, %bb.ca ], [ %i.ey, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread.i ], [ %.pn29222.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20800
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit121.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.u, !noalias !20797

bb.cb:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20800
  store i64 %.sroa.2.0.copyload.i, ptr %i.b, align 8, !noalias !20800
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa_idx4.i, align 8, !noalias !20800
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx8.i, align 8, !noalias !20800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8152.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !20800, !nonnull !17, !align !187, !noundef !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext13register_udtf(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, ptr noundef nonnull %.sroa.8152.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.10.0.copyload.i)
          to label %bb.cc unwind label %bb.cj, !noalias !20797

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.cf unwind label %bb.cd, !noalias !20797

bb.cd:                                            ; preds = %bb.cc
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !range !95, !alias.scope !20911, !noalias !20800, !noundef !17 ; 2 uses
  %i.fx = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.fx, label %.body129.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val3.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx4.i, align 8, !alias.scope !20918, !noalias !20800, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20919
  br label %.body129.i

bb.cf:                                            ; preds = %bb.cc
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !95, !alias.scope !20911, !noalias !20800, !noundef !17 ; 2 uses
  %i.fy = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.fy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val1.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx4.i, align 8, !alias.scope !20918, !noalias !20800, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20922
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i

.body129.i:                                       ; preds = %bb.cj, %bb.ce, %bb.cd
  %.pn20.i = phi { ptr, i32 } [ %i.ga, %bb.cj ], [ %i.fw, %bb.cd ], [ %i.fw, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20800
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20800
  br label %bb.as

bb.ch:                                            ; preds = %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %.val, i64 2001
  store i8 0, ptr %i.fz, align 1, !noalias !20800
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cl, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.a, i64 336, i1 false), !noalias !20823
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext15create_function0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.cj:                                            ; preds = %bb.cb
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #37
          to label %.body129.i unwind label %bb.u, !noalias !20797

bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.gb, align 8, !alias.scope !20925, !noalias !20800
  %.sroa.2154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.2154.0..sroa_idx.i, align 16, !alias.scope !20925, !noalias !20800
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !20925, !noalias !20800
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.8152.0.copyload.i, ptr %.sroa.4155.0..sroa_idx.i, align 16, !alias.scope !20925, !noalias !20800
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.10.0.copyload.i, ptr %.sroa.5156.0..sroa_idx.i, align 8, !alias.scope !20925, !noalias !20800
  br label %bb.t

bb.cl:                                            ; preds = %bb.cm, %bb.bz
  store i8 0, ptr %i.fr, align 1, !noalias !20800
  br label %bb.ci

bb.cm:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl14CreateFunctionECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(288) %i.n)
          to label %bb.cl unwind label %bb.co, !noalias !20797

bb.cn:                                            ; preds = %bb.cp, %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn55.i = phi { ptr, i32 } [ %i.gd, %bb.co ], [ %.pn53.i, %bb.cp ], [ %.pn53.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.val, i64 2001
  store i8 0, ptr %i.gc, align 1, !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20800
  store i8 2, ptr %i.o, align 16, !noalias !20800
  resume { ptr, i32 } %.pn55.i

bb.co:                                            ; preds = %bb.cm
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl14CreateFunctionECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(288) %i.n) #37
          to label %bb.cn unwind label %bb.u, !noalias !20797

_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext15create_function0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.z, %bb.ci
  %storemerge.i = phi i8 [ 1, %bb.ci ], [ 3, %bb.z ]
  store i8 %storemerge.i, ptr %i.o, align 16, !noalias !20800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext19create_memory_table0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.8.i.i = alloca [304 x i8], align 16      ; 4 uses
  %i.e = alloca [336 x i8], align 16              ; 44 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [112 x i8], align 8               ; 6 uses
  %i.s = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.8382.i = alloca [40 x i8], align 8       ; 7 uses
  %i.t = alloca [112 x i8], align 8               ; 7 uses
  %i.u = alloca [112 x i8], align 8               ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.3375.i = alloca [24 x i8], align 8       ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [320 x i8], align 16              ; 5 uses
  %i.y = alloca [1680 x i8], align 8              ; 5 uses
  %i.z = alloca [336 x i8], align 16              ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [56 x i8], align 8               ; 11 uses
  %i.ag = alloca [40 x i8], align 8               ; 9 uses
  %i.ah = alloca [16 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [112 x i8], align 8              ; 6 uses
  %i.am = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.8334.i = alloca [40 x i8], align 8       ; 7 uses
  %i.an = alloca [112 x i8], align 8              ; 7 uses
  %i.ao = alloca [112 x i8], align 8              ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.3327.i = alloca [24 x i8], align 8       ; 5 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [320 x i8], align 16             ; 5 uses
  %i.as = alloca [1680 x i8], align 8             ; 5 uses
  %i.at = alloca [336 x i8], align 16             ; 4 uses
  %i.au = alloca [56 x i8], align 8               ; 5 uses
  %i.av = alloca [40 x i8], align 8               ; 9 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [336 x i8], align 16             ; 4 uses
  %i.ay = alloca [336 x i8], align 16             ; 7 uses
  %i.az = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.0296.i = alloca [56 x i8], align 8       ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 11 uses
  %i.bc = alloca [24 x i8], align 8               ; 11 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.5.i = alloca [272 x i8], align 16        ; 4 uses
  %i.be = alloca [1680 x i8], align 8             ; 10 uses
  %i.bf = alloca [320 x i8], align 16             ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 147 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3375.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3327.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 1240 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 8, !range !3823, !noalias !20932, !noundef !17
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sink18.i.sroa.gep299.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sink15.i.sroa.gep300.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.sink18.i214.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sink18.i214.sroa.gep351.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sink15.i216.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sink15.i216.sroa.gep352.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  switch i8 %i.bh, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.i
    i8 4, label %bb.ee
end_hunk_14
