inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_3zip3ZipIB12_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEB1m_EINtNtNtBc_5slice4iter4IterRNtNtB2e_10statistics12DistributionEENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0ENCB4t_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB7A_8try_folduNCINvNvB7A_12try_for_each4callB3R_INtNtNtBc_3ops12control_flow11ControlFlowB3R_ENcNtBbn_5Break0E0Bbn_E0IBbo_Bbn_EECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.o, ptr noundef nonnull align 16 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !3960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, ptr noundef nonnull align 16 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !3960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ap, ptr noundef nonnull align 16 dereferenceable(128) %i.o, i64 128, i1 false), !noalias !3930
  store i128 52, ptr %i.n, align 16, !noalias !3930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ce

bb.ae:                                            ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.ap, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cn) #46
          to label %.noexc14.i.i.i.i.i unwind label %bb.o, !noalias !3930

.noexc14.i.i.i.i.i:                               ; preds = %bb.ae
  store i128 53, ptr %i.n, align 16, !noalias !3930
  br label %bb.ce

bb.af:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3961
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bt) #46
          to label %.noexc15.i.i.i.i.i unwind label %bb.o, !noalias !3930

.noexc15.i.i.i.i.i:                               ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3961
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.e, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.co)
          to label %bb.ai unwind label %bb.ah, !noalias !3965

bb.ag:                                            ; preds = %bb.aj, %bb.ah
  %.pn.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %bb.aj ], [ %i.cp, %bb.ah ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.f) #43
          to label %.body.i.i.i.i.i unwind label %bb.ap, !noalias !3965

bb.ah:                                            ; preds = %.noexc15.i.i.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %.noexc15.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3961
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cq)
          to label %bb.al unwind label %bb.ak, !noalias !3965

bb.aj:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.ak
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.cr, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.e) #43
          to label %bb.ag unwind label %bb.ap, !noalias !3965

bb.ak:                                            ; preds = %bb.ai
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3966
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cs) #46
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !3965

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3966
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 256
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ct)
          to label %_RNvXso_NtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB5_19GenericDistributionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.am, !noalias !3970

bb.am:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.b) #43
          to label %.body.i.i.i.i.i.i.i unwind label %bb.an, !noalias !3970

bb.an:                                            ; preds = %bb.am
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3970
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.ao, %bb.am
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.ao ], [ %i.cu, %bb.am ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.d) #43
          to label %bb.aj unwind label %bb.ap, !noalias !3965

bb.ap:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.aj, %bb.ag
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3965
  unreachable

_RNvXso_NtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB5_19GenericDistributionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !3971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !3971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 16 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, ptr noundef nonnull align 16 dereferenceable(128) %i.c, i64 128, i1 false), !noalias !3930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3961
  br label %bb.ce

bb.aq:                                            ; preds = %bb.r
  %i.cy = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310)
          to label %bb.as unwind label %bb.ar, !noalias !3930

bb.ar:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t) #43
          to label %.body.i.i.i.i.i unwind label %bb.cd, !noalias !3930

bb.as:                                            ; preds = %bb.aq
  br i1 %i.cy, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t)
          to label %bb.av unwind label %bb.o, !noalias !3930

bb.au:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t)
          to label %bb.ba unwind label %bb.o, !noalias !3930

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.p, ptr noundef nonnull align 16 dereferenceable(128) %i.v, i64 128, i1 false), !noalias !3930
  invoke void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution17new_from_interval(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.w, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.p)
          to label %bb.aw unwind label %bb.o, !noalias !3926

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3930
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.ax, !noalias !3930

bb.ax:                                            ; preds = %bb.aw
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ai) #43
          to label %common.resume.i.i unwind label %bb.ay, !noalias !3930

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.aw
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ai), !noalias !3930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3930
  br label %_RNCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss_0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3930
  unreachable

bb.az:                                            ; preds = %.body.i.i.i.i.i
  br i1 %.sroa.05.0.i.i.i.i.i, label %.body17.thread.i.i.i.i.i, label %common.resume.i.i

.body17.thread9.i.i.i.i.i:                        ; preds = %bb.bz, %bb.bv
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body17.thread.i.i.i.i.i

bb.ba:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3930
  invoke void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmeticNtB2_8Interval9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.u)
          to label %bb.bb unwind label %bb.o, !noalias !3930

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3930
  %i.dc = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) @311)
          to label %bb.bd unwind label %.loopexit25.i.i, !noalias !3930

.loopexit25.i.i:                                  ; preds = %bb.bq, %bb.bm, %bb.bj, %bb.bh, %bb.bf, %bb.be, %bb.bb
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp.i.i:                           ; preds = %bb.bk
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit25.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit25.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #43
          to label %.body.i.i.i.i.i unwind label %bb.cd, !noalias !3930

bb.bd:                                            ; preds = %bb.bb
  br i1 %i.dc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dd = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) getelementptr inbounds (i8, ptr @311, i64 64))
          to label %bb.bg unwind label %.loopexit25.i.i, !noalias !3930

bb.bf:                                            ; preds = %bb.bg, %bb.bd
  %i.de = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) @312)
          to label %bb.bi unwind label %.loopexit25.i.i, !noalias !3930

bb.bg:                                            ; preds = %bb.be
  br i1 %i.dd, label %bb.bh, label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue7new_one(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.bo unwind label %.loopexit25.i.i, !noalias !3930

bb.bi:                                            ; preds = %bb.bf
  br i1 %i.de, label %bb.bj, label %bb.bk, !prof !1206

bb.bj:                                            ; preds = %bb.bi
  %i.df = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) getelementptr inbounds (i8, ptr @312, i64 64))
          to label %bb.bl unwind label %.loopexit25.i.i, !noalias !3930

