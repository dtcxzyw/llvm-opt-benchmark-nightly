inline.NumInlined: 5211
inline.NumDeleted: 2104
begin_hunk_0_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5546
  store ptr %i.an, ptr %i.aj, align 8, !noalias !5546
  %.sroa.5383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5383.0..sroa_idx.i, align 8, !noalias !5546
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @86, ptr noundef nonnull %i.aj)
          to label %bb.gv unwind label %bb.gt, !noalias !5550

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !alias.scope !5799, !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5803
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.gx, !noalias !5550

.noexc172.i:                                      ; preds = %bb.gv
  %i.sk = load i64, ptr %i.a, align 8, !range !17, !noalias !5803, !noundef !8
  %i.sl = trunc nuw i64 %i.sk to i1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !range !18, !noalias !5803, !noundef !8 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.sl, label %bb.gw, label %bb.gz, !prof !19

bb.gw:                                            ; preds = %.noexc172.i
  %i.sp = load i64, ptr %i.so, align 8, !noalias !5803
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.sn, i64 %i.sp) #37
          to label %.noexc173.i unwind label %bb.gx, !noalias !5550

.noexc173.i:                                      ; preds = %bb.gw
  unreachable

.body189.i:                                       ; preds = %bb.ha, %bb.gy, %bb.gx
  %.pn72.i = phi { ptr, i32 } [ %i.sr, %bb.gy ], [ %i.sq, %bb.gx ], [ %i.su, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5546
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #38
          to label %.body195.i unwind label %bb.av, !noalias !5550

bb.gx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i, %bb.gw, %bb.gv
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

bb.gy:                                            ; preds = %bb.gz
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5546
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #38
          to label %.body189.i unwind label %bb.av, !noalias !5550

bb.gz:                                            ; preds = %.noexc172.i
  %i.ss = load ptr, ptr %i.so, align 8, !noalias !5803, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5803
  store i64 %i.sn, ptr %i.ai, align 8, !noalias !5546
  %.sroa.4443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ss, ptr %.sroa.4443.0..sroa_idx.i, align 8, !noalias !5546
  %.sroa.5444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5444.0..sroa_idx.i, align 8, !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5546
  store ptr %i.al, ptr %i.ah, align 8, !noalias !5546
  %.sroa.5385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5385.0..sroa_idx.i, align 8, !noalias !5546
  %i.st = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.st, align 8, !noalias !5546
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5387.0..sroa_idx.i, align 8, !noalias !5546
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @22, ptr noundef nonnull %i.ah)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i unwind label %bb.gy, !noalias !5550

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i:  ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5546
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i unwind label %bb.ha, !noalias !5550

bb.ha:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body189.i unwind label %bb.hb, !noalias !5550

bb.hb:                                            ; preds = %bb.ha
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !5550
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i unwind label %bb.gx, !noalias !5550

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5546
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i unwind label %bb.hc, !noalias !5550

bb.hc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body195.i unwind label %bb.hd, !noalias !5550

bb.hd:                                            ; preds = %bb.hc
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !5550
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit192.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.hf unwind label %bb.he, !noalias !5550

.body195.i:                                       ; preds = %bb.he, %bb.hc, %.body189.i, %bb.gt
  %.pn74.i = phi { ptr, i32 } [ %i.sj, %bb.gt ], [ %.pn72.i, %.body189.i ], [ %i.sy, %bb.he ], [ %i.sw, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.an) #38
          to label %bb.hg unwind label %bb.av, !noalias !5550

bb.he:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i

bb.hf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5546
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5546
  %i.sz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 10, ptr %i.sz, align 8, !noalias !5546
  store i64 36, ptr %i.r, align 16, !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.an)
          to label %bb.hi unwind label %bb.hh, !noalias !5550

bb.hg:                                            ; preds = %bb.hh, %.body195.i
  %.pn80.i = phi { ptr, i32 } [ %i.ta, %bb.hh ], [ %.pn74.i, %.body195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.hh:                                            ; preds = %bb.hf
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hi:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5546
  br label %bb.ks

bb.hj:                                            ; preds = %bb.hk
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.te) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !5550

bb.hk:                                            ; preds = %bb.gs, %bb.f
  %.sink15.i203.sroa.gep333.i77 = phi ptr [ %.sink15.i203.sroa.gep333.i, %bb.f ], [ %.sink15.i203.sroa.gep333.i78, %bb.gs ] ; 2 uses
  %.sink15.i203.sroa.gep.i71 = phi ptr [ %.sink15.i203.sroa.gep.i, %bb.f ], [ %.sink15.i203.sroa.gep.i72, %bb.gs ]
  %.sink18.i201.sroa.gep332.i65 = phi ptr [ %.sink18.i201.sroa.gep332.i, %bb.f ], [ %.sink18.i201.sroa.gep332.i66, %bb.gs ] ; 2 uses
  %.sink18.i201.sroa.gep.i59 = phi ptr [ %.sink18.i201.sroa.gep.i, %bb.f ], [ %.sink18.i201.sroa.gep.i60, %bb.gs ]
  %i.tc = phi ptr [ %i.bm, %bb.f ], [ %i.rw, %bb.gs ] ; 9 uses
  %i.td = phi ptr [ %i.bl, %bb.f ], [ %i.rx, %bb.gs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5546
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.av, ptr noundef nonnull align 8 %i.te, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hl unwind label %bb.hj, !noalias !5550

bb.hl:                                            ; preds = %bb.hk
  %i.tf = load i64, ptr %i.av, align 8, !range !5488, !noalias !5546, !noundef !8 ; 3 uses
  %i.tg = icmp eq i64 %i.tf, 21
  br i1 %i.tg, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5546
  br label %.thread115

bb.hn:                                            ; preds = %bb.hl
  %.sroa.3315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3315.0.copyload.i = load ptr, ptr %.sroa.3315.0..sroa_idx.i, align 8, !noalias !5546 ; 3 uses
  %.sroa.5316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5316.0.copyload.i = load ptr, ptr %.sroa.5316.0..sroa_idx.i, align 8, !noalias !5546 ; 3 uses
  %.sroa.7317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.0..sroa_idx.i, i64 16, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.te)
          to label %bb.hp unwind label %bb.ho, !noalias !5550

bb.ho:                                            ; preds = %bb.hn
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.hp:                                            ; preds = %bb.hn
  %.not.i199.i = icmp eq i64 %i.tf, 20
  br i1 %.not.i199.i, label %bb.hq, label %bb.il

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3315.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5316.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5546
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5546
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.tl = load ptr, ptr %i.tk, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  call void @llvm.experimental.noalias.scope.decl(metadata !5810)
  %i.tm = load i64, ptr %i.tl, align 8, !range !45, !alias.scope !5810, !noalias !5812, !noundef !8 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !alias.scope !5810, !noalias !5812, !nonnull !8, !noundef !8 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !5810, !noalias !5812, !noundef !8 ; 3 uses
  %i.tr = atomicrmw add ptr %i.to, i64 1 monotonic, align 8, !noalias !5813
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
  store ptr %.sink16.i202.i, ptr %.sink18.i201.sroa.phi.i, align 8, !alias.scope !5807, !noalias !5814
  store i64 %.sink13.i204.i, ptr %.sink15.i203.sroa.phi.i, align 8, !alias.scope !5807, !noalias !5814
  br label %bb.ie

bb.hv:                                            ; preds = %bb.hs
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tu = load ptr, ptr %i.tt, align 8, !alias.scope !5810, !noalias !5812, !nonnull !8, !noundef !8 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tw = load i64, ptr %i.tv, align 8, !alias.scope !5810, !noalias !5812, !noundef !8
  %i.tx = atomicrmw add ptr %i.tu, i64 1 monotonic, align 8, !noalias !5813
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
  %i.ua = load ptr, ptr %i.tz, align 8, !alias.scope !5810, !noalias !5812, !nonnull !8, !noundef !8 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.uc = load i64, ptr %i.ub, align 8, !alias.scope !5810, !noalias !5812, !noundef !8
  %i.ud = atomicrmw add ptr %i.ua, i64 1 monotonic, align 8, !noalias !5813
  %i.ue = icmp slt i64 %i.ud, 0
  br i1 %i.ue, label %bb.ib, label %bb.ia

bb.hz:                                            ; preds = %bb.ht
  call void @llvm.trap()
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.ug = load ptr, ptr %i.uf, align 8, !alias.scope !5810, !noalias !5812, !nonnull !8, !noundef !8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !5810, !noalias !5812, !noundef !8
  %i.uj = atomicrmw add ptr %i.ug, i64 1 monotonic, align 8, !noalias !5813
  %i.uk = icmp slt i64 %i.uj, 0
  br i1 %i.uk, label %bb.id, label %bb.ic

bb.ib:                                            ; preds = %bb.hy
  call void @llvm.trap()
  unreachable

bb.ic:                                            ; preds = %bb.ia
  store ptr %i.to, ptr %.sink18.i201.sroa.gep332.i65, align 8, !alias.scope !5807, !noalias !5814
  store i64 %i.tq, ptr %.sink15.i203.sroa.gep333.i77, align 8, !alias.scope !5807, !noalias !5814
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
  store ptr %.sink10.i210.i, ptr %i.ul, align 8, !alias.scope !5807, !noalias !5814
  %i.um = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink9.i211.i
  store i64 %.sink7.i212.i, ptr %i.um, align 8, !alias.scope !5807, !noalias !5814
  store i64 %i.tm, ptr %i.as, align 8, !alias.scope !5807, !noalias !5814
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.as, ptr noundef nonnull %.sroa.3315.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5316.0.copyload.i)
          to label %bb.if unwind label %bb.ij, !noalias !5550

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5815)
  %i.un = load i64, ptr %i.at, align 8, !range !120, !alias.scope !5818, !noalias !5820, !noundef !8 ; 2 uses
  %.not.i216.i = icmp eq i64 %i.un, 20
  %i.uo = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !alias.scope !5821, !noalias !5546 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !alias.scope !5821, !noalias !5546 ; 2 uses
  br i1 %.not.i216.i, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5546
  store ptr %i.up, ptr %i.au, align 8, !noalias !5546
  %i.us = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ur, ptr %i.us, align 8, !noalias !5546
  %i.ut = icmp eq ptr %i.up, null
  br i1 %i.ut, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.uu = atomicrmw sub ptr %i.up, i64 1 release, align 8, !noalias !5822
  %i.uv = icmp eq i64 %i.uu, 1
  br i1 %i.uv, label %bb.ii, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ii:                                            ; preds = %bb.ih
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.thread467.i, !noalias !5550

.thread467.i:                                     ; preds = %bb.ii
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ii, %bb.ih, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5546
  %i.ux = load ptr, ptr %i.ti, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ux)
          to label %bb.ks unwind label %.thread464.i, !noalias !5550

