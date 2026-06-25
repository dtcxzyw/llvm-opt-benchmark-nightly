inline.NumInlined: 4836
inline.NumDeleted: 1728
begin_hunk_0_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6161
  store ptr %i.an, ptr %i.aj, align 8, !noalias !6161
  %.sroa.5383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5383.0..sroa_idx.i, align 8, !noalias !6161
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @122, ptr noundef nonnull %i.aj)
          to label %bb.gv unwind label %bb.gt, !noalias !6165

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !alias.scope !6416, !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6420
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.gx, !noalias !6165

.noexc172.i:                                      ; preds = %bb.gv
  %i.sk = load i64, ptr %i.a, align 8, !range !88, !noalias !6420, !noundef !4
  %i.sl = trunc nuw i64 %i.sk to i1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !range !89, !noalias !6420, !noundef !4 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.sl, label %bb.gw, label %bb.gz, !prof !37

bb.gw:                                            ; preds = %.noexc172.i
  %i.sp = load i64, ptr %i.so, align 8, !noalias !6420
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.sn, i64 %i.sp) #32
          to label %.noexc173.i unwind label %bb.gx, !noalias !6165

.noexc173.i:                                      ; preds = %bb.gw
  unreachable

.body189.i:                                       ; preds = %bb.ha, %bb.gy, %bb.gx
  %.pn72.i = phi { ptr, i32 } [ %i.sr, %bb.gy ], [ %i.sq, %bb.gx ], [ %i.su, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6161
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #34
          to label %.body195.i unwind label %bb.av, !noalias !6165

bb.gx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i, %bb.gw, %bb.gv
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

bb.gy:                                            ; preds = %bb.gz
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6161
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #34
          to label %.body189.i unwind label %bb.av, !noalias !6165

bb.gz:                                            ; preds = %.noexc172.i
  %i.ss = load ptr, ptr %i.so, align 8, !noalias !6420, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6420
  store i64 %i.sn, ptr %i.ai, align 8, !noalias !6161
  %.sroa.4443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ss, ptr %.sroa.4443.0..sroa_idx.i, align 8, !noalias !6161
  %.sroa.5444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5444.0..sroa_idx.i, align 8, !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6161
  store ptr %i.al, ptr %i.ah, align 8, !noalias !6161
  %.sroa.5385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5385.0..sroa_idx.i, align 8, !noalias !6161
  %i.st = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.st, align 8, !noalias !6161
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5387.0..sroa_idx.i, align 8, !noalias !6161
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @56, ptr noundef nonnull %i.ah)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i unwind label %bb.gy, !noalias !6165

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i:  ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6161
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i unwind label %bb.ha, !noalias !6165

bb.ha:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body189.i unwind label %bb.hb, !noalias !6165

bb.hb:                                            ; preds = %bb.ha
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6165
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i unwind label %bb.gx, !noalias !6165

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6161
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i unwind label %bb.hc, !noalias !6165

bb.hc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body195.i unwind label %bb.hd, !noalias !6165

bb.hd:                                            ; preds = %bb.hc
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6165
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.hf unwind label %bb.he, !noalias !6165

.body195.i:                                       ; preds = %bb.he, %bb.hc, %.body189.i, %bb.gt
  %.pn74.i = phi { ptr, i32 } [ %i.sj, %bb.gt ], [ %.pn72.i, %.body189.i ], [ %i.sy, %bb.he ], [ %i.sw, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6161
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.an) #34
          to label %bb.hg unwind label %bb.av, !noalias !6165

bb.he:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i

bb.hf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !6161
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6161
  %i.sz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 10, ptr %i.sz, align 8, !noalias !6161
  store i64 36, ptr %i.r, align 16, !noalias !6161
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %bb.hi unwind label %bb.hh, !noalias !6165

bb.hg:                                            ; preds = %bb.hh, %.body195.i
  %.pn80.i = phi { ptr, i32 } [ %i.ta, %bb.hh ], [ %.pn74.i, %.body195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.hh:                                            ; preds = %bb.hf
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hi:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !6161
  br label %bb.ks

bb.hj:                                            ; preds = %bb.hk
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6161
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.te) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !6165

bb.hk:                                            ; preds = %bb.gs, %bb.f
  %.sink15.i203.sroa.gep333.i77 = phi ptr [ %.sink15.i203.sroa.gep333.i, %bb.f ], [ %.sink15.i203.sroa.gep333.i78, %bb.gs ] ; 2 uses
  %.sink15.i203.sroa.gep.i71 = phi ptr [ %.sink15.i203.sroa.gep.i, %bb.f ], [ %.sink15.i203.sroa.gep.i72, %bb.gs ]
  %.sink18.i201.sroa.gep332.i65 = phi ptr [ %.sink18.i201.sroa.gep332.i, %bb.f ], [ %.sink18.i201.sroa.gep332.i66, %bb.gs ] ; 2 uses
  %.sink18.i201.sroa.gep.i59 = phi ptr [ %.sink18.i201.sroa.gep.i, %bb.f ], [ %.sink18.i201.sroa.gep.i60, %bb.gs ]
  %i.tc = phi ptr [ %i.bm, %bb.f ], [ %i.rw, %bb.gs ] ; 9 uses
  %i.td = phi ptr [ %i.bl, %bb.f ], [ %i.rx, %bb.gs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6161
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.av, ptr noundef nonnull align 8 %i.te, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hl unwind label %bb.hj, !noalias !6165

bb.hl:                                            ; preds = %bb.hk
  %i.tf = load i64, ptr %i.av, align 8, !range !712, !noalias !6161, !noundef !4 ; 3 uses
  %i.tg = icmp eq i64 %i.tf, 21
  br i1 %i.tg, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6161
  br label %.thread115

bb.hn:                                            ; preds = %bb.hl
  %.sroa.3315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3315.0.copyload.i = load ptr, ptr %.sroa.3315.0..sroa_idx.i, align 8, !noalias !6161 ; 3 uses
  %.sroa.5316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5316.0.copyload.i = load ptr, ptr %.sroa.5316.0..sroa_idx.i, align 8, !noalias !6161 ; 3 uses
  %.sroa.7317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.0..sroa_idx.i, i64 16, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6161
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.te)
          to label %bb.hp unwind label %bb.ho, !noalias !6165

bb.ho:                                            ; preds = %bb.hn
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.hp:                                            ; preds = %bb.hn
  %.not.i199.i = icmp eq i64 %i.tf, 20
  br i1 %.not.i199.i, label %bb.hq, label %bb.il

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3315.0.copyload.i), "nonnull"(ptr %.sroa.5316.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6161
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6161
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.tl = load ptr, ptr %i.tk, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6424)
  call void @llvm.experimental.noalias.scope.decl(metadata !6427)
  %i.tm = load i64, ptr %i.tl, align 8, !range !509, !alias.scope !6427, !noalias !6429, !noundef !4 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !alias.scope !6427, !noalias !6429, !nonnull !4, !noundef !4 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !6427, !noalias !6429, !noundef !4 ; 3 uses
  %i.tr = atomicrmw add ptr %i.to, i64 1 monotonic, align 8, !noalias !6430
  %i.ts = icmp slt i64 %i.tr, 0                   ; 3 uses
  switch i64 %i.tm, label %default.unreachable38 [
    i64 0, label %bb.hr
    i64 1, label %bb.hs
    i64 2, label %bb.ht
  ]

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.ts, label %bb.hu, label %bb.ie

bb.hs:                                            ; preds = %bb.hq
  br i1 %i.ts, label %bb.hw, label %bb.hv

bb.ht:                                            ; preds = %bb.hq
  br i1 %i.ts, label %bb.hz, label %bb.hy

bb.hu:                                            ; preds = %bb.hr
  call void @llvm.trap()
  unreachable

.sink.split.i200.i:                               ; preds = %bb.ic, %bb.hv
  %.sink18.i201.sroa.phi.i = phi ptr [ %.sink18.i201.sroa.gep.i59, %bb.ic ], [ %.sink18.i201.sroa.gep332.i65, %bb.hv ]
  %.sink16.i202.i = phi ptr [ %i.ua, %bb.ic ], [ %i.to, %bb.hv ]
  %.sink15.i203.sroa.phi.i = phi ptr [ %.sink15.i203.sroa.gep.i71, %bb.ic ], [ %.sink15.i203.sroa.gep333.i77, %bb.hv ]
  %.sink13.i204.i = phi i64 [ %i.uc, %bb.ic ], [ %i.tq, %bb.hv ]
  %.sink12.ph.i205.i = phi i64 [ 40, %bb.ic ], [ 24, %bb.hv ]
  %.sink10.ph.i206.i = phi ptr [ %i.ug, %bb.ic ], [ %i.tu, %bb.hv ]
  %.sink9.ph.i207.i = phi i64 [ 48, %bb.ic ], [ 32, %bb.hv ]
  %.sink7.ph.i208.i = phi i64 [ %i.ui, %bb.ic ], [ %i.tw, %bb.hv ]
  store ptr %.sink16.i202.i, ptr %.sink18.i201.sroa.phi.i, align 8, !alias.scope !6424, !noalias !6431
  store i64 %.sink13.i204.i, ptr %.sink15.i203.sroa.phi.i, align 8, !alias.scope !6424, !noalias !6431
  br label %bb.ie

bb.hv:                                            ; preds = %bb.hs
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tu = load ptr, ptr %i.tt, align 8, !alias.scope !6427, !noalias !6429, !nonnull !4, !noundef !4 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tw = load i64, ptr %i.tv, align 8, !alias.scope !6427, !noalias !6429, !noundef !4
  %i.tx = atomicrmw add ptr %i.tu, i64 1 monotonic, align 8, !noalias !6430
  %i.ty = icmp slt i64 %i.tx, 0
  br i1 %i.ty, label %bb.hx, label %.sink.split.i200.i

bb.hw:                                            ; preds = %bb.hs
  call void @llvm.trap()
  unreachable

bb.hx:                                            ; preds = %bb.hv
  call void @llvm.trap()
  unreachable

bb.hy:                                            ; preds = %bb.ht
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8, !alias.scope !6427, !noalias !6429, !nonnull !4, !noundef !4 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.uc = load i64, ptr %i.ub, align 8, !alias.scope !6427, !noalias !6429, !noundef !4
  %i.ud = atomicrmw add ptr %i.ua, i64 1 monotonic, align 8, !noalias !6430
  %i.ue = icmp slt i64 %i.ud, 0
  br i1 %i.ue, label %bb.ib, label %bb.ia

bb.hz:                                            ; preds = %bb.ht
  call void @llvm.trap()
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.ug = load ptr, ptr %i.uf, align 8, !alias.scope !6427, !noalias !6429, !nonnull !4, !noundef !4 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !6427, !noalias !6429, !noundef !4
  %i.uj = atomicrmw add ptr %i.ug, i64 1 monotonic, align 8, !noalias !6430
  %i.uk = icmp slt i64 %i.uj, 0
  br i1 %i.uk, label %bb.id, label %bb.ic

bb.ib:                                            ; preds = %bb.hy
  call void @llvm.trap()
  unreachable

bb.ic:                                            ; preds = %bb.ia
  store ptr %i.to, ptr %.sink18.i201.sroa.gep332.i65, align 8, !alias.scope !6424, !noalias !6431
  store i64 %i.tq, ptr %.sink15.i203.sroa.gep333.i77, align 8, !alias.scope !6424, !noalias !6431
  br label %.sink.split.i200.i

bb.id:                                            ; preds = %bb.ia
  call void @llvm.trap()
  unreachable

bb.ie:                                            ; preds = %.sink.split.i200.i, %bb.hr
  %.sink12.i209.i = phi i64 [ 8, %bb.hr ], [ %.sink12.ph.i205.i, %.sink.split.i200.i ]
  %.sink10.i210.i = phi ptr [ %i.to, %bb.hr ], [ %.sink10.ph.i206.i, %.sink.split.i200.i ]
  %.sink9.i211.i = phi i64 [ 16, %bb.hr ], [ %.sink9.ph.i207.i, %.sink.split.i200.i ]
  %.sink7.i212.i = phi i64 [ %i.tq, %bb.hr ], [ %.sink7.ph.i208.i, %.sink.split.i200.i ]
  %i.ul = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink12.i209.i
  store ptr %.sink10.i210.i, ptr %i.ul, align 8, !alias.scope !6424, !noalias !6431
  %i.um = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink9.i211.i
  store i64 %.sink7.i212.i, ptr %i.um, align 8, !alias.scope !6424, !noalias !6431
  store i64 %i.tm, ptr %i.as, align 8, !alias.scope !6424, !noalias !6431
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.as, ptr noundef nonnull %.sroa.3315.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5316.0.copyload.i)
          to label %bb.if unwind label %bb.ij, !noalias !6165

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6432)
  %i.un = load i64, ptr %i.at, align 8, !range !129, !alias.scope !6435, !noalias !6437, !noundef !4 ; 2 uses
  %.not.i216.i = icmp eq i64 %i.un, 20
  %i.uo = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !alias.scope !6438, !noalias !6161 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !alias.scope !6438, !noalias !6161 ; 2 uses
  br i1 %.not.i216.i, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6161
  store ptr %i.up, ptr %i.au, align 8, !noalias !6161
  %i.us = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ur, ptr %i.us, align 8, !noalias !6161
  %i.ut = icmp eq ptr %i.up, null
  br i1 %i.ut, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.uu = atomicrmw sub ptr %i.up, i64 1 release, align 8, !noalias !6439
  %i.uv = icmp eq i64 %i.uu, 1
  br i1 %i.uv, label %bb.ii, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ii:                                            ; preds = %bb.ih
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.thread467.i, !noalias !6165

