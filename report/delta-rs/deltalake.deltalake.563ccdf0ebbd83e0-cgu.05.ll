inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8830
  store ptr %i.an, ptr %i.aj, align 8, !noalias !8830
  %.sroa.5383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5383.0..sroa_idx.i, align 8, !noalias !8830
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @132, ptr noundef nonnull %i.aj)
          to label %bb.gt unwind label %bb.gr, !noalias !8834

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !alias.scope !9084, !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9088
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.gv, !noalias !8834

.noexc172.i:                                      ; preds = %bb.gt
  %i.sj = load i64, ptr %i.a, align 8, !range !3, !noalias !9088, !noundef !4
  %i.sk = trunc nuw i64 %i.sj to i1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !range !2006, !noalias !9088, !noundef !4 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.sk, label %bb.gu, label %bb.gx, !prof !1649

bb.gu:                                            ; preds = %.noexc172.i
  %i.so = load i64, ptr %i.sn, align 8, !noalias !9088
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.sm, i64 %i.so) #42
          to label %.noexc173.i unwind label %bb.gv, !noalias !8834

.noexc173.i:                                      ; preds = %bb.gu
  unreachable

.body189.i:                                       ; preds = %bb.gy, %bb.gw, %bb.gv
  %.pn72.i = phi { ptr, i32 } [ %i.sq, %bb.gw ], [ %i.sp, %bb.gv ], [ %i.st, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8830
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #37
          to label %.body195.i unwind label %bb.av, !noalias !8834

bb.gv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i, %bb.gu, %bb.gt
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

bb.gw:                                            ; preds = %bb.gx
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8830
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #37
          to label %.body189.i unwind label %bb.av, !noalias !8834

bb.gx:                                            ; preds = %.noexc172.i
  %i.sr = load ptr, ptr %i.sn, align 8, !noalias !9088, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9088
  store i64 %i.sm, ptr %i.ai, align 8, !noalias !8830
  %.sroa.4443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.sr, ptr %.sroa.4443.0..sroa_idx.i, align 8, !noalias !8830
  %.sroa.5444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5444.0..sroa_idx.i, align 8, !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8830
  store ptr %i.al, ptr %i.ah, align 8, !noalias !8830
  %.sroa.5385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5385.0..sroa_idx.i, align 8, !noalias !8830
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.ss, align 8, !noalias !8830
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5387.0..sroa_idx.i, align 8, !noalias !8830
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @54, ptr noundef nonnull %i.ah)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i unwind label %bb.gw, !noalias !8834

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i:  ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8830
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i unwind label %bb.gy, !noalias !8834

bb.gy:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body189.i unwind label %bb.gz, !noalias !8834

bb.gz:                                            ; preds = %bb.gy
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8834
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit186.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i unwind label %bb.gv, !noalias !8834

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8830
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i unwind label %bb.ha, !noalias !8834

bb.ha:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body195.i unwind label %bb.hb, !noalias !8834

bb.hb:                                            ; preds = %bb.ha
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8834
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit192.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.hd unwind label %bb.hc, !noalias !8834

.body195.i:                                       ; preds = %bb.hc, %bb.ha, %.body189.i, %bb.gr
  %.pn74.i = phi { ptr, i32 } [ %i.si, %bb.gr ], [ %.pn72.i, %.body189.i ], [ %i.sx, %bb.hc ], [ %i.sv, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.an) #37
          to label %bb.he unwind label %bb.av, !noalias !8834

bb.hc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body195.i

bb.hd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8830
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8830
  %i.sy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 10, ptr %i.sy, align 8, !noalias !8830
  store i64 36, ptr %i.r, align 16, !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.an)
          to label %bb.hg unwind label %bb.hf, !noalias !8834

bb.he:                                            ; preds = %bb.hf, %.body195.i
  %.pn80.i = phi { ptr, i32 } [ %i.sz, %bb.hf ], [ %.pn74.i, %.body195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.hf:                                            ; preds = %bb.hd
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hg:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8830
  br label %bb.kq

bb.hh:                                            ; preds = %bb.hi
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.td) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !8834

bb.hi:                                            ; preds = %bb.gq, %bb.f
  %.sink15.i203.sroa.gep333.i77 = phi ptr [ %.sink15.i203.sroa.gep333.i, %bb.f ], [ %.sink15.i203.sroa.gep333.i78, %bb.gq ] ; 2 uses
  %.sink15.i203.sroa.gep.i71 = phi ptr [ %.sink15.i203.sroa.gep.i, %bb.f ], [ %.sink15.i203.sroa.gep.i72, %bb.gq ]
  %.sink18.i201.sroa.gep332.i65 = phi ptr [ %.sink18.i201.sroa.gep332.i, %bb.f ], [ %.sink18.i201.sroa.gep332.i66, %bb.gq ] ; 2 uses
  %.sink18.i201.sroa.gep.i59 = phi ptr [ %.sink18.i201.sroa.gep.i, %bb.f ], [ %.sink18.i201.sroa.gep.i60, %bb.gq ]
  %i.tb = phi ptr [ %i.bm, %bb.f ], [ %i.rv, %bb.gq ] ; 9 uses
  %i.tc = phi ptr [ %i.bl, %bb.f ], [ %i.rw, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8830
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.av, ptr noundef nonnull align 8 %i.td, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hj unwind label %bb.hh, !noalias !8834

bb.hj:                                            ; preds = %bb.hi
  %i.te = load i64, ptr %i.av, align 8, !range !8943, !noalias !8830, !noundef !4 ; 3 uses
  %i.tf = icmp eq i64 %i.te, 21
  br i1 %i.tf, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8830
  br label %.thread115

bb.hl:                                            ; preds = %bb.hj
  %.sroa.3315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3315.0.copyload.i = load ptr, ptr %.sroa.3315.0..sroa_idx.i, align 8, !noalias !8830 ; 3 uses
  %.sroa.5316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5316.0.copyload.i = load ptr, ptr %.sroa.5316.0..sroa_idx.i, align 8, !noalias !8830 ; 3 uses
  %.sroa.7317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.0..sroa_idx.i, i64 16, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.td)
          to label %bb.hn unwind label %bb.hm, !noalias !8834

bb.hm:                                            ; preds = %bb.hl
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.hn:                                            ; preds = %bb.hl
  %.not.i199.i = icmp eq i64 %i.te, 20
  br i1 %.not.i199.i, label %bb.ho, label %bb.ij

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3315.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5316.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !8830
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8830
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9092)
  call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  %i.tl = load i64, ptr %i.tk, align 8, !range !15, !alias.scope !9095, !noalias !9097, !noundef !4 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !alias.scope !9095, !noalias !9097, !nonnull !4, !noundef !4 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tp = load i64, ptr %i.to, align 8, !alias.scope !9095, !noalias !9097, !noundef !4 ; 3 uses
  %i.tq = atomicrmw add ptr %i.tn, i64 1 monotonic, align 8, !noalias !9098
  %i.tr = icmp slt i64 %i.tq, 0                   ; 3 uses
  switch i64 %i.tl, label %default.unreachable38 [
    i64 0, label %bb.hp
    i64 1, label %bb.hq
    i64 2, label %bb.hr
  ]

bb.hp:                                            ; preds = %bb.ho
  br i1 %i.tr, label %bb.hs, label %bb.ic

bb.hq:                                            ; preds = %bb.ho
  br i1 %i.tr, label %bb.hu, label %bb.ht

bb.hr:                                            ; preds = %bb.ho
  br i1 %i.tr, label %bb.hx, label %bb.hw

bb.hs:                                            ; preds = %bb.hp
  call void @llvm.trap()
  unreachable

.sink.split.i200.i:                               ; preds = %bb.ia, %bb.ht
  %.sink18.i201.sroa.phi.i = phi ptr [ %.sink18.i201.sroa.gep.i59, %bb.ia ], [ %.sink18.i201.sroa.gep332.i65, %bb.ht ]
  %.sink16.i202.i = phi ptr [ %i.tz, %bb.ia ], [ %i.tn, %bb.ht ]
  %.sink15.i203.sroa.phi.i = phi ptr [ %.sink15.i203.sroa.gep.i71, %bb.ia ], [ %.sink15.i203.sroa.gep333.i77, %bb.ht ]
  %.sink13.i204.i = phi i64 [ %i.ub, %bb.ia ], [ %i.tp, %bb.ht ]
  %.sink12.ph.i205.i = phi i64 [ 40, %bb.ia ], [ 24, %bb.ht ]
  %.sink10.ph.i206.i = phi ptr [ %i.uf, %bb.ia ], [ %i.tt, %bb.ht ]
  %.sink9.ph.i207.i = phi i64 [ 48, %bb.ia ], [ 32, %bb.ht ]
  %.sink7.ph.i208.i = phi i64 [ %i.uh, %bb.ia ], [ %i.tv, %bb.ht ]
  store ptr %.sink16.i202.i, ptr %.sink18.i201.sroa.phi.i, align 8, !alias.scope !9092, !noalias !9099
  store i64 %.sink13.i204.i, ptr %.sink15.i203.sroa.phi.i, align 8, !alias.scope !9092, !noalias !9099
  br label %bb.ic

bb.ht:                                            ; preds = %bb.hq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8, !alias.scope !9095, !noalias !9097, !nonnull !4, !noundef !4 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tv = load i64, ptr %i.tu, align 8, !alias.scope !9095, !noalias !9097, !noundef !4
  %i.tw = atomicrmw add ptr %i.tt, i64 1 monotonic, align 8, !noalias !9098
  %i.tx = icmp slt i64 %i.tw, 0
  br i1 %i.tx, label %bb.hv, label %.sink.split.i200.i

bb.hu:                                            ; preds = %bb.hq
  call void @llvm.trap()
  unreachable

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.trap()
  unreachable

bb.hw:                                            ; preds = %bb.hr
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !9095, !noalias !9097, !nonnull !4, !noundef !4 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !9095, !noalias !9097, !noundef !4
  %i.uc = atomicrmw add ptr %i.tz, i64 1 monotonic, align 8, !noalias !9098
  %i.ud = icmp slt i64 %i.uc, 0
  br i1 %i.ud, label %bb.hz, label %bb.hy

bb.hx:                                            ; preds = %bb.hr
  call void @llvm.trap()
  unreachable

bb.hy:                                            ; preds = %bb.hw
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8, !alias.scope !9095, !noalias !9097, !nonnull !4, !noundef !4 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.uh = load i64, ptr %i.ug, align 8, !alias.scope !9095, !noalias !9097, !noundef !4
  %i.ui = atomicrmw add ptr %i.uf, i64 1 monotonic, align 8, !noalias !9098
  %i.uj = icmp slt i64 %i.ui, 0
  br i1 %i.uj, label %bb.ib, label %bb.ia