bb.ij:                                            ; preds = %bb.ie
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread464.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ik:                                            ; preds = %bb.if
  %.sroa.12330.0..sroa_idx331.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.4337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4337.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12330.0..sroa_idx331.i, i64 16, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5829)
  %i.va = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.un, ptr %i.va, align 8, !alias.scope !5832, !noalias !5546
  %.sroa.2335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.up, ptr %.sroa.2335.0..sroa_idx.i, align 16, !alias.scope !5832, !noalias !5546
  %.sroa.3336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ur, ptr %.sroa.3336.0..sroa_idx.i, align 8, !alias.scope !5832, !noalias !5546
  store i64 36, ptr %i.r, align 16, !alias.scope !5834, !noalias !5835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5546
  br label %bb.ks

bb.il:                                            ; preds = %bb.hp
  %.sroa.4321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4321.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, i64 16, i1 false), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5836)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.tf, ptr %i.vb, align 8, !alias.scope !5839, !noalias !5546
  %.sroa.2319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3315.0.copyload.i, ptr %.sroa.2319.0..sroa_idx.i, align 16, !alias.scope !5839, !noalias !5546
  %.sroa.3320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5316.0.copyload.i, ptr %.sroa.3320.0..sroa_idx.i, align 8, !alias.scope !5839, !noalias !5546
  store i64 36, ptr %i.r, align 16, !alias.scope !5841, !noalias !5842
  br label %bb.ks

bb.im:                                            ; preds = %bb.in
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.vf) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !5550

bb.in:                                            ; preds = %bb.gs, %bb.f
  %.sink15.i225.sroa.gep377.i101 = phi ptr [ %.sink15.i225.sroa.gep377.i, %bb.f ], [ %.sink15.i225.sroa.gep377.i102, %bb.gs ] ; 2 uses
  %.sink15.i225.sroa.gep.i95 = phi ptr [ %.sink15.i225.sroa.gep.i, %bb.f ], [ %.sink15.i225.sroa.gep.i96, %bb.gs ]
  %.sink18.i223.sroa.gep376.i89 = phi ptr [ %.sink18.i223.sroa.gep376.i, %bb.f ], [ %.sink18.i223.sroa.gep376.i90, %bb.gs ] ; 2 uses
  %.sink18.i223.sroa.gep.i83 = phi ptr [ %.sink18.i223.sroa.gep.i, %bb.f ], [ %.sink18.i223.sroa.gep.i84, %bb.gs ]
  %i.vd = phi ptr [ %i.bm, %bb.f ], [ %i.rw, %bb.gs ] ; 9 uses
  %i.ve = phi ptr [ %i.bl, %bb.f ], [ %i.rx, %bb.gs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5546
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ar, ptr noundef nonnull align 8 %i.vf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.io unwind label %bb.im, !noalias !5550

bb.io:                                            ; preds = %bb.in
  %i.vg = load i64, ptr %i.ar, align 8, !range !5488, !noalias !5546, !noundef !8 ; 3 uses
  %i.vh = icmp eq i64 %i.vg, 21
  br i1 %i.vh, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5546
  br label %.thread115

bb.iq:                                            ; preds = %bb.io
  %.sroa.3359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3359.0.copyload.i = load ptr, ptr %.sroa.3359.0..sroa_idx.i, align 8, !noalias !5546 ; 3 uses
  %.sroa.5360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.5360.0.copyload.i = load ptr, ptr %.sroa.5360.0..sroa_idx.i, align 8, !noalias !5546 ; 3 uses
  %.sroa.7361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.0..sroa_idx.i, i64 16, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.vf)
          to label %bb.is unwind label %bb.ir, !noalias !5550

bb.ir:                                            ; preds = %bb.iq
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.is:                                            ; preds = %bb.iq
  %.not.i220.i = icmp eq i64 %i.vg, 20
  br i1 %.not.i220.i, label %bb.it, label %bb.jo

bb.it:                                            ; preds = %bb.is
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3359.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5360.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5546
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5546
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.vm = load ptr, ptr %i.vl, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5843)
  call void @llvm.experimental.noalias.scope.decl(metadata !5846)
  %i.vn = load i64, ptr %i.vm, align 8, !range !45, !alias.scope !5846, !noalias !5848, !noundef !8 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !5846, !noalias !5848, !nonnull !8, !noundef !8 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !5846, !noalias !5848, !noundef !8 ; 3 uses
  %i.vs = atomicrmw add ptr %i.vp, i64 1 monotonic, align 8, !noalias !5849
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
  store ptr %.sink16.i224.i, ptr %.sink18.i223.sroa.phi.i, align 8, !alias.scope !5843, !noalias !5850
  store i64 %.sink13.i226.i, ptr %.sink15.i225.sroa.phi.i, align 8, !alias.scope !5843, !noalias !5850
  br label %bb.jh

bb.iy:                                            ; preds = %bb.iv
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !alias.scope !5846, !noalias !5848, !nonnull !8, !noundef !8 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.vx = load i64, ptr %i.vw, align 8, !alias.scope !5846, !noalias !5848, !noundef !8
  %i.vy = atomicrmw add ptr %i.vv, i64 1 monotonic, align 8, !noalias !5849
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
  %i.wb = load ptr, ptr %i.wa, align 8, !alias.scope !5846, !noalias !5848, !nonnull !8, !noundef !8 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.wd = load i64, ptr %i.wc, align 8, !alias.scope !5846, !noalias !5848, !noundef !8
  %i.we = atomicrmw add ptr %i.wb, i64 1 monotonic, align 8, !noalias !5849
  %i.wf = icmp slt i64 %i.we, 0
  br i1 %i.wf, label %bb.je, label %bb.jd

bb.jc:                                            ; preds = %bb.iw
  call void @llvm.trap()
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vm, i64 40
  %i.wh = load ptr, ptr %i.wg, align 8, !alias.scope !5846, !noalias !5848, !nonnull !8, !noundef !8 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vm, i64 48
  %i.wj = load i64, ptr %i.wi, align 8, !alias.scope !5846, !noalias !5848, !noundef !8
  %i.wk = atomicrmw add ptr %i.wh, i64 1 monotonic, align 8, !noalias !5849
  %i.wl = icmp slt i64 %i.wk, 0
  br i1 %i.wl, label %bb.jg, label %bb.jf

bb.je:                                            ; preds = %bb.jb
  call void @llvm.trap()
  unreachable

bb.jf:                                            ; preds = %bb.jd
  store ptr %i.vp, ptr %.sink18.i223.sroa.gep376.i89, align 8, !alias.scope !5843, !noalias !5850
  store i64 %i.vr, ptr %.sink15.i225.sroa.gep377.i101, align 8, !alias.scope !5843, !noalias !5850
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
  store ptr %.sink10.i232.i, ptr %i.wm, align 8, !alias.scope !5843, !noalias !5850
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink9.i233.i
  store i64 %.sink7.i234.i, ptr %i.wn, align 8, !alias.scope !5843, !noalias !5850
  store i64 %i.vn, ptr %i.ao, align 8, !alias.scope !5843, !noalias !5850
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ao, ptr noundef nonnull %.sroa.3359.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5360.0.copyload.i)
          to label %bb.ji unwind label %bb.jm, !noalias !5550

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5851)
  %i.wo = load i64, ptr %i.ap, align 8, !range !120, !alias.scope !5854, !noalias !5856, !noundef !8 ; 2 uses
  %.not.i238.i = icmp eq i64 %i.wo, 20
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !alias.scope !5857, !noalias !5546 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !5857, !noalias !5546 ; 2 uses
  br i1 %.not.i238.i, label %bb.jj, label %bb.jn

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5546
  store ptr %i.wq, ptr %i.aq, align 8, !noalias !5546
  %i.wt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ws, ptr %i.wt, align 8, !noalias !5546
  %i.wu = icmp eq ptr %i.wq, null
  br i1 %i.wu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.wv = atomicrmw sub ptr %i.wq, i64 1 release, align 8, !noalias !5858
  %i.ww = icmp eq i64 %i.wv, 1
  br i1 %i.ww, label %bb.jl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i

bb.jl:                                            ; preds = %bb.jk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i unwind label %.thread488.i, !noalias !5550

.thread488.i:                                     ; preds = %bb.jl
  %i.wx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i: ; preds = %bb.jl, %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5546
  %i.wy = load ptr, ptr %i.vj, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wy)
          to label %bb.ks unwind label %.thread485.i, !noalias !5550

bb.jm:                                            ; preds = %bb.jh
  %i.wz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread485.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit242.i
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.jn:                                            ; preds = %bb.ji
  %.sroa.12374.0..sroa_idx375.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.4381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4381.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12374.0..sroa_idx375.i, i64 16, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5865)
  %i.xb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.wo, ptr %i.xb, align 8, !alias.scope !5868, !noalias !5546
  %.sroa.2379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.wq, ptr %.sroa.2379.0..sroa_idx.i, align 16, !alias.scope !5868, !noalias !5546
  %.sroa.3380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ws, ptr %.sroa.3380.0..sroa_idx.i, align 8, !alias.scope !5868, !noalias !5546
  store i64 36, ptr %i.r, align 16, !alias.scope !5870, !noalias !5871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5546
  br label %bb.ks

bb.jo:                                            ; preds = %bb.is
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4365.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, i64 16, i1 false), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5872)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.vg, ptr %i.xc, align 8, !alias.scope !5875, !noalias !5546
  %.sroa.2363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3359.0.copyload.i, ptr %.sroa.2363.0..sroa_idx.i, align 16, !alias.scope !5875, !noalias !5546
  %.sroa.3364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5360.0.copyload.i, ptr %.sroa.3364.0..sroa_idx.i, align 8, !alias.scope !5875, !noalias !5546
  store i64 36, ptr %i.r, align 16, !alias.scope !5877, !noalias !5878
  br label %bb.ks

bb.jp:                                            ; preds = %bb.jq
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.xg) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !5550

bb.jq:                                            ; preds = %bb.f, %bb.ai
  %.sink15.i250.sroa.gep431.i113 = phi ptr [ %.sink15.i250.sroa.gep431.i, %bb.f ], [ %.sink15.i250.sroa.gep431.i114, %bb.ai ] ; 2 uses
  %.sink15.i250.sroa.gep.i111 = phi ptr [ %.sink15.i250.sroa.gep.i, %bb.f ], [ %.sink15.i250.sroa.gep.i112, %bb.ai ]
  %.sink18.i248.sroa.gep430.i109 = phi ptr [ %.sink18.i248.sroa.gep430.i, %bb.f ], [ %.sink18.i248.sroa.gep430.i110, %bb.ai ] ; 2 uses
  %.sink18.i248.sroa.gep.i107 = phi ptr [ %.sink18.i248.sroa.gep.i, %bb.f ], [ %.sink18.i248.sroa.gep.i108, %bb.ai ]
  %i.xe = phi ptr [ %i.bm, %bb.f ], [ %i.bn, %bb.ai ] ; 9 uses
  %i.xf = phi ptr [ %i.bl, %bb.f ], [ %i.bo, %bb.ai ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5546
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ab, ptr noundef nonnull align 8 %i.xg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jr unwind label %bb.jp, !noalias !5550

bb.jr:                                            ; preds = %bb.jq
  %i.xh = load i64, ptr %i.ab, align 8, !range !5488, !noalias !5546, !noundef !8 ; 3 uses
  %i.xi = icmp eq i64 %i.xh, 21
  br i1 %i.xi, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5546
  br label %.thread115

bb.jt:                                            ; preds = %bb.jr
  %.sroa.3413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.3413.0.copyload.i = load ptr, ptr %.sroa.3413.0..sroa_idx.i, align 8, !noalias !5546 ; 3 uses
  %.sroa.5414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5414.0.copyload.i = load ptr, ptr %.sroa.5414.0..sroa_idx.i, align 8, !noalias !5546 ; 3 uses
  %.sroa.7415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.0..sroa_idx.i, i64 16, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5546
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.xg)
          to label %bb.jv unwind label %bb.ju, !noalias !5550