.thread467.i:                                     ; preds = %bb.ii
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ii, %bb.ih, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6161
  %i.ux = load ptr, ptr %i.ti, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ux)
          to label %bb.ks unwind label %.thread464.i, !noalias !6165

bb.ij:                                            ; preds = %bb.ie
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread464.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ik:                                            ; preds = %bb.if
  %.sroa.12330.0..sroa_idx331.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.4337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4337.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12330.0..sroa_idx331.i, i64 16, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  %i.va = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.un, ptr %i.va, align 8, !alias.scope !6449, !noalias !6161
  %.sroa.2335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.up, ptr %.sroa.2335.0..sroa_idx.i, align 16, !alias.scope !6449, !noalias !6161
  %.sroa.3336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ur, ptr %.sroa.3336.0..sroa_idx.i, align 8, !alias.scope !6449, !noalias !6161
  store i64 36, ptr %i.r, align 16, !alias.scope !6451, !noalias !6452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6161
  br label %bb.ks

bb.il:                                            ; preds = %bb.hp
  %.sroa.4321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4321.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, i64 16, i1 false), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6453)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.tf, ptr %i.vb, align 8, !alias.scope !6456, !noalias !6161
  %.sroa.2319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3315.0.copyload.i, ptr %.sroa.2319.0..sroa_idx.i, align 16, !alias.scope !6456, !noalias !6161
  %.sroa.3320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5316.0.copyload.i, ptr %.sroa.3320.0..sroa_idx.i, align 8, !alias.scope !6456, !noalias !6161
  store i64 36, ptr %i.r, align 16, !alias.scope !6458, !noalias !6459
  br label %bb.ks

bb.im:                                            ; preds = %bb.in
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6161
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.vf) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !6165

bb.in:                                            ; preds = %bb.gs, %bb.f
  %.sink15.i225.sroa.gep377.i101 = phi ptr [ %.sink15.i225.sroa.gep377.i, %bb.f ], [ %.sink15.i225.sroa.gep377.i102, %bb.gs ] ; 2 uses
  %.sink15.i225.sroa.gep.i95 = phi ptr [ %.sink15.i225.sroa.gep.i, %bb.f ], [ %.sink15.i225.sroa.gep.i96, %bb.gs ]
  %.sink18.i223.sroa.gep376.i89 = phi ptr [ %.sink18.i223.sroa.gep376.i, %bb.f ], [ %.sink18.i223.sroa.gep376.i90, %bb.gs ] ; 2 uses
  %.sink18.i223.sroa.gep.i83 = phi ptr [ %.sink18.i223.sroa.gep.i, %bb.f ], [ %.sink18.i223.sroa.gep.i84, %bb.gs ]
  %i.vd = phi ptr [ %i.bm, %bb.f ], [ %i.rw, %bb.gs ] ; 9 uses
  %i.ve = phi ptr [ %i.bl, %bb.f ], [ %i.rx, %bb.gs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6161
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ar, ptr noundef nonnull align 8 %i.vf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.io unwind label %bb.im, !noalias !6165

bb.io:                                            ; preds = %bb.in
  %i.vg = load i64, ptr %i.ar, align 8, !range !712, !noalias !6161, !noundef !4 ; 3 uses
  %i.vh = icmp eq i64 %i.vg, 21
  br i1 %i.vh, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6161
  br label %.thread115

bb.iq:                                            ; preds = %bb.io
  %.sroa.3359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3359.0.copyload.i = load ptr, ptr %.sroa.3359.0..sroa_idx.i, align 8, !noalias !6161 ; 3 uses
  %.sroa.5360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.5360.0.copyload.i = load ptr, ptr %.sroa.5360.0..sroa_idx.i, align 8, !noalias !6161 ; 3 uses
  %.sroa.7361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.0..sroa_idx.i, i64 16, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6161
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.vf)
          to label %bb.is unwind label %bb.ir, !noalias !6165

bb.ir:                                            ; preds = %bb.iq
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.is:                                            ; preds = %bb.iq
  %.not.i220.i = icmp eq i64 %i.vg, 20
  br i1 %.not.i220.i, label %bb.it, label %bb.jo

bb.it:                                            ; preds = %bb.is
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3359.0.copyload.i), "nonnull"(ptr %.sroa.5360.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !6161
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !6161
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.vm = load ptr, ptr %i.vl, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6460)
  call void @llvm.experimental.noalias.scope.decl(metadata !6463)
  %i.vn = load i64, ptr %i.vm, align 8, !range !509, !alias.scope !6463, !noalias !6465, !noundef !4 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !6463, !noalias !6465, !nonnull !4, !noundef !4 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !6463, !noalias !6465, !noundef !4 ; 3 uses
  %i.vs = atomicrmw add ptr %i.vp, i64 1 monotonic, align 8, !noalias !6466
  %i.vt = icmp slt i64 %i.vs, 0                   ; 3 uses
  switch i64 %i.vn, label %default.unreachable38 [
    i64 0, label %bb.iu
    i64 1, label %bb.iv
    i64 2, label %bb.iw
  ]

bb.iu:                                            ; preds = %bb.it
  br i1 %i.vt, label %bb.ix, label %bb.jh

bb.iv:                                            ; preds = %bb.it
  br i1 %i.vt, label %bb.iz, label %bb.iy

bb.iw:                                            ; preds = %bb.it
  br i1 %i.vt, label %bb.jc, label %bb.jb

bb.ix:                                            ; preds = %bb.iu
  call void @llvm.trap()
  unreachable

.sink.split.i222.i:                               ; preds = %bb.jf, %bb.iy
  %.sink18.i223.sroa.phi.i = phi ptr [ %.sink18.i223.sroa.gep.i83, %bb.jf ], [ %.sink18.i223.sroa.gep376.i89, %bb.iy ]
  %.sink16.i224.i = phi ptr [ %i.wb, %bb.jf ], [ %i.vp, %bb.iy ]
  %.sink15.i225.sroa.phi.i = phi ptr [ %.sink15.i225.sroa.gep.i95, %bb.jf ], [ %.sink15.i225.sroa.gep377.i101, %bb.iy ]
  %.sink13.i226.i = phi i64 [ %i.wd, %bb.jf ], [ %i.vr, %bb.iy ]
  %.sink12.ph.i227.i = phi i64 [ 40, %bb.jf ], [ 24, %bb.iy ]
  %.sink10.ph.i228.i = phi ptr [ %i.wh, %bb.jf ], [ %i.vv, %bb.iy ]
  %.sink9.ph.i229.i = phi i64 [ 48, %bb.jf ], [ 32, %bb.iy ]
  %.sink7.ph.i230.i = phi i64 [ %i.wj, %bb.jf ], [ %i.vx, %bb.iy ]
  store ptr %.sink16.i224.i, ptr %.sink18.i223.sroa.phi.i, align 8, !alias.scope !6460, !noalias !6467
  store i64 %.sink13.i226.i, ptr %.sink15.i225.sroa.phi.i, align 8, !alias.scope !6460, !noalias !6467
  br label %bb.jh

bb.iy:                                            ; preds = %bb.iv
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !alias.scope !6463, !noalias !6465, !nonnull !4, !noundef !4 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.vx = load i64, ptr %i.vw, align 8, !alias.scope !6463, !noalias !6465, !noundef !4
  %i.vy = atomicrmw add ptr %i.vv, i64 1 monotonic, align 8, !noalias !6466
  %i.vz = icmp slt i64 %i.vy, 0
  br i1 %i.vz, label %bb.ja, label %.sink.split.i222.i

bb.iz:                                            ; preds = %bb.iv
  call void @llvm.trap()
  unreachable

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.trap()
  unreachable

bb.jb:                                            ; preds = %bb.iw
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !alias.scope !6463, !noalias !6465, !nonnull !4, !noundef !4 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.wd = load i64, ptr %i.wc, align 8, !alias.scope !6463, !noalias !6465, !noundef !4
  %i.we = atomicrmw add ptr %i.wb, i64 1 monotonic, align 8, !noalias !6466
  %i.wf = icmp slt i64 %i.we, 0
  br i1 %i.wf, label %bb.je, label %bb.jd

bb.jc:                                            ; preds = %bb.iw
  call void @llvm.trap()
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vm, i64 40
  %i.wh = load ptr, ptr %i.wg, align 8, !alias.scope !6463, !noalias !6465, !nonnull !4, !noundef !4 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vm, i64 48
  %i.wj = load i64, ptr %i.wi, align 8, !alias.scope !6463, !noalias !6465, !noundef !4
  %i.wk = atomicrmw add ptr %i.wh, i64 1 monotonic, align 8, !noalias !6466
  %i.wl = icmp slt i64 %i.wk, 0
  br i1 %i.wl, label %bb.jg, label %bb.jf

bb.je:                                            ; preds = %bb.jb
  call void @llvm.trap()
  unreachable

bb.jf:                                            ; preds = %bb.jd
  store ptr %i.vp, ptr %.sink18.i223.sroa.gep376.i89, align 8, !alias.scope !6460, !noalias !6467
  store i64 %i.vr, ptr %.sink15.i225.sroa.gep377.i101, align 8, !alias.scope !6460, !noalias !6467
  br label %.sink.split.i222.i

bb.jg:                                            ; preds = %bb.jd
  call void @llvm.trap()
  unreachable

bb.jh:                                            ; preds = %.sink.split.i222.i, %bb.iu
  %.sink12.i231.i = phi i64 [ 8, %bb.iu ], [ %.sink12.ph.i227.i, %.sink.split.i222.i ]
  %.sink10.i232.i = phi ptr [ %i.vp, %bb.iu ], [ %.sink10.ph.i228.i, %.sink.split.i222.i ]
  %.sink9.i233.i = phi i64 [ 16, %bb.iu ], [ %.sink9.ph.i229.i, %.sink.split.i222.i ]
  %.sink7.i234.i = phi i64 [ %i.vr, %bb.iu ], [ %.sink7.ph.i230.i, %.sink.split.i222.i ]
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink12.i231.i
  store ptr %.sink10.i232.i, ptr %i.wm, align 8, !alias.scope !6460, !noalias !6467
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink9.i233.i
  store i64 %.sink7.i234.i, ptr %i.wn, align 8, !alias.scope !6460, !noalias !6467
  store i64 %i.vn, ptr %i.ao, align 8, !alias.scope !6460, !noalias !6467
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ao, ptr noundef nonnull %.sroa.3359.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5360.0.copyload.i)
          to label %bb.ji unwind label %bb.jm, !noalias !6165

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  %i.wo = load i64, ptr %i.ap, align 8, !range !129, !alias.scope !6471, !noalias !6473, !noundef !4 ; 2 uses
  %.not.i238.i = icmp eq i64 %i.wo, 20
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !alias.scope !6474, !noalias !6161 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !6474, !noalias !6161 ; 2 uses
  br i1 %.not.i238.i, label %bb.jj, label %bb.jn

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6161
  store ptr %i.wq, ptr %i.aq, align 8, !noalias !6161
  %i.wt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ws, ptr %i.wt, align 8, !noalias !6161
  %i.wu = icmp eq ptr %i.wq, null
  br i1 %i.wu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.wv = atomicrmw sub ptr %i.wq, i64 1 release, align 8, !noalias !6475
  %i.ww = icmp eq i64 %i.wv, 1
  br i1 %i.ww, label %bb.jl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i

bb.jl:                                            ; preds = %bb.jk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i unwind label %.thread488.i, !noalias !6165

.thread488.i:                                     ; preds = %bb.jl
  %i.wx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i: ; preds = %bb.jl, %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6161
  %i.wy = load ptr, ptr %i.vj, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wy)
          to label %bb.ks unwind label %.thread485.i, !noalias !6165

bb.jm:                                            ; preds = %bb.jh
  %i.wz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread485.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.jn:                                            ; preds = %bb.ji
  %.sroa.12374.0..sroa_idx375.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.4381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4381.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12374.0..sroa_idx375.i, i64 16, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6482)
  %i.xb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.wo, ptr %i.xb, align 8, !alias.scope !6485, !noalias !6161
  %.sroa.2379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.wq, ptr %.sroa.2379.0..sroa_idx.i, align 16, !alias.scope !6485, !noalias !6161
  %.sroa.3380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ws, ptr %.sroa.3380.0..sroa_idx.i, align 8, !alias.scope !6485, !noalias !6161
  store i64 36, ptr %i.r, align 16, !alias.scope !6487, !noalias !6488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6161
  br label %bb.ks

bb.jo:                                            ; preds = %bb.is
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4365.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, i64 16, i1 false), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6489)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.vg, ptr %i.xc, align 8, !alias.scope !6492, !noalias !6161
  %.sroa.2363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3359.0.copyload.i, ptr %.sroa.2363.0..sroa_idx.i, align 16, !alias.scope !6492, !noalias !6161
  %.sroa.3364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5360.0.copyload.i, ptr %.sroa.3364.0..sroa_idx.i, align 8, !alias.scope !6492, !noalias !6161
  store i64 36, ptr %i.r, align 16, !alias.scope !6494, !noalias !6495
  br label %bb.ks