bb.bk:                                            ; preds = %bb.bl, %bb.bi
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @313, ptr noundef nonnull inttoptr (i64 255 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #47
          to label %bb.bn unwind label %.loopexit.split-lp.i.i, !noalias !3930

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.df, label %bb.bm, label %bb.bk, !prof !1206

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue8new_zero(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.bo unwind label %.loopexit25.i.i, !noalias !3930

bb.bn:                                            ; preds = %bb.bk
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.bh
  %i.dg = load i128, ptr %i.r, align 16, !range !3972, !noalias !3930, !noundef !4 ; 2 uses
  %i.dh = icmp eq i128 %i.dg, 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !3930
  br i1 %i.dh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ak, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.i.i.i.i.i, i64 40, i1 false), !noalias !3926
  store i128 54, ptr %i.w, align 16, !noalias !3926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.bx unwind label %bb.o, !noalias !3930

bb.bq:                                            ; preds = %bb.bo
  %.sroa.67.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3930
  store i128 %i.dg, ptr %i.q, align 16, !noalias !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.i.i.i.i.i, i64 40, i1 false), !noalias !3930
  store i64 %.sroa.67.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !3930
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  invoke void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution13new_bernoulli(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.w, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %i.q)
          to label %bb.br unwind label %.loopexit25.i.i, !noalias !3926

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.bs unwind label %bb.o, !noalias !3930

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3930
  br label %bb.bt

bb.bt:                                            ; preds = %bb.ce, %bb.bs
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.u)
          to label %bb.bv unwind label %bb.bu, !noalias !3930

bb.bu:                                            ; preds = %bb.bt
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ai) #43
          to label %.body17.thread.i.i.i.i.i unwind label %bb.bw, !noalias !3930

bb.bv:                                            ; preds = %bb.bt
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit23.i.i.i.i.i unwind label %.body17.thread9.i.i.i.i.i, !noalias !3930

bb.bw:                                            ; preds = %bb.bu
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3930
  unreachable

bb.bx:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3930
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.u)
          to label %bb.bz unwind label %bb.by, !noalias !3930

bb.by:                                            ; preds = %bb.bx
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ai) #43
          to label %.body17.thread.i.i.i.i.i unwind label %bb.ca, !noalias !3930

bb.bz:                                            ; preds = %bb.bx
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit28.i.i.i.i.i unwind label %.body17.thread9.i.i.i.i.i, !noalias !3930

bb.ca:                                            ; preds = %bb.by
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3930
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit28.i.i.i.i.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3930
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit29.i.i.i.i.i unwind label %bb.cb, !noalias !3930

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit28.i.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ah) #43
          to label %common.resume.i.i unwind label %bb.cc, !noalias !3930

bb.cc:                                            ; preds = %bb.cb
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3930
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit29.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit28.i.i.i.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ah), !noalias !3930
  br label %_RNCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss_0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.cd:                                            ; preds = %.body17.thread.i.i.i.i.i, %bb.bc, %bb.ar, %.body.i.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3930
  unreachable

bb.ce:                                            ; preds = %_RNvXso_NtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB5_19GenericDistributionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.noexc14.i.i.i.i.i, %_RNvXsg_NtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB5_20GaussianDistributionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %_RNvXsc_NtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB5_23ExponentialDistributionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %_RNvXs8_NtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmeticNtB5_8IntervalNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.w, ptr noundef nonnull align 16 dereferenceable(320) %i.n, i64 320, i1 false), !noalias !3926
  br label %bb.bt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit23.i.i.i.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3930
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit30.i.i.i.i.i unwind label %bb.cf, !noalias !3930

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit23.i.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ah) #43
          to label %common.resume.i.i unwind label %bb.cg, !noalias !3930

bb.cg:                                            ; preds = %bb.cf
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3930
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit30.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit23.i.i.i.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.ah), !noalias !3930
  br label %_RNCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss_0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

.body17.thread.i.i.i.i.i:                         ; preds = %bb.by, %bb.bu, %.body17.thread9.i.i.i.i.i, %bb.az
  %.pn102.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i, %.body17.thread9.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %bb.az ], [ %i.di, %bb.bu ], [ %i.dk, %bb.by ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.v) #43
          to label %common.resume.i.i unwind label %bb.cd, !noalias !3930

_RNCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss_0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit30.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit29.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3926
  %.sroa.0.0.copyload.i.i.i.i = load i128, ptr %i.w, align 16, !noalias !3926 ; 3 uses
  %i.dr = icmp eq i128 %.sroa.0.0.copyload.i.i.i.i, 54
  br i1 %i.dr, label %bb.ch, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ch:                                            ; preds = %_RNCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss_0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.ds = load i64, ptr %3, align 8, !range !3300, !alias.scope !3973, !noalias !3976, !noundef !4
  %i.dt = icmp eq i64 %i.ds, 20
  br i1 %i.dt, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i unwind label %bb.cj, !noalias !3976

bb.cj:                                            ; preds = %bb.ci
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !3926
  br label %common.resume.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !3926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411.i.i)
  br label %.loopexit26.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss_0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.56..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.7.0..sroa_idx.i.i.i.i, i64 264, i1 false), !noalias !3921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !3921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411.i.i)
  %.not.i.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i.i.i, 55
  br i1 %.not.i.i.i, label %bb.cl, label %.loopexit26.i.i

bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalBH_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3916
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEB1h_EINtNtNtBc_5slice4iter4IterRNtNtB29_10statistics12DistributionEENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB25_B25_RB3L_EINtNtBc_6result6ResultB3M_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIBa5_B3M_EENCB4o_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_BaU_EIB8F_NtNtBc_7convert10InfallibleB94_EEB7l_8try_folduNCINvNvB7l_12try_for_each4callB3M_BaJ_NcNtBaJ_5Break0E0BaJ_E0E0Ba4_ECs14kWLkQVSKO_14deltalake_core.exit

.loopexit26.i.i:                                  ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.214.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.4.i.i.i.i.i, i64 304, i1 false), !noalias !3980
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEB1h_EINtNtNtBc_5slice4iter4IterRNtNtB29_10statistics12DistributionEENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB25_B25_RB3L_EINtNtBc_6result6ResultB3M_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIBa5_B3M_EENCB4o_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_BaU_EIB8F_NtNtBc_7convert10InfallibleB94_EEB7l_8try_folduNCINvNvB7l_12try_for_each4callB3M_BaJ_NcNtBaJ_5Break0E0BaJ_E0E0Ba4_ECs14kWLkQVSKO_14deltalake_core.exit

bb.cl:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTTNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalB11_ERRNtNtB15_10statistics12DistributionETB11_B11_B2g_EuINtNtNtBa_3ops12control_flow11ControlFlowIB37_B2i_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0NCIB2_B2R_INtNtBa_6result6ResultB2i_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB36_NCB3Y_s_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9b_INtNtB6_3zip3ZipIB9q_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB11_EB9K_EINtNtNtBa_5slice4iter4IterB2h_EEB3W_EB8y_EIB75_NtNtBa_7convert10InfallibleB7u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBc0_12try_for_each4callB2i_B3L_NcNtB3L_5Break0E0B3L_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3984
  %i.dv = icmp eq ptr %i.av, %i.ab
  br i1 %i.dv, label %.loopexit.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEB1h_EINtNtNtBc_5slice4iter4IterRNtNtB29_10statistics12DistributionEENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticss0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB25_B25_RB3L_EINtNtBc_6result6ResultB3M_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIBa5_B3M_EENCB4o_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_BaU_EIB8F_NtNtBc_7convert10InfallibleB94_EEB7l_8try_folduNCINvNvB7l_12try_for_each4callB3M_BaJ_NcNtBaJ_5Break0E0BaJ_E0E0Ba4_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ck, %.loopexit26.i.i
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callB1G_NCINvMsj_NtB1K_3vecINtB5k_3VecB1G_E14extend_trustedBN_E0E0EB2y_:bb.a
  %.val7.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBc_6option4IterB1L_EEB2v_ENCINvNtB1P_5utils19find_exprs_in_exprsNCINvB35_20find_aggregate_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1L_ENCINvNvMsg_NtB8_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB4V_B4V_NCINvNvXsi_B5I_B5V_B4i_4fold7flattenINtNtB4Y_9into_iter8IntoIterB1L_EB4V_NCB32_s_0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1u_EEB2e_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_ENCINvNtB7_3map8map_foldRB1u_B3m_B3m_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB4D_20find_aggregate_exprsBO_E0BO_E0NCINvNvMsg_NtB7_7flattenINtB60_13FlattenCompatppE9iter_fold7flattenB3m_B3m_NCINvNvXsi_B60_B6d_B2J_4fold7flattenINtNtB3p_9into_iter8IntoIterB1u_EB3m_NCB4A_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIBO_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB3o_DNtNtB1r_11engine_data10EngineDataEL_ENtNtB1r_5error5ErrorENtNtBc_6marker4SendEL_ENCNvMNtB1r_11log_segmentNtB6r_10LogSegment24create_checkpoint_streams_0EINtNtNtB2z_8adaptors3map14MapSpecialCaseIBY_INtNtNtBa_7sources4once4OnceB4B_EINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterB3n_EEEINtB7z_18MapSpecialCaseFnOkNCNCB6o_s_00EEB5E_ENCB6o_s0_0EEIBO_IB3o_IBO_IBO_IB3o_INtNtNtB3s_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcB_4Scan18scan_metadata_fromBaW_E0ENCBcu_s_0EENCINvMs6_NtB1r_4scanNtBes_4Scan18scan_metadata_fromBaE_E0EENCINvYNtNtBes_10log_replay22ScanLogReplayProcessorNtNtB1r_10log_replay18LogReplayProcessor20process_actions_iterBX_E0EB3X_8try_folduNCINvNvB3X_4find5checkIB4C_NtBes_12ScanMetadataB5E_EQNCBfi_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowBhK_EEBcH_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef align 16 dereferenceable(704) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB7_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2a_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB3k_DNtNtB1a_11engine_data10EngineDataEL_ENtNtB1a_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB1a_11log_segmentNtB6n_10LogSegment24create_checkpoint_streams_0EINtNtNtB2u_8adaptors3map14MapSpecialCaseIBP_INtNtNtB9_7sources4once4OnceB4x_EINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterB3j_EEEINtB7v_18MapSpecialCaseFnOkNCNCB6k_s_00EEB5A_ENCB6k_s0_0EEIB2a_IB3k_IB2a_IB2a_IB3k_INtNtNtB3o_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcA_4Scan18scan_metadata_fromBaV_E0ENCBct_s_0EENCINvMs6_NtB1a_4scanNtBer_4Scan18scan_metadata_fromBaB_E0EEB3T_8try_folduNCINvB2c_12map_try_foldIB4y_NtNtB1a_10log_replay12ActionsBatchB5A_EIB4y_NtBer_12ScanMetadataB5A_EuINtNtNtBb_3ops12control_flow11ControlFlowBgy_ENCINvYNtNtBer_10log_replay22ScanLogReplayProcessorNtBfX_18LogReplayProcessor20process_actions_iterBO_E0NCINvNvB3T_4find5checkBgy_QNCBhP_s_0E0E0Bh3_EBcG_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 16 dereferenceable(544) %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterbEEINtNtNtBa_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2R_12BooleanArrayINtNtNtBa_6traits7collect12FromIteratorbE9from_iterBX_E0ENtNtB46_8iterator8Iterator4folduNCINvNvB4W_8for_each4callINtNtBc_6option6OptionbENCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6o_3VecB5R_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldbINtNtBb_6option6OptionbEuNCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB41_12BooleanArrayINtNtB2v_7collect12FromIteratorbE9from_iterBO_E0NCINvNvB2r_8for_each4callB3t_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6z_3VecB3t_E14extend_trustedINtB3a_3MapBO_B3S_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBc_6option4IterB1H_EENCINvNtB1L_5utils19find_exprs_in_exprsNCINvB2W_17find_window_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1H_ENCINvNvMsg_NtB8_7flattenINtB5w_13FlattenCompatppE9iter_fold7flattenB4J_B4J_NCINvNvXsi_B5w_B5J_B46_4fold7flattenINtNtB4M_9into_iter8IntoIterB1H_EB4J_NCB2T_s_0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_ENCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4u_17find_window_exprsBO_E0BO_E0NCINvNvMsg_NtB7_7flattenINtB5O_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B5O_B61_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4r_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIBO_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB3k_DNtNtB1n_11engine_data10EngineDataEL_ENtNtB1n_5error5ErrorENtNtBc_6marker4SendEL_ENCNvMNtB1n_11log_segmentNtB6n_10LogSegment24create_checkpoint_streams_0EINtNtNtB2v_8adaptors3map14MapSpecialCaseIBY_INtNtNtBa_7sources4once4OnceB4x_EINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterB3j_EEEINtB7v_18MapSpecialCaseFnOkNCNCB6k_s_00EEB5A_ENCB6k_s0_0EENCINvYNtNtNtB1n_4scan10log_replay22ScanLogReplayProcessorNtNtB1n_10log_replay18LogReplayProcessor20process_actions_iterBX_E0EB3T_8try_folduNCINvNvB3T_4find5checkIB4y_NtBaG_12ScanMetadataB5A_EQNCBay_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowBd7_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef align 16 dereferenceable(672) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB7_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB26_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB3g_DNtNtB16_11engine_data10EngineDataEL_ENtNtB16_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB16_11log_segmentNtB6j_10LogSegment24create_checkpoint_streams_0EINtNtNtB2q_8adaptors3map14MapSpecialCaseIBP_INtNtNtB9_7sources4once4OnceB4t_EINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterB3f_EEEINtB7r_18MapSpecialCaseFnOkNCNCB6g_s_00EEB5w_ENCB6g_s0_0EEB3P_8try_folduNCINvB28_12map_try_foldIB4u_NtNtB16_10log_replay12ActionsBatchB5w_EIB4u_NtNtB16_4scan12ScanMetadataB5w_EuINtNtNtBb_3ops12control_flow11ControlFlowBbL_ENCINvYNtNtBbS_10log_replay22ScanLogReplayProcessorNtBba_18LogReplayProcessor20process_actions_iterBO_E0NCINvNvB3P_4find5checkBbL_QNCBd9_s_0E0E0Bcn_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 16 dereferenceable(512) %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3C_18LogicalPlanBuilder15sort_with_limitNtNtB3G_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5e_EE00EENCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB6m_8IndexSetB2C_EINtNtNtBa_6traits7collect6ExtendB2C_E6extendBX_E0ENtNtB7f_8iterator8Iterator4folduNCINvNvB7Y_8for_each4callTB2C_uENCINvXsb_NtB6o_3mapINtB99_8IndexMapB2C_uEIB7b_B8T_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3l_18LogicalPlanBuilder15sort_with_limitNtNtB3p_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4X_EE00EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB2l_TB2l_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7i_8IndexSetB2l_EINtNtB60_7collect6ExtendB2l_E6extendBP_E0NCINvNvB5W_8for_each4callB71_NCINvXsb_NtB7k_3mapINtB9n_8IndexMapB2l_uEIB87_B71_E6extendINtB6F_3MapBP_B79_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1J_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1J_E6extendBX_E0ENtNtB4A_8iterator8Iterator4folduNCINvNvB5j_8for_each4callTB1J_uENCINvXs1i_NtB2W_3mapINtB6v_7HashMapB1J_uB3H_EIB4w_B6e_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3Q_7HashSetB1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2y_7collect6ExtendB1s_E6extendBP_E0NCINvNvB2u_8for_each4callB3z_NCINvXs1i_NtB3S_3mapINtB6J_7HashMapB1s_uB4D_EIB5s_B3z_E6extendINtB3d_3MapBP_B3H_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2A_7HashSetB1J_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1J_E6extendBX_E0ENtNtB4g_8iterator8Iterator4folduNCINvNvB4Z_8for_each4callTB1J_uENCINvXs1i_NtB2C_3mapINtB6b_7HashMapB1J_uB3n_EIB4c_B5U_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3w_7HashSetB1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2e_7collect6ExtendB1s_E6extendBP_E0NCINvNvB2a_8for_each4callB3f_NCINvXs1i_NtB3y_3mapINtB6p_7HashMapB1s_uB4j_EIB58_B3f_E6extendINtB2T_3MapBP_B3n_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB2w_10ColumnNameINtNtNtBa_6traits7collect12FromIteratorB1J_E9from_iterBX_E0ENtNtB3Q_8iterator8Iterator4folduNCINvNvB4J_8for_each4callB1K_NCINvMsj_NtB1O_3vecINtB5R_3VecB1K_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1t_uNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB3p_10ColumnNameINtNtB2b_7collect12FromIteratorB1s_E9from_iterBP_E0NCINvNvB27_8for_each4callB1t_NCINvMsj_NtB1x_3vecINtB65_3VecB1t_E14extend_trustedINtB2Q_3MapBP_B3h_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20get_pushdown_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtB1O_12table_source27TableProviderFilterPushDownNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.h, ptr %i.j, align 8
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_12table_source27TableProviderFilterPushDownuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20get_pushdown_filters0NCINvNvB2e_8for_each4callB3j_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6i_3VecB3j_E14extend_trustedINtB2X_3MapBP_B49_EE0E0E0EB4h_(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB39_13CreateBuilder12with_columnsB28_BX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4J_8for_each4callB28_NCINvMsj_B1o_INtB1o_3VecB28_E14extend_trustedBN_E0E0EB3d_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1R_B1R_uNCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB42_13CreateBuilder12with_columnsB1R_BP_E0NCINvNvB2J_8for_each4callB1R_NCINvMsj_B17_INtB17_3VecB1R_E14extend_trustedINtB3s_3MapBP_B3T_EE0E0E0EB46_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0EB3I_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5438)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !5438, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5438, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !5438, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5441
  store ptr %i.o, ptr %i.j, align 8, !noalias !5446
  %i.p = icmp eq ptr %i.k, %i.m
  br i1 %i.p, label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterINtNtB8_10filter_map9FilterMapIB14_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3k_s_0ENCB3k_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNtB8_3map8map_foldTxxExxNCB3k_s1_0NCINvNvB56_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0E0EB3s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 96
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, %bb.b
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.iw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %1, %bb.b ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i ] ; 17 uses
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %.sroa.04.0.i.i.i.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5449)
  call void @llvm.experimental.noalias.scope.decl(metadata !5452)
  %i.ah = load i64, ptr %i.ag, align 8, !range !62, !alias.scope !5454, !noalias !5457, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5458)
  call void @llvm.experimental.noalias.scope.decl(metadata !5461)
  call void @llvm.experimental.noalias.scope.decl(metadata !5463)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !5466, !noalias !5467, !nonnull !4, !noundef !4 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !5466, !noalias !5467, !noundef !4 ; 10 uses
  %i.an = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32) acquire, align 8, !noalias !5469
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.e, !prof !1206

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5469
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr %i.h, align 8, !noalias !5469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5469
  store ptr %i.h, ptr %i.g, align 8, !noalias !5469
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !5470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5469
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5471
  store i32 0, ptr %i.f, align 8, !noalias !5471
  store ptr %i.ak, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5471
  store i64 %i.am, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5471
  store i64 0, ptr %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i, align 8, !noalias !5471
  store i64 %i.am, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5471
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5471
  call void @_RNvMs2_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX), !noalias !5475
  store i32 0, ptr %i.u, align 8, !noalias !5471
  %i.ap = load ptr, ptr %i.v, align 8, !noalias !5471, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.w, align 8, !noalias !5471, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5471
  %i.ar = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, align 8, !noalias !5476, !nonnull !4, !noundef !4 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !noalias !5480, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 138
  %i.aw = load i8, ptr %i.av, align 2, !range !1092, !noalias !5480, !noundef !4
  %cond.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 2
  br i1 %cond.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !5481 ; 6 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !18, !noalias !5481, !noundef !4
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.f, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !5481
  %i.bd = icmp ult i64 %i.am, %i.bc
  br i1 %i.bd, label %.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  %i.bf = load i32, ptr %i.be, align 4, !noalias !5481, !noundef !4
  %i.bg = and i32 %i.bf, 1
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bi = load i32, ptr %i.bh, align 8, !noalias !5481, !noundef !4
  %i.bj = and i32 %i.bi, 2
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !18, !noalias !5481, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !5481
  %i.bq = icmp ugt i64 %i.am, %i.bp
  br i1 %i.bq, label %.thread.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 8), align 8, !noalias !5476, !nonnull !4, !noundef !4 ; 4 uses
  %i.bs = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE3get0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @330)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !5475 ; 3 uses

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8, !noalias !5485 ; 2 uses
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i.i.i.i.i, label %bb.j, !prof !1206

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  invoke void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.br, i64 noundef %i.bs, i64 noundef %i.bu)
          to label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !5475

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  store atomic i64 1, ptr %i.bt release, align 8, !noalias !5485
  %i.bw = inttoptr i64 %i.bs to ptr
  store ptr %i.br, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !5476
  store i64 1, ptr %i.d, align 8, !noalias !5476
  store ptr %i.bw, ptr %i.x, align 8, !noalias !5476
  store i8 0, ptr %i.y, align 8, !noalias !5476
  %i.bx = load ptr, ptr %i.as, align 8, !noalias !5480, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !5480, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !64, !invariant.load !4, !noalias !5480
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = and i64 %i.cc, -16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  br label %bb.k

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !18, !noalias !5476
  %i.cg = trunc nuw i64 %.pre.i.i.i.i.i.i.i.i to i1
  %i.ch = load ptr, ptr %i.as, align 8, !noalias !5480, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !5480, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !64, !invariant.load !4, !noalias !5480
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = and i64 %i.cm, -16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  br i1 %i.cg, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge.i.i.i.i.i.i.i, label %bb.l

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !5476
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge.i.i.i.i.i.i.i, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.br, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge.i.i.i.i.i.i.i ]
  %i.cr = phi ptr [ %i.cf, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i.i.i.i.i ], [ %i.cp, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge.i.i.i.i.i.i.i ]
  %i.cs = phi ptr [ %i.bz, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i.i.i.i.i ], [ %i.cj, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge.i.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  br label %bb.m

bb.l:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.x, align 8, !noalias !5476, !nonnull !4, !noundef !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cv = phi ptr [ %i.cr, %bb.k ], [ %i.cp, %bb.l ]
  %i.cw = phi ptr [ %i.cs, %bb.k ], [ %i.cj, %bb.l ]
  %i.cx = phi i1 [ true, %bb.k ], [ false, %bb.l ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %bb.k ], [ %i.cu, %bb.l ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !5480, !nonnull !4
  %i.da = invoke { i32, i32 } %i.cz(ptr noundef nonnull %i.cv, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 %i.ap, i64 noundef range(i64 0, 1152921504606846976) %i.aq)
          to label %bb.n unwind label %bb.s, !noalias !5475 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !5476 ; 5 uses
  %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !5476 ; 4 uses
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i = load i8, ptr %i.y, align 8, !noalias !5476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5476
  %i.db = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %i.db, ptr %i.c, align 8, !noalias !5488
  %i.dc = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.dc, label %.noexc10.i.i.i.i.i.i.i.i.i, label %.noexc11.i.i.i.i.i.i.i.i.i, !prof !1174

bb.p:                                             ; preds = %bb.n
  %i.dd = trunc nuw i8 %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.dd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i) #46
          to label %bb.u unwind label %.loopexit.i.i.i.i, !noalias !5475

bb.r:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i)
          to label %bb.u unwind label %.loopexit.i.i.i.i, !noalias !5475