bb.ju:                                            ; preds = %bb.jt
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.jv:                                            ; preds = %bb.jt
  %.not.i245.i = icmp eq i64 %i.xh, 20
  br i1 %.not.i245.i, label %bb.jw, label %bb.kr

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3413.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5414.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5546
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5546
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.xn = load ptr, ptr %i.xm, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5882)
  %i.xo = load i64, ptr %i.xn, align 8, !range !45, !alias.scope !5882, !noalias !5884, !noundef !8 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8, !alias.scope !5882, !noalias !5884, !nonnull !8, !noundef !8 ; 4 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !5882, !noalias !5884, !noundef !8 ; 3 uses
  %i.xt = atomicrmw add ptr %i.xq, i64 1 monotonic, align 8, !noalias !5885
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
  tail call void @llvm.trap()
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
  store ptr %.sink16.i249.i, ptr %.sink18.i248.sroa.phi.i, align 8, !alias.scope !5879, !noalias !5886
  store i64 %.sink13.i251.i, ptr %.sink15.i250.sroa.phi.i, align 8, !alias.scope !5879, !noalias !5886
  br label %bb.kk

bb.kb:                                            ; preds = %bb.jy
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8, !alias.scope !5882, !noalias !5884, !nonnull !8, !noundef !8 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  %i.xy = load i64, ptr %i.xx, align 8, !alias.scope !5882, !noalias !5884, !noundef !8
  %i.xz = atomicrmw add ptr %i.xw, i64 1 monotonic, align 8, !noalias !5885
  %i.ya = icmp slt i64 %i.xz, 0
  br i1 %i.ya, label %bb.kd, label %.sink.split.i247.i

bb.kc:                                            ; preds = %bb.jy
  tail call void @llvm.trap()
  unreachable

bb.kd:                                            ; preds = %bb.kb
  tail call void @llvm.trap()
  unreachable

bb.ke:                                            ; preds = %bb.jz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8, !alias.scope !5882, !noalias !5884, !nonnull !8, !noundef !8 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  %i.ye = load i64, ptr %i.yd, align 8, !alias.scope !5882, !noalias !5884, !noundef !8
  %i.yf = atomicrmw add ptr %i.yc, i64 1 monotonic, align 8, !noalias !5885
  %i.yg = icmp slt i64 %i.yf, 0
  br i1 %i.yg, label %bb.kh, label %bb.kg

bb.kf:                                            ; preds = %bb.jz
  tail call void @llvm.trap()
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  %i.yi = load ptr, ptr %i.yh, align 8, !alias.scope !5882, !noalias !5884, !nonnull !8, !noundef !8 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xn, i64 48
  %i.yk = load i64, ptr %i.yj, align 8, !alias.scope !5882, !noalias !5884, !noundef !8
  %i.yl = atomicrmw add ptr %i.yi, i64 1 monotonic, align 8, !noalias !5885
  %i.ym = icmp slt i64 %i.yl, 0
  br i1 %i.ym, label %bb.kj, label %bb.ki

bb.kh:                                            ; preds = %bb.ke
  tail call void @llvm.trap()
  unreachable

bb.ki:                                            ; preds = %bb.kg
  store ptr %i.xq, ptr %.sink18.i248.sroa.gep430.i109, align 8, !alias.scope !5879, !noalias !5886
  store i64 %i.xs, ptr %.sink15.i250.sroa.gep431.i113, align 8, !alias.scope !5879, !noalias !5886
  br label %.sink.split.i247.i

bb.kj:                                            ; preds = %bb.kg
  tail call void @llvm.trap()
  unreachable

bb.kk:                                            ; preds = %.sink.split.i247.i, %bb.jx
  %.sink12.i256.i = phi i64 [ 8, %bb.jx ], [ %.sink12.ph.i252.i, %.sink.split.i247.i ]
  %.sink10.i257.i = phi ptr [ %i.xq, %bb.jx ], [ %.sink10.ph.i253.i, %.sink.split.i247.i ]
  %.sink9.i258.i = phi i64 [ 16, %bb.jx ], [ %.sink9.ph.i254.i, %.sink.split.i247.i ]
  %.sink7.i259.i = phi i64 [ %i.xs, %bb.jx ], [ %.sink7.ph.i255.i, %.sink.split.i247.i ]
  %i.yn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink12.i256.i
  store ptr %.sink10.i257.i, ptr %i.yn, align 8, !alias.scope !5879, !noalias !5886
  %i.yo = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink9.i258.i
  store i64 %.sink7.i259.i, ptr %i.yo, align 8, !alias.scope !5879, !noalias !5886
  store i64 %i.xo, ptr %i.y, align 8, !alias.scope !5879, !noalias !5886
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %.sroa.3413.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5414.0.copyload.i)
          to label %bb.kl unwind label %bb.kp, !noalias !5550

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5887)
  %i.yp = load i64, ptr %i.z, align 8, !range !120, !alias.scope !5890, !noalias !5892, !noundef !8 ; 2 uses
  %.not.i263.i = icmp eq i64 %i.yp, 20
  %i.yq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !alias.scope !5893, !noalias !5546 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !alias.scope !5893, !noalias !5546 ; 2 uses
  br i1 %.not.i263.i, label %bb.km, label %bb.kq

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5546
  store ptr %i.yr, ptr %i.aa, align 8, !noalias !5546
  %i.yu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.yt, ptr %i.yu, align 8, !noalias !5546
  %i.yv = icmp eq ptr %i.yr, null
  br i1 %i.yv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.yw = atomicrmw sub ptr %i.yr, i64 1 release, align 8, !noalias !5894
  %i.yx = icmp eq i64 %i.yw, 1
  br i1 %i.yx, label %bb.ko, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i unwind label %.thread509.i, !noalias !5550

.thread509.i:                                     ; preds = %bb.ko
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i: ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5546
  %i.yz = load ptr, ptr %i.xk, align 8, !noalias !5546, !nonnull !8, !align !139, !noundef !8
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yz)
          to label %bb.ks unwind label %.thread506.i, !noalias !5550

bb.kp:                                            ; preds = %bb.kk
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5546
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread506.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit267.i
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.kq:                                            ; preds = %bb.kl
  %.sroa.12428.0..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4435.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx429.i, i64 16, i1 false), !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5546
  call void @llvm.experimental.noalias.scope.decl(metadata !5901)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.yp, ptr %i.zc, align 8, !alias.scope !5904, !noalias !5546
  %.sroa.2433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.yr, ptr %.sroa.2433.0..sroa_idx.i, align 16, !alias.scope !5904, !noalias !5546
  %.sroa.3434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.yt, ptr %.sroa.3434.0..sroa_idx.i, align 8, !alias.scope !5904, !noalias !5546
  store i64 36, ptr %i.r, align 16, !alias.scope !5906, !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5546
  br label %bb.ks

bb.kr:                                            ; preds = %bb.jv
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, i64 16, i1 false), !noalias !5546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5908)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.xh, ptr %i.zd, align 8, !alias.scope !5911, !noalias !5546
  %.sroa.2417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3413.0.copyload.i, ptr %.sroa.2417.0..sroa_idx.i, align 16, !alias.scope !5911, !noalias !5546
  %.sroa.3418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5414.0.copyload.i, ptr %.sroa.3418.0..sroa_idx.i, align 8, !alias.scope !5911, !noalias !5546
  store i64 36, ptr %i.r, align 16, !alias.scope !5913, !noalias !5914
  br label %bb.ks

.thread115:                                       ; preds = %bb.js, %bb.ip, %bb.hm, %bb.go
  %.ph = phi ptr [ %i.mh, %bb.go ], [ %i.tc, %bb.hm ], [ %i.vd, %bb.ip ], [ %i.xe, %bb.js ]
  %.sink.i.ph = phi i8 [ 3, %bb.go ], [ 4, %bb.hm ], [ 5, %bb.ip ], [ 6, %bb.js ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !5546
end_hunk_0
begin_hunk_1_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks15run_tpcds_query0B3_:bb.a
    i8 3, label %bb.cg
    i8 4, label %bb.hq
    i8 5, label %bb.r
    i8 6, label %bb.s
    i8 7, label %bb.t
    i8 8, label %bb.u
    i8 9, label %bb.v
  ]

bb.q:                                             ; preds = %.thread243, %bb.p
  %i.dl = phi ptr [ %i.dg, %.thread243 ], [ %i.dk, %bb.p ] ; 2 uses
  %i.dm = phi ptr [ %i.df, %.thread243 ], [ %i.dj, %bb.p ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.dn, i8 0, i64 6, i1 false), !noalias !5922
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !5922, !nonnull !8, !align !139, !noundef !8
  store ptr %i.dq, ptr %i.do, align 16, !noalias !5922
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ds = load ptr, ptr %i.dr, align 16, !noalias !5922, !nonnull !8, !noundef !8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.du = load i64, ptr %i.dt, align 8, !noalias !5922, !noundef !8
  store ptr %i.ds, ptr %i.dm, align 16, !noalias !5922
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.du, ptr %i.dv, align 8, !noalias !5922
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.dw)
          to label %bb.y unwind label %bb.x, !noalias !5926

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5922
  br label %bb.jk

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !5922
  br label %bb.jv

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5922
  br label %bb.kl

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5922
  br label %bb.lk

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5922
  br label %bb.ac

bb.w:                                             ; preds = %bb.mw, %bb.x
  %i.dx = phi ptr [ %i.dz, %bb.x ], [ %i.agc, %bb.mw ]
  %i.dy = phi ptr [ %i.ea, %bb.x ], [ %i.agd, %bb.mw ]
  %.pn87.i = phi { ptr, i32 } [ %i.eb, %bb.x ], [ %.pn80.pn.pn.pn.i, %bb.mw ]
  store i8 2, ptr %i.dx, align 2, !noalias !5922
  br label %.body

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.q
  %i.dz = phi ptr [ %i.afm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dl, %bb.q ]
  %i.ea = phi ptr [ %i.afn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dm, %bb.q ]
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @124, ptr %i.ec, align 16, !noalias !5922
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr getelementptr inbounds nuw (i8, ptr @124, i64 384), ptr %i.ed, align 8, !noalias !5922
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.y
  %i.ee = phi ptr [ %i.ej, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dl, %bb.y ] ; 4 uses
  %i.ef = phi ptr [ %i.ek, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dm, %bb.y ] ; 5 uses
  %i.eg = phi ptr [ %.pre359.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ getelementptr inbounds nuw (i8, ptr @124, i64 384), %bb.y ]
  %i.eh = phi ptr [ %.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ @124, %bb.y ] ; 3 uses
  %i.ei = icmp eq ptr %i.eh, %i.eg
  br i1 %i.ei, label %.thread193, label %bb.bm