bb.jp:                                            ; preds = %bb.jq
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6161
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.xg) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !6165

bb.jq:                                            ; preds = %bb.f, %bb.ai
  %.sink15.i250.sroa.gep431.i113 = phi ptr [ %.sink15.i250.sroa.gep431.i, %bb.f ], [ %.sink15.i250.sroa.gep431.i114, %bb.ai ] ; 2 uses
  %.sink15.i250.sroa.gep.i111 = phi ptr [ %.sink15.i250.sroa.gep.i, %bb.f ], [ %.sink15.i250.sroa.gep.i112, %bb.ai ]
  %.sink18.i248.sroa.gep430.i109 = phi ptr [ %.sink18.i248.sroa.gep430.i, %bb.f ], [ %.sink18.i248.sroa.gep430.i110, %bb.ai ] ; 2 uses
  %.sink18.i248.sroa.gep.i107 = phi ptr [ %.sink18.i248.sroa.gep.i, %bb.f ], [ %.sink18.i248.sroa.gep.i108, %bb.ai ]
  %i.xe = phi ptr [ %i.bm, %bb.f ], [ %i.bn, %bb.ai ] ; 9 uses
  %i.xf = phi ptr [ %i.bl, %bb.f ], [ %i.bo, %bb.ai ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6161
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ab, ptr noundef nonnull align 8 %i.xg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jr unwind label %bb.jp, !noalias !6165

bb.jr:                                            ; preds = %bb.jq
  %i.xh = load i64, ptr %i.ab, align 8, !range !712, !noalias !6161, !noundef !4 ; 3 uses
  %i.xi = icmp eq i64 %i.xh, 21
  br i1 %i.xi, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6161
  br label %.thread115

bb.jt:                                            ; preds = %bb.jr
  %.sroa.3413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.3413.0.copyload.i = load ptr, ptr %.sroa.3413.0..sroa_idx.i, align 8, !noalias !6161 ; 3 uses
  %.sroa.5414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5414.0.copyload.i = load ptr, ptr %.sroa.5414.0..sroa_idx.i, align 8, !noalias !6161 ; 3 uses
  %.sroa.7415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.0..sroa_idx.i, i64 16, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6161
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.xg)
          to label %bb.jv unwind label %bb.ju, !noalias !6165

bb.ju:                                            ; preds = %bb.jt
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.jv:                                            ; preds = %bb.jt
  %.not.i245.i = icmp eq i64 %i.xh, 20
  br i1 %.not.i245.i, label %bb.jw, label %bb.kr

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3413.0.copyload.i), "nonnull"(ptr %.sroa.5414.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6161
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6161
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.xn = load ptr, ptr %i.xm, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6496)
  call void @llvm.experimental.noalias.scope.decl(metadata !6499)
  %i.xo = load i64, ptr %i.xn, align 8, !range !509, !alias.scope !6499, !noalias !6501, !noundef !4 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8, !alias.scope !6499, !noalias !6501, !nonnull !4, !noundef !4 ; 4 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !6499, !noalias !6501, !noundef !4 ; 3 uses
  %i.xt = atomicrmw add ptr %i.xq, i64 1 monotonic, align 8, !noalias !6502
  %i.xu = icmp slt i64 %i.xt, 0                   ; 3 uses
  switch i64 %i.xo, label %default.unreachable38 [
    i64 0, label %bb.jx
    i64 1, label %bb.jy
    i64 2, label %bb.jz
  ]

bb.jx:                                            ; preds = %bb.jw
  br i1 %i.xu, label %bb.ka, label %bb.kk

bb.jy:                                            ; preds = %bb.jw
  br i1 %i.xu, label %bb.kc, label %bb.kb

bb.jz:                                            ; preds = %bb.jw
  br i1 %i.xu, label %bb.kf, label %bb.ke

bb.ka:                                            ; preds = %bb.jx
  call void @llvm.trap()
  unreachable

.sink.split.i247.i:                               ; preds = %bb.ki, %bb.kb
  %.sink18.i248.sroa.phi.i = phi ptr [ %.sink18.i248.sroa.gep.i107, %bb.ki ], [ %.sink18.i248.sroa.gep430.i109, %bb.kb ]
  %.sink16.i249.i = phi ptr [ %i.yc, %bb.ki ], [ %i.xq, %bb.kb ]
  %.sink15.i250.sroa.phi.i = phi ptr [ %.sink15.i250.sroa.gep.i111, %bb.ki ], [ %.sink15.i250.sroa.gep431.i113, %bb.kb ]
  %.sink13.i251.i = phi i64 [ %i.ye, %bb.ki ], [ %i.xs, %bb.kb ]
  %.sink12.ph.i252.i = phi i64 [ 40, %bb.ki ], [ 24, %bb.kb ]
  %.sink10.ph.i253.i = phi ptr [ %i.yi, %bb.ki ], [ %i.xw, %bb.kb ]
  %.sink9.ph.i254.i = phi i64 [ 48, %bb.ki ], [ 32, %bb.kb ]
  %.sink7.ph.i255.i = phi i64 [ %i.yk, %bb.ki ], [ %i.xy, %bb.kb ]
  store ptr %.sink16.i249.i, ptr %.sink18.i248.sroa.phi.i, align 8, !alias.scope !6496, !noalias !6503
  store i64 %.sink13.i251.i, ptr %.sink15.i250.sroa.phi.i, align 8, !alias.scope !6496, !noalias !6503
  br label %bb.kk

bb.kb:                                            ; preds = %bb.jy
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8, !alias.scope !6499, !noalias !6501, !nonnull !4, !noundef !4 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  %i.xy = load i64, ptr %i.xx, align 8, !alias.scope !6499, !noalias !6501, !noundef !4
  %i.xz = atomicrmw add ptr %i.xw, i64 1 monotonic, align 8, !noalias !6502
  %i.ya = icmp slt i64 %i.xz, 0
  br i1 %i.ya, label %bb.kd, label %.sink.split.i247.i

bb.kc:                                            ; preds = %bb.jy
  call void @llvm.trap()
  unreachable

bb.kd:                                            ; preds = %bb.kb
  call void @llvm.trap()
  unreachable

bb.ke:                                            ; preds = %bb.jz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8, !alias.scope !6499, !noalias !6501, !nonnull !4, !noundef !4 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  %i.ye = load i64, ptr %i.yd, align 8, !alias.scope !6499, !noalias !6501, !noundef !4
  %i.yf = atomicrmw add ptr %i.yc, i64 1 monotonic, align 8, !noalias !6502
  %i.yg = icmp slt i64 %i.yf, 0
  br i1 %i.yg, label %bb.kh, label %bb.kg

bb.kf:                                            ; preds = %bb.jz
  call void @llvm.trap()
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  %i.yi = load ptr, ptr %i.yh, align 8, !alias.scope !6499, !noalias !6501, !nonnull !4, !noundef !4 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xn, i64 48
  %i.yk = load i64, ptr %i.yj, align 8, !alias.scope !6499, !noalias !6501, !noundef !4
  %i.yl = atomicrmw add ptr %i.yi, i64 1 monotonic, align 8, !noalias !6502
  %i.ym = icmp slt i64 %i.yl, 0
  br i1 %i.ym, label %bb.kj, label %bb.ki

bb.kh:                                            ; preds = %bb.ke
  call void @llvm.trap()
  unreachable

bb.ki:                                            ; preds = %bb.kg
  store ptr %i.xq, ptr %.sink18.i248.sroa.gep430.i109, align 8, !alias.scope !6496, !noalias !6503
  store i64 %i.xs, ptr %.sink15.i250.sroa.gep431.i113, align 8, !alias.scope !6496, !noalias !6503
  br label %.sink.split.i247.i

bb.kj:                                            ; preds = %bb.kg
  call void @llvm.trap()
  unreachable

bb.kk:                                            ; preds = %.sink.split.i247.i, %bb.jx
  %.sink12.i256.i = phi i64 [ 8, %bb.jx ], [ %.sink12.ph.i252.i, %.sink.split.i247.i ]
  %.sink10.i257.i = phi ptr [ %i.xq, %bb.jx ], [ %.sink10.ph.i253.i, %.sink.split.i247.i ]
  %.sink9.i258.i = phi i64 [ 16, %bb.jx ], [ %.sink9.ph.i254.i, %.sink.split.i247.i ]
  %.sink7.i259.i = phi i64 [ %i.xs, %bb.jx ], [ %.sink7.ph.i255.i, %.sink.split.i247.i ]
  %i.yn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink12.i256.i
  store ptr %.sink10.i257.i, ptr %i.yn, align 8, !alias.scope !6496, !noalias !6503
  %i.yo = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink9.i258.i
  store i64 %.sink7.i259.i, ptr %i.yo, align 8, !alias.scope !6496, !noalias !6503
  store i64 %i.xo, ptr %i.y, align 8, !alias.scope !6496, !noalias !6503
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %.sroa.3413.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5414.0.copyload.i)
          to label %bb.kl unwind label %bb.kp, !noalias !6165

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6504)
  %i.yp = load i64, ptr %i.z, align 8, !range !129, !alias.scope !6507, !noalias !6509, !noundef !4 ; 2 uses
  %.not.i263.i = icmp eq i64 %i.yp, 20
  %i.yq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !alias.scope !6510, !noalias !6161 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !alias.scope !6510, !noalias !6161 ; 2 uses
  br i1 %.not.i263.i, label %bb.km, label %bb.kq

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6161
  store ptr %i.yr, ptr %i.aa, align 8, !noalias !6161
  %i.yu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.yt, ptr %i.yu, align 8, !noalias !6161
  %i.yv = icmp eq ptr %i.yr, null
  br i1 %i.yv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.yw = atomicrmw sub ptr %i.yr, i64 1 release, align 8, !noalias !6511
  %i.yx = icmp eq i64 %i.yw, 1
  br i1 %i.yx, label %bb.ko, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i unwind label %.thread509.i, !noalias !6165

.thread509.i:                                     ; preds = %bb.ko
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i: ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6161
  %i.yz = load ptr, ptr %i.xk, align 8, !noalias !6161, !nonnull !4, !align !10, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yz)
          to label %bb.ks unwind label %.thread506.i, !noalias !6165

bb.kp:                                            ; preds = %bb.kk
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6161
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread506.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.kq:                                            ; preds = %bb.kl
  %.sroa.12428.0..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4435.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx429.i, i64 16, i1 false), !noalias !6161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6518)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.yp, ptr %i.zc, align 8, !alias.scope !6521, !noalias !6161
  %.sroa.2433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.yr, ptr %.sroa.2433.0..sroa_idx.i, align 16, !alias.scope !6521, !noalias !6161
  %.sroa.3434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.yt, ptr %.sroa.3434.0..sroa_idx.i, align 8, !alias.scope !6521, !noalias !6161
  store i64 36, ptr %i.r, align 16, !alias.scope !6523, !noalias !6524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6161
  br label %bb.ks

bb.kr:                                            ; preds = %bb.jv
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, i64 16, i1 false), !noalias !6161
  call void @llvm.experimental.noalias.scope.decl(metadata !6525)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.xh, ptr %i.zd, align 8, !alias.scope !6528, !noalias !6161
  %.sroa.2417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3413.0.copyload.i, ptr %.sroa.2417.0..sroa_idx.i, align 16, !alias.scope !6528, !noalias !6161
  %.sroa.3418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5414.0.copyload.i, ptr %.sroa.3418.0..sroa_idx.i, align 8, !alias.scope !6528, !noalias !6161
  store i64 36, ptr %i.r, align 16, !alias.scope !6530, !noalias !6531
  br label %bb.ks

.thread115:                                       ; preds = %bb.js, %bb.ip, %bb.hm, %bb.go
  %.ph = phi ptr [ %i.mh, %bb.go ], [ %i.tc, %bb.hm ], [ %i.vd, %bb.ip ], [ %i.xe, %bb.js ]
  %.sink.i.ph = phi i8 [ 3, %bb.go ], [ 4, %bb.hm ], [ 5, %bb.ip ], [ 6, %bb.js ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !6161
end_hunk_0
begin_hunk_1_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks4main0B3_:bb.a

bb.nr:                                            ; preds = %bb.nq
  %i.afi = getelementptr inbounds nuw i8, ptr %.val108.i, i64 16
  %i.afj = load i64, ptr %i.afi, align 8, !range !302, !invariant.load !4, !noalias !6644
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107.i, i64 noundef range(i64 1, 0) %i.afg, i64 noundef range(i64 1, 536870913) %i.afj) #35, !noalias !6644
  br label %.body155.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.np, %bb.no
  %i.afk = trunc nuw i64 %i.aev to i1
  br i1 %i.afk, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.2238.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.2238.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cu, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2238.16..sroa_idx.i, i64 96, i1 false), !noalias !6640
  br label %bb.nh

bb.nt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.afl, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2238.i, i64 120, i1 false), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0234.i)
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.afm)
          to label %bb.nw unwind label %bb.nv, !noalias !6644

bb.nu:                                            ; preds = %bb.pc, %bb.nv
  %i.afn = phi ptr [ %i.afq, %bb.nv ], [ %i.ahw, %bb.pc ]
  %i.afo = phi ptr [ %i.afr, %bb.nv ], [ %i.ahx, %bb.pc ]
  %.pn90.i = phi { ptr, i32 } [ %i.afs, %bb.nv ], [ %.pn87.pn.i, %bb.pc ]
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.afp) #34
          to label %bb.oe unwind label %bb.mc, !noalias !6644

