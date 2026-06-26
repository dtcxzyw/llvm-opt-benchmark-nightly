inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.jf = phi ptr [ %i.hk, %bb.av ], [ %i.ih, %bb.an ], [ %i.ih, %.body.i.i.i ] ; 2 uses
  %i.jg = phi ptr [ %i.hl, %bb.av ], [ %i.ii, %bb.an ], [ %i.ii, %.body.i.i.i ] ; 2 uses
  %i.jh = phi ptr [ %i.hm, %bb.av ], [ %i.ij, %bb.an ], [ %i.ij, %.body.i.i.i ] ; 2 uses
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.jl, %bb.av ], [ %.pn18.i.i.i, %bb.an ], [ %.pn18.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 16, !range !1787, !noalias !17877, !noundef !17
  %i.jk = icmp eq i64 %i.jj, 20
  br i1 %i.jk, label %bb.aw, label %bb.ch

bb.av:                                            ; preds = %bb.cc, %bb.au, %bb.ar
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i: ; preds = %bb.au, %_RNvMs1d_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not17.i.i.i = icmp eq i64 %i.jn, 20
  br i1 %.not17.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i
  %i.jo = phi ptr [ %i.ku, %.invoke.i.i.i ], [ %i.kn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jp = phi ptr [ %i.kv, %.invoke.i.i.i ], [ %i.ko, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jq = phi ptr [ %i.kw, %.invoke.i.i.i ], [ %i.kp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jr = phi ptr [ %i.kx, %.invoke.i.i.i ], [ %i.kq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.js = phi ptr [ %i.ky, %.invoke.i.i.i ], [ %i.kr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 2537 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !range !270, !noalias !17877, !noundef !17
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i

bb.aw:                                            ; preds = %bb.ch, %bb.bv, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.jw = phi ptr [ %i.ke, %bb.ax ], [ %i.jd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.jd, %bb.ch ], [ %i.fs, %bb.bv ] ; 2 uses
  %i.jx = phi ptr [ %i.kf, %bb.ax ], [ %i.je, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.je, %bb.ch ], [ %i.ft, %bb.bv ] ; 2 uses
  %i.jy = phi ptr [ %i.kg, %bb.ax ], [ %i.jf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.jf, %bb.ch ], [ %i.fu, %bb.bv ] ; 2 uses
  %i.jz = phi ptr [ %i.kh, %bb.ax ], [ %i.jg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.jg, %bb.ch ], [ %i.fv, %bb.bv ] ; 2 uses
  %i.ka = phi ptr [ %i.ki, %bb.ax ], [ %i.jh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.jh, %bb.ch ], [ %i.fw, %bb.bv ] ; 2 uses
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.kj, %bb.ax ], [ %.pn20.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %.pn20.i.i.i, %bb.ch ], [ %i.oc, %bb.bv ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 2537
  %i.kc = load i8, ptr %i.kb, align 1, !range !270, !noalias !17877, !noundef !17
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i

bb.ax:                                            ; preds = %bb.cd, %.invoke.i.i.i
  %i.ke = phi ptr [ %i.hi, %bb.cd ], [ %i.ku, %.invoke.i.i.i ]
  %i.kf = phi ptr [ %i.hj, %bb.cd ], [ %i.kv, %.invoke.i.i.i ]
  %i.kg = phi ptr [ %i.hk, %bb.cd ], [ %i.kw, %.invoke.i.i.i ]
  %i.kh = phi ptr [ %i.hl, %bb.cd ], [ %i.kx, %.invoke.i.i.i ]
  %i.ki = phi ptr [ %i.hm, %bb.cd ], [ %i.ky, %.invoke.i.i.i ]
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ay, %bb.as
  %i.kk = phi { ptr, i32 } [ %i.iv, %bb.as ], [ %i.kl, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !17877
  br label %.body.i.i.i

bb.ay:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.az, !noalias !17881

bb.az:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.bc, %bb.ay, %bb.an, %bb.ah
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !17881
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i: ; preds = %bb.bx, %bb.ar, %bb.aq
  %i.kn = phi ptr [ %i.fs, %bb.bx ], [ %i.hi, %bb.ar ], [ %i.hi, %bb.aq ] ; 2 uses
  %i.ko = phi ptr [ %i.ft, %bb.bx ], [ %i.hj, %bb.ar ], [ %i.hj, %bb.aq ] ; 2 uses
  %i.kp = phi ptr [ %i.fu, %bb.bx ], [ %i.hk, %bb.ar ], [ %i.hk, %bb.aq ] ; 2 uses
  %i.kq = phi ptr [ %i.fv, %bb.bx ], [ %i.hl, %bb.ar ], [ %i.hl, %bb.aq ] ; 2 uses
  %i.kr = phi ptr [ %i.fw, %bb.bx ], [ %i.hm, %bb.ar ], [ %i.hm, %bb.aq ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 2464 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 16, !range !1787, !noalias !17877, !noundef !17
  %.not23.i.i.i = icmp eq i64 %i.kt, 20
  br i1 %.not23.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i
  %i.ku = phi ptr [ %i.kn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kv = phi ptr [ %i.ko, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kw = phi ptr [ %i.kp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kx = phi ptr [ %i.kq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.ky = phi ptr [ %i.kr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ] ; 2 uses
  %i.kz = phi ptr [ %i.ks, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i.i ], [ %i.jm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit53.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.kz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ax, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i: ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  store i8 0, ptr %i.jt, align 1, !noalias !17877
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 16, !alias.scope !17932, !noalias !17934
  %.phi.trans.insert124.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %.pre125.i.i.i = load ptr, ptr %.phi.trans.insert124.i.i.i, align 16, !alias.scope !17932, !noalias !17934
  br label %.preheader.i.i.i

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.la)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i unwind label %bb.bb, !noalias !17881

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i: ; preds = %bb.ci, %bb.bb, %bb.aw
  %i.lb = phi ptr [ %i.lh, %bb.bb ], [ %i.jw, %bb.aw ], [ %i.jw, %bb.ci ]
  %i.lc = phi ptr [ %i.li, %bb.bb ], [ %i.jx, %bb.aw ], [ %i.jx, %bb.ci ]
  %i.ld = phi ptr [ %i.lj, %bb.bb ], [ %i.jy, %bb.aw ], [ %i.jy, %bb.ci ]
  %i.le = phi ptr [ %i.lk, %bb.bb ], [ %i.jz, %bb.aw ], [ %i.jz, %bb.ci ]
  %i.lf = phi ptr [ %i.ll, %bb.bb ], [ %i.ka, %bb.aw ], [ %i.ka, %bb.ci ]
  %.pn26.i.i.i = phi { ptr, i32 } [ %i.lm, %bb.bb ], [ %.pn24.i.i.i, %bb.aw ], [ %.pn24.i.i.i, %bb.ci ]
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 2537
  store i8 0, ptr %i.lg, align 1, !noalias !17877
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ce, %bb.ba
  %i.lh = phi ptr [ %i.hi, %bb.ce ], [ %i.jo, %bb.ba ]
  %i.li = phi ptr [ %i.hj, %bb.ce ], [ %i.jp, %bb.ba ]
  %i.lj = phi ptr [ %i.hk, %bb.ce ], [ %i.jq, %bb.ba ]
  %i.lk = phi ptr [ %i.hl, %bb.ce ], [ %i.jr, %bb.ba ]
  %i.ll = phi ptr [ %i.hm, %bb.ce ], [ %i.js, %bb.ba ]
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i

bb.bc:                                            ; preds = %bb.bo, %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i
  %i.ln = phi ptr [ %i.lb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i ], [ %i.fs, %bb.bo ], [ %i.fs, %bb.bd ]
  %i.lo = phi ptr [ %i.lc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i ], [ %i.ft, %bb.bo ], [ %i.ft, %bb.bd ]
  %i.lp = phi ptr [ %i.ld, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i ], [ %i.fu, %bb.bo ], [ %i.fu, %bb.bd ]
  %i.lq = phi ptr [ %i.le, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i ], [ %i.fv, %bb.bo ], [ %i.fv, %bb.bd ]
  %i.lr = phi ptr [ %i.lf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i ], [ %i.fw, %bb.bo ], [ %i.fw, %bb.bd ]
  %.pn26.pn.i.i.i = phi { ptr, i32 } [ %.pn26.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit79.i.i.i ], [ %i.nh, %bb.bo ], [ %i.lt, %bb.bd ]
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ls)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.az, !noalias !17881

bb.bd:                                            ; preds = %bb.be
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i
  %i.lu = phi ptr [ %i.fx, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.lr.ph.i.i.i ], [ %i.ne, %.backedge.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17894)
  call void @llvm.experimental.noalias.scope.decl(metadata !17936)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  store ptr %i.lv, ptr %i.gb, align 16, !alias.scope !17936, !noalias !17937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fz, ptr noundef nonnull align 8 dereferenceable(56) %i.lu, i64 56, i1 false), !noalias !17938
  %.pr.i.i.i = load i64, ptr %i.fz, align 8, !noalias !17877
  %.not10.i.i.i = icmp eq i64 %.pr.i.i.i, 3
  br i1 %.not10.i.i.i, label %.loopexit.i.i.i, label %bb.be

bb.be:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.lu, i64 56, i1 false), !noalias !17881
  %i.lw = load ptr, ptr %i.gd, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  invoke void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.lw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bx)
          to label %bb.bm unwind label %bb.bd, !noalias !17881

.loopexit.i.i.i:                                  ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.lx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i unwind label %bb.bf, !noalias !17881

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i, %.loopexit.i.i.i
  %i.ly = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.fs, %.loopexit.i.i.i ]
  %i.lz = phi ptr [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.ft, %.loopexit.i.i.i ]
  %i.ma = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.fu, %.loopexit.i.i.i ]
  %i.mb = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.fv, %.loopexit.i.i.i ]
  %i.mc = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit73.i.i.i ], [ %i.fw, %.loopexit.i.i.i ]
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i: ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !17877
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 1960
  %i.mf = load ptr, ptr %i.me, align 8, !noalias !17877, !nonnull !17, !align !187, !noundef !17
  %i.mg = invoke noundef i56 @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState18get_parser_options(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.mf)
          to label %bb.bh unwind label %bb.bg, !noalias !17881 ; 3 uses

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit64.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %.sroa.05.0.extract.trunc.i.i.i.i = trunc i56 %i.mg to i8
  %.sroa.05.1.extract.shift.i.i.i.i = lshr i56 %i.mg, 8
  %.sroa.05.1.extract.trunc.i.i.i.i = trunc i56 %.sroa.05.1.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.05.2.extract.shift.i.i.i.i = lshr i56 %i.mg, 16
  %.sroa.05.2.extract.trunc.i.i.i.i = trunc nuw i56 %.sroa.05.2.extract.shift.i.i.i.i to i40
  store ptr %i.mi, ptr %i.bs, align 8, !alias.scope !17939, !noalias !17942
  %i.mj = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %.sroa.05.0.extract.trunc.i.i.i.i, ptr %i.mj, align 8, !alias.scope !17939, !noalias !17942
  %.sroa.2.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 9
  store i8 %.sroa.05.1.extract.trunc.i.i.i.i, ptr %.sroa.2.0..sroa_idx2.i.i.i.i, align 1, !alias.scope !17939, !noalias !17942
  %.sroa.3.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  store i40 %.sroa.05.2.extract.trunc.i.i.i.i, ptr %.sroa.3.0..sroa_idx4.i.i.i.i, align 2, !alias.scope !17939, !noalias !17942
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bs, i64 15
  %3 = and i8 %.sroa.05.1.extract.trunc.i.i.i.i, 1
  store i8 %3, ptr %i.mk, align 1, !alias.scope !17939, !noalias !17942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !17877
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 2539 ; 2 uses
  store i8 0, ptr %i.ml, align 1, !noalias !17877
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 1968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.br, ptr noundef nonnull align 16 dereferenceable(200) %i.mm, i64 200, i1 false), !noalias !17877
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17statement_to_planCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.br)
          to label %bb.bj unwind label %bb.bi, !noalias !17881

bb.bi:                                            ; preds = %bb.bh
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !17877
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !17877
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mo)
          to label %bb.cl unwind label %bb.bk, !noalias !17881

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i, %bb.bj
  %i.mp = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fs, %bb.bj ]
  %i.mq = phi ptr [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ft, %bb.bj ]
  %i.mr = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fu, %bb.bj ]
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
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext10drop_table0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i unwind label %bb.ai, !noalias !20013

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i:   ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20016
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.am unwind label %bb.ak, !noalias !20013