bb.aa:                                            ; preds = %bb.p
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #40
          to label %.noexc unwind label %bb.og

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.p
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #40
          to label %.noexc59 unwind label %bb.og

.noexc59:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.lz, %bb.v
  %i.ej = phi ptr [ %i.abx, %bb.lz ], [ %i.dk, %bb.v ] ; 15 uses
  %i.ek = phi ptr [ %i.aby, %bb.lz ], [ %i.dj, %bb.v ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5922
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.el, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ae unwind label %bb.ad, !noalias !5926

bb.ad:                                            ; preds = %bb.ac
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5922
  %.val97.i = load ptr, ptr %i.el, align 16, !noalias !5922
  %i.en = getelementptr i8, ptr %0, i64 1016
  %.val98.i = load ptr, ptr %i.en, align 8, !noalias !5922, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val97.i, ptr nonnull %.val98.i) #38
          to label %.body108.i unwind label %bb.mb, !noalias !5926

bb.ae:                                            ; preds = %bb.ac
  %i.eo = load i64, ptr %i.au, align 8, !range !5488, !noalias !5922, !noundef !8 ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 21
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5922
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %.sroa.3319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.3319.0.copyload.i = load ptr, ptr %.sroa.3319.0..sroa_idx.i, align 8, !noalias !5922 ; 3 uses
  %.sroa.5320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5320.0.copyload.i = load ptr, ptr %.sroa.5320.0..sroa_idx.i, align 8, !noalias !5922 ; 3 uses
  %.sroa.7321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7321.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7321.0..sroa_idx.i, i64 16, i1 false), !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5922
  %.val99.i = load ptr, ptr %i.el, align 16, !noalias !5922 ; 5 uses
  %i.eq = getelementptr i8, ptr %0, i64 1016
  %.val100.i = load ptr, ptr %i.eq, align 8, !noalias !5922, !nonnull !8, !align !139, !noundef !8 ; 5 uses
  %i.er = load ptr, ptr %.val100.i, align 8, !invariant.load !8, !noalias !5926 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99.i) ]
  invoke void %i.er(ptr noundef nonnull %.val99.i)
          to label %bb.ai unwind label %bb.ak, !noalias !5926

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %.val100.i, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !205, !invariant.load !8, !noalias !5926 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %.val100.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !range !121, !invariant.load !8, !noalias !5926
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99.i, i64 noundef range(i64 1, 0) %i.et, i64 noundef range(i64 1, 536870913) %i.ew) #36, !noalias !5926
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ak:                                            ; preds = %bb.ah
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val100.i, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !range !205, !invariant.load !8, !noalias !5926 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %.body108.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %.val100.i, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !range !121, !invariant.load !8, !noalias !5926
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99.i, i64 noundef range(i64 1, 0) %i.ez, i64 noundef range(i64 1, 536870913) %i.fc) #36, !noalias !5926
  br label %.body108.i

.body108.i:                                       ; preds = %bb.al, %bb.ak, %bb.ad
  %.pn52.i = phi { ptr, i32 } [ %i.em, %bb.ad ], [ %i.ex, %bb.ak ], [ %i.ex, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5922
  br label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.aj, %bb.ai
  %.not.i110.i = icmp eq i64 %i.eo, 20
  br i1 %.not.i110.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.4325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4325.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7321.i, i64 16, i1 false), !noalias !5922
  store i64 %i.eo, ptr %i.ar, align 8, !noalias !5927
  %.sroa.2323.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.3319.0.copyload.i, ptr %.sroa.2323.0..sroa_idx.i, align 8, !noalias !5927
  %.sroa.3324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.sroa.5320.0.copyload.i, ptr %.sroa.3324.0..sroa_idx.i, align 8, !noalias !5927
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ar)
          to label %bb.ng unwind label %bb.ao, !noalias !5926

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3319.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5320.0.copyload.i) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !5922, !nonnull !8, !align !139, !noundef !8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.fg = load ptr, ptr %i.ff, align 16, !noalias !5922, !nonnull !8, !noundef !8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !5922, !noundef !8
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %i.fi, ptr noundef nonnull %.sroa.3319.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5320.0.copyload.i)
          to label %bb.ap unwind label %bb.ao, !noalias !5926

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5922
  br label %bb.au

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !5930)
  %i.fk = load i64, ptr %i.aw, align 8, !range !120, !alias.scope !5933, !noalias !5935, !noundef !8 ; 2 uses
  %.not.i112.i = icmp eq i64 %i.fk, 20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !5936, !noalias !5922 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !5936, !noalias !5922 ; 2 uses
  br i1 %.not.i112.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.14306.0..sroa_idx307.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.4329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4329.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14306.0..sroa_idx307.i, i64 16, i1 false), !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5922
  store i64 %i.fk, ptr %i.aq, align 8, !noalias !5937
  %.sroa.2327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.fm, ptr %.sroa.2327.0..sroa_idx.i, align 8, !noalias !5937
  %.sroa.3328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.fo, ptr %.sroa.3328.0..sroa_idx.i, align 8, !noalias !5937
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.aq)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit114.i unwind label %bb.av, !noalias !5926

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit114.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5922
  br label %bb.mx

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5922
  store ptr %i.fm, ptr %i.ax, align 8, !noalias !5922
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.fo, ptr %i.fp, align 8, !noalias !5922
  %i.fq = icmp eq ptr %i.fm, null
  br i1 %i.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fr = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !5940
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !5926

bb.au:                                            ; preds = %bb.lx, %bb.av, %bb.ao, %.body108.i
  %i.ft = phi ptr [ %i.ej, %bb.ao ], [ %i.ej, %bb.av ], [ %i.ej, %.body108.i ], [ %i.abx, %bb.lx ]
  %i.fu = phi ptr [ %i.ek, %bb.ao ], [ %i.ek, %bb.av ], [ %i.ek, %.body108.i ], [ %i.aby, %bb.lx ]
  %.pn56.i = phi { ptr, i32 } [ %i.fj, %bb.ao ], [ %i.fw, %bb.av ], [ %.pn52.i, %.body108.i ], [ %.pn48.i, %bb.lx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5922
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 864
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.fv) #38
          to label %.body117.i unwind label %bb.mb, !noalias !5926

bb.av:                                            ; preds = %bb.at, %bb.aq
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.at, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5922
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 936
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.fy)
          to label %bb.ax unwind label %bb.aw, !noalias !5926

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.fx) #38
          to label %bb.ay unwind label %bb.bd, !noalias !5926

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.fx)
          to label %bb.bb unwind label %bb.ba, !noalias !5926

bb.ay:                                            ; preds = %bb.ba, %bb.aw
  %.pn.i.i = phi { ptr, i32 } [ %i.ge, %bb.ba ], [ %i.fz, %bb.aw ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5947)
  call void @llvm.experimental.noalias.scope.decl(metadata !5950)
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !5953, !noalias !5922, !nonnull !8, !noundef !8
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !5956
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.az, label %.body117.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ga) #41
          to label %.body117.i unwind label %bb.bd, !noalias !5926

bb.ba:                                            ; preds = %bb.ax
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.bb:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5957)
  call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !5963, !noalias !5922, !nonnull !8, !noundef !8
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !5964
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gf) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.be, !noalias !5926

bb.bd:                                            ; preds = %bb.az, %bb.aw
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !5926
  unreachable

.body117.i:                                       ; preds = %bb.lh, %bb.ll, %bb.ls, %bb.lt, %bb.ky, %bb.kz, %bb.le, %bb.nb, %bb.na, %bb.be, %bb.az, %bb.ay, %bb.au
  %i.gk = phi ptr [ %i.aac, %bb.ky ], [ %i.ej, %bb.na ], [ %i.ft, %bb.au ], [ %i.ej, %bb.ay ], [ %i.ej, %bb.az ], [ %i.ej, %bb.be ], [ %i.ej, %bb.nb ], [ %i.aac, %bb.le ], [ %i.aac, %bb.kz ], [ %i.aac, %bb.lh ], [ %i.abx, %bb.ll ], [ %i.abx, %bb.ls ], [ %i.abx, %bb.lt ] ; 2 uses
  %i.gl = phi ptr [ %i.aad, %bb.ky ], [ %i.ek, %bb.na ], [ %i.fu, %bb.au ], [ %i.ek, %bb.ay ], [ %i.ek, %bb.az ], [ %i.ek, %bb.be ], [ %i.ek, %bb.nb ], [ %i.aad, %bb.le ], [ %i.aad, %bb.kz ], [ %i.aad, %bb.lh ], [ %i.aby, %bb.ll ], [ %i.aby, %bb.ls ], [ %i.aby, %bb.lt ] ; 2 uses
  %.pn58.pn.i = phi { ptr, i32 } [ %.pn.i180.i, %bb.ky ], [ %.pn.i205.i, %bb.na ], [ %.pn56.i, %bb.au ], [ %.pn.i.i, %bb.ay ], [ %.pn.i.i, %bb.az ], [ %i.gp, %bb.be ], [ %.pn.i205.i, %bb.nb ], [ %i.abo, %bb.le ], [ %.pn.i180.i, %bb.kz ], [ %.pn44.i, %bb.lh ], [ %i.aca, %bb.ll ], [ %i.acl, %bb.ls ], [ %i.acl, %bb.lt ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.gn = load i8, ptr %i.gm, align 4, !range !879, !noalias !5922, !noundef !8
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.oa, label %.body196.i

bb.be:                                            ; preds = %bb.ne, %bb.bc
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bc, %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 852
  store i8 0, ptr %i.gq, align 4, !noalias !5922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5922
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i8 0, ptr %i.gr, align 16, !noalias !5922
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 849
  store i8 0, ptr %i.gs, align 1, !noalias !5922
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 592
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.gt)
          to label %bb.bh unwind label %bb.bg, !noalias !5926