.noexc10.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #39
          to label %.noexc13.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !5475

.noexc13.i.i.i.i.i.i.i.i:                         ; preds = %.noexc10.i.i.i.i.i.i.i.i.i
  unreachable

.noexc11.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i) ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i.i.i, i64 40
  store atomic i64 %i.db, ptr %i.de release, align 8, !noalias !5475
  br label %bb.u

bb.s:                                             ; preds = %bb.m
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata4util4pool9PoolGuardNtNtNtBN_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1B_NtNtB4_6marker4SyncNtB3h_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3L_10UnwindSafeEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.d) #43
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.t, !noalias !5475

bb.t:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5475
  unreachable

.loopexit.i.i.i.i:                                ; preds = %bb.r, %bb.q, %bb.j, %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc10.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2r_14LogDataHandler10pick_stats0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2x_6errors15DeltaTableErrorEEB4c_8try_folduNCINvNvB4c_12try_for_each4callINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB1r_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB7t_ENcNtB8q_5Break0E0B8q_E0IB8r_B8q_EEB2x_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !13260, !noalias !13261, !nonnull !4, !noundef !4 ; 4 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !noalias !13259
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.b, align 8, !noalias !13259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13259
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.e, !noalias !13261

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !13262
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %common.resume.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #45
          to label %common.resume.i.i unwind label %bb.g, !noalias !13261

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !13261
  unreachable