bb.ak:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !range !95, !alias.scope !20041, !noalias !20016, !noundef !17 ; 2 uses
  %i.bw = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bw, label %.body.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20048, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20049
  br label %.body.i

bb.am:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit48.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !95, !alias.scope !20041, !noalias !20016, !noundef !17 ; 2 uses
  %i.bx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20048, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20052
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20016
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aq unwind label %bb.ao, !noalias !20013

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i49.i = load i64, ptr %i.f, align 8, !range !95, !alias.scope !20055, !noalias !20016, !noundef !17 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i49.i, 0
  br i1 %i.bz, label %.body54.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i50.i = load ptr, ptr %i.ca, align 8, !alias.scope !20062, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i50.i, i64 noundef %.val2.i.i49.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20063
  br label %.body54.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val.i.i52.i = load i64, ptr %i.f, align 8, !range !95, !alias.scope !20055, !noalias !20016, !noundef !17 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i52.i, 0
  br i1 %i.cb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i53.i = load ptr, ptr %i.cc, align 8, !alias.scope !20062, !noalias !20016, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i53.i, i64 noundef %.val.i.i52.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20066
  br label %bb.as

.body54.i:                                        ; preds = %bb.ap, %bb.ao, %.body.i, %bb.ag
  %.pn20.i = phi { ptr, i32 } [ %i.br, %bb.ag ], [ %.pn18.i, %.body.i ], [ %i.by, %bb.ao ], [ %i.by, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20016
  br label %bb.ab

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20016
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20016
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.cd, align 8, !noalias !20016
  store i64 36, ptr %i.a, align 16, !noalias !20016
  br label %bb.ae

bb.at:                                            ; preds = %bb.bb, %bb.aw, %bb.ai, %.body.i, %bb.ac, %bb.u
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20013
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %bb.ac, %bb.ab
  %.pn28.i = phi { ptr, i32 } [ %i.cf, %bb.au ], [ %.pn26.i, %bb.ac ], [ %.pn26.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20016
  br label %bb.bb

bb.au:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20016
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.cg)
          to label %bb.ay unwind label %bb.ax, !noalias !20013

bb.av:                                            ; preds = %bb.bb, %bb.ax
  %.pn31.i = phi { ptr, i32 } [ %i.cl, %bb.ax ], [ %.pn28.pn.i, %bb.bb ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20069)
  call void @llvm.experimental.noalias.scope.decl(metadata !20072)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !20075, !noalias !20016, !nonnull !17, !noundef !17
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !20076
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ch) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.at, !noalias !20013

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit36.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20077)
  call void @llvm.experimental.noalias.scope.decl(metadata !20080)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !20083, !noalias !20016, !nonnull !17, !noundef !17
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !20084
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit59.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cm) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit59.i unwind label %bb.ba, !noalias !20013

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ba, %bb.aw, %bb.av
  %.pn33.i = phi { ptr, i32 } [ %i.cq, %bb.ba ], [ %.pn31.i, %bb.aw ], [ %.pn31.i, %bb.av ]
  store i8 2, ptr %i.l, align 8, !noalias !20016
  resume { ptr, i32 } %.pn33.i