bb.bf:                                            ; preds = %.body215.i, %.body.i, %bb.jb, %bb.bg
  %i.gu = phi ptr [ %i.gz, %bb.bg ], [ %i.aeu, %.body215.i ], [ %i.we, %.body.i ], [ %i.we, %bb.jb ] ; 2 uses
  %i.gv = phi ptr [ %i.ha, %bb.bg ], [ %i.aev, %.body215.i ], [ %i.wf, %.body.i ], [ %i.wf, %bb.jb ] ; 2 uses
  %.pn71.i = phi { ptr, i32 } [ %i.hb, %bb.bg ], [ %.pn68.pn.i, %.body215.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.yg, %bb.jb ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 850
  %i.gx = load i8, ptr %i.gw, align 2, !range !879, !noalias !5922, !noundef !8
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.od, label %.body218.i

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.gz = phi ptr [ %i.aeq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ej, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.ha = phi ptr [ %i.aer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ek, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 850
  store i8 0, ptr %i.hc, align 2, !noalias !5922
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.bi, !noalias !5926

bb.bi:                                            ; preds = %bb.bh
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %.body119.i unwind label %bb.bj, !noalias !5926

bb.bj:                                            ; preds = %bb.bi
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !5926
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bk, !noalias !5926

.body119.i:                                       ; preds = %.body166.i, %bb.mr, %bb.hp, %bb.bk, %bb.bi
  %i.hg = phi ptr [ %i.sp, %bb.hp ], [ %i.afj, %.body166.i ], [ %i.ej, %bb.bi ], [ %i.hl, %bb.bk ], [ %i.afb, %bb.mr ] ; 2 uses
  %i.hh = phi ptr [ %i.sq, %bb.hp ], [ %i.afk, %.body166.i ], [ %i.ek, %bb.bi ], [ %i.hm, %bb.bk ], [ %i.afc, %bb.mr ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks4main0B3_:bb.a

bb.ol:                                            ; preds = %bb.ok
  %i.adl = getelementptr inbounds nuw i8, ptr %.val108.i, i64 16
  %i.adm = load i64, ptr %i.adl, align 8, !range !121, !invariant.load !8, !noalias !6392
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val107.i, i64 noundef range(i64 1, 0) %i.adj, i64 noundef range(i64 1, 536870913) %i.adm) #36, !noalias !6392
  br label %.body152.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.oj, %bb.oi
  %i.adn = trunc nuw i64 %i.acy to i1
  br i1 %i.adn, label %bb.om, label %bb.on

bb.om:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.2222.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.2222.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2222.16..sroa_idx.i, i64 96, i1 false), !noalias !6388
  br label %bb.ob

bb.on:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.ado, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2222.i, i64 120, i1 false), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0218.i)
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.adp)
          to label %bb.oq unwind label %bb.op, !noalias !6392

bb.oo:                                            ; preds = %bb.pu, %bb.op
  %i.adq = phi ptr [ %i.adt, %bb.op ], [ %i.afz, %bb.pu ]
  %i.adr = phi ptr [ %i.adu, %bb.op ], [ %i.aga, %bb.pu ]
  %.pn90.i = phi { ptr, i32 } [ %i.adv, %bb.op ], [ %.pn87.pn.i, %bb.pu ]
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.ads) #38
          to label %.body205.i unwind label %bb.mw, !noalias !6392

bb.op:                                            ; preds = %bb.rc, %bb.pt, %bb.on
  %i.adt = phi ptr [ %i.ahi, %bb.rc ], [ %i.afw, %bb.pt ], [ %i.act, %bb.on ]
  %i.adu = phi ptr [ %i.ahj, %bb.rc ], [ %i.afx, %bb.pt ], [ %i.acu, %bb.on ]
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.oq:                                            ; preds = %bb.on
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6388
  store ptr %i.adp, ptr %i.acv, align 16, !noalias !6388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6388
  invoke void @_RNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtNtB9_5table10DeltaTable14table_provider(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ado)
          to label %bb.os unwind label %bb.or, !noalias !6392

bb.or:                                            ; preds = %bb.oq
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.os:                                            ; preds = %bb.oq
  %i.adx = invoke { ptr, ptr } @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_20TableProviderBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.af)
          to label %bb.ov unwind label %bb.ou, !noalias !6392 ; 2 uses

bb.ot:                                            ; preds = %bb.ou, %bb.or
  %.pn31.i250 = phi { ptr, i32 } [ %i.ady, %bb.ou ], [ %i.adw, %bb.or ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  br label %bb.ow

bb.ou:                                            ; preds = %bb.os
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.ov:                                            ; preds = %bb.os
  %i.adz = extractvalue { ptr, ptr } %i.adx, 0
  %i.aea = extractvalue { ptr, ptr } %i.adx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6388
  store ptr %i.adz, ptr %i.ada, align 8, !noalias !6388
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.aea, ptr %i.aeb, align 16, !noalias !6388
  br label %bb.ox

bb.ow:                                            ; preds = %bb.pp, %bb.pj, %.body157.i, %bb.ot
  %i.aec = phi ptr [ %i.aeo, %bb.pj ], [ %i.aeo, %bb.pp ], [ %i.aeo, %.body157.i ], [ %i.act, %bb.ot ]
  %i.aed = phi ptr [ %i.aep, %bb.pj ], [ %i.aep, %bb.pp ], [ %i.aep, %.body157.i ], [ %i.acu, %bb.ot ]
  %.pn87.i = phi { ptr, i32 } [ %i.afk, %bb.pj ], [ %i.afu, %bb.pp ], [ %.pn35.i, %.body157.i ], [ %.pn31.i250, %bb.ot ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6388
  br label %bb.pu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit.i241: ; preds = %bb.td, %bb.tc, %bb.ob
  %i.aee = phi ptr [ %i.afw, %bb.td ], [ %i.afw, %bb.tc ], [ %i.acr, %bb.ob ] ; 3 uses
  %i.aef = phi ptr [ %i.afx, %bb.td ], [ %i.afx, %bb.tc ], [ %i.acs, %bb.ob ] ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aeh = load i8, ptr %i.aeg, align 8, !range !879, !noalias !6388, !noundef !8
  %i.aei = trunc nuw i8 %i.aeh to i1
  br i1 %i.aei, label %bb.tf, label %bb.mv

.body205.i:                                       ; preds = %bb.ta, %bb.sz, %bb.re, %bb.oo, %.body152.i
  %i.aej = phi ptr [ %i.aaj, %.body152.i ], [ %i.adq, %bb.oo ], [ %i.ail, %bb.re ], [ %i.afw, %bb.ta ], [ %i.afw, %bb.sz ] ; 2 uses
  %i.aek = phi ptr [ %i.aak, %.body152.i ], [ %i.adr, %bb.oo ], [ %i.aim, %bb.re ], [ %i.afx, %bb.ta ], [ %i.afx, %bb.sz ] ; 2 uses
  %.pn92.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.pn.pn.i, %.body152.i ], [ %.pn90.i, %bb.oo ], [ %i.ain, %bb.re ], [ %.pn.i.i240, %bb.ta ], [ %.pn.i.i240, %bb.sz ] ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aem = load i8, ptr %i.ael, align 8, !range !879, !noalias !6388, !noundef !8
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %bb.ti, label %bb.mz

bb.ox:                                            ; preds = %bb.ov, %bb.lf
  %i.aeo = phi ptr [ %i.act, %bb.ov ], [ %i.xe, %bb.lf ] ; 6 uses
  %i.aep = phi ptr [ %i.acu, %bb.ov ], [ %i.xd, %bb.lf ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6388
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aeq, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.oz unwind label %bb.oy, !noalias !6392

bb.oy:                                            ; preds = %bb.ox
  %i.aer = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6388
  %.val109.i = load ptr, ptr %i.aeq, align 8, !noalias !6388
  %i.aes = getelementptr i8, ptr %0, i64 656
  %.val110.i = load ptr, ptr %i.aes, align 16, !noalias !6388, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val109.i, ptr nonnull %.val110.i) #38
          to label %.body157.i unwind label %bb.mw, !noalias !6392

bb.oz:                                            ; preds = %bb.ox
  %i.aet = load i64, ptr %i.ae, align 8, !range !5488, !noalias !6388, !noundef !8 ; 3 uses
  %i.aeu = icmp eq i64 %i.aet, 21
  br i1 %i.aeu, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  br label %.thread418

bb.pb:                                            ; preds = %bb.oz
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !6388 ; 3 uses
  %.sroa.5242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5242.0.copyload.i = load ptr, ptr %.sroa.5242.0..sroa_idx.i, align 8, !noalias !6388 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6388
  %.val111.i = load ptr, ptr %i.aeq, align 8, !noalias !6388 ; 5 uses
  %i.aev = getelementptr i8, ptr %0, i64 656
  %.val112.i = load ptr, ptr %i.aev, align 16, !noalias !6388, !nonnull !8, !align !139, !noundef !8 ; 5 uses
  %i.aew = load ptr, ptr %.val112.i, align 8, !invariant.load !8, !noalias !6392 ; 2 uses
  %.not.i.i156.i = icmp eq ptr %i.aew, null
  br i1 %.not.i.i156.i, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val111.i) ]
  invoke void %i.aew(ptr noundef nonnull %.val111.i)
          to label %bb.pd unwind label %bb.pf, !noalias !6392

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.aex = getelementptr inbounds nuw i8, ptr %.val112.i, i64 8
  %i.aey = load i64, ptr %i.aex, align 8, !range !205, !invariant.load !8, !noalias !6392 ; 2 uses
  %i.aez = icmp eq i64 %i.aey, 0
  br i1 %i.aez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.afa = getelementptr inbounds nuw i8, ptr %.val112.i, i64 16
  %i.afb = load i64, ptr %i.afa, align 8, !range !121, !invariant.load !8, !noalias !6392
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val111.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val111.i, i64 noundef range(i64 1, 0) %i.aey, i64 noundef range(i64 1, 536870913) %i.afb) #36, !noalias !6392
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.pf:                                            ; preds = %bb.pc
  %i.afc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.val112.i, i64 8
  %i.afe = load i64, ptr %i.afd, align 8, !range !205, !invariant.load !8, !noalias !6392 ; 2 uses
  %i.aff = icmp eq i64 %i.afe, 0
  br i1 %i.aff, label %.body157.i, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.afg = getelementptr inbounds nuw i8, ptr %.val112.i, i64 16
  %i.afh = load i64, ptr %i.afg, align 8, !range !121, !invariant.load !8, !noalias !6392
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val111.i, i64 noundef range(i64 1, 0) %i.afe, i64 noundef range(i64 1, 536870913) %i.afh) #36, !noalias !6392
  br label %.body157.i

.body157.i:                                       ; preds = %bb.pg, %bb.pf, %bb.oy
  %.pn35.i = phi { ptr, i32 } [ %i.aer, %bb.oy ], [ %i.afc, %bb.pf ], [ %i.afc, %bb.pg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  br label %bb.ow

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.pe, %bb.pd
  %.not.i.i247 = icmp eq i64 %i.aet, 20
  br i1 %.not.i.i247, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.4246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4246.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !6388
  store i64 %i.aet, ptr %i.j, align 8, !noalias !6474
  %.sroa.2244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.2244.0..sroa_idx.i, align 8, !noalias !6474
  %.sroa.3245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.5242.0.copyload.i, ptr %.sroa.3245.0..sroa_idx.i, align 8, !noalias !6474
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.ps unwind label %bb.pj, !noalias !6392

bb.pi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5242.0.copyload.i) ]
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.afj = load ptr, ptr %i.afi, align 16, !noalias !6388, !nonnull !8, !align !139, !noundef !8
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.afj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 5, ptr noundef nonnull %.sroa.3.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5242.0.copyload.i)
          to label %bb.pk unwind label %bb.pj, !noalias !6392

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %i.afk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  br label %bb.ow