common.resume.i.i:                                ; preds = %bb.r, %bb.k, %bb.f, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.ap, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !13260, !noalias !13261, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.w, ptr %i.af, align 8, !alias.scope !13254, !noalias !13267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13267
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ae, ptr %i.ag, align 8, !alias.scope !13254, !noalias !13267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13259
  call void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c), !noalias !13268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13252
  %i.ah = load i64, ptr %i.d, align 16, !range !242, !noalias !13268, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ah, -9223372036854775743
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.i.sroa.0.0.copyload3.i.i = load ptr, ptr %i.ai, align 8, !noalias !13268 ; 3 uses
  %.sroa.6.i.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.i.sroa.6.0.copyload6.i.i = load ptr, ptr %.sroa.6.i.sroa.6.0..sroa_idx5.i.i, align 16, !noalias !13268 ; 5 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  store ptr %.sroa.6.i.sroa.0.0.copyload3.i.i, ptr %i.e, align 8, !noalias !13252
  %.sroa.6.i.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, ptr %.sroa.6.i.sroa.6.0..sroa_idx7.i.i, align 8, !noalias !13252
  %.sroa.6.i.sroa.7.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.7.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !13268
  %i.aj = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx10.i.i, align 8, !noalias !13252, !noundef !4
  %.not19.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not19.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, align 8, !noalias !13269, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !13269, !nonnull !4, !align !8, !noundef !4
  %i.an = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !13269
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.q

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #47
          to label %bb.l unwind label %bb.k, !noalias !13269

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.e) #43
          to label %common.resume.i.i unwind label %bb.n, !noalias !13269

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !13269
  unreachable