bb.nv:                                            ; preds = %bb.qk, %bb.pb, %bb.nt
  %i.afq = phi ptr [ %i.ajf, %bb.qk ], [ %i.aht, %bb.pb ], [ %i.aeq, %bb.nt ]
  %i.afr = phi ptr [ %i.ajg, %bb.qk ], [ %i.ahu, %bb.pb ], [ %i.aer, %bb.nt ]
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nw:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !6640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !6640
  store ptr %i.afm, ptr %i.aes, align 16, !noalias !6640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !6640
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtNtB9_5table10DeltaTable14table_provider(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.afl)
          to label %bb.ny unwind label %bb.nx, !noalias !6644

bb.nx:                                            ; preds = %bb.nw
  %i.aft = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ny:                                            ; preds = %bb.nw
  %i.afu = invoke { ptr, ptr } @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_20TableProviderBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.dj)
          to label %bb.ob unwind label %bb.oa, !noalias !6644 ; 2 uses

bb.nz:                                            ; preds = %bb.oa, %bb.nx
  %.pn31.i244 = phi { ptr, i32 } [ %i.afv, %bb.oa ], [ %i.aft, %bb.nx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  br label %bb.oc

bb.oa:                                            ; preds = %bb.ny
  %i.afv = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ob:                                            ; preds = %bb.ny
  %i.afw = extractvalue { ptr, ptr } %i.afu, 0
  %i.afx = extractvalue { ptr, ptr } %i.afu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !6640
  store ptr %i.afw, ptr %i.aex, align 8, !noalias !6640
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.afx, ptr %i.afy, align 16, !noalias !6640
  br label %bb.of

bb.oc:                                            ; preds = %bb.ox, %bb.or, %.body160.i, %bb.nz
  %i.afz = phi ptr [ %i.agl, %bb.or ], [ %i.agl, %bb.ox ], [ %i.agl, %.body160.i ], [ %i.aeq, %bb.nz ]
  %i.aga = phi ptr [ %i.agm, %bb.or ], [ %i.agm, %bb.ox ], [ %i.agm, %.body160.i ], [ %i.aer, %bb.nz ]
  %.pn87.i = phi { ptr, i32 } [ %i.ahh, %bb.or ], [ %i.ahr, %bb.ox ], [ %.pn35.i, %.body160.i ], [ %.pn31.i244, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !6640
  br label %bb.pc

bb.od:                                            ; preds = %bb.sh, %bb.nh
  %i.agb = phi ptr [ %i.aht, %bb.sh ], [ %i.aeo, %bb.nh ] ; 3 uses
  %i.agc = phi ptr [ %i.ahu, %bb.sh ], [ %i.aep, %bb.nh ] ; 3 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.age = load i8, ptr %i.agd, align 8, !range !34, !noalias !6640, !noundef !4
  %i.agf = trunc nuw i8 %i.age to i1
  br i1 %i.agf, label %bb.si, label %bb.sr

bb.oe:                                            ; preds = %bb.qm, %bb.nu, %.body155.i
  %i.agg = phi ptr [ %i.ack, %.body155.i ], [ %i.akg, %bb.qm ], [ %i.afn, %bb.nu ] ; 2 uses
  %i.agh = phi ptr [ %i.acl, %.body155.i ], [ %i.akh, %bb.qm ], [ %i.afo, %bb.nu ] ; 2 uses
  %.pn92.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.pn.pn.i, %.body155.i ], [ %i.aki, %bb.qm ], [ %.pn90.i, %bb.nu ] ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.agj = load i8, ptr %i.agi, align 8, !range !34, !noalias !6640, !noundef !4
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %bb.sl, label %bb.mf

bb.of:                                            ; preds = %bb.ob, %bb.kl
  %i.agl = phi ptr [ %i.aeq, %bb.ob ], [ %i.yz, %bb.kl ] ; 6 uses
  %i.agm = phi ptr [ %i.aer, %bb.ob ], [ %i.yy, %bb.kl ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !6640
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.di, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.agn, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.oh unwind label %bb.og, !noalias !6644

bb.og:                                            ; preds = %bb.of
  %i.ago = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !6640
  %.val109.i = load ptr, ptr %i.agn, align 8, !noalias !6640
  %i.agp = getelementptr i8, ptr %0, i64 656
  %.val110.i = load ptr, ptr %i.agp, align 16, !noalias !6640, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val109.i, ptr nonnull %.val110.i) #34
          to label %.body160.i unwind label %bb.mc, !noalias !6644

bb.oh:                                            ; preds = %bb.of
  %i.agq = load i64, ptr %i.di, align 8, !range !712, !noalias !6640, !noundef !4 ; 3 uses
  %i.agr = icmp eq i64 %i.agq, 21
  br i1 %i.agr, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  br label %.thread450

bb.oj:                                            ; preds = %bb.oh
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !6640 ; 3 uses
  %.sroa.5258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.sroa.5258.0.copyload.i = load ptr, ptr %.sroa.5258.0..sroa_idx.i, align 8, !noalias !6640 ; 3 uses
  %.sroa.7259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7259.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7259.0..sroa_idx.i, i64 16, i1 false), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !6640
  %.val111.i = load ptr, ptr %i.agn, align 8, !noalias !6640 ; 5 uses
  %i.ags = getelementptr i8, ptr %0, i64 656
  %.val112.i = load ptr, ptr %i.ags, align 16, !noalias !6640, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.agt = load ptr, ptr %.val112.i, align 8, !invariant.load !4, !noalias !6644 ; 2 uses
  %.not.i.i159.i = icmp eq ptr %i.agt, null
  br i1 %.not.i.i159.i, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val111.i) ]
  invoke void %i.agt(ptr noundef nonnull %.val111.i)
          to label %bb.ol unwind label %bb.on, !noalias !6644

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  %i.agu = getelementptr inbounds nuw i8, ptr %.val112.i, i64 8
  %i.agv = load i64, ptr %i.agu, align 8, !range !463, !invariant.load !4, !noalias !6644 ; 2 uses
  %i.agw = icmp eq i64 %i.agv, 0
  br i1 %i.agw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.agx = getelementptr inbounds nuw i8, ptr %.val112.i, i64 16
  %i.agy = load i64, ptr %i.agx, align 8, !range !302, !invariant.load !4, !noalias !6644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val111.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val111.i, i64 noundef range(i64 1, 0) %i.agv, i64 noundef range(i64 1, 536870913) %i.agy) #35, !noalias !6644
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.on:                                            ; preds = %bb.ok
  %i.agz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.val112.i, i64 8
  %i.ahb = load i64, ptr %i.aha, align 8, !range !463, !invariant.load !4, !noalias !6644 ; 2 uses
  %i.ahc = icmp eq i64 %i.ahb, 0
  br i1 %i.ahc, label %.body160.i, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.ahd = getelementptr inbounds nuw i8, ptr %.val112.i, i64 16
  %i.ahe = load i64, ptr %i.ahd, align 8, !range !302, !invariant.load !4, !noalias !6644
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val111.i, i64 noundef range(i64 1, 0) %i.ahb, i64 noundef range(i64 1, 536870913) %i.ahe) #35, !noalias !6644
  br label %.body160.i

.body160.i:                                       ; preds = %bb.oo, %bb.on, %bb.og
  %.pn35.i = phi { ptr, i32 } [ %i.ago, %bb.og ], [ %i.agz, %bb.on ], [ %i.agz, %bb.oo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  br label %bb.oc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.om, %bb.ol
  %.not.i.i241 = icmp eq i64 %i.agq, 20
  br i1 %.not.i.i241, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.4263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !6640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4263.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7259.i, i64 16, i1 false), !noalias !6640
  store i64 %i.agq, ptr %i.cp, align 8, !noalias !6738
  %.sroa.2261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.2261.0..sroa_idx.i, align 8, !noalias !6738
  %.sroa.3262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %.sroa.5258.0.copyload.i, ptr %.sroa.3262.0..sroa_idx.i, align 8, !noalias !6738
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cp)
          to label %bb.pa unwind label %bb.or, !noalias !6644

bb.oq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i), "nonnull"(ptr %.sroa.5258.0.copyload.i) ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ahg = load ptr, ptr %i.ahf, align 16, !noalias !6640, !nonnull !4, !align !10, !noundef !4
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ahg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 5, ptr noundef nonnull %.sroa.3.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5258.0.copyload.i)
          to label %bb.os unwind label %bb.or, !noalias !6644

bb.or:                                            ; preds = %bb.oq, %bb.op
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  br label %bb.oc

bb.os:                                            ; preds = %bb.oq
  call void @llvm.experimental.noalias.scope.decl(metadata !6741)
  %i.ahi = load i64, ptr %i.dk, align 8, !range !129, !alias.scope !6744, !noalias !6746, !noundef !4 ; 2 uses
  %.not.i163.i = icmp eq i64 %i.ahi, 20
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !alias.scope !6747, !noalias !6640 ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8, !alias.scope !6747, !noalias !6640 ; 2 uses
  br i1 %.not.i163.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %.sroa.14.0..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.4267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !6640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4267.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx246.i, i64 16, i1 false), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  store i64 %i.ahi, ptr %i.co, align 8, !noalias !6748
  %.sroa.2265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.ahk, ptr %.sroa.2265.0..sroa_idx.i, align 8, !noalias !6748
  %.sroa.3266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.ahm, ptr %.sroa.3266.0..sroa_idx.i, align 8, !noalias !6748
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.co)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit165.i unwind label %bb.ox, !noalias !6644

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit165.i: ; preds = %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !6640
  br label %bb.oz

bb.ou:                                            ; preds = %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  store ptr %i.ahk, ptr %i.dl, align 8, !noalias !6640
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.ahm, ptr %i.ahn, align 8, !noalias !6640
  %i.aho = icmp eq ptr %i.ahk, null
  br i1 %i.aho, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ahp = atomicrmw sub ptr %i.ahk, i64 1 release, align 8, !noalias !6751
  %i.ahq = icmp eq i64 %i.ahp, 1
  br i1 %i.ahq, label %bb.ow, label %bb.oy

bb.ow:                                            ; preds = %bb.ov
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dl) #36
          to label %bb.oy unwind label %bb.ox, !noalias !6644

bb.ox:                                            ; preds = %bb.ow, %bb.ot
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.oy:                                            ; preds = %bb.ow, %bb.ov, %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !6640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !6640
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr @185, ptr %i.ahf, align 16, !noalias !6640
  store i64 39, ptr %i.agn, align 8, !noalias !6640
  %.sroa.10282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store ptr %i.ahs, ptr %.sroa.10282.0..sroa_idx.i, align 16, !noalias !6640
  %.sroa.11283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3768
  store i8 0, ptr %.sroa.11283.0..sroa_idx.i, align 8, !noalias !6640
  br label %bb.pd

bb.oz:                                            ; preds = %bb.pa, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !6640
  br label %bb.pb

bb.pa:                                            ; preds = %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !6640
  br label %bb.oz

bb.pb:                                            ; preds = %bb.pw, %bb.oz
  %i.aht = phi ptr [ %i.aiz, %bb.pw ], [ %i.agl, %bb.oz ] ; 3 uses
  %i.ahu = phi ptr [ %i.aja, %bb.pw ], [ %i.agm, %bb.oz ] ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.ahv)
          to label %bb.sh unwind label %bb.nv, !noalias !6644

bb.pc:                                            ; preds = %.body167.i, %bb.oc
  %i.ahw = phi ptr [ %i.afz, %bb.oc ], [ %i.ajc, %.body167.i ]
  %i.ahx = phi ptr [ %i.aga, %bb.oc ], [ %i.ajd, %.body167.i ]
  %.pn87.pn.i = phi { ptr, i32 } [ %.pn87.i, %bb.oc ], [ %.pn84.pn.i, %.body167.i ]
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.ahy) #34
          to label %bb.nu unwind label %bb.mc, !noalias !6644

bb.pd:                                            ; preds = %bb.oy, %bb.km
  %i.ahz = phi ptr [ %i.agl, %bb.oy ], [ %i.yz, %bb.km ] ; 6 uses
  %i.aia = phi ptr [ %i.agm, %bb.oy ], [ %i.yy, %bb.km ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !6640
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 captures(address) dereferenceable(336) %i.dg, ptr noundef nonnull align 16 %i.aib, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.pf unwind label %bb.pe, !noalias !6644

bb.pe:                                            ; preds = %bb.pd
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !6640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.aib) #34
          to label %.body167.i unwind label %bb.mc, !noalias !6644

bb.pf:                                            ; preds = %bb.pd
  %i.aid = load i64, ptr %i.dg, align 16, !range !4585, !noalias !6640, !noundef !4 ; 3 uses
  %i.aie = icmp eq i64 %i.aid, 37
  br i1 %i.aie, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !6640
  br label %.thread450

bb.ph:                                            ; preds = %bb.pf
  %.sroa.3286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3286.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3286.0..sroa_idx.i, i64 40, i1 false), !noalias !6640
  %.sroa.5287.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5287.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5287.0..sroa_idx.i, i64 288, i1 false), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !6640
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.aig = load i8, ptr %i.aif, align 8, !range !1565, !noalias !6640, !noundef !4
  %cond.i.i = icmp eq i8 %i.aig, 3
  br i1 %cond.i.i, label %bb.pi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.pi:                                            ; preds = %bb.ph
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 2372
  %i.aij = load i8, ptr %i.aii, align 4, !range !1655, !noalias !6640, !noundef !4
  switch i8 %i.aij, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 4, label %bb.pm
    i8 3, label %bb.pj
  ]