bb.pk:                                            ; preds = %bb.pi
  call void @llvm.experimental.noalias.scope.decl(metadata !6477)
  %i.afl = load i64, ptr %i.ag, align 8, !range !120, !alias.scope !6480, !noalias !6482, !noundef !8 ; 2 uses
  %.not.i160.i = icmp eq i64 %i.afl, 20
  %i.afm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.afn = load ptr, ptr %i.afm, align 8, !alias.scope !6483, !noalias !6388 ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.afp = load ptr, ptr %i.afo, align 8, !alias.scope !6483, !noalias !6388 ; 2 uses
  br i1 %.not.i160.i, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %.sroa.14.0..sroa_idx230.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.4250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4250.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx230.i, i64 16, i1 false), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  store i64 %i.afl, ptr %i.i, align 8, !noalias !6484
  %.sroa.2248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.afn, ptr %.sroa.2248.0..sroa_idx.i, align 8, !noalias !6484
  %.sroa.3249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.afp, ptr %.sroa.3249.0..sroa_idx.i, align 8, !noalias !6484
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit162.i unwind label %bb.pp, !noalias !6392

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit162.i: ; preds = %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6388
  br label %bb.pr

bb.pm:                                            ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  store ptr %i.afn, ptr %i.ah, align 8, !noalias !6388
  %i.afq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.afp, ptr %i.afq, align 8, !noalias !6388
  %i.afr = icmp eq ptr %i.afn, null
  br i1 %i.afr, label %bb.pq, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.afs = atomicrmw sub ptr %i.afn, i64 1 release, align 8, !noalias !6487
  %i.aft = icmp eq i64 %i.afs, 1
  br i1 %i.aft, label %bb.po, label %bb.pq

bb.po:                                            ; preds = %bb.pn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #41
          to label %bb.pq unwind label %bb.pp, !noalias !6392

bb.pp:                                            ; preds = %bb.po, %bb.pl
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ow

bb.pq:                                            ; preds = %bb.po, %bb.pn, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6388
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr @146, ptr %i.afi, align 16, !noalias !6388
  store i64 39, ptr %i.aeq, align 8, !noalias !6388
  %.sroa.10265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store ptr %i.afv, ptr %.sroa.10265.0..sroa_idx.i, align 16, !noalias !6388
  %.sroa.11266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3768
  store i8 0, ptr %.sroa.11266.0..sroa_idx.i, align 8, !noalias !6388
  br label %bb.pv

bb.pr:                                            ; preds = %bb.ps, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualCs2VbMhdeEr66_16delta_benchmarks.exit162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6388
  br label %bb.pt

bb.ps:                                            ; preds = %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6388
  br label %bb.pr

bb.pt:                                            ; preds = %bb.qo, %bb.pr
  %i.afw = phi ptr [ %i.ahc, %bb.qo ], [ %i.aeo, %bb.pr ] ; 6 uses
  %i.afx = phi ptr [ %i.ahd, %bb.qo ], [ %i.aep, %bb.pr ] ; 6 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.afy)
          to label %bb.sw unwind label %bb.op, !noalias !6392

bb.pu:                                            ; preds = %.body164.i, %bb.ow
  %i.afz = phi ptr [ %i.aec, %bb.ow ], [ %i.ahf, %.body164.i ]
  %i.aga = phi ptr [ %i.aed, %bb.ow ], [ %i.ahg, %.body164.i ]
  %.pn87.pn.i = phi { ptr, i32 } [ %.pn87.i, %bb.ow ], [ %.pn84.pn.i, %.body164.i ]
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.agb) #38
          to label %bb.oo unwind label %bb.mw, !noalias !6392

bb.pv:                                            ; preds = %bb.pq, %bb.lg
  %i.agc = phi ptr [ %i.aeo, %bb.pq ], [ %i.xe, %bb.lg ] ; 6 uses
  %i.agd = phi ptr [ %i.aep, %bb.pq ], [ %i.xd, %bb.lg ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6388
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 captures(address) dereferenceable(336) %i.ac, ptr noundef nonnull align 16 %i.age, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.px unwind label %bb.pw, !noalias !6392

bb.pw:                                            ; preds = %bb.pv
  %i.agf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6388
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.age) #38
          to label %.body164.i unwind label %bb.mw, !noalias !6392

bb.px:                                            ; preds = %bb.pv
  %i.agg = load i64, ptr %i.ac, align 16, !range !3566, !noalias !6388, !noundef !8 ; 3 uses
  %i.agh = icmp eq i64 %i.agg, 37
  br i1 %i.agh, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6388
  br label %.thread418

bb.pz:                                            ; preds = %bb.px
  %.sroa.3269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3269.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3269.0..sroa_idx.i, i64 40, i1 false), !noalias !6388
  %.sroa.5270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5270.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5270.0..sroa_idx.i, i64 288, i1 false), !noalias !6388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6388
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.agj = load i8, ptr %i.agi, align 8, !range !47, !noalias !6388, !noundef !8
  %cond.i.i = icmp eq i8 %i.agj, 3
  br i1 %cond.i.i, label %bb.qa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.qa:                                            ; preds = %bb.pz
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 2372
  %i.agm = load i8, ptr %i.agl, align 4, !range !841, !noalias !6388, !noundef !8
  switch i8 %i.agm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 4, label %bb.qe
    i8 3, label %bb.qb
  ]

bb.qb:                                            ; preds = %bb.qa
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 3194
  %i.ago = load i8, ptr %i.agn, align 2, !range !47, !noalias !6388, !noundef !8
  %cond.i.i.i.i = icmp eq i8 %i.ago, 3
  br i1 %cond.i.i.i.i, label %bb.qc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.qc:                                            ; preds = %bb.qb
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 2392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.agp)
          to label %bb.qd unwind label %.body.i.i.i, !noalias !6392

.body.i.i.i:                                      ; preds = %bb.qc
  %i.agq = landingpad { ptr, i32 }
          cleanup
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 3193
  store i8 0, ptr %i.agr, align 1, !noalias !6388
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.agk) #38
          to label %bb.qi unwind label %bb.qh, !noalias !6392

bb.qd:                                            ; preds = %bb.qc
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 3193
  store i8 0, ptr %i.ags, align 1, !noalias !6388
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.qe:                                            ; preds = %bb.qa
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 2384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.agt)
          to label %bb.qg unwind label %bb.qj, !noalias !6392

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.qd, %bb.qb
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.agk)
          to label %bb.qg unwind label %bb.qf, !noalias !6392

bb.qf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.qe
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 2371
  store i8 0, ptr %i.agv, align 1, !noalias !6388
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.qh:                                            ; preds = %.body.i.i.i
  %i.agw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6392
  unreachable

bb.qi:                                            ; preds = %bb.qj, %bb.qf, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.agy, %bb.qj ], [ %i.agu, %bb.qf ], [ %i.agq, %.body.i.i.i ]
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 2371
  store i8 0, ptr %i.agx, align 1, !noalias !6388
  br label %.body164.i

end_hunk_2
begin_hunk_3_@_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame7collect0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

.noexc6.i:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6822
  %.val6.i.i = load ptr, ptr %i.ck, align 16, !noalias !6822
  %i.cf = getelementptr i8, ptr %1, i64 1704
  %.val7.i.i = load ptr, ptr %i.cf, align 8, !noalias !6822, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val6.i.i, ptr nonnull %.val7.i.i) #38
          to label %.body.i.i unwind label %bb.aj, !noalias !6831

bb.aa:                                            ; preds = %bb.v, %bb.p
  %i.cg = phi ptr [ %i.aw, %bb.v ], [ %i.ah, %bb.p ] ; 6 uses
  %i.ch = phi ptr [ %i.ax, %bb.v ], [ %i.ag, %bb.p ] ; 5 uses
  %i.ci = phi ptr [ %i.ba, %bb.v ], [ %.phi.trans.insert.i, %bb.p ] ; 6 uses
  %i.cj = phi ptr [ %i.bb, %bb.v ], [ %i.av, %bb.p ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6822
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.z, !noalias !6831

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i64, ptr %i.e, align 8, !range !5488, !noalias !6822, !noundef !8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 21
  br i1 %i.cm, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6822
  store i8 3, ptr %i.ci, align 16, !noalias !6822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.978)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.774.0.copyload = load ptr, ptr %.sroa.774.0..sroa_idx, align 8, !noalias !6822
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.876.0.copyload = load ptr, ptr %.sroa.876.0..sroa_idx, align 8, !noalias !6822
  %.sroa.978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.978, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.978.0..sroa_idx, i64 16, i1 false), !noalias !6822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6822
  %.val.i.i = load ptr, ptr %i.ck, align 16, !noalias !6822 ; 5 uses
  %i.cn = getelementptr i8, ptr %1, i64 1704
  %.val5.i.i = load ptr, ptr %i.cn, align 8, !noalias !6822, !nonnull !8, !align !139, !noundef !8 ; 5 uses
  %i.co = load ptr, ptr %.val5.i.i, align 8, !invariant.load !8, !noalias !6831 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.co(ptr noundef nonnull %.val.i.i)
          to label %bb.ae unwind label %bb.ag, !noalias !6831

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !205, !invariant.load !8, !noalias !6831 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !121, !invariant.load !8, !noalias !6831
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #36, !noalias !6831
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !205, !invariant.load !8, !noalias !6831 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.body.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !121, !invariant.load !8, !noalias !6831
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #36, !noalias !6831
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.af, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.cj)
          to label %.thread unwind label %bb.ai, !noalias !6831

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.944.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.978, i64 16, i1 false), !noalias !6832
  store i8 1, ptr %i.ci, align 16, !noalias !6822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.978)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.al

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.aj:                                            ; preds = %bb.z, %.body.i.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6831
  unreachable

bb.ak:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.944.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.sroa.9, i64 16, i1 false)
  store i8 1, ptr %i.ba, align 16, !noalias !6822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.978)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  %i.dc = icmp eq i64 %.sroa.8.i.i.sroa.0.0.copyload, 21
  br i1 %i.dc, label %bb.as, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.dd = phi ptr [ %i.cg, %.thread ], [ %i.aw, %bb.ak ] ; 4 uses
  %i.de = phi ptr [ %i.ch, %.thread ], [ %i.ax, %bb.ak ] ; 4 uses
  %i.df = phi ptr [ %i.cj, %.thread ], [ %i.bb, %bb.ak ]
  %.sroa.876.087 = phi ptr [ %.sroa.876.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.8.0.copyload, %bb.ak ] ; 5 uses
  %.sroa.774.086 = phi ptr [ %.sroa.774.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.7.0.copyload, %bb.ak ] ; 5 uses
  %.sroa.072.085 = phi i64 [ %i.cl, %.thread ], [ %.sroa.8.i.i.sroa.0.0.copyload, %bb.ak ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.df)
          to label %bb.an unwind label %bb.am, !noalias !6821

bb.am:                                            ; preds = %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.an:                                            ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6833)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %.val.i7.i = load ptr, ptr %i.di, align 16, !alias.scope !6833, !noalias !6817, !nonnull !8, !noundef !8 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i7.i)
          to label %bb.ao unwind label %.body.i8.i, !noalias !6836