bb.hz:                                            ; preds = %bb.hw
  call void @llvm.trap()
  unreachable

bb.ia:                                            ; preds = %bb.hy
  store ptr %i.tn, ptr %.sink18.i201.sroa.gep332.i65, align 8, !alias.scope !9092, !noalias !9099
  store i64 %i.tp, ptr %.sink15.i203.sroa.gep333.i77, align 8, !alias.scope !9092, !noalias !9099
  br label %.sink.split.i200.i

bb.ib:                                            ; preds = %bb.hy
  call void @llvm.trap()
  unreachable

bb.ic:                                            ; preds = %.sink.split.i200.i, %bb.hp
  %.sink12.i209.i = phi i64 [ 8, %bb.hp ], [ %.sink12.ph.i205.i, %.sink.split.i200.i ]
  %.sink10.i210.i = phi ptr [ %i.tn, %bb.hp ], [ %.sink10.ph.i206.i, %.sink.split.i200.i ]
  %.sink9.i211.i = phi i64 [ 16, %bb.hp ], [ %.sink9.ph.i207.i, %.sink.split.i200.i ]
  %.sink7.i212.i = phi i64 [ %i.tp, %bb.hp ], [ %.sink7.ph.i208.i, %.sink.split.i200.i ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink12.i209.i
  store ptr %.sink10.i210.i, ptr %i.uk, align 8, !alias.scope !9092, !noalias !9099
  %i.ul = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink9.i211.i
  store i64 %.sink7.i212.i, ptr %i.ul, align 8, !alias.scope !9092, !noalias !9099
  store i64 %i.tl, ptr %i.as, align 8, !alias.scope !9092, !noalias !9099
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ti, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.as, ptr noundef nonnull %.sroa.3315.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5316.0.copyload.i)
          to label %bb.id unwind label %bb.ih, !noalias !8834

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9100)
  %i.um = load i64, ptr %i.at, align 8, !range !2511, !alias.scope !9103, !noalias !9105, !noundef !4 ; 2 uses
  %.not.i216.i = icmp eq i64 %i.um, 20
  %i.un = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !9106, !noalias !8830 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !9106, !noalias !8830 ; 2 uses
  br i1 %.not.i216.i, label %bb.ie, label %bb.ii

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8830
  store ptr %i.uo, ptr %i.au, align 8, !noalias !8830
  %i.ur = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.uq, ptr %i.ur, align 8, !noalias !8830
  %i.us = icmp eq ptr %i.uo, null
  br i1 %i.us, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ut = atomicrmw sub ptr %i.uo, i64 1 release, align 8, !noalias !9107
  %i.uu = icmp eq i64 %i.ut, 1
  br i1 %i.uu, label %bb.ig, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.ig:                                            ; preds = %bb.if
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread467.i, !noalias !8834

.thread467.i:                                     ; preds = %bb.ig
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ig, %bb.if, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8830
  %i.uw = load ptr, ptr %i.th, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.uw)
          to label %bb.kq unwind label %.thread464.i, !noalias !8834

bb.ih:                                            ; preds = %bb.ic
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread464.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ii:                                            ; preds = %bb.id
  %.sroa.12330.0..sroa_idx331.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.4337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4337.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12330.0..sroa_idx331.i, i64 16, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9114)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.um, ptr %i.uz, align 8, !alias.scope !9117, !noalias !8830
  %.sroa.2335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.uo, ptr %.sroa.2335.0..sroa_idx.i, align 16, !alias.scope !9117, !noalias !8830
  %.sroa.3336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.uq, ptr %.sroa.3336.0..sroa_idx.i, align 8, !alias.scope !9117, !noalias !8830
  store i64 36, ptr %i.r, align 16, !alias.scope !9119, !noalias !9120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8830
  br label %bb.kq

bb.ij:                                            ; preds = %bb.hn
  %.sroa.4321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4321.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7317.i, i64 16, i1 false), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9121)
  %i.va = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.te, ptr %i.va, align 8, !alias.scope !9124, !noalias !8830
  %.sroa.2319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3315.0.copyload.i, ptr %.sroa.2319.0..sroa_idx.i, align 16, !alias.scope !9124, !noalias !8830
  %.sroa.3320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5316.0.copyload.i, ptr %.sroa.3320.0..sroa_idx.i, align 8, !alias.scope !9124, !noalias !8830
  store i64 36, ptr %i.r, align 16, !alias.scope !9126, !noalias !9127
  br label %bb.kq

bb.ik:                                            ; preds = %bb.il
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ve) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !8834

bb.il:                                            ; preds = %bb.gq, %bb.f
  %.sink15.i225.sroa.gep377.i101 = phi ptr [ %.sink15.i225.sroa.gep377.i, %bb.f ], [ %.sink15.i225.sroa.gep377.i102, %bb.gq ] ; 2 uses
  %.sink15.i225.sroa.gep.i95 = phi ptr [ %.sink15.i225.sroa.gep.i, %bb.f ], [ %.sink15.i225.sroa.gep.i96, %bb.gq ]
  %.sink18.i223.sroa.gep376.i89 = phi ptr [ %.sink18.i223.sroa.gep376.i, %bb.f ], [ %.sink18.i223.sroa.gep376.i90, %bb.gq ] ; 2 uses
  %.sink18.i223.sroa.gep.i83 = phi ptr [ %.sink18.i223.sroa.gep.i, %bb.f ], [ %.sink18.i223.sroa.gep.i84, %bb.gq ]
  %i.vc = phi ptr [ %i.bm, %bb.f ], [ %i.rv, %bb.gq ] ; 9 uses
  %i.vd = phi ptr [ %i.bl, %bb.f ], [ %i.rw, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !8830
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ar, ptr noundef nonnull align 8 %i.ve, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.im unwind label %bb.ik, !noalias !8834

bb.im:                                            ; preds = %bb.il
  %i.vf = load i64, ptr %i.ar, align 8, !range !8943, !noalias !8830, !noundef !4 ; 3 uses
  %i.vg = icmp eq i64 %i.vf, 21
  br i1 %i.vg, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8830
  br label %.thread115

bb.io:                                            ; preds = %bb.im
  %.sroa.3359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3359.0.copyload.i = load ptr, ptr %.sroa.3359.0..sroa_idx.i, align 8, !noalias !8830 ; 3 uses
  %.sroa.5360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.5360.0.copyload.i = load ptr, ptr %.sroa.5360.0..sroa_idx.i, align 8, !noalias !8830 ; 3 uses
  %.sroa.7361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.0..sroa_idx.i, i64 16, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ve)
          to label %bb.iq unwind label %bb.ip, !noalias !8834

bb.ip:                                            ; preds = %bb.io
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.iq:                                            ; preds = %bb.io
  %.not.i220.i = icmp eq i64 %i.vf, 20
  br i1 %.not.i220.i, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3359.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5360.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8830
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8830
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.vl = load ptr, ptr %i.vk, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9128)
  call void @llvm.experimental.noalias.scope.decl(metadata !9131)
  %i.vm = load i64, ptr %i.vl, align 8, !range !15, !alias.scope !9131, !noalias !9133, !noundef !4 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !9131, !noalias !9133, !nonnull !4, !noundef !4 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !alias.scope !9131, !noalias !9133, !noundef !4 ; 3 uses
  %i.vr = atomicrmw add ptr %i.vo, i64 1 monotonic, align 8, !noalias !9134
  %i.vs = icmp slt i64 %i.vr, 0                   ; 3 uses
  switch i64 %i.vm, label %default.unreachable38 [
    i64 0, label %bb.is
    i64 1, label %bb.it
    i64 2, label %bb.iu
  ]

bb.is:                                            ; preds = %bb.ir
  br i1 %i.vs, label %bb.iv, label %bb.jf

bb.it:                                            ; preds = %bb.ir
  br i1 %i.vs, label %bb.ix, label %bb.iw

bb.iu:                                            ; preds = %bb.ir
  br i1 %i.vs, label %bb.ja, label %bb.iz

bb.iv:                                            ; preds = %bb.is
  call void @llvm.trap()
  unreachable

.sink.split.i222.i:                               ; preds = %bb.jd, %bb.iw
  %.sink18.i223.sroa.phi.i = phi ptr [ %.sink18.i223.sroa.gep.i83, %bb.jd ], [ %.sink18.i223.sroa.gep376.i89, %bb.iw ]
  %.sink16.i224.i = phi ptr [ %i.wa, %bb.jd ], [ %i.vo, %bb.iw ]
  %.sink15.i225.sroa.phi.i = phi ptr [ %.sink15.i225.sroa.gep.i95, %bb.jd ], [ %.sink15.i225.sroa.gep377.i101, %bb.iw ]
  %.sink13.i226.i = phi i64 [ %i.wc, %bb.jd ], [ %i.vq, %bb.iw ]
  %.sink12.ph.i227.i = phi i64 [ 40, %bb.jd ], [ 24, %bb.iw ]
  %.sink10.ph.i228.i = phi ptr [ %i.wg, %bb.jd ], [ %i.vu, %bb.iw ]
  %.sink9.ph.i229.i = phi i64 [ 48, %bb.jd ], [ 32, %bb.iw ]
  %.sink7.ph.i230.i = phi i64 [ %i.wi, %bb.jd ], [ %i.vw, %bb.iw ]
  store ptr %.sink16.i224.i, ptr %.sink18.i223.sroa.phi.i, align 8, !alias.scope !9128, !noalias !9135
  store i64 %.sink13.i226.i, ptr %.sink15.i225.sroa.phi.i, align 8, !alias.scope !9128, !noalias !9135
  br label %bb.jf

bb.iw:                                            ; preds = %bb.it
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !9131, !noalias !9133, !nonnull !4, !noundef !4 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.vw = load i64, ptr %i.vv, align 8, !alias.scope !9131, !noalias !9133, !noundef !4
  %i.vx = atomicrmw add ptr %i.vu, i64 1 monotonic, align 8, !noalias !9134
  %i.vy = icmp slt i64 %i.vx, 0
  br i1 %i.vy, label %bb.iy, label %.sink.split.i222.i

bb.ix:                                            ; preds = %bb.it
  call void @llvm.trap()
  unreachable

bb.iy:                                            ; preds = %bb.iw
  call void @llvm.trap()
  unreachable

bb.iz:                                            ; preds = %bb.iu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !alias.scope !9131, !noalias !9133, !nonnull !4, !noundef !4 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !9131, !noalias !9133, !noundef !4
  %i.wd = atomicrmw add ptr %i.wa, i64 1 monotonic, align 8, !noalias !9134
  %i.we = icmp slt i64 %i.wd, 0
  br i1 %i.we, label %bb.jc, label %bb.jb