bb.pj:                                            ; preds = %bb.pi
  %i.aik = getelementptr inbounds nuw i8, ptr %0, i64 3194
  %i.ail = load i8, ptr %i.aik, align 2, !range !1565, !noalias !6640, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.ail, 3
  br i1 %cond.i.i.i.i, label %bb.pk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.pk:                                            ; preds = %bb.pj
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 2392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.aim)
          to label %bb.pl unwind label %.body.i.i.i, !noalias !6644

.body.i.i.i:                                      ; preds = %bb.pk
  %i.ain = landingpad { ptr, i32 }
          cleanup
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 3193
  store i8 0, ptr %i.aio, align 1, !noalias !6640
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.aih) #34
          to label %bb.pq unwind label %bb.pp, !noalias !6644

bb.pl:                                            ; preds = %bb.pk
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 3193
  store i8 0, ptr %i.aip, align 1, !noalias !6640
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.pm:                                            ; preds = %bb.pi
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 2384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.aiq)
          to label %bb.po unwind label %bb.pr, !noalias !6644

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.pl, %bb.pj
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.aih)
          to label %bb.po unwind label %bb.pn, !noalias !6644

bb.pn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %bb.pq

bb.po:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.pm
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 2371
  store i8 0, ptr %i.ais, align 1, !noalias !6640
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.pp:                                            ; preds = %.body.i.i.i
  %i.ait = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6644
  unreachable

bb.pq:                                            ; preds = %bb.pr, %bb.pn, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aiv, %bb.pr ], [ %i.air, %bb.pn ], [ %i.ain, %.body.i.i.i ]
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 2371
  store i8 0, ptr %i.aiu, align 1, !noalias !6640
  br label %.body167.i

end_hunk_1
begin_hunk_2_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks4main0B3_:bb.a
  br label %bb.uh

bb.uh:                                            ; preds = %._crit_edge487, %.thread242.i
  %i.arr = phi ptr [ %i.aqd, %.thread242.i ], [ %i.aqc, %._crit_edge487 ] ; 2 uses
  %i.ars = phi ptr [ %i.aqe, %.thread242.i ], [ %i.aqb, %._crit_edge487 ] ; 2 uses
  %i.art = phi i64 [ %i.aqo, %.thread242.i ], [ %.pre493, %._crit_edge487 ]
  %i.aru = phi ptr [ %i.aqm, %.thread242.i ], [ %.pre491, %._crit_edge487 ]
  %i.arv = phi ptr [ %i.aqw, %.thread242.i ], [ %.pre489, %._crit_edge487 ]
  %i.arw = phi ptr [ %.sroa.13.0..sroa_idx.i, %.thread242.i ], [ %.phi.trans.insert.i300, %._crit_edge487 ] ; 2 uses
  %i.arx = phi ptr [ %i.arj, %.thread242.i ], [ %i.arq, %._crit_edge487 ] ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.ary, i8 0, i64 6, i1 false), !noalias !6857
  store ptr %i.arv, ptr %i.arz, align 16, !noalias !6857
  store ptr %i.aru, ptr %i.arx, align 16, !noalias !6857
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.art, ptr %i.asa, align 8, !noalias !6857
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.asb)
          to label %bb.up unwind label %bb.uo, !noalias !6861

bb.ui:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !6857
  br label %bb.ads

bb.uj:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !6857
  br label %bb.aed

bb.uk:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !6857
  br label %bb.aeu

bb.ul:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !6857
  br label %bb.afm

bb.um:                                            ; preds = %bb.ug
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !6857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !6857
  br label %bb.ut

bb.un:                                            ; preds = %bb.agr, %bb.uo
  %i.asc = phi ptr [ %i.asg, %bb.uo ], [ %i.bwu, %bb.agr ]
  %i.asd = phi ptr [ %i.ash, %bb.uo ], [ %i.bwv, %bb.agr ]
  %i.ase = phi ptr [ %i.asi, %bb.uo ], [ %i.bww, %bb.agr ]
  %i.asf = phi ptr [ %i.asj, %bb.uo ], [ %i.bwx, %bb.agr ]
  %.pn87.i.i = phi { ptr, i32 } [ %i.ask, %bb.uo ], [ %.pn80.pn.pn.pn.i.i, %bb.agr ]
  store i8 2, ptr %i.ase, align 2, !noalias !6857
  br label %.body.i302

bb.uo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.uh
  %i.asg = phi ptr [ %i.bvw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.arr, %bb.uh ]
  %i.ash = phi ptr [ %i.bvx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.ars, %bb.uh ]
  %i.asi = phi ptr [ %i.bvy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.arw, %bb.uh ]
  %i.asj = phi ptr [ %i.bvz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.arx, %bb.uh ]
  %i.ask = landingpad { ptr, i32 }
          cleanup
  br label %bb.un

bb.up:                                            ; preds = %bb.uh
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr @163, ptr %i.asl, align 16, !noalias !6857
  %i.asm = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr getelementptr inbounds nuw (i8, ptr @163, i64 384), ptr %i.asm, align 8, !noalias !6857
  br label %bb.uq

bb.uq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.up
  %i.asn = phi ptr [ %i.asu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.arr, %bb.up ] ; 4 uses
  %i.aso = phi ptr [ %i.asv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.ars, %bb.up ] ; 4 uses
  %i.asp = phi ptr [ %i.asw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.arw, %bb.up ] ; 4 uses
  %i.asq = phi ptr [ %i.asx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.arx, %bb.up ] ; 5 uses
  %i.asr = phi ptr [ %.pre339.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @163, i64 384), %bb.up ]
  %i.ass = phi ptr [ %.pre.i.i306, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ @163, %bb.up ] ; 3 uses
  %i.ast = icmp eq ptr %i.ass, %i.asr
  br i1 %i.ast, label %.thread193.i, label %bb.vw

bb.ur:                                            ; preds = %bb.ug
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #37
          to label %.noexc.i313 unwind label %bb.aht

.noexc.i313:                                      ; preds = %bb.ur
  unreachable

bb.us:                                            ; preds = %bb.ug
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #37
          to label %.noexc59.i unwind label %bb.aht

.noexc59.i:                                       ; preds = %bb.us
  unreachable

bb.ut:                                            ; preds = %bb.agb, %bb.um
  %i.asu = phi ptr [ %i.brz, %bb.agb ], [ %i.aqc, %bb.um ] ; 10 uses
  %i.asv = phi ptr [ %i.bsa, %bb.agb ], [ %i.aqb, %bb.um ] ; 10 uses
  %i.asw = phi ptr [ %i.bsb, %bb.agb ], [ %.phi.trans.insert.i300, %bb.um ] ; 10 uses
  %i.asx = phi ptr [ %i.bsc, %bb.agb ], [ %i.arq, %bb.um ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6857
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.asy, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.uv unwind label %bb.uu, !noalias !6861

bb.uu:                                            ; preds = %bb.ut
  %i.asz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6857
  %.val97.i.i = load ptr, ptr %i.asy, align 16, !noalias !6857
  %i.ata = getelementptr i8, ptr %0, i64 1192
  %.val98.i.i = load ptr, ptr %i.ata, align 8, !noalias !6857, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val97.i.i, ptr nonnull %.val98.i.i) #34
          to label %.body108.i.i unwind label %bb.age, !noalias !6861

bb.uv:                                            ; preds = %bb.ut
  %i.atb = load i64, ptr %i.av, align 8, !range !712, !noalias !6857, !noundef !4 ; 3 uses
  %i.atc = icmp eq i64 %i.atb, 21
  br i1 %i.atc, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6857
  br label %.thread.i311

bb.ux:                                            ; preds = %bb.uv
  %.sroa.3299.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3299.0.copyload.i.i = load ptr, ptr %.sroa.3299.0..sroa_idx.i.i, align 8, !noalias !6857 ; 3 uses
  %.sroa.5300.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5300.0.copyload.i.i = load ptr, ptr %.sroa.5300.0..sroa_idx.i.i, align 8, !noalias !6857 ; 3 uses
  %.sroa.7301.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7301.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7301.0..sroa_idx.i.i, i64 16, i1 false), !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !6857
  %.val99.i.i = load ptr, ptr %i.asy, align 16, !noalias !6857 ; 5 uses
  %i.atd = getelementptr i8, ptr %0, i64 1192
  %.val100.i.i = load ptr, ptr %i.atd, align 8, !noalias !6857, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ate = load ptr, ptr %.val100.i.i, align 8, !invariant.load !4, !noalias !6861 ; 2 uses
  %.not.i.i.i.i303 = icmp eq ptr %i.ate, null
  br i1 %.not.i.i.i.i303, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99.i.i) ]
  invoke void %i.ate(ptr noundef nonnull %.val99.i.i)
          to label %bb.uz unwind label %bb.vb, !noalias !6861

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  %i.atf = getelementptr inbounds nuw i8, ptr %.val100.i.i, i64 8
  %i.atg = load i64, ptr %i.atf, align 8, !range !463, !invariant.load !4, !noalias !6861 ; 2 uses
  %i.ath = icmp eq i64 %i.atg, 0
  br i1 %i.ath, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.ati = getelementptr inbounds nuw i8, ptr %.val100.i.i, i64 16
  %i.atj = load i64, ptr %i.ati, align 8, !range !302, !invariant.load !4, !noalias !6861
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99.i.i, i64 noundef range(i64 1, 0) %i.atg, i64 noundef range(i64 1, 536870913) %i.atj) #35, !noalias !6861
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.vb:                                            ; preds = %bb.uy
  %i.atk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.val100.i.i, i64 8
  %i.atm = load i64, ptr %i.atl, align 8, !range !463, !invariant.load !4, !noalias !6861 ; 2 uses
  %i.atn = icmp eq i64 %i.atm, 0
  br i1 %i.atn, label %.body108.i.i, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  %i.ato = getelementptr inbounds nuw i8, ptr %.val100.i.i, i64 16
  %i.atp = load i64, ptr %i.ato, align 8, !range !302, !invariant.load !4, !noalias !6861
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99.i.i, i64 noundef range(i64 1, 0) %i.atm, i64 noundef range(i64 1, 536870913) %i.atp) #35, !noalias !6861
  br label %.body108.i.i

.body108.i.i:                                     ; preds = %bb.vc, %bb.vb, %bb.uu
  %.pn52.i.i = phi { ptr, i32 } [ %i.asz, %bb.uu ], [ %i.atk, %bb.vb ], [ %i.atk, %bb.vc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6857
  br label %bb.vl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.va, %bb.uz
  %.not.i110.i.i = icmp eq i64 %i.atb, 20
  br i1 %.not.i110.i.i, label %bb.ve, label %bb.vd

bb.vd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.sroa.4305.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4305.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7301.i.i, i64 16, i1 false), !noalias !6857
  store i64 %i.atb, ptr %i.as, align 8, !noalias !6862
  %.sroa.2303.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.3299.0.copyload.i.i, ptr %.sroa.2303.0..sroa_idx.i.i, align 8, !noalias !6862
  %.sroa.3304.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %.sroa.5300.0.copyload.i.i, ptr %.sroa.3304.0..sroa_idx.i.i, align 8, !noalias !6862
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.as)
          to label %bb.agt unwind label %bb.vf, !noalias !6861

bb.ve:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3299.0.copyload.i.i), "nonnull"(ptr %.sroa.5300.0.copyload.i.i) ]
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.atr = load ptr, ptr %i.atq, align 8, !noalias !6857, !nonnull !4, !align !10, !noundef !4
  %i.ats = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.att = load ptr, ptr %i.ats, align 16, !noalias !6857, !nonnull !4, !noundef !4
  %i.atu = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.atv = load i64, ptr %i.atu, align 8, !noalias !6857, !noundef !4
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.atr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.att, i64 noundef %i.atv, ptr noundef nonnull %.sroa.3299.0.copyload.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5300.0.copyload.i.i)
          to label %bb.vg unwind label %bb.vf, !noalias !6861

bb.vf:                                            ; preds = %bb.ve, %bb.vd
  %i.atw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6857
  br label %bb.vl

bb.vg:                                            ; preds = %bb.ve
  call void @llvm.experimental.noalias.scope.decl(metadata !6865)
  %i.atx = load i64, ptr %i.ax, align 8, !range !129, !alias.scope !6868, !noalias !6870, !noundef !4 ; 2 uses
  %.not.i112.i.i = icmp eq i64 %i.atx, 20
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.atz = load ptr, ptr %i.aty, align 8, !alias.scope !6871, !noalias !6857 ; 4 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.aub = load ptr, ptr %i.aua, align 8, !alias.scope !6871, !noalias !6857 ; 2 uses
  br i1 %.not.i112.i.i, label %bb.vi, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %.sroa.14286.0..sroa_idx287.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.4309.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4309.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14286.0..sroa_idx287.i.i, i64 16, i1 false), !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6857
  store i64 %i.atx, ptr %i.ar, align 8, !noalias !6872
  %.sroa.2307.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.atz, ptr %.sroa.2307.0..sroa_idx.i.i, align 8, !noalias !6872
  %.sroa.3308.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.aub, ptr %.sroa.3308.0..sroa_idx.i.i, align 8, !noalias !6872
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ar)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit114.i.i unwind label %bb.vm, !noalias !6861

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit114.i.i: ; preds = %bb.vh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6857
  br label %bb.ags