bb.ba:                                            ; preds = %bb.az
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit59.i: ; preds = %bb.az, %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.a, i64 336, i1 false), !noalias !20026
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext10drop_table0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.r
  %.pn28.pn.i = phi { ptr, i32 } [ %.pn28.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6result6ResultbNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEbEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.pn7.i, %bb.r ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.cr) #37
          to label %bb.av unwind label %bb.at, !noalias !20013

_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext10drop_table0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit59.i
  %storemerge.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit59.i ], [ 3, %bb.x ]
  store i8 %storemerge.i, ptr %i.l, align 8, !noalias !20016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext11create_view0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 16              ; 6 uses
  %i.b = alloca [368 x i8], align 16              ; 6 uses
  %i.c = alloca [336 x i8], align 16              ; 30 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [352 x i8], align 16              ; 5 uses
  %i.o = alloca [320 x i8], align 16              ; 6 uses
  %i.p = alloca [320 x i8], align 16              ; 5 uses
  %i.q = alloca [320 x i8], align 16              ; 8 uses
  %.sroa.8249.i = alloca [40 x i8], align 8       ; 7 uses
  %i.r = alloca [56 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [352 x i8], align 16              ; 5 uses
  %i.w = alloca [320 x i8], align 16              ; 6 uses
  %i.x = alloca [320 x i8], align 16              ; 5 uses
  %i.y = alloca [320 x i8], align 16              ; 8 uses
  %.sroa.8229.i = alloca [40 x i8], align 8       ; 7 uses
  %i.z = alloca [56 x i8], align 8                ; 11 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [352 x i8], align 16             ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 11 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [336 x i8], align 16             ; 7 uses
  %i.ai = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.0203.i = alloca [56 x i8], align 8       ; 7 uses
  %i.aj = alloca [336 x i8], align 16             ; 10 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 76 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 520 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !3592, !noalias !20088, !noundef !17
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sink18.i.sroa.gep208.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sink15.i.sroa.gep209.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.sink18.i92.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sink18.i92.sroa.gep223.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sink15.i94.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sink15.i94.sroa.gep224.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  switch i8 %i.al, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.aj, %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %.val, i64 524
  %4 = getelementptr inbounds nuw i8, ptr %.val, i64 523
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !20088, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !noalias !20088
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !20088, !nonnull !17, !noundef !17
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !20088
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 89
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 1, !noalias !20088
  store i8 1, ptr %3, align 4, !noalias !20088
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %.val, i64 56, i1 false), !noalias !20088
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 168
  store ptr %.sroa.9.0.copyload.i, ptr %i.aq, align 8, !noalias !20088
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 521
  %5 = and i8 %.sroa.10.0.copyload.i, 1
  store i8 %5, ptr %i.ar, align 1, !noalias !20088
  store i8 1, ptr %4, align 1, !noalias !20088
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !20088
  %6 = getelementptr inbounds nuw i8, ptr %.val, i64 522
  %7 = and i8 %.sroa.11.0.copyload.i, 1
  store i8 %7, ptr %6, align 2, !noalias !20088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20088
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0203.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !20088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20093)
  %i.au = load i64, ptr %i.ap, align 8, !range !283, !alias.scope !20093, !noalias !20095, !noundef !17 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !20093, !noalias !20095, !nonnull !17, !noundef !17 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !20093, !noalias !20095, !noundef !17 ; 3 uses
  %i.az = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !20096
  %i.ba = icmp slt i64 %i.az, 0                   ; 3 uses
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.ba, label %bb.f, label %bb.q