.body.i8.i:                                       ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #36, !noalias !6836
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dh) #38
          to label %.body10.i unwind label %bb.ap, !noalias !6821

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #36, !noalias !6836
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dh)
          to label %bb.at unwind label %bb.aq, !noalias !6821

bb.ap:                                            ; preds = %.body.i8.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6821
  unreachable

.body10.i:                                        ; preds = %bb.aq, %.body.i8.i, %bb.l
  %i.dl = phi ptr [ %i.ao, %bb.l ], [ %i.dd, %bb.aq ], [ %i.dd, %.body.i8.i ]
  %i.dm = phi ptr [ %i.ap, %bb.l ], [ %i.de, %bb.aq ], [ %i.de, %.body.i8.i ]
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.l ], [ %i.dn, %bb.aq ], [ %i.dj, %.body.i8.i ]
  store i8 2, ptr %i.dl, align 16, !noalias !6817
  br label %.body15

bb.aq:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

bb.ar:                                            ; preds = %.body.i, %bb.l
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6821
  unreachable

common.ret:                                       ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.as
  %.sink = phi i8 [ 4, %bb.cd ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.as ]
  store i8 %.sink, ptr %i.j, align 16
  ret void

bb.as:                                            ; preds = %bb.ak, %.thread.i
  %i.dp = phi ptr [ %i.aw, %bb.ak ], [ %i.cg, %.thread.i ]
  store i8 3, ptr %i.dp, align 16, !noalias !6817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.944.sroa.7)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %common.ret

bb.at:                                            ; preds = %bb.ao
  store i8 1, ptr %i.dd, align 16, !noalias !6817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.849, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.944.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.944.sroa.7)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.de)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.av:                                            ; preds = %bb.at
  %.not.i = icmp eq i64 %.sroa.072.085, 20
  br i1 %.not.i, label %.thread119, label %bb.ax

.thread119:                                       ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.774.086) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.876.087) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 674
  store ptr %.sroa.774.086, ptr %i.h, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.876.087, ptr %i.dr, align 8
  store i8 0, ptr %3, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.du = load ptr, ptr %i.dt, align 16, !nonnull !8, !noundef !8
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %.sroa.774.086, ptr %.sroa.759.0..sroa_idx, align 16
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %.sroa.876.087, ptr %.sroa.860.0..sroa_idx, align 8
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr %i.du, ptr %.sroa.961.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 777
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 777
  br label %bb.bd

bb.aw:                                            ; preds = %bb.cf, %.body27
  %.pn6 = phi { ptr, i32 } [ %i.gl, %bb.cf ], [ %eh.lpad-body28, %.body27 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.dy = load i8, ptr %i.dx, align 2, !range !879, !noundef !8
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.849, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %4, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6837)
  call void @llvm.experimental.noalias.scope.decl(metadata !6840)
  %i.eb = load ptr, ptr %i.ea, align 16, !alias.scope !6843, !nonnull !8, !noundef !8
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !6843
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ea) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ay, %bb.ax, %bb.cg
  %.sroa.068.0 = phi i64 [ %.sroa.025.0.i, %bb.cg ], [ %.sroa.072.085, %bb.ax ], [ %.sroa.072.085, %bb.ay ]
  %.sroa.369.0 = phi ptr [ %.sroa.327.0.i, %bb.cg ], [ %.sroa.774.086, %bb.ax ], [ %.sroa.774.086, %bb.ay ]
  %.sroa.570.0 = phi ptr [ %.sroa.430.0.i, %bb.cg ], [ %.sroa.876.087, %bb.ax ], [ %.sroa.876.087, %bb.ay ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.eg, align 1
  store i64 %.sroa.068.0, ptr %0, align 8
  %.sroa.369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.369.0, ptr %.sroa.369.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.570.0, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.771.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.i, i64 16, i1 false)
  br label %common.ret

bb.ba:                                            ; preds = %bb.ck, %bb.ci, %bb.cm, %.body27, %.body15
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.body15, %bb.au, %bb.ch, %bb.ci, %bb.aw
  %.pn8.pn = phi { ptr, i32 } [ %.pn6, %bb.ch ], [ %.pn6, %bb.aw ], [ %.pn6, %bb.ci ], [ %i.dq, %bb.au ], [ %eh.lpad-body16, %.body15 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.ei, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.ek = load i8, ptr %i.ej, align 1, !range !879, !noundef !8
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit33

bb.bb:                                            ; preds = %bb.bk, %bb.bj
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %bb.bi, %bb.bb
  %i.en = phi ptr [ %i.eo, %bb.bb ], [ %i.fj, %bb.bi ]
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.em, %bb.bb ], [ %.pn2.pn.i, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.en) #38
          to label %bb.aw unwind label %bb.ba

bb.bc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %1, i64 777
  %.pre105 = load i8, ptr %.phi.trans.insert104, align 1, !range !47, !noalias !6844
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 777 ; 4 uses
  switch i8 %.pre105, label %default.unreachable117 [
    i8 0, label %bb.bd
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bm
  ]

bb.bd:                                            ; preds = %.thread119, %bb.bc
  %i.eq = phi ptr [ %i.dw, %.thread119 ], [ %i.ep, %bb.bc ] ; 3 uses
  %i.er = phi ptr [ %i.dv, %.thread119 ], [ %i.eo, %bb.bc ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  store i8 0, ptr %i.es, align 8, !noalias !6844
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.eu = load ptr, ptr %i.et, align 16, !noalias !6844, !nonnull !8, !noundef !8
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !6844, !nonnull !8, !align !139, !noundef !8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.ey = load ptr, ptr %i.ex, align 16, !noalias !6844, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6844
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ew, ptr noundef nonnull %i.ey)
          to label %bb.bf unwind label %bb.be, !noalias !6844

bb.be:                                            ; preds = %bb.bd
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6844
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !6848)
  %i.fa = load i64, ptr %i.d, align 8, !range !120, !alias.scope !6851, !noalias !6853, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i64 %i.fa, 20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !6854, !noalias !6844 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !6854, !noalias !6844 ; 4 uses
  br i1 %.not.i.i, label %.thread.i26, label %bb.bh

.thread.i26:                                      ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6844
  store i8 0, ptr %i.es, align 8, !noalias !6844
  store ptr %i.fc, ptr %i.er, align 8, !noalias !6844
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %i.fe, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !6844
  %.sroa.923.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  store i8 0, ptr %.sroa.923.0..sroa_idx.i, align 8, !noalias !6844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6844
  br label %bb.bn

bb.bg:                                            ; preds = %.body.i21
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.fg = load i8, ptr %i.ff, align 8, !range !879, !noalias !6844, !noundef !8
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.cc, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %.sroa.12.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx16.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6844
  store i8 0, ptr %i.es, align 8, !noalias !6844
  br label %bb.ce

bb.bi:                                            ; preds = %bb.cc, %bb.bg, %bb.be
  %i.fi = phi ptr [ %i.eq, %bb.be ], [ %i.fm, %bb.cc ], [ %i.fm, %bb.bg ]
  %i.fj = phi ptr [ %i.er, %bb.be ], [ %i.fn, %bb.cc ], [ %i.fn, %bb.bg ]
  %.pn2.pn.i = phi { ptr, i32 } [ %i.ez, %bb.be ], [ %eh.lpad-body.i22, %bb.cc ], [ %eh.lpad-body.i22, %bb.bg ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i8 0, ptr %i.fk, align 8, !noalias !6844
  store i8 2, ptr %i.fi, align 1, !noalias !6844
  br label %.body27

bb.bj:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #40
          to label %.noexc29 unwind label %bb.bb

.noexc29:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #40
          to label %.noexc30 unwind label %bb.bb

.noexc30:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bt, %bb.bs
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21

.body.i21:                                        ; preds = %bb.br, %bb.bl
  %i.fm = phi ptr [ %i.ep, %bb.bl ], [ %i.fv, %bb.br ] ; 2 uses
  %i.fn = phi ptr [ %i.eo, %bb.bl ], [ %i.fw, %bb.br ] ; 3 uses
  %.sroa.0.050.i = phi ptr [ undef, %bb.bl ], [ %.sroa.0.051.i, %bb.br ]
  %.sroa.9.046.i = phi ptr [ undef, %bb.bl ], [ %.sroa.9.047.i, %bb.br ] ; 2 uses
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.fl, %bb.bl ], [ %.pn.i.i20, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6844
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.fn) #38
          to label %bb.bg unwind label %bb.cb, !noalias !6855

bb.bm:                                            ; preds = %bb.bc
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 8, !range !47, !noalias !6856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6860)
  switch i8 %.pre.i19, label %default.unreachable117 [
    i8 0, label %._crit_edge106
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bo
  ]

._crit_edge106:                                   ; preds = %bb.bm
  %.pre107 = load ptr, ptr %i.eo, align 16, !noalias !6856
  %.phi.trans.insert108 = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.pre109 = load ptr, ptr %.phi.trans.insert108, align 8, !noalias !6856
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge106, %.thread.i26
  %i.fo = phi ptr [ %i.eq, %.thread.i26 ], [ %i.ep, %._crit_edge106 ] ; 2 uses
  %i.fp = phi ptr [ %i.er, %.thread.i26 ], [ %i.eo, %._crit_edge106 ] ; 2 uses
  %i.fq = phi ptr [ %i.fe, %.thread.i26 ], [ %.pre109, %._crit_edge106 ]
  %i.fr = phi ptr [ %i.fc, %.thread.i26 ], [ %.pre107, %._crit_edge106 ]
  %i.fs = phi ptr [ %.sroa.923.0..sroa_idx.i, %.thread.i26 ], [ %.phi.trans.insert.i18, %._crit_edge106 ] ; 2 uses
  %.sroa.0.053.i = phi ptr [ %i.fc, %.thread.i26 ], [ undef, %._crit_edge106 ] ; 2 uses
  %.sroa.9.049.i = phi ptr [ %i.fe, %.thread.i26 ], [ undef, %._crit_edge106 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6856
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB8_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12TryStreamExt11try_collectINtNtBE_3vec3VecB2F_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.fr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fq)
          to label %bb.bq unwind label %bb.bp, !noalias !6856

end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.y, !noalias !6911

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6911
  unreachable

bb.z:                                             ; preds = %bb.u, %.body.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6911
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
  %.val26 = load ptr, ptr %i.ck, align 8, !nonnull !8, !noundef !8
  %i.cl = getelementptr i8, ptr %i.bk, i64 -8
  %.val27 = load ptr, ptr %i.cl, align 8, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val27, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !121, !invariant.load !8
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = and i64 %i.co, -16
  %i.cq = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !invariant.load !8, !nonnull !8
  %i.cu = invoke { ptr, ptr } %i.ct(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.l)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6907
  %i.da = load <2 x ptr>, ptr %i.f, align 16, !noalias !6912
  %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.db = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx, align 16, !noalias !6912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6902
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