bb.ja:                                            ; preds = %bb.iu
  call void @llvm.trap()
  unreachable

bb.jb:                                            ; preds = %bb.iz
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !9131, !noalias !9133, !nonnull !4, !noundef !4 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %i.wi = load i64, ptr %i.wh, align 8, !alias.scope !9131, !noalias !9133, !noundef !4
  %i.wj = atomicrmw add ptr %i.wg, i64 1 monotonic, align 8, !noalias !9134
  %i.wk = icmp slt i64 %i.wj, 0
  br i1 %i.wk, label %bb.je, label %bb.jd

bb.jc:                                            ; preds = %bb.iz
  call void @llvm.trap()
  unreachable

bb.jd:                                            ; preds = %bb.jb
  store ptr %i.vo, ptr %.sink18.i223.sroa.gep376.i89, align 8, !alias.scope !9128, !noalias !9135
  store i64 %i.vq, ptr %.sink15.i225.sroa.gep377.i101, align 8, !alias.scope !9128, !noalias !9135
  br label %.sink.split.i222.i

bb.je:                                            ; preds = %bb.jb
  call void @llvm.trap()
  unreachable

bb.jf:                                            ; preds = %.sink.split.i222.i, %bb.is
  %.sink12.i231.i = phi i64 [ 8, %bb.is ], [ %.sink12.ph.i227.i, %.sink.split.i222.i ]
  %.sink10.i232.i = phi ptr [ %i.vo, %bb.is ], [ %.sink10.ph.i228.i, %.sink.split.i222.i ]
  %.sink9.i233.i = phi i64 [ 16, %bb.is ], [ %.sink9.ph.i229.i, %.sink.split.i222.i ]
  %.sink7.i234.i = phi i64 [ %i.vq, %bb.is ], [ %.sink7.ph.i230.i, %.sink.split.i222.i ]
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink12.i231.i
  store ptr %.sink10.i232.i, ptr %i.wl, align 8, !alias.scope !9128, !noalias !9135
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink9.i233.i
  store i64 %.sink7.i234.i, ptr %i.wm, align 8, !alias.scope !9128, !noalias !9135
  store i64 %i.vm, ptr %i.ao, align 8, !alias.scope !9128, !noalias !9135
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ao, ptr noundef nonnull %.sroa.3359.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5360.0.copyload.i)
          to label %bb.jg unwind label %bb.jk, !noalias !8834

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9136)
  %i.wn = load i64, ptr %i.ap, align 8, !range !2511, !alias.scope !9139, !noalias !9141, !noundef !4 ; 2 uses
  %.not.i238.i = icmp eq i64 %i.wn, 20
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8, !alias.scope !9142, !noalias !8830 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !9142, !noalias !8830 ; 2 uses
  br i1 %.not.i238.i, label %bb.jh, label %bb.jl

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8830
  store ptr %i.wp, ptr %i.aq, align 8, !noalias !8830
  %i.ws = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.wr, ptr %i.ws, align 8, !noalias !8830
  %i.wt = icmp eq ptr %i.wp, null
  br i1 %i.wt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.wu = atomicrmw sub ptr %i.wp, i64 1 release, align 8, !noalias !9143
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.jj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i

bb.jj:                                            ; preds = %bb.ji
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i unwind label %.thread488.i, !noalias !8834

.thread488.i:                                     ; preds = %bb.jj
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i: ; preds = %bb.jj, %bb.ji, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8830
  %i.wx = load ptr, ptr %i.vi, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wx)
          to label %bb.kq unwind label %.thread485.i, !noalias !8834

bb.jk:                                            ; preds = %bb.jf
  %i.wy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread485.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.jl:                                            ; preds = %bb.jg
  %.sroa.12374.0..sroa_idx375.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.4381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4381.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12374.0..sroa_idx375.i, i64 16, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9150)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.wn, ptr %i.xa, align 8, !alias.scope !9153, !noalias !8830
  %.sroa.2379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.wp, ptr %.sroa.2379.0..sroa_idx.i, align 16, !alias.scope !9153, !noalias !8830
  %.sroa.3380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.wr, ptr %.sroa.3380.0..sroa_idx.i, align 8, !alias.scope !9153, !noalias !8830
  store i64 36, ptr %i.r, align 16, !alias.scope !9155, !noalias !9156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8830
  br label %bb.kq

bb.jm:                                            ; preds = %bb.iq
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4365.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7361.i, i64 16, i1 false), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  %i.xb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.vf, ptr %i.xb, align 8, !alias.scope !9160, !noalias !8830
  %.sroa.2363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3359.0.copyload.i, ptr %.sroa.2363.0..sroa_idx.i, align 16, !alias.scope !9160, !noalias !8830
  %.sroa.3364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5360.0.copyload.i, ptr %.sroa.3364.0..sroa_idx.i, align 8, !alias.scope !9160, !noalias !8830
  store i64 36, ptr %i.r, align 16, !alias.scope !9162, !noalias !9163
  br label %bb.kq

bb.jn:                                            ; preds = %bb.jo
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.xf) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !8834

bb.jo:                                            ; preds = %bb.f, %bb.ai
  %.sink15.i250.sroa.gep431.i113 = phi ptr [ %.sink15.i250.sroa.gep431.i, %bb.f ], [ %.sink15.i250.sroa.gep431.i114, %bb.ai ] ; 2 uses
  %.sink15.i250.sroa.gep.i111 = phi ptr [ %.sink15.i250.sroa.gep.i, %bb.f ], [ %.sink15.i250.sroa.gep.i112, %bb.ai ]
  %.sink18.i248.sroa.gep430.i109 = phi ptr [ %.sink18.i248.sroa.gep430.i, %bb.f ], [ %.sink18.i248.sroa.gep430.i110, %bb.ai ] ; 2 uses
  %.sink18.i248.sroa.gep.i107 = phi ptr [ %.sink18.i248.sroa.gep.i, %bb.f ], [ %.sink18.i248.sroa.gep.i108, %bb.ai ]
  %i.xd = phi ptr [ %i.bm, %bb.f ], [ %i.bn, %bb.ai ] ; 9 uses
  %i.xe = phi ptr [ %i.bl, %bb.f ], [ %i.bo, %bb.ai ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8830
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ab, ptr noundef nonnull align 8 %i.xf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jp unwind label %bb.jn, !noalias !8834

bb.jp:                                            ; preds = %bb.jo
  %i.xg = load i64, ptr %i.ab, align 8, !range !8943, !noalias !8830, !noundef !4 ; 3 uses
  %i.xh = icmp eq i64 %i.xg, 21
  br i1 %i.xh, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8830
  br label %.thread115

bb.jr:                                            ; preds = %bb.jp
  %.sroa.3413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.3413.0.copyload.i = load ptr, ptr %.sroa.3413.0..sroa_idx.i, align 8, !noalias !8830 ; 3 uses
  %.sroa.5414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5414.0.copyload.i = load ptr, ptr %.sroa.5414.0..sroa_idx.i, align 8, !noalias !8830 ; 3 uses
  %.sroa.7415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.0..sroa_idx.i, i64 16, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8830
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.xf)
          to label %bb.jt unwind label %bb.js, !noalias !8834

bb.js:                                            ; preds = %bb.jr
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.jt:                                            ; preds = %bb.jr
  %.not.i245.i = icmp eq i64 %i.xg, 20
  br i1 %.not.i245.i, label %bb.ju, label %bb.kp

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3413.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5414.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8830
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8830
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.xm = load ptr, ptr %i.xl, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9164)
  call void @llvm.experimental.noalias.scope.decl(metadata !9167)
  %i.xn = load i64, ptr %i.xm, align 8, !range !15, !alias.scope !9167, !noalias !9169, !noundef !4 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !alias.scope !9167, !noalias !9169, !nonnull !4, !noundef !4 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xr = load i64, ptr %i.xq, align 8, !alias.scope !9167, !noalias !9169, !noundef !4 ; 3 uses
  %i.xs = atomicrmw add ptr %i.xp, i64 1 monotonic, align 8, !noalias !9170
  %i.xt = icmp slt i64 %i.xs, 0                   ; 3 uses
  switch i64 %i.xn, label %default.unreachable38 [
    i64 0, label %bb.jv
    i64 1, label %bb.jw
    i64 2, label %bb.jx
  ]

bb.jv:                                            ; preds = %bb.ju
  br i1 %i.xt, label %bb.jy, label %bb.ki

bb.jw:                                            ; preds = %bb.ju
  br i1 %i.xt, label %bb.ka, label %bb.jz

bb.jx:                                            ; preds = %bb.ju
  br i1 %i.xt, label %bb.kd, label %bb.kc

bb.jy:                                            ; preds = %bb.jv
  call void @llvm.trap()
  unreachable

.sink.split.i247.i:                               ; preds = %bb.kg, %bb.jz
  %.sink18.i248.sroa.phi.i = phi ptr [ %.sink18.i248.sroa.gep.i107, %bb.kg ], [ %.sink18.i248.sroa.gep430.i109, %bb.jz ]
  %.sink16.i249.i = phi ptr [ %i.yb, %bb.kg ], [ %i.xp, %bb.jz ]
  %.sink15.i250.sroa.phi.i = phi ptr [ %.sink15.i250.sroa.gep.i111, %bb.kg ], [ %.sink15.i250.sroa.gep431.i113, %bb.jz ]
  %.sink13.i251.i = phi i64 [ %i.yd, %bb.kg ], [ %i.xr, %bb.jz ]
  %.sink12.ph.i252.i = phi i64 [ 40, %bb.kg ], [ 24, %bb.jz ]
  %.sink10.ph.i253.i = phi ptr [ %i.yh, %bb.kg ], [ %i.xv, %bb.jz ]
  %.sink9.ph.i254.i = phi i64 [ 48, %bb.kg ], [ 32, %bb.jz ]
  %.sink7.ph.i255.i = phi i64 [ %i.yj, %bb.kg ], [ %i.xx, %bb.jz ]
  store ptr %.sink16.i249.i, ptr %.sink18.i248.sroa.phi.i, align 8, !alias.scope !9164, !noalias !9171
  store i64 %.sink13.i251.i, ptr %.sink15.i250.sroa.phi.i, align 8, !alias.scope !9164, !noalias !9171
  br label %bb.ki

bb.jz:                                            ; preds = %bb.jw
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !9167, !noalias !9169, !nonnull !4, !noundef !4 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !9167, !noalias !9169, !noundef !4
  %i.xy = atomicrmw add ptr %i.xv, i64 1 monotonic, align 8, !noalias !9170
  %i.xz = icmp slt i64 %i.xy, 0
  br i1 %i.xz, label %bb.kb, label %.sink.split.i247.i