bb.d:                                             ; preds = %bb.b
  br i1 %i.ba, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.ba, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.n ], [ %.sink18.i.sroa.gep208.i, %bb.g ]
  %.sink16.i.i = phi ptr [ %i.bi, %bb.n ], [ %i.aw, %bb.g ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.n ], [ %.sink15.i.sroa.gep209.i, %bb.g ]
  %.sink13.i.i = phi i64 [ %i.bk, %bb.n ], [ %i.ay, %bb.g ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i.i = phi ptr [ %i.bo, %bb.n ], [ %i.bc, %bb.g ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i.i = phi i64 [ %i.bq, %bb.n ], [ %i.be, %bb.g ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !20090, !noalias !20097
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !20090, !noalias !20097
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !20093, !noalias !20095, !nonnull !17, !noundef !17 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !20093, !noalias !20095, !noundef !17
  %i.bf = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8, !noalias !20096
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !20093, !noalias !20095, !nonnull !17, !noundef !17 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !20093, !noalias !20095, !noundef !17
  %i.bl = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !noalias !20096
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !20093, !noalias !20095, !nonnull !17, !noundef !17 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !20093, !noalias !20095, !noundef !17
  %i.br = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8, !noalias !20096
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.aw, ptr %.sink18.i.sroa.gep208.i, align 8, !alias.scope !20090, !noalias !20097
  store i64 %i.ay, ptr %.sink15.i.sroa.gep209.i, align 8, !alias.scope !20090, !noalias !20097
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20088
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0203.i)
  br label %bb.u

bb.q:                                             ; preds = %.sink.split.i.i, %bb.c
  %.sink12.i.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.aw, %bb.c ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.ay, %bb.c ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.bt, align 8, !alias.scope !20090, !noalias !20097
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.bu, align 8, !alias.scope !20090, !noalias !20097
  store i64 %i.au, ptr %i.ai, align 8, !alias.scope !20090, !noalias !20097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0203.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 56, i1 false), !noalias !20088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !20088
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0203.i, i64 56, i1 false), !noalias !20088
  %.sroa.7204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 256
  store ptr %i.ao, ptr %.sroa.7204.0..sroa_idx.i, align 8, !noalias !20088
  %.sroa.9.0..sroa_idx205.i = getelementptr inbounds nuw i8, ptr %.val, i64 512
  store i8 0, ptr %.sroa.9.0..sroa_idx205.i, align 8, !noalias !20088
  br label %bb.u

