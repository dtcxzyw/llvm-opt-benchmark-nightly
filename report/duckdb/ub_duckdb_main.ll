begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ClientContext32PendingPreparedStatementInternalERNS_17ClientContextLockENS_10shared_ptrINS_21PreparedStatementDataELb1EEERKNS_22PendingQueryParametersE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1509") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(10) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.346", align 16 ; 11 uses
  %6 = alloca %"class.std::function", align 16    ; 14 uses
  %7 = alloca %"class.duckdb::unique_ptr.1040", align 8 ; 5 uses
  %8 = alloca %"class.std::function", align 16    ; 15 uses
  %9 = alloca %"class.std::function", align 8     ; 18 uses
  %10 = alloca %"class.duckdb::unique_ptr.1049", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %11 = alloca %"class.std::function.346", align 16 ; 14 uses
  %12 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %13 = alloca %"class.duckdb::shared_ptr.255", align 8 ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(266) ptr @_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 7 uses
end_hunk_0
begin_hunk_1

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1166, !range !250, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.k

end_hunk_2
begin_hunk_3
  store ptr %i.al, ptr %i.v, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i, label %bb.k
end_hunk_3
begin_hunk_4
  %i.ap = phi ptr [ %i.af, %.thread ], [ %i.am, %bb.j ]
  %i.aq = phi ptr [ @_ZNSt17_Function_handlerIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEPS6_E9_M_invokeERKSt9_Any_data, %.thread ], [ %i.ak, %bb.j ]
  %i.ar = phi ptr [ @_ZNSt17_Function_handlerIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, %.thread ], [ %i.al, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !1168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %6, align 16, !tbaa !93
  br label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i

_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i: ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %i.an, %bb.j ], [ %i.ao, %bb.k ]
  %i.at = phi ptr [ %i.am, %bb.j ], [ %i.ap, %bb.k ]
  %i.au = phi ptr [ %i.ak, %bb.j ], [ %i.aq, %bb.k ]
  %i.av = phi ptr [ null, %bb.j ], [ %i.ar, %bb.k ]
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.j ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !1168
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %8, align 16, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !234 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 16, !tbaa !234
  store ptr %i.av, ptr %i.ax, align 16, !tbaa !234
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !234
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !234
end_hunk_4
begin_hunk_5

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !275 ; 2 uses
  %.not.i44 = icmp eq ptr %i.ce, null
  br i1 %.not.i44, label %_ZNSt14_Function_baseD2Ev.exit45, label %bb.z

end_hunk_5
begin_hunk_6
bb.af:                                            ; preds = %bb.ae, %bb.ad, %.body
  %.pn27 = phi { ptr, i32 } [ %i.ck, %bb.ae ], [ %.pn, %bb.ad ], [ %i.x, %.body ]
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !275 ; 2 uses
  %.not.i46 = icmp eq ptr %i.cm, null
  br i1 %.not.i46, label %_ZNSt14_Function_baseD2Ev.exit47, label %bb.ag

end_hunk_6
begin_hunk_7
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cz, align 8
  store ptr @_ZN6duckdb23PhysicalResultCollector18GetResultCollectorERNS_13ClientContextERNS_21PreparedStatementDataE, ptr %11, align 16, !tbaa !234
  store ptr @_ZNSt17_Function_handlerIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEPS7_E9_M_invokeERKSt9_Any_dataS4_S6_, ptr %i.cy, align 8, !tbaa !1173
  store ptr @_ZNSt17_Function_handlerIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.cx, align 16, !tbaa !275
  br i1 %narrow, label %.thread95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
end_hunk_7
begin_hunk_8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.de = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i32 noundef 2)
          to label %_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %i.dd, align 16, !tbaa !275 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %.body53, label %bb.am

end_hunk_8
begin_hunk_9
  unreachable

_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i: ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.pre.i50 = load <2 x i64>, ptr %5, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !1168
  store <2 x i64> %.sroa.0.0.copyload.i.i.pre.i50, ptr %11, align 16, !tbaa !93
  %i.dk = load <2 x ptr>, ptr %i.cx, align 16, !tbaa !234
  %i.dl = load ptr, ptr %i.cx, align 16, !tbaa !234 ; 2 uses
  store <2 x ptr> %i.dk, ptr %i.dd, align 16, !tbaa !234
  %i.dm = load <2 x ptr>, ptr %i.da, align 8, !tbaa !234
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !275
  store <2 x ptr> %i.dm, ptr %i.cx, align 16, !tbaa !234
  %.not.i.i51 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i51, label %bb.aq, label %bb.ao

end_hunk_9
begin_hunk_10
          to label %._ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEaSERKS8_.exit_crit_edge unwind label %bb.ap ; 0 uses

._ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEaSERKS8_.exit_crit_edge: ; preds = %bb.ao
  %.pre71.pre = load ptr, ptr %i.cx, align 16, !tbaa !275
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
end_hunk_10
begin_hunk_11

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.fw = load ptr, ptr %i.cx, align 16, !tbaa !275 ; 2 uses
  %.not.i62 = icmp eq ptr %i.fw, null
  br i1 %.not.i62, label %_ZNSt14_Function_baseD2Ev.exit63, label %bb.bo

end_hunk_11
begin_hunk_12

.body53:                                          ; preds = %bb.am, %bb.al, %bb.bq, %bb.bw
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.bq ], [ %.pn31.pn, %bb.bw ], [ %i.df, %bb.al ], [ %i.df, %bb.am ]
  %i.gj = load ptr, ptr %i.cx, align 16, !tbaa !275 ; 2 uses
  %.not.i65 = icmp eq ptr %i.gj, null
  br i1 %.not.i65, label %_ZNSt14_Function_baseD2Ev.exit66, label %bb.bx

end_hunk_12