bb.ka:                                            ; preds = %bb.jw
  call void @llvm.trap()
  unreachable

bb.kb:                                            ; preds = %bb.jz
  call void @llvm.trap()
  unreachable

bb.kc:                                            ; preds = %bb.jx
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !alias.scope !9167, !noalias !9169, !nonnull !4, !noundef !4 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.yd = load i64, ptr %i.yc, align 8, !alias.scope !9167, !noalias !9169, !noundef !4
  %i.ye = atomicrmw add ptr %i.yb, i64 1 monotonic, align 8, !noalias !9170
  %i.yf = icmp slt i64 %i.ye, 0
  br i1 %i.yf, label %bb.kf, label %bb.ke

bb.kd:                                            ; preds = %bb.jx
  call void @llvm.trap()
  unreachable

bb.ke:                                            ; preds = %bb.kc
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.yh = load ptr, ptr %i.yg, align 8, !alias.scope !9167, !noalias !9169, !nonnull !4, !noundef !4 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !9167, !noalias !9169, !noundef !4
  %i.yk = atomicrmw add ptr %i.yh, i64 1 monotonic, align 8, !noalias !9170
  %i.yl = icmp slt i64 %i.yk, 0
  br i1 %i.yl, label %bb.kh, label %bb.kg

bb.kf:                                            ; preds = %bb.kc
  call void @llvm.trap()
  unreachable

bb.kg:                                            ; preds = %bb.ke
  store ptr %i.xp, ptr %.sink18.i248.sroa.gep430.i109, align 8, !alias.scope !9164, !noalias !9171
  store i64 %i.xr, ptr %.sink15.i250.sroa.gep431.i113, align 8, !alias.scope !9164, !noalias !9171
  br label %.sink.split.i247.i

bb.kh:                                            ; preds = %bb.ke
  call void @llvm.trap()
  unreachable

bb.ki:                                            ; preds = %.sink.split.i247.i, %bb.jv
  %.sink12.i256.i = phi i64 [ 8, %bb.jv ], [ %.sink12.ph.i252.i, %.sink.split.i247.i ]
  %.sink10.i257.i = phi ptr [ %i.xp, %bb.jv ], [ %.sink10.ph.i253.i, %.sink.split.i247.i ]
  %.sink9.i258.i = phi i64 [ 16, %bb.jv ], [ %.sink9.ph.i254.i, %.sink.split.i247.i ]
  %.sink7.i259.i = phi i64 [ %i.xr, %bb.jv ], [ %.sink7.ph.i255.i, %.sink.split.i247.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink12.i256.i
  store ptr %.sink10.i257.i, ptr %i.ym, align 8, !alias.scope !9164, !noalias !9171
  %i.yn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink9.i258.i
  store i64 %.sink7.i259.i, ptr %i.yn, align 8, !alias.scope !9164, !noalias !9171
  store i64 %i.xn, ptr %i.y, align 8, !alias.scope !9164, !noalias !9171
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %.sroa.3413.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5414.0.copyload.i)
          to label %bb.kj unwind label %bb.kn, !noalias !8834

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  %i.yo = load i64, ptr %i.z, align 8, !range !2511, !alias.scope !9175, !noalias !9177, !noundef !4 ; 2 uses
  %.not.i263.i = icmp eq i64 %i.yo, 20
  %i.yp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !alias.scope !9178, !noalias !8830 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !alias.scope !9178, !noalias !8830 ; 2 uses
  br i1 %.not.i263.i, label %bb.kk, label %bb.ko

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8830
  store ptr %i.yq, ptr %i.aa, align 8, !noalias !8830
  %i.yt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ys, ptr %i.yt, align 8, !noalias !8830
  %i.yu = icmp eq ptr %i.yq, null
  br i1 %i.yu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.yv = atomicrmw sub ptr %i.yq, i64 1 release, align 8, !noalias !9179
  %i.yw = icmp eq i64 %i.yv, 1
  br i1 %i.yw, label %bb.km, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i

bb.km:                                            ; preds = %bb.kl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i unwind label %.thread509.i, !noalias !8834

.thread509.i:                                     ; preds = %bb.km
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i: ; preds = %bb.km, %bb.kl, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8830
  %i.yy = load ptr, ptr %i.xj, align 8, !noalias !8830, !nonnull !4, !align !1674, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yy)
          to label %bb.kq unwind label %.thread506.i, !noalias !8834

bb.kn:                                            ; preds = %bb.ki
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8830
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread506.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ko:                                            ; preds = %bb.kj
  %.sroa.12428.0..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4435.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx429.i, i64 16, i1 false), !noalias !8830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9186)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.yo, ptr %i.zb, align 8, !alias.scope !9189, !noalias !8830
  %.sroa.2433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.yq, ptr %.sroa.2433.0..sroa_idx.i, align 16, !alias.scope !9189, !noalias !8830
  %.sroa.3434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ys, ptr %.sroa.3434.0..sroa_idx.i, align 8, !alias.scope !9189, !noalias !8830
  store i64 36, ptr %i.r, align 16, !alias.scope !9191, !noalias !9192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8830
  br label %bb.kq

bb.kp:                                            ; preds = %bb.jt
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, i64 16, i1 false), !noalias !8830
  call void @llvm.experimental.noalias.scope.decl(metadata !9193)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.xg, ptr %i.zc, align 8, !alias.scope !9196, !noalias !8830
  %.sroa.2417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3413.0.copyload.i, ptr %.sroa.2417.0..sroa_idx.i, align 16, !alias.scope !9196, !noalias !8830
  %.sroa.3418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5414.0.copyload.i, ptr %.sroa.3418.0..sroa_idx.i, align 8, !alias.scope !9196, !noalias !8830
  store i64 36, ptr %i.r, align 16, !alias.scope !9198, !noalias !9199
  br label %bb.kq

.thread115:                                       ; preds = %bb.jq, %bb.in, %bb.hk, %bb.gm
  %.ph = phi ptr [ %i.mg, %bb.gm ], [ %i.tb, %bb.hk ], [ %i.vc, %bb.in ], [ %i.xd, %bb.jq ]
  %.sink.i.ph = phi i8 [ 3, %bb.gm ], [ 4, %bb.hk ], [ 5, %bb.in ], [ 6, %bb.jq ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !8830
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol14log_compaction16compact_logs_for00Cs7p2uQeJxui2_9deltalake:bb.a
  store ptr %i.ey, ptr %i.ez, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fa = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_13put_multipart(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
          to label %bb.bh unwind label %bb.bg     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body200

bb.bh:                                            ; preds = %bb.bf
  %i.fc = extractvalue { ptr, ptr } %i.fa, 0
  %i.fd = extractvalue { ptr, ptr } %i.fa, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.fc, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr %i.fd, ptr %i.ff, align 8
  br label %bb.bt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140: ; preds = %.body200, %bb.ch, %bb.gl, %bb.be
  %.pn54 = phi { ptr, i32 } [ %i.pj, %bb.gl ], [ %i.ev, %bb.be ], [ %.pn51.pn, %bb.ch ], [ %.pn51.pn, %.body200 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 314
  %i.fh = load i8, ptr %i.fg, align 2, !range !1997, !noundef !4
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.hn, label %.body210

bb.bi:                                            ; preds = %bb.bc
  %.sroa.10294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.3298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3298.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10294.0..sroa_idx295, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.2297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2297.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8292, i64 40, i1 false)
  store i64 %i.ej, ptr %i.j, align 16, !alias.scope !9633
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit240

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit240: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i237, %bb.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit, %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 314
  store i8 0, ptr %i.fj, align 2
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit240
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %.body129 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit240
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit unwind label %bb.gr

.body210:                                         ; preds = %bb.hj, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i235, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i208, %bb.go, %bb.hn, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140
  %.pn56.pn = phi { ptr, i32 } [ %i.ei, %bb.bb ], [ %.pn54, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140 ], [ %.pn54, %bb.hn ], [ %i.ps, %bb.go ], [ %i.ps, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i208 ], [ %i.ru, %bb.hj ], [ %i.ru, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i235 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 314
  store i8 0, ptr %i.fn, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.fo) #37
          to label %.body129 unwind label %bb.br

bb.bl:                                            ; preds = %bb.az
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body129

bb.bm:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.bm
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel14log_compaction6writer19LogCompactionWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %i.fq)
          to label %bb.bo unwind label %bb.gs

.body129:                                         ; preds = %bb.aw, %bb.bl, %bb.bj, %bb.gp, %bb.gr, %.body210
  %.pn59.pn = phi { ptr, i32 } [ %i.qc, %bb.gr ], [ %i.qa, %bb.gp ], [ %.pn56.pn, %.body210 ], [ %i.fl, %bb.bj ], [ %i.fp, %bb.bl ], [ %i.dv, %bb.aw ]
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel14log_compaction6writer19LogCompactionWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %i.fr) #37
          to label %bb.bp unwind label %bb.br

bb.bn:                                            ; preds = %bb.au
  %i.fs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.8.16..sroa_idx279 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx279, ptr noundef nonnull align 16 dereferenceable(96) %i.fs, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx279, i64 96, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 317
  store i8 0, ptr %i.ft, align 1
  br label %bb.t

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2B_5error5ErrorEEECs7p2uQeJxui2_9deltalake.exit, %bb.gs, %bb.at, %.body129
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2B_5error5ErrorEEECs7p2uQeJxui2_9deltalake.exit ], [ %i.dq, %bb.at ], [ %i.qe, %bb.gs ], [ %.pn59.pn, %.body129 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 317 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !range !1997, !noundef !4
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ho, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit

bb.bq:                                            ; preds = %bb.ar, %bb.ap
  %.sink524 = phi i64 [ %i.cq, %bb.ar ], [ -9223372036854775722, %bb.ap ]
  %.sroa.13.sroa.0.0.copyload.sink = phi ptr [ %.sroa.13.sroa.0.0.copyload, %bb.ar ], [ %.sroa.4.i.sroa.0.0.copyload, %bb.ap ]
  store i64 %.sink524, ptr %i.j, align 16
  %.sroa.2.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.13.sroa.0.0.copyload.sink, ptr %.sroa.2.0..sroa_idx274, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.10.sroa.10)
  br label %bb.bo

bb.br:                                            ; preds = %bb.hr, %bb.hp, %bb.cz, %bb.ch, %bb.y, %bb.v, %bb.ew, %bb.hn, %.body203, %bb.bs, %bb.ci, %bb.fa, %bb.fl, %bb.hm, %bb.ez, %.body144, %bb.cr, %.body129, %.body210
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bs:                                            ; preds = %bb.bt
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val92 = load ptr, ptr %i.ga, align 8
  %i.fz = getelementptr i8, ptr %1, i64 344
  %.val93 = load ptr, ptr %i.fz, align 8, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val92, ptr nonnull %.val93) #37
          to label %.body200 unwind label %bb.br