.body.i:                                          ; preds = %bb.ag, %bb.ac, %bb.t
  %.pn11.i = phi { ptr, i32 } [ %.pn.i.i, %bb.ac ], [ %i.bw, %bb.t ], [ %i.ck, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0203.i)
  br label %bb.es

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #42, !noalias !20085
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #42, !noalias !20085
  unreachable

bb.t:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20088
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.bx) #37
          to label %.body.i unwind label %bb.cr, !noalias !20085

bb.u:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !20088
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 3 uses
  invoke fastcc void @_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 captures(address) dereferenceable(336) %i.ah, ptr noundef nonnull align 8 %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %bb.t, !noalias !20085

bb.v:                                             ; preds = %bb.u
  %i.by = load i64, ptr %i.ah, align 16, !range !13828, !noalias !20088, !noundef !17
  %i.bz = icmp eq i64 %i.by, 37
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20088
  store i64 37, ptr %0, align 16, !alias.scope !20085, !noalias !20098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !20088
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0203.i)
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext11create_view0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.aj, ptr noundef nonnull align 16 dereferenceable(336) %i.ah, i64 336, i1 false), !noalias !20088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20088
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.cb = load i8, ptr %i.ca, align 8, !range !3592, !noalias !20088, !noundef !17
  switch i8 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 0, label %bb.y
    i8 3, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ag, !noalias !20085