bb.vi:                                            ; preds = %bb.vg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6857
  store ptr %i.atz, ptr %i.ay, align 8, !noalias !6857
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.aub, ptr %i.auc, align 8, !noalias !6857
  %i.aud = icmp eq ptr %i.atz, null
  br i1 %i.aud, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.aue = atomicrmw sub ptr %i.atz, i64 1 release, align 8, !noalias !6875
  %i.auf = icmp eq i64 %i.aue, 1
  br i1 %i.auf, label %bb.vk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.vk:                                            ; preds = %bb.vj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.vm, !noalias !6861

bb.vl:                                            ; preds = %bb.afz, %bb.vm, %bb.vf, %.body108.i.i
  %i.aug = phi ptr [ %i.asu, %bb.vf ], [ %i.asu, %bb.vm ], [ %i.asu, %.body108.i.i ], [ %i.brz, %bb.afz ]
  %i.auh = phi ptr [ %i.asv, %bb.vf ], [ %i.asv, %bb.vm ], [ %i.asv, %.body108.i.i ], [ %i.bsa, %bb.afz ]
  %i.aui = phi ptr [ %i.asw, %bb.vf ], [ %i.asw, %bb.vm ], [ %i.asw, %.body108.i.i ], [ %i.bsb, %bb.afz ]
  %i.auj = phi ptr [ %i.asx, %bb.vf ], [ %i.asx, %bb.vm ], [ %i.asx, %.body108.i.i ], [ %i.bsc, %bb.afz ]
  %.pn56.i.i = phi { ptr, i32 } [ %i.atw, %bb.vf ], [ %i.aul, %bb.vm ], [ %.pn52.i.i, %.body108.i.i ], [ %.pn48.i.i, %bb.afz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6857
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.auk) #34
          to label %.body179.i.i unwind label %bb.age, !noalias !6861

bb.vm:                                            ; preds = %bb.vk, %bb.vh
  %i.aul = landingpad { ptr, i32 }
          cleanup
  br label %bb.vl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.vk, %bb.vj, %bb.vi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6857
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.aum)
          to label %bb.vo unwind label %bb.vn, !noalias !6861

.body179.i.i:                                     ; preds = %bb.afv, %bb.afu, %bb.afn, %bb.afj, %bb.aff, %bb.vn, %bb.vl
  %i.aun = phi ptr [ %i.bqm, %bb.aff ], [ %i.asu, %bb.vn ], [ %i.aug, %bb.vl ], [ %i.bqm, %bb.afj ], [ %i.brz, %bb.afn ], [ %i.brz, %bb.afu ], [ %i.brz, %bb.afv ] ; 2 uses
  %i.auo = phi ptr [ %i.bqn, %bb.aff ], [ %i.asv, %bb.vn ], [ %i.auh, %bb.vl ], [ %i.bqn, %bb.afj ], [ %i.bsa, %bb.afn ], [ %i.bsa, %bb.afu ], [ %i.bsa, %bb.afv ] ; 2 uses
  %i.aup = phi ptr [ %i.bqo, %bb.aff ], [ %i.asw, %bb.vn ], [ %i.aui, %bb.vl ], [ %i.bqo, %bb.afj ], [ %i.bsb, %bb.afn ], [ %i.bsb, %bb.afu ], [ %i.bsb, %bb.afv ] ; 2 uses
  %i.auq = phi ptr [ %i.bqp, %bb.aff ], [ %i.asx, %bb.vn ], [ %i.auj, %bb.vl ], [ %i.bqp, %bb.afj ], [ %i.bsc, %bb.afn ], [ %i.bsc, %bb.afu ], [ %i.bsc, %bb.afv ] ; 2 uses
  %.pn58.pn.i.i = phi { ptr, i32 } [ %i.brq, %bb.aff ], [ %i.auu, %bb.vn ], [ %.pn56.i.i, %bb.vl ], [ %.pn44.i.i, %bb.afj ], [ %i.bse, %bb.afn ], [ %i.bsp, %bb.afu ], [ %i.bsp, %bb.afv ] ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.aus = load i8, ptr %i.aur, align 4, !range !34, !noalias !6857, !noundef !4
  %i.aut = trunc nuw i8 %i.aus to i1
  br i1 %i.aut, label %bb.ahn, label %bb.agi

bb.vn:                                            ; preds = %bb.ags, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.auu = landingpad { ptr, i32 }
          cleanup
  br label %.body179.i.i

bb.vo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i8 0, ptr %i.auv, align 4, !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !6857
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i8 0, ptr %i.auw, align 16, !noalias !6857
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 1025
  store i8 0, ptr %i.aux, align 1, !noalias !6857
  %i.auy = getelementptr inbounds nuw i8, ptr %0, i64 768
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.auy)
          to label %bb.vr unwind label %bb.vq, !noalias !6861

bb.vp:                                            ; preds = %.body194.i.i, %.body.i.i309, %bb.adj, %bb.vq
  %i.auz = phi ptr [ %i.avg, %bb.vq ], [ %i.buu, %.body194.i.i ], [ %i.bma, %.body.i.i309 ], [ %i.bma, %bb.adj ] ; 2 uses
  %i.ava = phi ptr [ %i.avh, %bb.vq ], [ %i.buv, %.body194.i.i ], [ %i.bmb, %.body.i.i309 ], [ %i.bmb, %bb.adj ] ; 2 uses
  %i.avb = phi ptr [ %i.avi, %bb.vq ], [ %i.buw, %.body194.i.i ], [ %i.bmc, %.body.i.i309 ], [ %i.bmc, %bb.adj ] ; 2 uses
  %i.avc = phi ptr [ %i.avj, %bb.vq ], [ %i.bux, %.body194.i.i ], [ %i.bmd, %.body.i.i309 ], [ %i.bmd, %bb.adj ] ; 2 uses
  %.pn71.i.i = phi { ptr, i32 } [ %i.avk, %bb.vq ], [ %.pn68.pn.i.i, %.body194.i.i ], [ %eh.lpad-body.i.i, %.body.i.i309 ], [ %i.boj, %bb.adj ] ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 1026
  %i.ave = load i8, ptr %i.avd, align 2, !range !34, !noalias !6857, !noundef !4
  %i.avf = trunc nuw i8 %i.ave to i1
  br i1 %i.avf, label %bb.ahq, label %.body196.i.i

bb.vq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.vo
  %i.avg = phi ptr [ %i.buo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.asu, %bb.vo ]
  %i.avh = phi ptr [ %i.bup, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.asv, %bb.vo ]
  %i.avi = phi ptr [ %i.buq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.asw, %bb.vo ]
  %i.avj = phi ptr [ %i.bur, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.asx, %bb.vo ]
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %bb.vp

bb.vr:                                            ; preds = %bb.vo
  %i.avl = getelementptr inbounds nuw i8, ptr %0, i64 1026
  store i8 0, ptr %i.avl, align 2, !noalias !6857
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.vs, !noalias !6861

bb.vs:                                            ; preds = %bb.vr
  %i.avn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avm)
          to label %.body116.i.i unwind label %bb.vt, !noalias !6861

bb.vt:                                            ; preds = %bb.vs
  %i.avo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6861
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.vr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.vu, !noalias !6861

.body116.i.i:                                     ; preds = %.body158.i.i, %bb.agm, %bb.abv, %bb.vu, %bb.vs
  %i.avp = phi ptr [ %i.bhy, %bb.abv ], [ %i.bvr, %.body158.i.i ], [ %i.asu, %bb.vs ], [ %i.avw, %bb.vu ], [ %i.bvf, %bb.agm ] ; 2 uses
  %i.avq = phi ptr [ %i.bhz, %bb.abv ], [ %i.bvs, %.body158.i.i ], [ %i.asv, %bb.vs ], [ %i.avx, %bb.vu ], [ %i.bvg, %bb.agm ] ; 2 uses
  %i.avr = phi ptr [ %i.bia, %bb.abv ], [ %i.bvt, %.body158.i.i ], [ %i.asw, %bb.vs ], [ %i.avy, %bb.vu ], [ %i.bvh, %bb.agm ] ; 2 uses
  %i.avs = phi ptr [ %i.bib, %bb.abv ], [ %i.bvu, %.body158.i.i ], [ %i.asx, %bb.vs ], [ %i.avz, %bb.vu ], [ %i.bvi, %bb.agm ] ; 2 uses
  %.pn78.i.i = phi { ptr, i32 } [ %i.bkr, %bb.abv ], [ %.pn75.pn.i.i, %.body158.i.i ], [ %i.avn, %bb.vs ], [ %i.awa, %bb.vu ], [ %i.bvk, %bb.agm ] ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 1027
  %i.avu = load i8, ptr %i.avt, align 1, !range !34, !noalias !6857, !noundef !4
  %i.avv = trunc nuw i8 %i.avu to i1
  br i1 %i.avv, label %bb.ahr, label %.body201.i.i

bb.vu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i185.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.avw = phi ptr [ %i.bvf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i185.i.i ], [ %i.asu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %i.avx = phi ptr [ %i.bvg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i185.i.i ], [ %i.asv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %i.avy = phi ptr [ %i.bvh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i185.i.i ], [ %i.asw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %i.avz = phi ptr [ %i.bvi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i185.i.i ], [ %i.asx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %i.awa = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 1027
  store i8 0, ptr %i.awb, align 1, !noalias !6857
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 1029
  store i8 0, ptr %i.awc, align 1, !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !6857
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.pre.i.i306 = load ptr, ptr %.phi.trans.insert.i.i, align 16, !alias.scope !6882, !noalias !6857
  %.phi.trans.insert338.i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.pre339.i.i = load ptr, ptr %.phi.trans.insert338.i.i, align 8, !alias.scope !6882, !noalias !6857
  br label %bb.uq

.thread193.i:                                     ; preds = %bb.uq
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.awe = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.awe, ptr noundef nonnull align 16 dereferenceable(48) %i.awd, i64 48, i1 false), !noalias !6857
  store i64 -9223372036854775711, ptr %i.au, align 16, !noalias !6857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14118.i, ptr noundef nonnull align 8 dereferenceable(88) %i.awe, i64 88, i1 false), !noalias !6885
  store i8 1, ptr %i.asp, align 2, !noalias !6857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6846
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7301.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2277.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2272.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2267.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3253.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i288)
end_hunk_2
begin_hunk_3_@_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame7collect0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.x:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #37
          to label %.noexc.i13 unwind label %bb.o, !noalias !7356

.noexc.i13:                                       ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #37
          to label %.noexc6.i unwind label %bb.o, !noalias !7356

.noexc6.i:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7361
  %.val6.i.i = load ptr, ptr %i.cm, align 16, !noalias !7361
  %i.ch = getelementptr i8, ptr %1, i64 1704
  %.val7.i.i = load ptr, ptr %i.ch, align 8, !noalias !7361, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val6.i.i, ptr nonnull %.val7.i.i) #34
          to label %.body.i.i unwind label %bb.aj, !noalias !7370

bb.aa:                                            ; preds = %bb.v, %bb.p
  %i.ci = phi ptr [ %i.ax, %bb.v ], [ %i.ai, %bb.p ] ; 6 uses
  %i.cj = phi ptr [ %i.ay, %bb.v ], [ %i.ah, %bb.p ] ; 5 uses
  %i.ck = phi ptr [ %i.bb, %bb.v ], [ %.phi.trans.insert.i, %bb.p ] ; 6 uses
  %i.cl = phi ptr [ %i.bc, %bb.v ], [ %i.aw, %bb.p ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7361
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.z, !noalias !7370

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load i64, ptr %i.f, align 8, !range !712, !noalias !7361, !noundef !4 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 21
  br i1 %i.co, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7361
  store i8 3, ptr %i.ck, align 16, !noalias !7361
  br label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.776.0.copyload = load ptr, ptr %.sroa.776.0..sroa_idx, align 8, !noalias !7361
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.878.0.copyload = load ptr, ptr %.sroa.878.0..sroa_idx, align 8, !noalias !7361
  %.sroa.980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cp = load <2 x i64>, ptr %.sroa.980.0..sroa_idx, align 8, !noalias !7361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7361
  %.val.i.i = load ptr, ptr %i.cm, align 16, !noalias !7361 ; 5 uses
  %i.cq = getelementptr i8, ptr %1, i64 1704
  %.val5.i.i = load ptr, ptr %i.cq, align 8, !noalias !7361, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.cr = load ptr, ptr %.val5.i.i, align 8, !invariant.load !4, !noalias !7370 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.cr(ptr noundef nonnull %.val.i.i)
          to label %bb.ae unwind label %bb.ag, !noalias !7370

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !463, !invariant.load !4, !noalias !7370 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !302, !invariant.load !4, !noalias !7370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #35, !noalias !7370
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !463, !invariant.load !4, !noalias !7370 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !302, !invariant.load !4, !noalias !7370
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #35, !noalias !7370
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.af, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.cl)
          to label %.thread unwind label %bb.ai, !noalias !7370

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  store i8 1, ptr %i.ck, align 16, !noalias !7361
  br label %bb.al

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.aj:                                            ; preds = %bb.z, %.body.i.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7370
  unreachable