bb.bt:                                            ; preds = %bb.a, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bu unwind label %bb.bs

bb.bu:                                            ; preds = %bb.bt
  %i.gb = load i64, ptr %i.v, align 8, !range !5486, !noundef !4 ; 3 uses
  %i.gc = icmp eq i64 %i.gb, -9223372036854775789
  br i1 %i.gc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3310.0.copyload = load ptr, ptr %.sroa.3310.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5311.0.copyload = load ptr, ptr %.sroa.5311.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val90 = load ptr, ptr %i.ga, align 8          ; 5 uses
  %i.gd = getelementptr i8, ptr %1, i64 344
  %.val91 = load ptr, ptr %i.gd, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.ge = load ptr, ptr %.val91, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val90) ]
  invoke void %i.ge(ptr noundef nonnull %.val90)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gf = getelementptr inbounds nuw i8, ptr %.val91, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.by
  %i.gi = getelementptr inbounds nuw i8, ptr %.val91, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val90) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) %i.gj) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.bz:                                            ; preds = %bb.bx
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.val91, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %.body200, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.bz
  %i.go = getelementptr inbounds nuw i8, ptr %.val91, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !range !2223, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) %i.gp) #33
  br label %.body200

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.by
  %.not.i134 = icmp eq i64 %i.gb, -9223372036854775790
  br i1 %.not.i134, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3310.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5311.0.copyload) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %.sroa.3310.0.copyload, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.5311.0.copyload, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.experimental.noalias.scope.decl(metadata !9637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9637
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 8388608, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc136 unwind label %bb.cc

.noexc136:                                        ; preds = %bb.ca
  %i.gt = load i64, ptr %i.e, align 8, !range !3, !noalias !9637, !noundef !4
  %i.gu = trunc nuw i64 %i.gt to i1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !range !2006, !noalias !9637, !noundef !4 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.gu, label %bb.cb, label %bb.cd, !prof !1649

bb.cb:                                            ; preds = %.noexc136
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !9637
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gw, i64 %i.gy) #42
          to label %.noexc137 unwind label %bb.cc

.noexc137:                                        ; preds = %bb.cb
  unreachable

.body203:                                         ; preds = %bb.hd, %bb.gh, %bb.cc, %bb.hm, %.body183
  %.pn49 = phi { ptr, i32 } [ %.pn46.pn, %.body183 ], [ %.pn46.pn, %bb.hm ], [ %i.pd, %bb.gh ], [ %i.hc, %bb.cc ], [ %i.rh, %bb.hd ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val98 = load ptr, ptr %i.ha, align 8
  %i.hb = getelementptr i8, ptr %1, i64 168
  %.val99 = load ptr, ptr %i.hb, align 8, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake(ptr %.val98, ptr nonnull %.val99) #37
          to label %.body200 unwind label %bb.br

bb.cc:                                            ; preds = %bb.he, %bb.gi, %bb.cb, %bb.ca
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body203

bb.cd:                                            ; preds = %.noexc136
  %i.hd = load ptr, ptr %i.gx, align 8, !noalias !9637, !nonnull !4, !noundef !4
  %i.he = icmp ugt i64 %i.gw, 8388607
  call void @llvm.assume(i1 %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9637
  store i64 %i.gw, ptr %i.gs, align 8, !alias.scope !9637
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.hd, ptr %i.hf, align 8, !alias.scope !9637
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %i.hg, align 8, !alias.scope !9637
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 1, ptr %i.hh, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cw, %bb.cd
  %.sroa.14337.sroa.9.0 = phi i64 [ undef, %bb.cd ], [ %.sroa.14337.sroa.9.3, %bb.cw ]
  %.sroa.14337.sroa.0.sroa.9.0 = phi ptr [ undef, %bb.cd ], [ %.sroa.0316.2, %bb.cw ]
  %.sroa.14337.sroa.0.sroa.11.0 = phi ptr [ undef, %bb.cd ], [ %.sroa.10318.2, %bb.cw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8330.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 314
  store i8 0, ptr %i.hi, align 2
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.hj, i64 40, i1 false)
  %i.hk = invoke noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2c_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB4_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.cy unwind label %bb.cx

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.4315.0..sroa.4.0..sroa_idx.i135.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4315.0..sroa.4.0..sroa_idx.i135.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9640)
  store i64 -9223372036854775743, ptr %i.j, align 16, !alias.scope !9643, !noalias !9640
  %.sroa.4.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.gb, ptr %.sroa.4.0..sroa_idx.i135, align 8, !alias.scope !9645
  %.sroa.2313.0..sroa.4.0..sroa_idx.i135.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.3310.0.copyload, ptr %.sroa.2313.0..sroa.4.0..sroa_idx.i135.sroa_idx, align 16, !alias.scope !9645
  %.sroa.3314.0..sroa.4.0..sroa_idx.i135.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.sroa.5311.0.copyload, ptr %.sroa.3314.0..sroa.4.0..sroa_idx.i135.sroa_idx, align 8, !alias.scope !9645
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit228

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit228: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i225, %bb.ha, %bb.cf
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9646)
  call void @llvm.experimental.noalias.scope.decl(metadata !9649)
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !9652, !nonnull !4, !noundef !4
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !9652
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit228
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hl) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.gl

.body200:                                         ; preds = %bb.bg, %bb.bs, %bb.bz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.hb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i223, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.gf, %.body203
  %.pn51.pn = phi { ptr, i32 } [ %i.ra, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i223 ], [ %.pn49, %.body203 ], [ %i.ow, %bb.gf ], [ %i.ow, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ra, %bb.hb ], [ %i.fb, %bb.bg ], [ %i.fy, %bb.bs ], [ %i.gk, %bb.bz ], [ %i.gk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9653)
  call void @llvm.experimental.noalias.scope.decl(metadata !9656)
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !9659, !nonnull !4, !noundef !4
  %i.hr = atomicrmw sub ptr %i.hq, i64 1 release, align 8, !noalias !9659
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140

bb.ch:                                            ; preds = %.body200
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hp) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit140 unwind label %bb.br

bb.ci:                                            ; preds = %bb.cj
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val88 = load ptr, ptr %i.hv, align 8
  %i.hu = getelementptr i8, ptr %1, i64 424
  %.val89 = load ptr, ptr %i.hu, align 8, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val88, ptr nonnull %.val89) #37
          to label %.body144 unwind label %bb.br

bb.cj:                                            ; preds = %bb.a, %bb.eg
  %.sroa.0316.0 = phi ptr [ %.sroa.14337.sroa.0.sroa.9.0.copyload, %bb.eg ], [ undef, %bb.a ] ; 5 uses
  %.sroa.10318.0 = phi ptr [ %.sroa.14337.sroa.0.sroa.11.0.copyload, %bb.eg ], [ undef, %bb.a ] ; 5 uses
  %.sroa.14337.sroa.9.2 = phi i64 [ %.sroa.14337.sroa.9.0.copyload, %bb.eg ], [ undef, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ck unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  %i.hw = load i64, ptr %i.o, align 8, !range !5486, !noundef !4 ; 3 uses
  %i.hx = icmp eq i64 %i.hw, -9223372036854775789
  br i1 %i.hx, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.cm:                                            ; preds = %bb.ck
  %.sroa.3394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3394, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3394.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val86 = load ptr, ptr %i.hv, align 8          ; 5 uses
  %i.hy = getelementptr i8, ptr %1, i64 424
  %.val87 = load ptr, ptr %i.hy, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.hz = load ptr, ptr %.val87, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i141, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val86) ]
  invoke void %i.hz(ptr noundef nonnull %.val86)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ia = getelementptr inbounds nuw i8, ptr %.val87, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i143

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i143: ; preds = %bb.co
  %i.id = getelementptr inbounds nuw i8, ptr %.val87, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val86) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) %i.ie) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.cp:                                            ; preds = %bb.cn
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val87, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.body144, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i142

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i142: ; preds = %bb.cp
  %i.ij = getelementptr inbounds nuw i8, ptr %.val87, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !range !2223, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) %i.ik) #33
  br label %.body144

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i143, %bb.co
  %.not.i146 = icmp eq i64 %i.hw, -9223372036854775790
  br i1 %.not.i146, label %bb.cq, label %bb.es

bb.cq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, %bb.ec
  %.sroa.0316.2 = phi ptr [ %.sroa.14337.sroa.0.sroa.9.0.copyload, %bb.ec ], [ %.sroa.0316.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %.sroa.10318.2 = phi ptr [ %.sroa.14337.sroa.0.sroa.11.0.copyload, %bb.ec ], [ %.sroa.10318.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %.sroa.14337.sroa.9.3 = phi i64 [ %.sroa.14337.sroa.9.0.copyload, %bb.ec ], [ %.sroa.14337.sroa.9.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdFjMDJQAyx6_10arrow_json6writer6WriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtBJ_13LineDelimitedEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(160) %i.il)
          to label %bb.ct unwind label %bb.cs

bb.cr:                                            ; preds = %.body144, %bb.dv, %bb.cs
  %.sroa.0316.3 = phi ptr [ %.sroa.0316.4, %bb.cs ], [ %.sroa.0316.8, %.body144 ], [ %.sroa.14337.sroa.0.sroa.9.0.copyload, %bb.dv ]
  %.sroa.10318.3 = phi ptr [ %.sroa.10318.4, %bb.cs ], [ %.sroa.10318.8, %.body144 ], [ %.sroa.14337.sroa.0.sroa.11.0.copyload, %bb.dv ]
  %.pn41 = phi { ptr, i32 } [ %i.in, %bb.cs ], [ %.pn38.pn, %.body144 ], [ %i.ki, %bb.dv ]
end_hunk_1
begin_hunk_2_@_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs7p2uQeJxui2_9deltalake:bb.a
  unreachable

bb.z:                                             ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10100
  %.val6.i.i = load ptr, ptr %i.cf, align 16, !noalias !10100
  %i.ca = getelementptr i8, ptr %1, i64 1672
  %.val7.i.i = load ptr, ptr %i.ca, align 8, !noalias !10100, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6.i.i, ptr nonnull %.val7.i.i) #37
          to label %.body.i.i unwind label %bb.ah, !noalias !10109

bb.aa:                                            ; preds = %bb.v, %bb.p
  %i.cb = phi ptr [ %i.ar, %bb.v ], [ %i.ac, %bb.p ] ; 6 uses
  %i.cc = phi ptr [ %i.as, %bb.v ], [ %i.ab, %bb.p ] ; 5 uses
  %i.cd = phi ptr [ %i.av, %bb.v ], [ %.phi.trans.insert.i, %bb.p ] ; 6 uses
  %i.ce = phi ptr [ %i.aw, %bb.v ], [ %i.aq, %bb.p ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10100
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.z, !noalias !10109

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i64, ptr %i.a, align 8, !range !8943, !noalias !10100, !noundef !4 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 21
  br i1 %i.ch, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10100
  store i8 3, ptr %i.cd, align 16, !noalias !10100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10100
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.837.0.copyload = load ptr, ptr %.sroa.837.0..sroa_idx, align 8, !noalias !10100
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939.0..sroa_idx, i64 16, i1 false), !noalias !10100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10100
  %.val.i.i = load ptr, ptr %i.cf, align 16, !noalias !10100 ; 5 uses
  %i.ci = getelementptr i8, ptr %1, i64 1672
  %.val5.i.i = load ptr, ptr %i.ci, align 8, !noalias !10100, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.cj = load ptr, ptr %.val5.i.i, align 8, !invariant.load !4, !noalias !10109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.cj(ptr noundef nonnull %.val.i.i)
          to label %bb.ae unwind label %bb.af, !noalias !10109

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !2017, !invariant.load !4, !noalias !10109 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !2223, !invariant.load !4, !noalias !10109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.co) #33, !noalias !10109
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !2017, !invariant.load !4, !noalias !10109 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.body.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !2223, !invariant.load !4, !noalias !10109
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) %i.cu) #33, !noalias !10109
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ce)
          to label %.thread unwind label %bb.ag, !noalias !10109

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, i64 16, i1 false), !noalias !10110
  store i8 1, ptr %i.cd, align 16, !noalias !10100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  br label %bb.aj

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.ah:                                            ; preds = %bb.z, %.body.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10109
  unreachable