bb.z:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.cc)
          to label %bb.ab unwind label %bb.aa, !noalias !20085

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 272
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.ce) #37
          to label %bb.ac unwind label %bb.af, !noalias !20085

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 272
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.cf)
          to label %bb.ae unwind label %bb.ad, !noalias !20085

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.ch, %bb.ad ], [ %i.cd, %bb.aa ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 513
  store i8 0, ptr %i.cg, align 1, !noalias !20088
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext15create_function0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
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
    i8 5, label %bb.ga
  ]

default.unreachable:                              ; preds = %bb.ew, %bb.s, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 1237
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 1236
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 1234 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 992 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bl, i8 0, i64 6, i1 false), !noalias !20932
  %i.bo = load ptr, ptr %i.bn, align 16, !noalias !20932, !nonnull !17, !align !187, !noundef !17
  store ptr %i.bo, ptr %i.bm, align 16, !noalias !20932
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 1112
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1216
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 16, !noalias !20932, !nonnull !17, !noundef !17 ; 6 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1224
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !20932
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1225
  %.sroa.16.0.copyload.i = load i8, ptr %.sroa.16.0..sroa_idx.i, align 1, !noalias !20932
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1226
  %.sroa.17.0.copyload.i = load i8, ptr %.sroa.17.0..sroa_idx.i, align 2, !noalias !20932
  store i8 1, ptr %i.bi, align 1, !noalias !20932
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 1000 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !20932
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 1232
  %3 = and i8 %.sroa.15.0.copyload.i, 1
  store i8 %3, ptr %i.br, align 16, !noalias !20932
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 1233
  %4 = and i8 %.sroa.16.0.copyload.i, 1
  store i8 %4, ptr %i.bs, align 1, !noalias !20932
  store i8 1, ptr %i.bj, align 4, !noalias !20932
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 1056
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 1168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !20932
  store i8 1, ptr %i.bk, align 1, !noalias !20932
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 1192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !20932
  %i.bx = trunc nuw i8 %.sroa.17.0.copyload.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20934)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.by = cmpxchg ptr %.sroa.14.0.copyload.i, i64 1, i64 0 monotonic monotonic, align 8, !noalias !20937
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.b
  fence acquire
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 16
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.bz, align 16, !noalias !20940 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 24
  %.sroa.6.0.copyload3.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !noalias !20940 ; 2 uses
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.0..sroa_idx4.i.i, i64 304, i1 false), !noalias !20940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20941
  store ptr %.sroa.14.0.copyload.i, ptr %i.d, align 8, !noalias !20941
  invoke void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc.i unwind label %bb.j, !noalias !20929