bb.o:                                             ; preds = %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.68.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.10.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.68.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !13268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !13268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13252
  call void @llvm.experimental.noalias.scope.decl(metadata !13270)
  %i.ar = load i64, ptr %3, align 16, !range !5021, !alias.scope !13273, !noalias !13276, !noundef !4
  %i.as = icmp eq i64 %i.ar, -9223372036854775711
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i unwind label %bb.r, !noalias !13278

bb.q:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.e), !noalias !13269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13252
  %i.at = ptrtoint ptr %i.ak to i64
  store i64 %i.at, ptr %.sroa.4.i, align 8, !alias.scope !13279, !noalias !13280
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ah, ptr %3, align 16, !noalias !13276
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.6.i.sroa.0.0.copyload3.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !13276
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 16, !noalias !13276
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, i64 72, i1 false), !noalias !13248
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i: ; preds = %bb.p, %bb.o
  store i64 %i.ah, ptr %3, align 16, !noalias !13276
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.6.i.sroa.0.0.copyload3.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !noalias !13276
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 16, !noalias !13276
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, i64 72, i1 false), !noalias !13248
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i, %bb.q
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.q ], [ %.sroa.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %i.am, %bb.q ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !alias.scope !13279, !noalias !13280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !alias.scope !13281, !noalias !13284, !noundef !4
  %i.av = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !alias.scope !13281, !noalias !13284
  %i.aw = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !alias.scope !13286, !noalias !13238
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %i.ay, align 8, !alias.scope !13286, !noalias !13238
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtBN_5array5ArrayEL_ENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B3z_EENCNvMNtNtNtNtB4z_6kernel8snapshot8log_data10datafusionNtB6q_14LogDataHandler10pick_stats0NCINvXB2C_INtB2C_12GenericShuntINtB2A_3MapB3_B6j_EIB3e_NtNtBa_7convert10InfallibleB4v_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3z_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB4z_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtBN_5array5ArrayEL_ENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B3z_EENCNvMNtNtNtNtB4z_6kernel8snapshot8log_data10datafusionNtB6q_14LogDataHandler10pick_stats0NCINvXB2C_INtB2C_12GenericShuntINtB2A_3MapB3_B6j_EIB3e_NtNtBa_7convert10InfallibleB4v_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3z_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB4z_.exit: ; preds = %bb.a, %bb.s
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !13235, !noalias !13238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEEB5g_8try_folduNCINvNvB5g_12try_for_each4callINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB1r_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB8x_ENcNtB9u_5Break0E0B9u_E0IB9v_B9u_EEB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 16 dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 11 uses
  %i.h = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.16.sroa.4.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13292)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !13294, !noalias !13289, !nonnull !4, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !13294, !noalias !13289, !nonnull !4, !noundef !4
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtBN_5array5ArrayEL_ENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B3z_EENCNvXs_NtNtNtNtB4z_6kernel8snapshot8log_data10datafusionNtB6s_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0NCINvXB2C_INtB2C_12GenericShuntINtB2A_3MapB3_B6j_EIB3e_NtNtBa_7convert10InfallibleB4v_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3z_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB4z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.m, ptr %1, align 8, !alias.scope !13294, !noalias !13289
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13300)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.sroa.4.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13305
  %i.n = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB8_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL, i64 16) acquire, align 8, !noalias !13305
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.c, !prof !1206

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13305
  store ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB8_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL, ptr %i.d, align 8, !noalias !13305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13305
  store ptr %i.d, ptr %i.c, align 8, !noalias !13305
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB8_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !13305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13305
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB8_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL, align 8, !noalias !13305, !nonnull !4, !noundef !4
  %i.q = load ptr, ptr getelementptr inbounds (i8, ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB8_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL, i64 8), align 8, !noalias !13305, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !64, !invariant.load !4, !noalias !13305
  %i.t = add nsw i64 %i.s, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13305
  call void @llvm.experimental.noalias.scope.decl(metadata !13308)
  call void @llvm.experimental.noalias.scope.decl(metadata !13311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13313
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !13314, !noalias !13315, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !13313
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  store ptr %i.y, ptr %i.b, align 8, !noalias !13313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13313
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.f, !noalias !13315

bb.e:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !13316
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %common.resume.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #45
          to label %common.resume.i.i unwind label %bb.h, !noalias !13315

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !13315
  unreachable

common.resume.i.i:                                ; preds = %bb.u, %bb.m, %bb.g, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %i.al, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !13314, !noalias !13315, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.y, ptr %i.ah, align 8, !alias.scope !13308, !noalias !13321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13321
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.ag, ptr %i.ai, align 8, !alias.scope !13308, !noalias !13321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13313
  call void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noundef nonnull %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13305
  %i.aj = load i64, ptr %i.g, align 16, !range !242, !noalias !13305, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aj, -9223372036854775743
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.i.sroa.0.0.copyload5.i.i = load i64, ptr %i.ak, align 8, !noalias !13305 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.i.sroa.7.0.copyload8.i.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx7.i.i, align 16, !noalias !13305 ; 3 uses
  %.sroa.6.i.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.i.sroa.8.0.copyload12.i.i = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx11.i.i, align 8, !noalias !13305 ; 3 uses
  %.sroa.6.i.sroa.9.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.6.i.sroa.9.0.copyload16.i.i = load i64, ptr %.sroa.6.i.sroa.9.0..sroa_idx15.i.i, align 16, !noalias !13305 ; 2 uses
  %.sroa.6.i.sroa.10.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.6.i.sroa.10.0.copyload20.i.i = load i64, ptr %.sroa.6.i.sroa.10.0..sroa_idx19.i.i, align 8, !noalias !13305 ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.622.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.sroa.4.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.622.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !13323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13305
  br label %bb.r

bb.j:                                             ; preds = %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13305
  store i64 %.sroa.6.i.sroa.0.0.copyload5.i.i, ptr %i.h, align 8, !noalias !13305
  %.sroa.6.i.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.6.i.sroa.7.0.copyload8.i.i, ptr %.sroa.6.i.sroa.7.0..sroa_idx9.i.i, align 8, !noalias !13305
  %.sroa.6.i.sroa.8.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.6.i.sroa.8.0.copyload12.i.i, ptr %.sroa.6.i.sroa.8.0..sroa_idx13.i.i, align 8, !noalias !13305
  %.sroa.6.i.sroa.9.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.6.i.sroa.9.0.copyload16.i.i, ptr %.sroa.6.i.sroa.9.0..sroa_idx17.i.i, align 8, !noalias !13305
  %.sroa.6.i.sroa.10.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.6.i.sroa.10.0.copyload20.i.i, ptr %.sroa.6.i.sroa.10.0..sroa_idx21.i.i, align 8, !noalias !13305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13305
  %.not49.i.i.i = icmp eq ptr %.sroa.6.i.sroa.8.0.copyload12.i.i, null
  br i1 %.not49.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsb7CrJTM47Nd_10arrow_cast4cast4cast(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %.sroa.6.i.sroa.7.0.copyload8.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @229, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219)
          to label %bb.o unwind label %bb.m, !noalias !13322

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #47
          to label %bb.n unwind label %bb.m, !noalias !13322

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.h) #43
          to label %common.resume.i.i unwind label %bb.q, !noalias !13322

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.am = load i64, ptr %i.e, align 8, !range !3181, !noalias !13305, !noundef !4 ; 2 uses
  %.not50.i.i.i = icmp eq i64 %i.am, -9223372036854775788
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !13305 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !13305 ; 3 uses
  br i1 %.not50.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !13305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13305
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.h), !noalias !13322
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !13322
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.i
  %.sroa.15.0.ph.i.i = phi i64 [ %.sroa.6.i.sroa.9.0.copyload16.i.i, %bb.i ], [ %.sroa.7.0.copyload.i.i.i, %bb.p ] ; 2 uses
  %.sroa.13.0.ph.i.i = phi ptr [ %.sroa.6.i.sroa.8.0.copyload12.i.i, %bb.i ], [ %i.aq, %bb.p ] ; 2 uses
  %.sroa.10.0.ph.i.i = phi ptr [ %.sroa.6.i.sroa.7.0.copyload8.i.i, %bb.i ], [ %i.ao, %bb.p ] ; 2 uses
  %.sroa.6.0.ph.i.i = phi i64 [ %.sroa.6.i.sroa.0.0.copyload5.i.i, %bb.i ], [ %i.am, %bb.p ]
  %.sroa.02.0.ph.i.i = phi i64 [ %i.aj, %bb.i ], [ -9223372036854775741, %bb.p ] ; 2 uses
  %.sroa.16.sroa.0.0.ph.i.i = phi i64 [ %.sroa.6.i.sroa.10.0.copyload20.i.i, %bb.i ], [ undef, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13305
  %i.as = inttoptr i64 %.sroa.6.0.ph.i.i to ptr   ; 2 uses
  %i.at = load i64, ptr %3, align 16, !range !5021, !alias.scope !13324, !noalias !13327, !noundef !4
  %i.au = icmp eq i64 %i.at, -9223372036854775711
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i unwind label %bb.u, !noalias !13327

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13305
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.h), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13305
  call void @llvm.experimental.noalias.scope.decl(metadata !13331)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.av = ptrtoint ptr %i.ao to i64
  store i64 %i.av, ptr %.sroa.4.i, align 8, !alias.scope !13332, !noalias !13333
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.02.0.ph.i.i, ptr %3, align 16, !noalias !13327
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.as, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !13327
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.10.0.ph.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 16, !noalias !13327
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.13.0.ph.i.i, ptr %.sroa.7.0..8.val.sroa_idx.i.i.i, align 8, !noalias !13334
  %.sroa.7.sroa.5.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.15.0.ph.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.i.i, align 16, !noalias !13334
  %.sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.16.sroa.0.0.ph.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !13334
  %.sroa.7.sroa.6.sroa.5.0..sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.sroa.6.sroa.5.0..sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.sroa.4.i.i, i64 48, i1 false), !noalias !13335
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i: ; preds = %bb.s, %bb.r
  store i64 %.sroa.02.0.ph.i.i, ptr %3, align 16, !noalias !13327
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !noalias !13327
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.10.0.ph.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 16, !noalias !13327
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.13.0.ph.i.i, ptr %.sroa.7.0..8.val.sroa_idx15.i.i.i, align 8, !noalias !13334
  %.sroa.7.sroa.5.0..sroa.7.0..8.val.sroa_idx15.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.15.0.ph.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..8.val.sroa_idx15.i.sroa_idx.i.i, align 16, !noalias !13334
  %.sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx15.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.16.sroa.0.0.ph.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx15.i.sroa_idx.i.i, align 8, !noalias !13334
  %.sroa.7.sroa.6.sroa.5.0..sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx15.i.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.sroa.6.sroa.5.0..sroa.7.sroa.6.0..sroa.7.0..8.val.sroa_idx15.i.sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.sroa.4.i.i, i64 48, i1 false), !noalias !13335
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i, %bb.t
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.t ], [ %.sroa.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %i.aq, %bb.t ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !alias.scope !13332, !noalias !13333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.4.i.i)
end_hunk_2