bb.ai:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.sroa.9, i64 16, i1 false)
  store i8 1, ptr %i.av, align 16, !noalias !10100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9)
  %i.cx = icmp eq i64 %.sroa.8.i.i.sroa.0.0.copyload, 21
  br i1 %i.cx, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ai
  %i.cy = phi ptr [ %i.cb, %.thread ], [ %i.ar, %bb.ai ] ; 4 uses
  %i.cz = phi ptr [ %i.cc, %.thread ], [ %i.as, %bb.ai ] ; 4 uses
  %i.da = phi ptr [ %i.ce, %.thread ], [ %i.aw, %bb.ai ]
  %.sroa.837.048 = phi ptr [ %.sroa.837.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.8.0.copyload, %bb.ai ] ; 3 uses
  %.sroa.7.047 = phi ptr [ %.sroa.7.0.copyload, %.thread ], [ %.sroa.8.i.i.sroa.7.0.copyload, %bb.ai ] ; 3 uses
  %.sroa.034.046 = phi i64 [ %i.cg, %.thread ], [ %.sroa.8.i.i.sroa.0.0.copyload, %bb.ai ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.da)
          to label %bb.al unwind label %bb.ak, !noalias !10099

bb.ak:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.al:                                            ; preds = %bb.aj
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10111)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %.val.i7.i = load ptr, ptr %i.dd, align 16, !alias.scope !10111, !noalias !10095, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i7.i)
          to label %bb.am unwind label %.body.i8.i, !noalias !10114

.body.i8.i:                                       ; preds = %bb.al
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #33, !noalias !10114
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dc) #37
          to label %.body10.i unwind label %bb.an, !noalias !10099

bb.am:                                            ; preds = %bb.al
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i, i64 noundef 1680, i64 noundef 8) #33, !noalias !10114
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.dc)
          to label %bb.ar unwind label %bb.ao, !noalias !10099

bb.an:                                            ; preds = %.body.i8.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10099
  unreachable

.body10.i:                                        ; preds = %bb.ao, %.body.i8.i, %bb.l
  %i.dg = phi ptr [ %i.aj, %bb.l ], [ %i.cy, %bb.ao ], [ %i.cy, %.body.i8.i ]
  %i.dh = phi ptr [ %i.ak, %bb.l ], [ %i.cz, %bb.ao ], [ %i.cz, %.body.i8.i ]
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.l ], [ %i.di, %bb.ao ], [ %i.de, %.body.i8.i ]
  store i8 2, ptr %i.dg, align 16, !noalias !10095
  br label %.body11

bb.ao:                                            ; preds = %bb.am
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

bb.ap:                                            ; preds = %.body.i, %bb.l
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10099
  unreachable

common.ret:                                       ; preds = %bb.ax, %bb.aq
  %storemerge = phi i8 [ 1, %bb.ax ], [ 3, %bb.aq ]
  store i8 %storemerge, ptr %i.f, align 8
  ret void

bb.aq:                                            ; preds = %bb.ai, %.thread.i
  %i.dk = phi ptr [ %i.ar, %bb.ai ], [ %i.cb, %.thread.i ]
  store i8 3, ptr %i.dk, align 16, !noalias !10095
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.926.sroa.7)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.ar:                                            ; preds = %bb.am
  store i8 1, ptr %i.cy, align 16, !noalias !10095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.926.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.926.sroa.7)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.cz)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  %.not.i = icmp eq i64 %.sroa.034.046, 20
  br i1 %.not.i, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.047) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.048) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1737 ; 2 uses
  store i8 0, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.do = load ptr, ptr %i.dn, align 16, !nonnull !4, !noundef !4
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %.sroa.7.047, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.837.048, ptr noundef nonnull %i.do)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  store i8 0, ptr %i.dm, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit, %bb.aw
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1738
  store i8 0, ptr %i.dq, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %common.ret

bb.ay:                                            ; preds = %.body11, %bb.as, %bb.av
  %.pn4.pn = phi { ptr, i32 } [ %i.dp, %bb.av ], [ %i.dl, %bb.as ], [ %eh.lpad-body12, %.body11 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1737
  %i.ds = load i8, ptr %i.dr, align 1, !range !1997, !noundef !4
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15

bb.az:                                            ; preds = %bb.at
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831, i64 16, i1 false)
  store i64 %.sroa.034.046, ptr %i.d, align 8, !alias.scope !10115
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.7.047, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !10115
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.837.048, ptr %.sroa.333.0..sroa_idx, align 8, !alias.scope !10115
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10119)
  call void @llvm.experimental.noalias.scope.decl(metadata !10122)
  %i.dv = load ptr, ptr %i.du, align 16, !alias.scope !10125, !nonnull !4, !noundef !4
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !10125
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.du) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.az, %bb.ba
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1737
  store i8 0, ptr %i.dz, align 1
  br label %bb.ax

bb.bc:                                            ; preds = %bb.be, %bb.bg, %.body11
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bd:                                            ; preds = %bb.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10126)
  call void @llvm.experimental.noalias.scope.decl(metadata !10129)
  %i.ec = load ptr, ptr %i.eb, align 16, !alias.scope !10132, !nonnull !4, !noundef !4
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !10132
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15 unwind label %bb.bc

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15
  store i8 0, ptr %i.w, align 2
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn7

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit15
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(336) %i.ef) #37
          to label %bb.bf unwind label %bb.bc
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE5write0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [24 x i8], align 8            ; 3 uses
  %.sroa.3 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !602, !noundef !4
  switch i8 %i.d, label %default.unreachable37 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

default.unreachable37:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !align !1674, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !1674, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.i = getelementptr i8, ptr %i.e, i64 304      ; 2 uses
  %.val11 = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !range !8674, !alias.scope !10133, !noalias !10136, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 8
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val9 = load i64, ptr %i.i, align 8, !noundef !4
  %.not2 = icmp eq i64 %.val11, %.val9
  br i1 %.not2, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx15, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

common.ret:                                       ; preds = %bb.n, %bb.h
  %storemerge = phi i8 [ 3, %bb.n ], [ 1, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake.exit, %bb.e, %bb.t, %bb.g
  %.sroa.028.0 = phi i64 [ %i.k, %bb.g ], [ %i.o, %bb.t ], [ 8, %bb.e ], [ 8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake.exit ]
  store i64 %.sroa.028.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br label %common.ret

.body:                                            ; preds = %bb.k, %bb.s, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.c
  %.pn6.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.aa, %bb.s ], [ %i.m, %bb.k ], [ %i.aa, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn6.pn

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #41
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #41
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.n) #37
          to label %.body unwind label %bb.u

bb.l:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE8do_write0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.o = load i64, ptr %i.a, align 8, !range !9352, !noundef !4 ; 3 uses
  %i.p = icmp eq i64 %i.o, 9
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 9, ptr %0, align 8
  br label %common.ret

bb.o:                                             ; preds = %bb.m
end_hunk_2
begin_hunk_3_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake:bb.a
bb.hb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body40 unwind label %bb.hc, !noalias !10371

bb.hc:                                            ; preds = %bb.hb
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10371
  unreachable

bb.hd:                                            ; preds = %bb.gy, %.body.i.i37
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10371
  unreachable

bb.he:                                            ; preds = %bb.gw
  unreachable

_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.hj unwind label %bb.hf

bb.hf:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i, %select.unfold
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.hg:                                            ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBW_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.ss = getelementptr inbounds i8, ptr %i.rp, i64 -16
  %.val26 = load ptr, ptr %i.ss, align 8, !nonnull !4, !noundef !4
  %i.st = getelementptr i8, ptr %i.rp, i64 -8
  %.val27 = load ptr, ptr %i.st, align 8, !nonnull !4, !align !1674, !noundef !4 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.val27, i64 16
  %i.sv = load i64, ptr %i.su, align 8, !range !2223, !invariant.load !4
  %i.sw = add nsw i64 %i.sv, -1
  %i.sx = and i64 %i.sw, -16
  %i.sy = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !invariant.load !4, !nonnull !4
  %i.tc = invoke { ptr, ptr } %i.tb(ptr noundef nonnull %i.sz, ptr noundef nonnull %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @123, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.cn)
          to label %bb.hi unwind label %bb.hh     ; 2 uses

bb.hh:                                            ; preds = %bb.hg
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.hi:                                            ; preds = %bb.hg
  %i.te = extractvalue { ptr, ptr } %i.tc, 0
  %i.tf = extractvalue { ptr, ptr } %i.tc, 1
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.te, ptr %i.tg, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store ptr %i.tf, ptr %i.th, align 8
  br label %bb.hr

bb.hj:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10367
  %i.ti = load <2 x ptr>, ptr %i.f, align 16, !noalias !10372
  %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.tj = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx, align 16, !noalias !10372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10362
  %i.tk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.tj, i64 0
  br label %bb.hk