.noexc.i:                                         ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20941
  %i.ca = icmp eq i64 %.sroa.0.0.copyload1.i.i, 36
  br i1 %i.ca, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i, label %bb.h

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i: ; preds = %.noexc.i, %bb.b
  %.sroa.6.07.i.i = phi ptr [ %.sroa.6.0.copyload3.i.i, %.noexc.i ], [ %.sroa.14.0.copyload.i, %bb.b ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.07.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20942
  store ptr %.sroa.6.07.i.i, ptr %i.c, align 8, !noalias !20943
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.6.07.i.i, i64 16
  invoke fastcc void @_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(320) %.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cb)
          to label %bb.e unwind label %bb.c, !noalias !20929

bb.c:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = atomicrmw sub ptr %.sroa.6.07.i.i, i64 1 release, align 8, !noalias !20946
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.d, label %.body.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41
          to label %.body.i unwind label %bb.g, !noalias !20951

bb.e:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %i.cf = atomicrmw sub ptr %.sroa.6.07.i.i, i64 1 release, align 8, !noalias !20952
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.f, label %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41
          to label %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.j, !noalias !20929

bb.g:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20951
  unreachable

_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20942
  br label %bb.k

bb.h:                                             ; preds = %.noexc.i
  store i64 %.sroa.0.0.copyload1.i.i, ptr %.val, align 16, !alias.scope !20934, !noalias !20932
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.6.0.copyload3.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !20934, !noalias !20932
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.i.i, i64 304, i1 false), !noalias !20932
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296.i)
  br label %bb.bf