bb.ak:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7361
  store i8 1, ptr %i.bb, align 16, !noalias !7361
  %i.df = icmp eq i64 %.sroa.8.i.i.sroa.0.0.copyload, 21
  br i1 %i.df, label %bb.as, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.dg = phi ptr [ %i.ci, %.thread ], [ %i.ax, %bb.ak ] ; 4 uses
  %i.dh = phi ptr [ %i.cj, %.thread ], [ %i.ay, %bb.ak ] ; 4 uses
  %i.di = phi ptr [ %i.cl, %.thread ], [ %i.bc, %bb.ak ]
  %.sroa.878.096 = phi ptr [ %.sroa.878.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.8.0.copyload, %bb.ak ] ; 5 uses
  %.sroa.776.095 = phi ptr [ %.sroa.776.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.7.0.copyload, %bb.ak ] ; 5 uses
  %.sroa.074.094 = phi i64 [ %i.cn, %.thread ], [ %.sroa.8.i.i.sroa.0.0.copyload, %bb.ak ] ; 3 uses
  %i.dj = phi <2 x i64> [ %i.cp, %.thread ], [ %i.bh, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.di)
          to label %bb.an unwind label %bb.am, !noalias !7360

bb.am:                                            ; preds = %bb.al
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.an:                                            ; preds = %bb.al
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7371)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %.val.i7.i = load ptr, ptr %i.dm, align 16, !alias.scope !7371, !noalias !7356, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i7.i)
          to label %bb.ao unwind label %.body.i8.i, !noalias !7374

.body.i8.i:                                       ; preds = %bb.an
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #35, !noalias !7374
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dl) #34
          to label %.body10.i unwind label %bb.ap, !noalias !7360

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #35, !noalias !7374
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dl)
          to label %bb.at unwind label %bb.aq, !noalias !7360

bb.ap:                                            ; preds = %.body.i8.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7360
  unreachable

.body10.i:                                        ; preds = %bb.aq, %.body.i8.i, %bb.l
  %i.dp = phi ptr [ %i.ap, %bb.l ], [ %i.dg, %bb.aq ], [ %i.dg, %.body.i8.i ]
  %i.dq = phi ptr [ %i.aq, %bb.l ], [ %i.dh, %bb.aq ], [ %i.dh, %.body.i8.i ]
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.l ], [ %i.dr, %bb.aq ], [ %i.dn, %.body.i8.i ]
  store i8 2, ptr %i.dp, align 16, !noalias !7356
  br label %.body15

bb.aq:                                            ; preds = %bb.ao
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

bb.ar:                                            ; preds = %.body.i, %bb.l
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7360
  unreachable

common.ret:                                       ; preds = %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.as
  %.sink = phi i8 [ 4, %bb.ce ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.as ]
  store i8 %.sink, ptr %i.k, align 16
  ret void

bb.as:                                            ; preds = %bb.ak, %.thread.i
  %i.dt = phi ptr [ %i.ax, %bb.ak ], [ %i.ci, %.thread.i ]
  store i8 3, ptr %i.dt, align 16, !noalias !7356
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %common.ret

bb.at:                                            ; preds = %bb.ao
  store i8 1, ptr %i.dg, align 16, !noalias !7356
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.dh)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.av:                                            ; preds = %bb.at
  %.not.i = icmp eq i64 %.sroa.074.094, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 674 ; 2 uses
  br i1 %.not.i, label %.thread141, label %bb.ax

.thread141:                                       ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.776.095), "nonnull"(ptr %.sroa.878.096) ]
  store ptr %.sroa.776.095, ptr %i.i, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.878.096, ptr %i.dv, align 8
  store i8 0, ptr %3, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !4, !noundef !4
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %.sroa.776.095, ptr %.sroa.759.0..sroa_idx, align 16
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %.sroa.878.096, ptr %.sroa.860.0..sroa_idx, align 8
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr %i.dy, ptr %.sroa.961.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 777
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 777
  br label %bb.bd

bb.aw:                                            ; preds = %bb.cg, %.body27
  %.pn6 = phi { ptr, i32 } [ %i.ha, %bb.cg ], [ %eh.lpad-body28, %.body27 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.ec = load i8, ptr %i.eb, align 2, !range !34, !noundef !4
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ax:                                            ; preds = %bb.av
  store i8 0, ptr %3, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7375)
  call void @llvm.experimental.noalias.scope.decl(metadata !7378)
  %i.ef = load ptr, ptr %i.ee, align 16, !alias.scope !7381, !nonnull !4, !noundef !4
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !7381
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ay, %bb.ax, %bb.ch
  %.sroa.069.0 = phi i64 [ %.sroa.064.0.ph, %bb.ch ], [ %.sroa.074.094, %bb.ax ], [ %.sroa.074.094, %bb.ay ]
  %.sroa.370.0 = phi ptr [ %.sroa.865.0.ph, %bb.ch ], [ %.sroa.776.095, %bb.ax ], [ %.sroa.776.095, %bb.ay ]
  %.sroa.571.0 = phi ptr [ %.sroa.966.0.ph, %bb.ch ], [ %.sroa.878.096, %bb.ax ], [ %.sroa.878.096, %bb.ay ]
  %i.ej = phi <2 x i64> [ %i.gz, %bb.ch ], [ %i.dj, %bb.ax ], [ %i.dj, %bb.ay ]
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.el, align 1
  store i64 %.sroa.069.0, ptr %0, align 8
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.370.0, ptr %.sroa.370.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.571.0, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ej, ptr %.sroa.772.0..sroa_idx, align 8
  br label %common.ret

bb.ba:                                            ; preds = %bb.cl, %bb.cj, %bb.cn, %.body27, %.body15
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.body15, %bb.au, %bb.ci, %bb.cj, %bb.aw
  %.pn8.pn = phi { ptr, i32 } [ %.pn6, %bb.ci ], [ %.pn6, %bb.aw ], [ %.pn6, %bb.cj ], [ %i.du, %bb.au ], [ %eh.lpad-body16, %.body15 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.en, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.ep = load i8, ptr %i.eo, align 1, !range !34, !noundef !4
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit33

bb.bb:                                            ; preds = %bb.bk, %bb.bj
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %bb.bi, %bb.bb
  %i.es = phi ptr [ %i.et, %bb.bb ], [ %i.fp, %bb.bi ]
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.er, %bb.bb ], [ %.pn2.pn.i, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.es) #34
          to label %bb.aw unwind label %bb.ba

bb.bc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %1, i64 777
  %.pre128 = load i8, ptr %.phi.trans.insert127, align 1, !range !1565, !noalias !7382
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 777 ; 4 uses
  switch i8 %.pre128, label %default.unreachable139 [
    i8 0, label %bb.bd
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bm
  ]

bb.bd:                                            ; preds = %.thread141, %bb.bc
  %i.ev = phi ptr [ %i.ea, %.thread141 ], [ %i.eu, %bb.bc ] ; 3 uses
  %i.ew = phi ptr [ %i.dz, %.thread141 ], [ %i.et, %bb.bc ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  store i8 0, ptr %i.ex, align 8, !noalias !7382
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.ez = load ptr, ptr %i.ey, align 16, !noalias !7382, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !7382, !nonnull !4, !align !10, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.fd = load ptr, ptr %i.fc, align 16, !noalias !7382, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7382
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull %i.ez, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.fb, ptr noundef nonnull %i.fd)
          to label %bb.bf unwind label %bb.be, !noalias !7382

bb.be:                                            ; preds = %bb.bd
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7382
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !7386)
  %i.ff = load i64, ptr %i.e, align 8, !range !129, !alias.scope !7389, !noalias !7391, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ff, 20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !7392, !noalias !7382 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !7392, !noalias !7382 ; 4 uses
  br i1 %.not.i.i, label %.thread.i26, label %bb.bh

.thread.i26:                                      ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7382
  store i8 0, ptr %i.ex, align 8, !noalias !7382
  store ptr %i.fh, ptr %i.ew, align 8, !noalias !7382
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %i.fj, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !7382
  %.sroa.923.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  store i8 0, ptr %.sroa.923.0..sroa_idx.i, align 8, !noalias !7382
  br label %bb.bn

bb.bg:                                            ; preds = %.body.i21
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.fl = load i8, ptr %i.fk, align 8, !range !34, !noalias !7382, !noundef !4
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.cd, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %.sroa.12.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fn = load <2 x i64>, ptr %.sroa.12.0..sroa_idx16.i, align 8, !alias.scope !7393, !noalias !7382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7382
  store i8 0, ptr %i.ex, align 8, !noalias !7382
  br label %bb.cf

bb.bi:                                            ; preds = %bb.cd, %bb.bg, %bb.be
  %i.fo = phi ptr [ %i.ev, %bb.be ], [ %i.fs, %bb.cd ], [ %i.fs, %bb.bg ]
  %i.fp = phi ptr [ %i.ew, %bb.be ], [ %i.ft, %bb.cd ], [ %i.ft, %bb.bg ]
  %.pn2.pn.i = phi { ptr, i32 } [ %i.fe, %bb.be ], [ %eh.lpad-body.i22, %bb.cd ], [ %eh.lpad-body.i22, %bb.bg ]
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i8 0, ptr %i.fq, align 8, !noalias !7382
  store i8 2, ptr %i.fo, align 1, !noalias !7382
  br label %.body27

bb.bj:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #37
          to label %.noexc29 unwind label %bb.bb

.noexc29:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #37
          to label %.noexc30 unwind label %bb.bb

.noexc30:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bt, %bb.bs
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21

.body.i21:                                        ; preds = %bb.br, %bb.bl
  %i.fs = phi ptr [ %i.eu, %bb.bl ], [ %i.gb, %bb.br ] ; 2 uses
  %i.ft = phi ptr [ %i.et, %bb.bl ], [ %i.gc, %bb.br ] ; 3 uses
  %.sroa.0.064.i = phi ptr [ undef, %bb.bl ], [ %.sroa.0.065.i, %bb.br ]
  %.sroa.9.060.i = phi ptr [ undef, %bb.bl ], [ %.sroa.9.061.i, %bb.br ] ; 2 uses
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.fr, %bb.bl ], [ %.pn.i.i20, %bb.br ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ft) #34
          to label %bb.bg unwind label %bb.cc, !noalias !7394

bb.bm:                                            ; preds = %bb.bc
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 8, !range !1565, !noalias !7395
  switch i8 %.pre.i19, label %default.unreachable139 [
    i8 0, label %._crit_edge129
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bo
  ]

._crit_edge129:                                   ; preds = %bb.bm
  %.pre130 = load ptr, ptr %i.et, align 16, !noalias !7395
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.pre132 = load ptr, ptr %.phi.trans.insert131, align 8, !noalias !7395
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge129, %.thread.i26
  %i.fu = phi ptr [ %i.ev, %.thread.i26 ], [ %i.eu, %._crit_edge129 ] ; 2 uses
  %i.fv = phi ptr [ %i.ew, %.thread.i26 ], [ %i.et, %._crit_edge129 ] ; 2 uses
  %i.fw = phi ptr [ %i.fj, %.thread.i26 ], [ %.pre132, %._crit_edge129 ]
  %i.fx = phi ptr [ %i.fh, %.thread.i26 ], [ %.pre130, %._crit_edge129 ]
  %i.fy = phi ptr [ %.sroa.923.0..sroa_idx.i, %.thread.i26 ], [ %.phi.trans.insert.i18, %._crit_edge129 ] ; 2 uses
  %.sroa.0.067.i = phi ptr [ %i.fh, %.thread.i26 ], [ undef, %._crit_edge129 ] ; 2 uses
  %.sroa.9.063.i = phi ptr [ %i.fj, %.thread.i26 ], [ undef, %._crit_edge129 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7395
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB8_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12TryStreamExt11try_collectINtNtBE_3vec3VecB2F_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull %i.fx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fw)
          to label %bb.bq unwind label %bb.bp, !noalias !7395

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.bv
end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.y, !noalias !7467

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7467
  unreachable

bb.z:                                             ; preds = %bb.u, %.body.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7467
  unreachable

bb.aa:                                            ; preds = %bb.s
  unreachable

_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.af unwind label %bb.ab

bb.ab:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %select.unfold
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %.noexc32
  %i.ck = getelementptr inbounds i8, ptr %i.bk, i64 -16
  %.val26 = load ptr, ptr %i.ck, align 8, !nonnull !4, !noundef !4
  %i.cl = getelementptr i8, ptr %i.bk, i64 -8
  %.val27 = load ptr, ptr %i.cl, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val27, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !302, !invariant.load !4
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = and i64 %i.co, -16
  %i.cq = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !invariant.load !4, !nonnull !4
  %i.cu = invoke { ptr, ptr } %i.ct(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @113, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.l)
          to label %bb.ae unwind label %bb.ad     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  %i.cw = extractvalue { ptr, ptr } %i.cu, 0
  %i.cx = extractvalue { ptr, ptr } %i.cu, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store ptr %i.cx, ptr %i.cz, align 8
  br label %bb.an