bb.hk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, %bb.hj
  %.sroa.079.0 = phi i64 [ 10, %bb.hj ], [ %i.tv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.tl = phi <2 x i64> [ %i.tk, %bb.hj ], [ %i.ty, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.tm = phi <2 x ptr> [ %i.ti, %bb.hj ], [ %i.tx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.to = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tn)
          to label %.body44 unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.tp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.hk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.go

.body40:                                          ; preds = %bb.hh, %bb.hq, %bb.hx, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.gt, %.body.i.i37, %bb.hb, %bb.hf
  %.pn8.pn = phi { ptr, i32 } [ %i.sr, %bb.hf ], [ %i.so, %bb.hb ], [ %.pn.i.i38, %.body.i.i37 ], [ %i.sb, %bb.gt ], [ %i.ug, %bb.hx ], [ %i.ts, %bb.hq ], [ %i.ug, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.td, %bb.hh ]
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tq) #37
          to label %.body44 unwind label %bb.hn

bb.hn:                                            ; preds = %bb.gi, %bb.hq, %.body40, %.body44
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.gi, %.body, %bb.ib, %.body44
  %.pn13 = phi { ptr, i32 } [ %i.us, %bb.ib ], [ %.pn11, %.body44 ], [ %.pn, %.body ], [ %i.cx, %bb.c ], [ %.pn, %bb.gi ]
  store i8 2, ptr %i.cj, align 8
  resume { ptr, i32 } %.pn13

bb.ho:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #41
  unreachable

bb.hp:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #41
  unreachable

bb.hq:                                            ; preds = %bb.hr
  %i.ts = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.val19 = load ptr, ptr %i.tu, align 8
  %i.tt = getelementptr i8, ptr %1, i64 1728
  %.val20 = load ptr, ptr %i.tt, align 8, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val19, ptr nonnull %.val20) #37
          to label %.body40 unwind label %bb.hn

bb.hr:                                            ; preds = %bb.a, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 1720 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.tu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hs unwind label %bb.hq

bb.hs:                                            ; preds = %bb.hr
  %i.tv = load i64, ptr %i.ci, align 8, !range !8943, !noundef !4 ; 3 uses
  %i.tw = icmp eq i64 %i.tv, 21
  br i1 %i.tw, label %bb.ht, label %bb.hu

common.ret:                                       ; preds = %bb.ic, %bb.ht
  %storemerge = phi i8 [ 3, %bb.ht ], [ 1, %bb.ic ]
  store i8 %storemerge, ptr %i.cj, align 8
  ret void

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.hu:                                            ; preds = %bb.hs
  %.sroa.374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.tx = load <2 x ptr>, ptr %.sroa.374.0..sroa_idx, align 8 ; 4 uses
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ty = load <2 x i64>, ptr %.sroa.775.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.val17 = load ptr, ptr %i.tu, align 8          ; 5 uses
  %i.tz = getelementptr i8, ptr %1, i64 1728
  %.val18 = load ptr, ptr %i.tz, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.ua = load ptr, ptr %.val18, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i47, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.ua(ptr noundef nonnull %.val17)
          to label %bb.hw unwind label %bb.hx

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.ub = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.uc = load i64, ptr %i.ub, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.hw
  %i.ue = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.uf = load i64, ptr %i.ue, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.uc, i64 noundef range(i64 1, -9223372036854775807) %i.uf) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.hx:                                            ; preds = %bb.hv
  %i.ug = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, 0
  br i1 %i.uj, label %.body40, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.hx
  %i.uk = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ul = load i64, ptr %i.uk, align 8, !range !2223, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.ui, i64 noundef range(i64 1, -9223372036854775807) %i.ul) #33
  br label %.body40

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.hw
  %.not.i50 = icmp eq i64 %i.tv, 20
  br i1 %.not.i50, label %bb.hy, label %bb.hk

bb.hy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.um = extractelement <2 x ptr> %i.tx, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.um) ]
  %i.un = extractelement <2 x ptr> %i.tx, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.un) ]
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.uo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52 unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.up = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.uo)
          to label %.body44 unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52: ; preds = %bb.hy
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.uo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56 unwind label %bb.go

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ur)
          to label %bb.ic unwind label %bb.ib

bb.ib:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit

bb.ic:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56
  %.sroa.079.1 = phi i64 [ %.sroa.079.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ 20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56 ]
  %i.ut = phi <2 x i64> [ %i.tl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56 ]
  %i.uu = phi <2 x ptr> [ %i.tm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ %i.tx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit56 ]
  store i64 %.sroa.079.1, ptr %0, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.uu, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.1082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ut, ptr %.sroa.1082.0..sroa_idx, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.uv)
          to label %bb.ic unwind label %bb.ib
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %.sroa.8277.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.an = alloca [48 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [8 x i8], align 8                ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.3272.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.7268.i.i = alloca [32 x i8], align 8     ; 7 uses
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
  %.sroa.786.i = alloca [32 x i8], align 16       ; 8 uses
  %.sroa.887.i = alloca [288 x i8], align 16      ; 6 uses
  %.sroa.18.sroa.6.i = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.18.sroa.7.i = alloca [288 x i8], align 8 ; 7 uses
  %i.cd = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.3.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.663.i = alloca [272 x i8], align 16      ; 6 uses
  %.sroa.859.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.960.i = alloca [272 x i8], align 16      ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 8, !range !602, !noundef !4
  switch i8 %i.cf, label %default.unreachable66 [
    i8 0, label %.thread67
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable66:                            ; preds = %bb.mz, %bb.kz, %bb.dm, %bb.di, %bb.v, %bb.m, %bb.e, %bb.a
  unreachable

.thread67:                                        ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.ch = load ptr, ptr %i.cg, align 16, !nonnull !4, !align !1674, !noundef !4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.663.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1732
  br label %bb.f

.body12:                                          ; preds = %.body
  store i8 2, ptr %i.ce, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #41
  unreachable
end_hunk_3
begin_hunk_4_@_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.au, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !1674, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !10785, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #40
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !1674, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !10786, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ak, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.al = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { i64, i32 } %i.al, 0
  %i.an = extractvalue { i64, i32 } %i.al, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.am, i32 noundef %i.an)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !10787

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #40
  %i.ao = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !1649

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10810)
  %i.ap = load ptr, ptr %i.b, align 8, !alias.scope !10813, !nonnull !4, !noundef !4
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !10813
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #7 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !10819 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !10819 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !10819 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !10819 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !10814, !noalias !10817
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !10817, !noalias !10814
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !10814, !noalias !10817
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !10817, !noalias !10814
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
define internal void @_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBa_5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !602, !noundef !4
  switch i8 %i.d, label %default.unreachable53 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.o
  ]

default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !1674, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !2259, !noundef !4 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !1674, !noundef !4 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10820)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10823
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !3, !noalias !10823, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !2006, !noalias !10823, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !1649

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !10823
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #42
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !10823, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10823
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !10828
  br label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !10820, !noalias !10829
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10820, !noalias !10829
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !10820, !noalias !10829
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !10820, !noalias !10829
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !3, !noundef !4
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !1674, !noundef !4
  %i.ad = invoke { ptr, ptr } @_RNvXs3_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtB9_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i16, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
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

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.u, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.ak, %bb.n ], [ %i.ax, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ae, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #37
          to label %.body20 unwind label %bb.ae

.body20:                                          ; preds = %bb.ac, %bb.x, %bb.z, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bm, %bb.ac ], [ %.pn, %.body ], [ %i.x, %bb.h ], [ %i.bh, %bb.x ], [ %i.bj, %bb.z ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #41
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #41
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.am, align 8
  %i.al = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.al, align 8, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #37
          to label %.body unwind label %bb.ae

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.b, align 8, !range !8943, !noundef !4 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 21
  br i1 %i.ao, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.q ]
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
  %.val5 = load ptr, ptr %i.aq, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.ar = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ar(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !2223, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #33
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.t
  %.not.i19 = icmp eq i64 %i.an, 20
  br i1 %.not.i19, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.bd = extractelement <2 x ptr> %i.ap, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = extractelement <2 x ptr> %i.ap, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bf = load i64, ptr %3, align 8, !range !2006, !alias.scope !10830, !noundef !4
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body20 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke, %bb.aa, %bb.v
  store i64 %i.an, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ap, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bk = load i64, ptr %4, align 8, !range !2006, !alias.scope !10833, !noundef !4
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body20 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake.exit.i24.invoke: ; preds = %bb.w, %bb.ab
  %5 = phi ptr [ %4, %bb.ab ], [ %3, %bb.w ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.z

bb.ae:                                            ; preds = %bb.n, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !1674, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10836)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10836, !noalias !10839, !align !1674, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !10836, !noalias !10839
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !1997, !noalias !10842, !noundef !4
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit, !prof !1649

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #41, !noalias !10842
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #41, !noalias !10842
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !10842, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10842
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !10842, !inline_history !10843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !10842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10842
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10844
  %i.c = load ptr, ptr @PyExc_RuntimeError, align 8, !noalias !10844, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #33, !noalias !10844
  store ptr %i.c, ptr %i.b, align 8, !noalias !10844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !10844

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %bb.d unwind label %bb.c, !noalias !10844

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10844
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10844
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSh6repeatCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  %i.h = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.h, label %bb.g, label %bb.e, !prof !1649

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !2006, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.f, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !1649

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #42
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.p = icmp ule i64 %i.g, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %.sroa.01.08 = lshr i64 %3, 1                   ; 2 uses
  %.not9 = icmp eq i64 %.sroa.01.08, 0
  %.pre11 = load i64, ptr %i.r, align 8           ; 2 uses
  br i1 %.not9, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #41
  unreachable

bb.h:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.l unwind label %bb.k

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.u = phi i64 [ %.pre11, %.preheader ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %.not7 = icmp eq i64 %i.g, %i.u
  br i1 %.not7, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.w = phi i64 [ %i.ac, %.lr.ph ], [ %.pre11, %.preheader ] ; 3 uses
  %.sroa.01.010 = phi i64 [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.08, %.preheader ]
  %i.x = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.x, i64 %i.w, i1 false)
  %i.aa = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = shl nuw i64 %i.aa, 1                    ; 3 uses
  store i64 %i.ac, ptr %i.r, align 8
  %.sroa.01.0 = lshr i64 %.sroa.01.010, 1         ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.j:                                             ; preds = %._crit_edge
  %i.ad = sub i64 %i.g, %i.u
  %i.ae = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ae, i64 %i.ad, i1 false)
  store i64 %i.g, ptr %i.r, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #3 {
end_hunk_4
begin_hunk_5_@_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB2B_5table10DeltaTable33try_from_url_with_storage_options0E00ENtNtB7_6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(120) %i.dq) #37
          to label %.body22.i.i unwind label %bb.ba, !noalias !12600