.body:                                            ; preds = %bb.ad, %bb.am, %bb.au, %bb.av, %.body.i.i, %bb.x, %bb.ab, %.loopexit.split-lp, %.loopexit
  %.pn8.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cg, %bb.x ], [ %.pn.i.i, %.body.i.i ], [ %i.cj, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %i.dy, %bb.au ], [ %i.dk, %bb.am ], [ %i.dy, %bb.av ], [ %i.cv, %bb.ad ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di) #38
          to label %.body36 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.e, %bb.am, %.body, %.body36
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.az, %.body36
  %.pn13 = phi { ptr, i32 } [ %i.ek, %bb.az ], [ %.pn11, %.body36 ], [ %i.z, %bb.f ], [ %i.w, %bb.c ], [ %i.z, %bb.e ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn13

bb.ak:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #40
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #40
  unreachable

bb.am:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val18 = load ptr, ptr %i.dm, align 8
  %i.dl = getelementptr i8, ptr %1, i64 1728
  %.val19 = load ptr, ptr %i.dl, align 8, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val18, ptr nonnull %.val19) #38
          to label %.body unwind label %bb.aj

bb.an:                                            ; preds = %bb.a, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1720 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.dn = load i64, ptr %i.g, align 8, !range !5488, !noundef !8 ; 3 uses
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
  %.val16 = load ptr, ptr %i.dm, align 8          ; 5 uses
  %i.dr = getelementptr i8, ptr %1, i64 1728
  %.val17 = load ptr, ptr %i.dr, align 8, !nonnull !8, !align !139, !noundef !8 ; 5 uses
  %i.ds = load ptr, ptr %.val17, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i39, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  invoke void %i.ds(ptr noundef nonnull %.val16)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %.val17, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !205, !invariant.load !8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !121, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, 536870913) %i.dx) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.au:                                            ; preds = %bb.ar
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val17, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !205, !invariant.load !8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.body, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ec = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !121, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef range(i64 1, 0) %i.ea, i64 noundef range(i64 1, 536870913) %i.ed) #36
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.at, %bb.as
  %.not.i42 = icmp eq i64 %i.dn, 20
  br i1 %.not.i42, label %bb.aw, label %bb.ag

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ee = extractelement <2 x ptr> %i.dp, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ef = extractelement <2 x ptr> %i.dp, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
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
define internal fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.cf = load i8, ptr %i.ce, align 8, !range !47, !noundef !8
  switch i8 %i.cf, label %default.unreachable67 [
    i8 0, label %.thread68
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable67:                            ; preds = %bb.ne, %bb.le, %bb.dp, %bb.dl, %bb.v, %bb.m, %bb.e, %bb.a
  unreachable

.thread68:                                        ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.ch = load ptr, ptr %i.cg, align 16, !nonnull !8, !align !139, !noundef !8
  %i.ci = load ptr, ptr %1, align 16, !nonnull !8, !noundef !8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !8
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
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #40
  unreachable
end_hunk_4
begin_hunk_5_@_RNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge24prepare_source_and_table0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.awz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.ea) #38
          to label %bb.yi unwind label %bb.y

.body176:                                         ; preds = %bb.vk, %bb.vd, %.body.i, %bb.eq, %bb.yi
  %.pn48.pn = phi { ptr, i32 } [ %.pn45.pn, %bb.yi ], [ %i.auh, %bb.vk ], [ %i.atu, %bb.vd ], [ %i.nt, %bb.eq ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %.thread425

bb.yi:                                            ; preds = %bb.vf, %bb.yh, %bb.vi
  %.pn45.pn = phi { ptr, i32 } [ %i.awz, %bb.yh ], [ %i.aug, %bb.vi ], [ %i.auc, %bb.vf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.ec) #38
          to label %.body176 unwind label %bb.y

bb.yj:                                            ; preds = %.thread425, %bb.xl
  %.pn79.pn428 = phi { ptr, i32 } [ %.pn79, %.thread425 ], [ %.pn77.ph, %bb.xl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.eg) #38
          to label %.body201 unwind label %bb.y

bb.yk:                                            ; preds = %bb.eo
  %i.axa = getelementptr inbounds nuw i8, ptr %i.df, i64 336
  store i64 4, ptr %i.axa, align 16, !alias.scope !8064, !noalias !8067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit

bb.yl:                                            ; preds = %bb.yb
  %i.axb = landingpad { ptr, i32 }
          cleanup
  br label %.body196

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.yo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit198
  store i8 0, ptr %i.md, align 8
  %i.axc = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.axd = load i8, ptr %i.axc, align 1, !range !879, !noundef !8
  %i.axe = trunc nuw i8 %i.axd to i1
  br i1 %i.axe, label %bb.yr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ym:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks.exit198
  %i.axf = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axf)
          to label %bb.yo unwind label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.axg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axf)
          to label %.body204 unwind label %bb.yp

bb.yo:                                            ; preds = %bb.ym
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.yq

bb.yp:                                            ; preds = %bb.yn
  %i.axh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.yq:                                            ; preds = %bb.yo
  %i.axi = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.yr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.axj = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axj)
          to label %bb.yt unwind label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %i.axk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axj)
          to label %.body207 unwind label %bb.yu

bb.yt:                                            ; preds = %bb.yr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.yv

bb.yu:                                            ; preds = %bb.ys
  %i.axl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.yv:                                            ; preds = %bb.yt
  %i.axm = landingpad { ptr, i32 }
          cleanup
  br label %.body207

bb.yw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.axn = getelementptr inbounds nuw i8, ptr %1, i64 650 ; 2 uses
  %i.axo = load i8, ptr %i.axn, align 2, !range !879, !noundef !8
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %bb.yx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.yw
  store i8 0, ptr %i.axn, align 2
  br label %bb.bd

bb.yx:                                            ; preds = %bb.yw
  %i.axq = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.axq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.axr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.axq)
          to label %.body209 unwind label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.axs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.yx
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.axq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.za

bb.za:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %.body209

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.invoke: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.wt
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %1)
          to label %bb.wv unwind label %bb.h

bb.zb:                                            ; preds = %.body196
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.eq) #38
          to label %.body153 unwind label %bb.y

bb.zc:                                            ; preds = %.body153
  %i.axu = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.axu) #38
          to label %.body204 unwind label %bb.y

bb.zd:                                            ; preds = %.body204
  %i.axv = getelementptr inbounds nuw i8, ptr %1, i64 584
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.axv) #38
          to label %.body207 unwind label %bb.y

bb.ze:                                            ; preds = %bb.bb
  %i.axw = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.axw) #38
          to label %.body209 unwind label %bb.y

bb.zf:                                            ; preds = %.body209
  %i.axx = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.axx) #38
          to label %bb.bg unwind label %bb.y
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !8074 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !8074 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !8074 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8074 ; 2 uses
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
  %i.s = load i8, ptr %i.q, align 1, !noundef !8
  %i.t = load i8, ptr %i.r, align 1, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !8069, !noalias !8072
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !8072, !noalias !8069
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !8069, !noalias !8072
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !8072, !noalias !8069
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
define internal void @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider11delete_from0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !48, !noundef !8
  switch i8 %i.k, label %default.unreachable55 [
    i8 0, label %bb.c
    i8 1, label %bb.t
    i8 2, label %bb.u
  ]

default.unreachable55:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body42

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @150, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !8075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8079
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !range !17, !noalias !8079, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !18, !noalias !8079, !noundef !8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.h, !prof !19

bb.e:                                             ; preds = %.noexc25
  %i.r = load i64, ptr %i.q, align 8, !noalias !8079
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #37
          to label %.noexc26 unwind label %bb.f

.noexc26:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.s, %bb.f ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body42 unwind label %bb.s

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body unwind label %bb.s

bb.h:                                             ; preds = %.noexc25
  %i.u = load ptr, ptr %i.q, align 8, !noalias !8079, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8079
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.550.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.v, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.552.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @22, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit38 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit38:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit38
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

end_hunk_5
begin_hunk_6_@_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider14scan_with_args0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !252, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !252, !noundef !8 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !139, !noundef !8 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8121)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8124
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !17, !noalias !8124, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !18, !noalias !8124, !noundef !8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !19

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !8124
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #37
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !8124, !nonnull !8, !noundef !8 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8124
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !8129
  br label %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !8121, !noalias !8130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8121, !noalias !8130
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8121, !noalias !8130
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !8121, !noalias !8130
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBa_5table13TableProvider14scan_with_args00Cs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !17, !noundef !8
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !139, !noundef !8
  %i.ad = invoke { ptr, ptr } @_RNvXs0_NtCsanCXJAiNsO_18datafusion_catalog4viewNtB5_9ViewTableNtNtB7_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(352) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i16, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.o

.body:                                            ; preds = %bb.w, %bb.v, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.ak, %bb.n ], [ %i.ax, %bb.w ], [ %i.ae, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #38
          to label %.body20 unwind label %bb.ag

.body20:                                          ; preds = %bb.ae, %bb.z, %bb.ab, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %.pn, %.body ], [ %i.x, %bb.h ], [ %i.bh, %bb.z ], [ %i.bj, %bb.ab ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #40
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #40
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.am, align 8
  %i.al = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.al, align 8, !nonnull !8, !align !139, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val6, ptr nonnull %.val7) #38
          to label %.body unwind label %bb.ag

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.b, align 8, !range !5488, !noundef !8 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 21
  br i1 %i.ao, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load <2 x ptr>, ptr %.sroa.343.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.aq = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.aq, align 8, !nonnull !8, !align !139, !noundef !8 ; 5 uses
  %i.ar = load ptr, ptr %.val5, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ar(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !205, !invariant.load !8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !121, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !205, !invariant.load !8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !121, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #36
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.u, %bb.t
  %.not.i19 = icmp eq i64 %i.an, 20
  br i1 %.not.i19, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bd = extractelement <2 x ptr> %i.ap, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = extractelement <2 x ptr> %i.ap, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bf = load i64, ptr %3, align 8, !range !18, !alias.scope !8131, !noundef !8
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i24.invoke unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body20 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i24.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i24.invoke, %bb.ac, %bb.x
  store i64 %i.an, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ap, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bk = load i64, ptr %4, align 8, !range !18, !alias.scope !8134, !noundef !8
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i24.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body20 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i24.invoke: ; preds = %bb.y, %bb.ad
  %5 = phi ptr [ %4, %bb.ad ], [ %3, %bb.y ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ab

bb.ag:                                            ; preds = %bb.n, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider6update0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !48, !noundef !8
  switch i8 %i.l, label %default.unreachable60 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body44

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @156, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !8137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8141
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8, !range !17, !noalias !8141, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !18, !noalias !8141, !noundef !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.h, !prof !19

bb.e:                                             ; preds = %.noexc27
  %i.t = load i64, ptr %i.s, align 8, !noalias !8141
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body44 unwind label %bb.w

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body unwind label %bb.w

bb.h:                                             ; preds = %.noexc27
  %i.w = load ptr, ptr %i.s, align 8, !noalias !8141, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8141
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.x, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.557.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @22, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i43 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body44 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.n unwind label %bb.m

.body44:                                          ; preds = %bb.m, %bb.k, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn13, %.body ], [ %i.ac, %bb.m ], [ %i.aa, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body49 unwind label %bb.w

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i43
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body49 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

end_hunk_6