.body.i:                                          ; preds = %bb.bb, %bb.j, %bb.d, %bb.c
  %.pn126.i = phi { ptr, i32 } [ %.pn123.pn.i, %bb.bb ], [ %i.cl, %bb.j ], [ %i.cc, %bb.d ], [ %i.cc, %bb.c ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  %i.cj = load i8, ptr %i.ci, align 1, !range !270, !noalias !20932, !noundef !17
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ip, label %.body256.i

bb.j:                                             ; preds = %bb.hd, %bb.ba, %bb.f, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.h, %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !20932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !20932
  %i.cm = load ptr, ptr %i.bm, align 16, !noalias !20932, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm)
          to label %bb.m unwind label %bb.l, !noalias !20929

bb.l:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20932
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState8optimize(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.be, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val)
          to label %bb.o unwind label %bb.n, !noalias !20929

bb.n:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20932
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.be) #37
          to label %bb.ax unwind label %bb.av, !noalias !20929

bb.o:                                             ; preds = %bb.m
  %i.cp = load i64, ptr %i.bf, align 16, !range !1795, !alias.scope !20957, !noalias !20960, !noundef !17 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i64 40, i1 false), !noalias !20932
  br i1 %i.cq, label %bb.aw, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.11.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.11.0..sroa_idx287.i, i64 272, i1 false), !noalias !20932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20932
  store i8 1, ptr %i.bl, align 2, !noalias !20932
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 320
  store i64 %i.cp, ptr %i.cs, align 16, !noalias !20932
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !20932
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.i, i64 272, i1 false), !noalias !20932
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.be)
          to label %bb.r unwind label %bb.q, !noalias !20929

bb.q:                                             ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !20932
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit168.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !20932
  br i1 %i.bx, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296.i)
  %i.cu = load ptr, ptr %i.bm, align 16, !noalias !20932, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !20932
  call void @llvm.experimental.noalias.scope.decl(metadata !20962)
  call void @llvm.experimental.noalias.scope.decl(metadata !20965)
  %i.cv = load i64, ptr %i.bq, align 8, !range !283, !alias.scope !20965, !noalias !20967, !noundef !17 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 1008
  %i.cx = load ptr, ptr %i.cw, align 16, !alias.scope !20965, !noalias !20967, !nonnull !17, !noundef !17 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 1016
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !20965, !noalias !20967, !noundef !17 ; 3 uses
  %i.da = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !20968
  %i.db = icmp slt i64 %i.da, 0                   ; 3 uses
  switch i64 %i.cv, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %i.db, label %bb.w, label %bb.ag

bb.u:                                             ; preds = %bb.s
  br i1 %i.db, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.s
  br i1 %i.db, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.x
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.ae ], [ %.sink18.i.sroa.gep299.i, %bb.x ]
  %.sink16.i.i = phi ptr [ %i.dj, %bb.ae ], [ %i.cx, %bb.x ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.ae ], [ %.sink15.i.sroa.gep300.i, %bb.x ]
  %.sink13.i.i = phi i64 [ %i.dl, %bb.ae ], [ %i.cz, %bb.x ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.ae ], [ 24, %bb.x ]
  %.sink10.ph.i.i = phi ptr [ %i.dp, %bb.ae ], [ %i.dd, %bb.x ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.ae ], [ 32, %bb.x ]
  %.sink7.ph.i.i = phi i64 [ %i.dr, %bb.ae ], [ %i.df, %bb.x ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !20962, !noalias !20969
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !20962, !noalias !20969
  br label %bb.ag
end_hunk_2