bb.bc:                                            ; preds = %.body22.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.h) #37
          to label %bb.t unwind label %bb.ba, !noalias !12600

bb.bd:                                            ; preds = %bb.ag
  store i8 3, ptr %i.ci, align 8, !noalias !12640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12599
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit.sink.split

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.035.1.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.035.251.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12599
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.636.i.i, i64 120, i1 false), !noalias !12665
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit.sink.split

_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %bb.be, %bb.bd
  %.sink9 = phi i8 [ 3, %bb.bd ], [ 1, %bb.be ]
  %.sink.ph = phi i64 [ 3, %bb.bd ], [ %.sroa.035.1.i.i, %bb.be ]
  store i8 %.sink9, ptr %i.n, align 8, !noalias !12595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.636.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12593
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit

_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit.sink.split, %bb.a
  %.sink = phi i64 [ 2, %bb.a ], [ %.sink.ph, %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1F_5table10DeltaTable33try_from_url_with_storage_options0E00Cs7p2uQeJxui2_9deltalake.exit.sink.split ]
  store i64 %.sink, ptr %0, align 16, !alias.scope !12590, !noalias !12665
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvMs0_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2C_18ObjectOutputStream7try_new0E00ENtNtB7_6future6Future4pollB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.960.i.i = alloca [16 x i8], align 8      ; 6 uses
  %.sroa.7.sroa.2.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !1674, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12666)
  %i.d = load ptr, ptr %.val, align 8, !noalias !12669, !nonnull !4, !align !1674, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsa_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !12666
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !12666, !noalias !12671
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs0_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1G_18ObjectOutputStream7try_new0E00B1I_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = load ptr, ptr %.val1, align 8, !noalias !12669, !nonnull !4, !align !1674, !noundef !4 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.960.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.2.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  %i.h = load i8, ptr %i.g, align 8, !range !602, !noalias !12672, !noundef !4
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !12672, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !12672, !nonnull !4, !align !1674, !noundef !4 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !noalias !12672
  %i.n = getelementptr i8, ptr %i.f, i64 56
  store ptr %i.m, ptr %i.n, align 8, !noalias !12672
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !12672
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noalias !12672, !noundef !4
  store i64 %i.r, ptr %i.p, align 8, !noalias !12672
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !2223, !invariant.load !4, !noalias !12676
  %i.u = add nsw i64 %i.t, -1
  %i.v = and i64 %i.u, -16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !4, !noalias !12676, !nonnull !4
  %i.aa = invoke { ptr, ptr } %i.z(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.f unwind label %bb.e, !noalias !12676 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = extractvalue { ptr, ptr } %i.aa, 0
  %i.ad = extractvalue { ptr, ptr } %i.aa, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !12672
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr %i.ad, ptr %i.af, align 8, !noalias !12672
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #41, !noalias !12676
  unreachable

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #41, !noalias !12676
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12677
  %.val12.i.i = load ptr, ptr %i.ai, align 8, !noalias !12672
  %i.ah = getelementptr i8, ptr %i.f, i64 104
  %.val13.i.i = load ptr, ptr %i.ah, align 8, !noalias !12672, !nonnull !4, !align !1674, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val12.i.i, ptr nonnull %.val13.i.i) #37
          to label %.body.i.i unwind label %bb.z, !noalias !12676

bb.j:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12677
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.i, !noalias !12676

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.b, align 8, !range !5486, !noalias !12677, !noundef !4 ; 4 uses
  %i.ak = icmp eq i64 %i.aj, -9223372036854775789
  br i1 %i.ak, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !12677 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12677 ; 5 uses
  %.sroa.7.0..sroa_idx42.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx42.i.i, align 8, !noalias !12677 ; 2 uses
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx42.sroa_idx.i.i, i64 16, i1 false), !noalias !12677
  %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx42.sroa_idx.i.i, align 8, !noalias !12677 ; 2 uses
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.al = load <2 x i64>, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx42.sroa_idx.i.i, align 8, !noalias !12677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12677
  %.val.i.i = load ptr, ptr %i.ai, align 8, !noalias !12672 ; 5 uses
  %i.am = getelementptr i8, ptr %i.f, i64 104
  %.val11.i.i = load ptr, ptr %i.am, align 8, !noalias !12672, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.an = load ptr, ptr %.val11.i.i, align 8, !invariant.load !4, !noalias !12676 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.an(ptr noundef nonnull %.val.i.i)
          to label %bb.n unwind label %bb.o, !noalias !12676

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !2017, !invariant.load !4, !noalias !12676 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !2223, !invariant.load !4, !noalias !12676
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #33, !noalias !12676
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !2017, !invariant.load !4, !noalias !12676 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.body.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !2223, !invariant.load !4, !noalias !12676
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.ay) #33, !noalias !12676
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.n
  %.not.i.i.i = icmp eq i64 %i.aj, -9223372036854775790
  br i1 %.not.i.i.i, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12678
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.r, !noalias !12676

.noexc.i.i:                                       ; preds = %bb.p
  %i.az = load i64, ptr %i.a, align 8, !range !3, !noalias !12678, !noundef !4
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !2006, !noalias !12678, !noundef !4 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.q, label %bb.s, !prof !1649

bb.q:                                             ; preds = %.noexc.i.i
  %i.be = load i64, ptr %i.bd, align 8, !noalias !12678
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #42
          to label %.noexc19.i.i unwind label %bb.r, !noalias !12676

.noexc19.i.i:                                     ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EEECs7p2uQeJxui2_9deltalake(ptr nonnull %.sroa.3.0.copyload.i.i, ptr nonnull %.sroa.5.0.copyload.i.i) #37
          to label %.body.i.i unwind label %bb.z, !noalias !12676

bb.s:                                             ; preds = %.noexc.i.i
  %i.bg = load ptr, ptr %i.bd, align 8, !noalias !12678, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = icmp ugt i64 %i.bc, 1
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12678
  store i16 25207, ptr %i.bg, align 1, !noalias !12687
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.i.i, i8 0, i64 16, i1 false), !noalias !12677
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !12672, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.t, !noalias !12676

bb.t:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body20.i.i unwind label %bb.u, !noalias !12676

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !12676
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.w, !noalias !12676

.body20.i.i:                                      ; preds = %bb.ab, %.body.i.i, %bb.w, %bb.t
  %.pn7.i.i = phi { ptr, i32 } [ %.pn4.pn.i.i, %.body.i.i ], [ %i.bm, %bb.t ], [ %i.bs, %bb.w ], [ %i.cc, %bb.ab ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12688)
  call void @llvm.experimental.noalias.scope.decl(metadata !12691)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !12694, !noalias !12672, !nonnull !4, !noundef !4
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !12695
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.v:                                             ; preds = %.body20.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bo) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.z, !noalias !12676

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12696)
  call void @llvm.experimental.noalias.scope.decl(metadata !12699)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !12702, !noalias !12672, !nonnull !4, !noundef !4
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !12703
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt) #38
          to label %bb.af unwind label %bb.y, !noalias !12676

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.y, %bb.v, %.body20.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %.pn7.i.i, %bb.v ], [ %.pn7.i.i, %.body20.i.i ]
  store i8 2, ptr %i.g, align 8, !noalias !12672
  resume { ptr, i32 } %.pn9.i.i

bb.y:                                             ; preds = %bb.ad, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.z:                                             ; preds = %.body.i.i, %bb.v, %bb.r, %bb.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !12676
  unreachable

.body.i.i:                                        ; preds = %bb.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.o, %bb.i, %bb.e
  %.pn4.pn.i.i = phi { ptr, i32 } [ %i.at, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.at, %bb.o ], [ %i.ag, %bb.i ], [ %i.ab, %bb.e ], [ %i.bf, %bb.r ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.bz) #37
          to label %.body20.i.i unwind label %bb.z, !noalias !12676

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.i.i, i64 16, i1 false), !noalias !12677
  %i.ca = ptrtoint ptr %.sroa.5.0.copyload.i.i to i64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i unwind label %bb.ab, !noalias !12676

bb.ab:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.body20.i.i unwind label %bb.ac, !noalias !12676

bb.ac:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !12676
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i unwind label %bb.w, !noalias !12676

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12704)
  call void @llvm.experimental.noalias.scope.decl(metadata !12707)
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !12710, !noalias !12672, !nonnull !4, !noundef !4
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !12711
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ce) #38
          to label %bb.af unwind label %bb.y, !noalias !12676

bb.ae:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12677
  store i8 3, ptr %i.g, align 8, !noalias !12672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.960.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.2.i.i)
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !12666, !noalias !12671
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs0_NtCs7p2uQeJxui2_9deltalake10filesystemNtB1G_18ObjectOutputStream7try_new0E00B1I_.exit

bb.af:                                            ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.052.0.i.i = phi i64 [ %i.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bc, %bb.x ], [ -9223372036854775808, %bb.ad ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.354.0.i.i = phi i64 [ %i.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bi, %bb.x ], [ %i.aj, %bb.ad ], [ %i.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.456.0.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ inttoptr (i64 2 to ptr), %bb.x ], [ %.sroa.3.0.copyload.i.i, %bb.ad ], [ %.sroa.3.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.558.0.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.x ], [ %i.ca, %bb.ad ], [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.759.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.x ], [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.ad ], [ %.sroa.7.sroa.0.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.1061.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.x ], [ %.sroa.7.sroa.3.0.copyload.i.i, %bb.ad ], [ %.sroa.7.sroa.3.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.16.0.i.i = phi ptr [ %.sroa.3.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.3.0.copyload.i.i, %bb.x ], [ undef, %bb.ad ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.17.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.ad ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.19.0.i.i = phi i64 [ %i.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bk, %bb.x ], [ undef, %bb.ad ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %i.ci = phi <2 x i64> [ zeroinitializer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i ], [ zeroinitializer, %bb.x ], [ %i.al, %bb.ad ], [ %i.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31.i.i ]
  %.sroa.820.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.820.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.i.i, i64 16, i1 false), !noalias !12671
  store i8 1, ptr %i.g, align 8, !noalias !12672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.960.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.2.i.i)
  store i64 %.sroa.052.0.i.i, ptr %0, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.354.0.i.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.456.0.i.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.558.0.i.i, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.759.0.i.i, ptr %.sroa.719.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.1061.0.i.i, ptr %.sroa.921.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1022.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ci, ptr %.sroa.1022.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 8192, ptr %.sroa.1224.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.1325.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.16.0.i.i, ptr %.sroa.1527.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.17.0.i.i, ptr %.sroa.1628.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.1729.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.19.0.i.i, ptr %.sroa.1830.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
  %.sroa.1931.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %.sroa.1931.0..sroa_idx.i, align 8, !alias.scope !12666, !noalias !12671
end_hunk_5