bb.af:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7463
  %i.da = load <2 x ptr>, ptr %i.f, align 16, !noalias !7468
  %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.db = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx, align 16, !noalias !7468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7458
  %i.dc = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.db, i64 0
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.af
  %.sroa.071.0 = phi i64 [ 10, %bb.af ], [ %i.dn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.dd = phi <2 x i64> [ %i.dc, %bb.af ], [ %i.dq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.de = phi <2 x ptr> [ %i.da, %bb.af ], [ %i.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %.body36 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

.body:                                            ; preds = %bb.ad, %bb.am, %bb.au, %bb.av, %.body.i.i, %bb.x, %bb.ab, %.loopexit.split-lp, %.loopexit
  %.pn8.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cg, %bb.x ], [ %.pn.i.i, %.body.i.i ], [ %i.cj, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %i.dy, %bb.au ], [ %i.dk, %bb.am ], [ %i.dy, %bb.av ], [ %i.cv, %bb.ad ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di) #34
          to label %.body36 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.e, %bb.am, %.body, %.body36
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.az, %.body36
  %.pn13 = phi { ptr, i32 } [ %i.ek, %bb.az ], [ %.pn11, %.body36 ], [ %i.z, %bb.f ], [ %i.w, %bb.c ], [ %i.z, %bb.e ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn13

bb.ak:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #37
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #37
  unreachable

bb.am:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val16 = load ptr, ptr %i.dm, align 8
  %i.dl = getelementptr i8, ptr %1, i64 1728
  %.val17 = load ptr, ptr %i.dl, align 8, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val16, ptr nonnull %.val17) #34
          to label %.body unwind label %bb.aj

bb.an:                                            ; preds = %bb.a, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1720 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.dn = load i64, ptr %i.g, align 8, !range !712, !noundef !4 ; 3 uses
  %i.do = icmp eq i64 %i.dn, 21
  br i1 %i.do, label %bb.ap, label %bb.aq

common.ret:                                       ; preds = %bb.ba, %bb.ap
  %storemerge = phi i8 [ 3, %bb.ap ], [ 1, %bb.ba ]
  store i8 %storemerge, ptr %i.h, align 8
  ret void

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.aq:                                            ; preds = %bb.ao
  %.sroa.366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dp = load <2 x ptr>, ptr %.sroa.366.0..sroa_idx, align 8 ; 4 uses
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dq = load <2 x i64>, ptr %.sroa.767.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val = load ptr, ptr %i.dm, align 8            ; 5 uses
  %i.dr = getelementptr i8, ptr %1, i64 1728
  %.val15 = load ptr, ptr %i.dr, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ds = load ptr, ptr %.val15, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i39, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ds(ptr noundef nonnull %.val)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %.val15, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !463, !invariant.load !4 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !302, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, 536870913) %i.dx) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.au:                                            ; preds = %bb.ar
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val15, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !463, !invariant.load !4 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.body, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ec = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !302, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ea, i64 noundef range(i64 1, 536870913) %i.ed) #35
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.at, %bb.as
  %.not.i42 = icmp eq i64 %i.dn, 20
  br i1 %.not.i42, label %bb.aw, label %bb.ag

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ee = extractelement <2 x ptr> %i.dp, i64 0
  %i.ef = extractelement <2 x ptr> %i.dp, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee), "nonnull"(ptr %i.ef) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %.body36 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44: ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ej)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48
  %.sroa.071.1 = phi i64 [ %.sroa.071.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48 ]
  %i.el = phi <2 x i64> [ %i.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48 ]
  %i.em = phi <2 x ptr> [ %i.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48 ]
  store i64 %.sroa.071.1, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.em, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.el, ptr %.sroa.1074.0..sroa_idx, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.en)
          to label %bb.ba unwind label %bb.az
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.825.i.i.i = alloca [24 x i8], align 8    ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 16 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [320 x i8], align 16              ; 5 uses
  %i.v = alloca [1680 x i8], align 8              ; 6 uses
  %i.w = alloca [336 x i8], align 16              ; 6 uses
  %i.x = alloca [320 x i8], align 16              ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [48 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.8265.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.an = alloca [48 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [8 x i8], align 8                ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.3260.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.7256.i.i = alloca [32 x i8], align 8     ; 7 uses
  %i.ar = alloca [320 x i8], align 16             ; 5 uses
  %i.as = alloca [1680 x i8], align 8             ; 6 uses
  %i.at = alloca [336 x i8], align 16             ; 6 uses
  %i.au = alloca [320 x i8], align 16             ; 6 uses
  %i.av = alloca [336 x i8], align 16             ; 42 uses
  %i.aw = alloca [336 x i8], align 16             ; 7 uses
  %i.ax = alloca [56 x i8], align 8               ; 8 uses
  %i.ay = alloca [336 x i8], align 16             ; 7 uses
  %i.az = alloca [2016 x i8], align 16            ; 8 uses
  %i.ba = alloca [336 x i8], align 16             ; 7 uses
  %i.bb = alloca [64 x i8], align 8               ; 7 uses
  %i.bc = alloca [336 x i8], align 16             ; 7 uses
  %i.bd = alloca [432 x i8], align 8              ; 8 uses
  %i.be = alloca [336 x i8], align 16             ; 7 uses
  %i.bf = alloca [432 x i8], align 8              ; 8 uses
  %i.bg = alloca [336 x i8], align 16             ; 7 uses
  %i.bh = alloca [56 x i8], align 8               ; 8 uses
  %i.bi = alloca [336 x i8], align 16             ; 7 uses
  %i.bj = alloca [56 x i8], align 8               ; 8 uses
  %i.bk = alloca [336 x i8], align 16             ; 7 uses
  %i.bl = alloca [528 x i8], align 8              ; 8 uses
  %i.bm = alloca [336 x i8], align 16             ; 7 uses
  %i.bn = alloca [3024 x i8], align 16            ; 8 uses
  %i.bo = alloca [336 x i8], align 16             ; 7 uses
  %i.bp = alloca [2152 x i8], align 8             ; 8 uses
  %i.bq = alloca [64 x i8], align 8               ; 7 uses
  %i.br = alloca [320 x i8], align 16             ; 21 uses
  %i.bs = alloca [200 x i8], align 8              ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 9 uses
  %i.bu = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.bv = alloca [40 x i8], align 8               ; 9 uses
  %i.bw = alloca [48 x i8], align 8               ; 10 uses
  %i.bx = alloca [48 x i8], align 8               ; 7 uses
  %i.by = alloca [56 x i8], align 8               ; 7 uses
  %i.bz = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %i.ca = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.433.i.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.734.i.i = alloca [272 x i8], align 16    ; 6 uses
  %.sroa.3.i.sroa.5.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.7.i = alloca [272 x i8], align 8 ; 6 uses
  %.sroa.826.i.sroa.8.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.826.i.sroa.9.i = alloca [272 x i8], align 8 ; 8 uses
  %i.cb = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cc = alloca [200 x i8], align 8              ; 11 uses
  %.sroa.784.i = alloca [32 x i8], align 16       ; 8 uses
  %.sroa.885.i = alloca [288 x i8], align 16      ; 6 uses
  %.sroa.18.sroa.6.i = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.18.sroa.7.i = alloca [288 x i8], align 8 ; 7 uses
  %i.cd = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.3.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.661.i = alloca [272 x i8], align 16      ; 6 uses
  %.sroa.857.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.958.i = alloca [272 x i8], align 16      ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !range !1565, !noundef !4
  switch i8 %i.cf, label %default.unreachable66 [
    i8 0, label %.thread67
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable66:                            ; preds = %bb.nd, %bb.ld, %bb.do, %bb.dk, %bb.v, %bb.m, %bb.e, %bb.a
  unreachable

.thread67:                                        ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.ch = load ptr, ptr %i.cg, align 16, !nonnull !4, !align !10, !noundef !4
  %i.ci = load ptr, ptr %1, align 16, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !4
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store ptr %i.ci, ptr %.sroa.717.0..sroa_idx, align 16
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store i64 %i.ck, ptr %.sroa.818.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.ch, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1732
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1733
  store i24 65793, ptr %.sroa.13.0..sroa_idx, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.784.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.885.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.661.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1732
  br label %bb.f

.body12:                                          ; preds = %.body
  store i8 2, ptr %i.ce, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #37
  unreachable
end_hunk_4
begin_hunk_5_@_RNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge24prepare_source_and_table0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.avr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.eb) #34
          to label %bb.xn unwind label %bb.y

.body171:                                         ; preds = %bb.ux, %bb.uq, %.body.i, %bb.ed, %bb.xn
  %.pn48.pn = phi { ptr, i32 } [ %.pn45.pn, %bb.xn ], [ %i.atl, %bb.ux ], [ %i.asy, %bb.uq ], [ %i.mx, %bb.ed ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %.thread417

bb.xn:                                            ; preds = %bb.us, %bb.xm, %bb.uv
  %.pn45.pn = phi { ptr, i32 } [ %i.avr, %bb.xm ], [ %i.atk, %bb.uv ], [ %i.atg, %bb.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.ed) #34
          to label %.body171 unwind label %bb.y

bb.xo:                                            ; preds = %.thread417, %bb.wy
  %.pn79.pn420 = phi { ptr, i32 } [ %.pn79, %.thread417 ], [ %.pn77.ph, %bb.wy ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.eh) #34
          to label %.body190 unwind label %bb.y

bb.xp:                                            ; preds = %bb.eb
  %i.avs = getelementptr inbounds nuw i8, ptr %i.dg, i64 336
  store i64 4, ptr %i.avs, align 16, !alias.scope !8566, !noalias !8569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit

bb.xq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.avt = landingpad { ptr, i32 }
          cleanup
  br label %.body152

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.xt, %bb.df
  store i8 0, ptr %i.lh, align 8
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.avv = load i8, ptr %i.avu, align 1, !range !34, !noundef !4
  %i.avw = trunc nuw i8 %i.avv to i1
  br i1 %i.avw, label %bb.xw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.xr:                                            ; preds = %bb.df
  %i.avx = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avx)
          to label %bb.xt unwind label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.avy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avx)
          to label %.body193 unwind label %bb.xu

bb.xt:                                            ; preds = %bb.xr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.xv

bb.xu:                                            ; preds = %bb.xs
  %i.avz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.xv:                                            ; preds = %bb.xt
  %i.awa = landingpad { ptr, i32 }
          cleanup
  br label %.body193

bb.xw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.awb = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.awb)
          to label %bb.xy unwind label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.awc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.awb)
          to label %.body196 unwind label %bb.xz

bb.xy:                                            ; preds = %bb.xw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.awb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ya

bb.xz:                                            ; preds = %bb.xx
  %i.awd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ya:                                            ; preds = %bb.xy
  %i.awe = landingpad { ptr, i32 }
          cleanup
  br label %.body196

bb.yb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 650 ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 2, !range !34, !noundef !4
  %i.awh = trunc nuw i8 %i.awg to i1
  br i1 %i.awh, label %bb.yc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.yb
  store i8 0, ptr %i.awf, align 2
  br label %bb.bd

bb.yc:                                            ; preds = %bb.yb
  %i.awi = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.awi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.awj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.awi)
          to label %.body198 unwind label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.awk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.yc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.awi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.yf

bb.yf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.awl = landingpad { ptr, i32 }
          cleanup
  br label %.body198

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.invoke: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.wg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %1)
          to label %bb.wi unwind label %bb.h

bb.yg:                                            ; preds = %.body152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.eq) #34
          to label %bb.dg unwind label %bb.y

bb.yh:                                            ; preds = %bb.dg
  %i.awm = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.awm) #34
          to label %.body193 unwind label %bb.y

bb.yi:                                            ; preds = %.body193
  %i.awn = getelementptr inbounds nuw i8, ptr %1, i64 584
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.awn) #34
          to label %.body196 unwind label %bb.y

bb.yj:                                            ; preds = %bb.bb
  %i.awo = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.awo) #34
          to label %.body198 unwind label %bb.y

bb.yk:                                            ; preds = %.body198
  %i.awp = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.awp) #34
          to label %bb.bg unwind label %bb.y
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !8576 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !8576 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !8576 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8576 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !8571, !noalias !8574
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !8574, !noalias !8571
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !8571, !noalias !8574
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !8574, !noalias !8571
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
define internal fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [12 x i8], align 4                ; 4 uses
  %i.t = alloca [12 x i8], align 4                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 4                ; 4 uses
  %i.x = alloca [24 x i8], align 4                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [12 x i8], align 4               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 2 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [4 x i8], align 4                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aj = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !3036, !noundef !4
  switch i8 %i.ak, label %bb.b [
    i8 13, label %bb.h
    i8 14, label %bb.j
    i8 15, label %bb.j
    i8 16, label %bb.l
    i8 17, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %0, ptr %i.l, align 8
  %i.al = lshr i64 %.40.val, 2                    ; 2 uses
  %i.am = icmp ult i64 %0, %i.al
  br i1 %i.am, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.al, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.an, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @211, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #37
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.32.val, i64 %0
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i32 %i.ap, ptr %i.n, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !8577, !noalias !8580, !noundef !4 ; 2 uses
  %i.as = and i32 %i.ar, 33554432
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.au = and i32 %i.ar, 67108864
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.aw = call noundef zeroext i1 @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.d
  %i.ax = call noundef zeroext i1 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.g:                                             ; preds = %bb.d
  %i.ay = call noundef zeroext i1 @_RNvXsx_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.ax, %bb.f ], [ %i.ay, %bb.g ], [ %i.aw, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.az = getelementptr i8, ptr %.8.val, i64 32
  %.val182 = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.8.val, i64 40
  %.val183 = load i64, ptr %i.ba, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %0, ptr %i.i, align 8
  %i.bb = lshr i64 %.val183, 2                    ; 2 uses
  %i.bc = icmp ult i64 %0, %i.bb
  br i1 %i.bc, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit188, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.bb, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
end_hunk_5
