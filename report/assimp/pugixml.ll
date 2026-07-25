inline.NumInlined: 2217
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawERKNS_10xpath_nodeEPNS1_15xpath_allocatorEbT_:bb.a
  br label %.lr.ph.split.us.i, !llvm.loop !493

.preheader.us.i:                                  ; preds = %.lr.ph.split.us.i, %bb.h
  %.1.us.i = phi ptr [ %i.w, %bb.h ], [ %.030.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not22.us.i = icmp eq ptr %i.u, null
  br i1 %.not22.us.i, label %bb.h, label %.lr.ph.split.us.i.backedge, !llvm.loop !493

bb.h:                                             ; preds = %.preheader.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.preheader.us.i, !llvm.loop !494

.lr.ph:                                           ; preds = %.lr.ph.split.i.preheader, %.loopexit.i
  %.030.i42 = phi ptr [ %.2.i, %.loopexit.i ], [ %i.o, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030.i42, i64 32
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.z, null
  br i1 %.not21.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.i
  %.1.i = phi ptr [ %i.ad, %bb.i ], [ %.030.i42, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.preheader.i, !llvm.loop !494

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph
  %.2.i = phi ptr [ %i.z, %.lr.ph ], [ %i.ab, %.preheader.i ] ; 2 uses
  %.val.i = load i8, ptr %i.j, align 1
  %.val23.i = load ptr, ptr %i.k, align 8
  %i.af = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.i, ptr %.val23.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.2.i, ptr noundef %3)
  br i1 %i.af, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.lr.ph, !llvm.loop !493

bb.j:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %.not.i18 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i18, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit

_ZNK4pugi10xpath_node6parentEv.exit:              ; preds = %bb.j
  %.sroa.0.0.copyload.i20 = load ptr, ptr %2, align 8 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.copyload.i20, null
  br i1 %.not.i21, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit28

_ZNK4pugi10xpath_node6parentEv.exit28:            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.val.pre = load i8, ptr %.phi.trans.insert, align 1
  %i.ag = icmp eq i8 %.val.pre, 2
  br i1 %i.ag, label %bb.k, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit

bb.k:                                             ; preds = %_ZNK4pugi10xpath_node6parentEv.exit28
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i29 = icmp eq ptr %i.ai, null
  %spec.select.i = select i1 %.not.i29, ptr @.str, ptr %i.ai ; 6 uses
  %i.aj = load i8, ptr %spec.select.i, align 1
  %i.ak = icmp eq i8 %i.aj, 120
  br i1 %i.ak, label %.lr.ph.i.1.i22.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.1.i22.i:                                 ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 109
  br i1 %i.an, label %.lr.ph.i.2.i23.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.2.i23.i:                                 ; preds = %.lr.ph.i.1.i22.i
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 108
  br i1 %i.aq, label %.lr.ph.i.3.i24.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.3.i24.i:                                 ; preds = %.lr.ph.i.2.i23.i
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 110
  br i1 %i.at, label %.lr.ph.i.4.i25.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.4.i25.i:                                 ; preds = %.lr.ph.i.3.i24.i
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 115
  br i1 %i.aw, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i: ; preds = %.lr.ph.i.4.i25.i
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 5
  %i.ay = load i8, ptr %i.ax, align 1
  switch i8 %i.ay, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i [
    i8 58, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit
  ]

_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, %.lr.ph.i.4.i25.i, %.lr.ph.i.3.i24.i, %.lr.ph.i.2.i23.i, %.lr.ph.i.1.i22.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.sroa.0.0.copyload.i20)
  call void @_ZN4pugi10xpath_nodeC1ERKNS_13xml_attributeERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not.i28.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i28.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bd, ptr %i.az, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %5, ptr noundef %3)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i

_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE5EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit: ; preds = %bb.h, %.loopexit.i, %bb.i, %.lr.ph.split.i.preheader, %bb.j, %_ZNK4pugi10xpath_node6parentEv.exit28, %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i, %bb.g, %_ZNK4pugi10xpath_node4nodeEv.exit17, %_ZNK4pugi10xpath_node6parentEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawERKNS_10xpath_nodeEPNS1_15xpath_allocatorEbT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef captures(none) %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i = load ptr, ptr %6, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = inttoptr i64 %i.c to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ %.pre.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.f = load ptr, ptr %i.a, align 8
  %.not.i.i14 = icmp eq ptr %i.f, null
  br i1 %.not.i.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i15 = load ptr, ptr %5, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit16

bb.f:                                             ; preds = %bb.d
  %i.g = load i64, ptr %2, align 8
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit16

_ZNK4pugi10xpath_node4nodeEv.exit16:              ; preds = %bb.e, %bb.f
  %i.i = phi ptr [ %i.h, %bb.f ], [ %.pre.i15, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %_ZNK4pugi10xpath_node4nodeEv.exit16
  %.017.i = phi ptr [ %i.i, %_ZNK4pugi10xpath_node4nodeEv.exit16 ], [ %i.v, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.017.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not.i17 = icmp eq ptr %i.k, null
  br i1 %.not.i17, label %bb.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.val33.i = load i8, ptr %i.l, align 1
  %.val2534.i = load ptr, ptr %i.m, align 8
  %i.n = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val33.i, ptr %.val2534.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.k, ptr noundef %3)
  %i.o = and i1 %4, %i.n
  br i1 %i.o, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader27.i
  br i1 %4, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.h
  %.135.us.i = phi ptr [ %.3.us.i, %bb.h ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.135.us.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not21.us.i = icmp eq ptr %i.q, null
  br i1 %.not21.us.i, label %.preheader.us.i, label %bb.h

.preheader.us.i:                                  ; preds = %.lr.ph.split.us.i, %.loopexit.us.i.a
  %.2.us.i = phi ptr [ %.val25.us.i.a, %.loopexit.us.i.a ], [ %.135.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.2.us.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not22.us.i = icmp eq ptr %i.s, null
  br i1 %.not22.us.i, label %.loopexit.us.i.a, label %bb.h

.loopexit.us.i.a:                                 ; preds = %.preheader.us.i
  %7 = getelementptr inbounds nuw i8, ptr %.2.us.i, i64 24
  %.val25.us.i.a = load ptr, ptr %7, align 8      ; 2 uses
  %.not23.us.i = icmp eq ptr %.val25.us.i.a, null
  br i1 %.not23.us.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.preheader.us.i, !llvm.loop !495

bb.h:                                             ; preds = %.preheader.us.i, %.lr.ph.split.us.i
  %.3.us.i = phi ptr [ %i.q, %.lr.ph.split.us.i ], [ %i.s, %.preheader.us.i ] ; 2 uses
  %.val.us.i = load i8, ptr %i.l, align 1
  %i.t = load ptr, ptr %i.m, align 8
  %8 = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.us.i, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.3.us.i, ptr noundef %3) ; 0 uses
  br label %.lr.ph.split.us.i

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not24.i = icmp eq ptr %i.v, null
  br i1 %.not24.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %bb.g, !llvm.loop !496

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.loopexit.i
  %.135.i = phi ptr [ %.3.i, %.loopexit.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.135.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.x, null
  br i1 %.not21.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph.split.i, %bb.j
  %.2.i = phi ptr [ %i.ab, %bb.j ], [ %.135.i, %.lr.ph.split.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.2.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.z, null
  br i1 %.not22.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.ab, null
  br i1 %.not23.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.preheader.i, !llvm.loop !495

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph.split.i
  %.3.i = phi ptr [ %i.x, %.lr.ph.split.i ], [ %i.z, %.preheader.i ] ; 2 uses
  %.val.i = load i8, ptr %i.l, align 1
  %.val25.i = load ptr, ptr %i.m, align 8
  %i.ac = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.i, ptr %.val25.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.3.i, ptr noundef %3)
  br i1 %i.ac, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.lr.ph.split.i, !llvm.loop !497

bb.k:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %.not.i18 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i18, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit

_ZNK4pugi10xpath_node6parentEv.exit:              ; preds = %bb.k
  %.sroa.0.0.copyload.i20 = load ptr, ptr %2, align 8 ; 3 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.copyload.i20, null
  br i1 %.not.i21, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit28

_ZNK4pugi10xpath_node6parentEv.exit28:            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %4, label %.split.i.preheader, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %_ZNK4pugi10xpath_node6parentEv.exit28, %bb.l
  %.013.us5.i = phi ptr [ %.2.us.i31, %bb.l ], [ %.sroa.0.0.copyload.i20, %_ZNK4pugi10xpath_node6parentEv.exit28 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.us5.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not16.us.i = icmp eq ptr %i.ag, null
  br i1 %.not16.us.i, label %.preheader.us.i33, label %bb.l

.preheader.us.i33:                                ; preds = %.lr.ph.i29, %.loopexit.us.i30.a
  %.1.us.i = phi ptr [ %.val19.us.i.a, %.loopexit.us.i30.a ], [ %.013.us5.i, %.lr.ph.i29 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not17.us.i = icmp eq ptr %i.ai, null
  br i1 %.not17.us.i, label %.loopexit.us.i30.a, label %bb.l

.loopexit.us.i30.a:                               ; preds = %.preheader.us.i33
  %9 = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 24
  %.val19.us.i.a = load ptr, ptr %9, align 8      ; 2 uses
  %.not18.us.i = icmp eq ptr %.val19.us.i.a, null
  br i1 %.not18.us.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.preheader.us.i33, !llvm.loop !498

bb.l:                                             ; preds = %.preheader.us.i33, %.lr.ph.i29
  %.2.us.i31 = phi ptr [ %i.ag, %.lr.ph.i29 ], [ %i.ai, %.preheader.us.i33 ] ; 2 uses
  %.val.us.i32 = load i8, ptr %i.ad, align 1
  %i.aj = load ptr, ptr %i.ae, align 8
  %10 = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.us.i32, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.2.us.i31, ptr noundef %3) ; 0 uses
  br label %.lr.ph.i29

.split.i.preheader:                               ; preds = %_ZNK4pugi10xpath_node6parentEv.exit28, %.loopexit.i35
  %.013.i = phi ptr [ %.2.i36, %.loopexit.i35 ], [ %.sroa.0.0.copyload.i20, %_ZNK4pugi10xpath_node6parentEv.exit28 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.al, null
  br i1 %.not16.i, label %.preheader.i38, label %.loopexit.i35

.preheader.i38:                                   ; preds = %.split.i.preheader, %bb.m
  %.1.i = phi ptr [ %i.ap, %bb.m ], [ %.013.i, %.split.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.an, null
  br i1 %.not17.i, label %bb.m, label %.loopexit.i35

bb.m:                                             ; preds = %.preheader.i38
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.ap, null
  br i1 %.not18.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.preheader.i38, !llvm.loop !498

.loopexit.i35:                                    ; preds = %.preheader.i38, %.split.i.preheader
  %.2.i36 = phi ptr [ %i.al, %.split.i.preheader ], [ %i.an, %.preheader.i38 ] ; 2 uses
  %.val.i37 = load i8, ptr %i.ad, align 1
  %.val19.i = load ptr, ptr %i.ae, align 8
  %i.aq = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.i37, ptr %.val19.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.2.i36, ptr noundef %3)
  br i1 %i.aq, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %.split.i.preheader, !llvm.loop !499

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE6EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit: ; preds = %bb.i, %.loopexit.us.i.a, %.loopexit.i, %bb.j, %.loopexit.us.i30.a, %.loopexit.i35, %bb.m, %bb.k, %.preheader27.i, %_ZNK4pugi10xpath_node6parentEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE10EEEEEvRNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.023 = phi ptr [ %2, %bb.a ], [ %i.bp, %bb.l ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.023, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.l, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %.lr.ph48.split, label %.lr.ph48.split.us

.lr.ph48.split.us:                                ; preds = %.lr.ph48
  br i1 %4, label %.lr.ph48.split.us.split.us, label %.lr.ph48.split.us.split.split

.lr.ph48.split.us.split.us:                       ; preds = %.lr.ph48.split.us, %.loopexit.us.us
  %.147.us.us = phi ptr [ %.3.us.us, %.loopexit.us.us ], [ %i.b, %.lr.ph48.split.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.147.us.us, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not28.us.us = icmp eq ptr %i.h, null
  br i1 %.not28.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph48.split.us.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  br label %.loopexit.us.us

bb.d:                                             ; preds = %.lr.ph48.split.us.split.us
  %.val33.us.us = load i8, ptr %i.e, align 1
  %.val34.us.us = load ptr, ptr %i.f, align 8
  %i.k = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val33.us.us, ptr %.val34.us.us, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.147.us.us, ptr noundef %3)
  br i1 %i.k, label %.loopexit35, label %.preheader.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.us, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread
  %.244.us50.us79 = phi ptr [ %i.m, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread ], [ %.147.us.us, %.preheader.us.us ]
  %i.l = getelementptr inbounds nuw i8, ptr %.244.us50.us79, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 7 uses
  %.not30.us51.us80 = icmp eq ptr %i.m, null
  br i1 %.not30.us51.us80, label %.loopexit35, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us
  %.not96 = icmp eq ptr %2, %i.m
  br i1 %.not96, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread, label %.lr.ph.i.us.us81

.lr.ph.i.us.us81:                                 ; preds = %bb.e, %.lr.ph.i.us.us81
  %.07.i.us.us82 = phi ptr [ %i.o, %.lr.ph.i.us.us81 ], [ %2, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i.us.us82, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp ne ptr %i.o, %i.m
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.us.us81, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83, !llvm.loop !500

_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83: ; preds = %.lr.ph.i.us.us81
  %i.s = icmp eq ptr %i.o, %i.m
  br i1 %i.s, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83
  %.val.us53.us85 = load i8, ptr %i.e, align 1
  %.val32.us54.us86 = load ptr, ptr %i.f, align 8
  %i.t = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.us53.us85, ptr %.val32.us54.us86, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.m, ptr noundef %3)
  br i1 %i.t, label %.loopexit35, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread

_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread: ; preds = %bb.e, %bb.f, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %.not29.us55.us87 = icmp eq ptr %i.x, null
  br i1 %.not29.us55.us87, label %.lr.ph.us.us, label %.loopexit.us.us, !llvm.loop !501

.loopexit.us.us:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread, %.preheader.us.us, %bb.c
  %.3.us.us = phi ptr [ %i.j, %bb.c ], [ %i.z, %.preheader.us.us ], [ %i.v, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us83.thread ] ; 2 uses
  %.not27.us.us = icmp eq ptr %.3.us.us, null
  br i1 %.not27.us.us, label %.loopexit35, label %.lr.ph48.split.us.split.us, !llvm.loop !502

.preheader.us.us:                                 ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.147.us.us, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not2943.us.us = icmp eq ptr %i.ab, null
  br i1 %.not2943.us.us, label %.lr.ph.us.us, label %.loopexit.us.us

.lr.ph48.split.us.split.split:                    ; preds = %.lr.ph48.split.us, %.loopexit.us
  %.147.us = phi ptr [ %.3.us, %.loopexit.us ], [ %i.b, %.lr.ph48.split.us ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.147.us, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not28.us = icmp eq ptr %i.ad, null
  br i1 %.not28.us, label %.preheader.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph48.split.us.split.split
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  br label %.loopexit.us

.preheader.us:                                    ; preds = %.lr.ph48.split.us.split.split
  %.val33.us = load i8, ptr %i.e, align 1
  %.val34.us = load ptr, ptr %i.f, align 8
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val33.us, ptr %.val34.us, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.147.us, ptr noundef %3) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.147.us, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not2943.us = icmp eq ptr %i.ak, null
  br i1 %.not2943.us, label %.lr.ph.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread, %.preheader.us, %bb.g
  %.3.us = phi ptr [ %i.af, %bb.g ], [ %i.ai, %.preheader.us ], [ %i.av, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread ] ; 2 uses
  %.not27.us = icmp eq ptr %.3.us, null
  br i1 %.not27.us, label %.loopexit35, label %.lr.ph48.split.us.split.split, !llvm.loop !502

.lr.ph.us:                                        ; preds = %.preheader.us, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread
  %.244.us50.us = phi ptr [ %i.am, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread ], [ %.147.us, %.preheader.us ]
  %i.al = getelementptr inbounds nuw i8, ptr %.244.us50.us, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 7 uses
  %.not30.us51.us = icmp eq ptr %i.am, null
  br i1 %.not30.us51.us, label %.loopexit35, label %bb.h

bb.h:                                             ; preds = %.lr.ph.us
  %.not95 = icmp eq ptr %2, %i.am
  br i1 %.not95, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.h, %.lr.ph.i.us.us
  %.07.i.us.us = phi ptr [ %i.ao, %.lr.ph.i.us.us ], [ %2, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.us.us, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %i.ap = icmp ne ptr %i.ao, null
  %i.aq = icmp ne ptr %i.ao, %i.am
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.us.us, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us, !llvm.loop !500

_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us: ; preds = %.lr.ph.i.us.us
  %i.as = icmp eq ptr %i.ao, %i.am
  br i1 %i.as, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us
  %.val.us53.us = load i8, ptr %i.e, align 1
  %.val32.us54.us = load ptr, ptr %i.f, align 8
  %i.at = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.us53.us, ptr %.val32.us54.us, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.am, ptr noundef %3) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread

_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us.thread: ; preds = %bb.h, %bb.i, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us52.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not29.us55.us = icmp eq ptr %i.ax, null
  br i1 %.not29.us55.us, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !501

.lr.ph48.split:                                   ; preds = %.lr.ph48
  br i1 %4, label %.lr.ph48.split.split.us, label %.lr.ph48.split.split.split

.lr.ph48.split.split.us:                          ; preds = %.lr.ph48.split, %.loopexit.us67
  %.147.us59 = phi ptr [ %.3.us63, %.loopexit.us67 ], [ %i.b, %.lr.ph48.split ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.147.us59, i64 32
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not28.us60 = icmp eq ptr %i.az, null
  br i1 %.not28.us60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph48.split.split.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %.loopexit.us67

bb.k:                                             ; preds = %.lr.ph48.split.split.us
  %.val33.us61 = load i8, ptr %i.e, align 1
  %.val34.us62 = load ptr, ptr %i.f, align 8
  %i.bc = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val33.us61, ptr %.val34.us62, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.147.us59, ptr noundef %3)
  br i1 %i.bc, label %.loopexit35, label %.preheader.us65

.loopexit.us67:                                   ; preds = %._crit_edge, %.preheader.us65, %bb.j
  %.3.us63 = phi ptr [ %i.bb, %bb.j ], [ %i.be, %.preheader.us65 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.not27.us64 = icmp eq ptr %.3.us63, null
  br i1 %.not27.us64, label %.loopexit35, label %.lr.ph48.split.split.us, !llvm.loop !502

.preheader.us65:                                  ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.147.us59, i64 40
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not2943.us66 = icmp eq ptr %i.bg, null
  br i1 %.not2943.us66, label %.lr.ph.us69, label %.loopexit.us67

.lr.ph.us69:                                      ; preds = %.preheader.us65, %._crit_edge
  %.244.us.us70 = phi ptr [ %i.bi, %._crit_edge ], [ %.147.us59, %.preheader.us65 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.244.us.us70, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8            ; 4 uses
  %.not30.us.us71 = icmp eq ptr %i.bi, null
  br i1 %.not30.us.us71, label %.loopexit35, label %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us.us72

_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us.us72: ; preds = %.lr.ph.us69
  %.val.us.us73 = load i8, ptr %i.e, align 1
  %.val32.us.us74 = load ptr, ptr %i.f, align 8
  %i.bj = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.us.us73, ptr %.val32.us.us74, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.bi, ptr noundef %3)
  br i1 %i.bj, label %.loopexit35, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us.us72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not29.us.us75 = icmp eq ptr %i.bn, null
  br i1 %.not29.us.us75, label %.lr.ph.us69, label %.loopexit.us67, !llvm.loop !501

bb.l:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not31 = icmp eq ptr %i.bp, null
  br i1 %.not31, label %.loopexit35, label %bb.b, !llvm.loop !503

.lr.ph48.split.split.split:                       ; preds = %.lr.ph48.split, %.loopexit
  %.147 = phi ptr [ %.3, %.loopexit ], [ %i.b, %.lr.ph48.split ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.147, i64 32
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not28 = icmp eq ptr %i.br, null
  br i1 %.not28, label %.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph48.split.split.split
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph48.split.split.split
  %.val33 = load i8, ptr %i.e, align 1
  %.val34 = load ptr, ptr %i.f, align 8
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val33, ptr %.val34, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.147, ptr noundef %3) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.147, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %.not2943 = icmp eq ptr %i.by, null
  br i1 %.not2943, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.244.us.us = phi ptr [ %i.ca, %bb.n ], [ %.147, %.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.244.us.us, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8            ; 4 uses
  %.not30.us.us = icmp eq ptr %i.ca, null
  br i1 %.not30.us.us, label %.loopexit35, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %.val.us.us = load i8, ptr %i.e, align 1
  %.val32.us.us = load ptr, ptr %i.f, align 8
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val.us.us, ptr %.val32.us.us, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.ca, ptr noundef %3) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %.not29.us.us = icmp eq ptr %i.cf, null
  br i1 %.not29.us.us, label %.lr.ph, label %.loopexit, !llvm.loop !501

.loopexit:                                        ; preds = %bb.n, %.preheader, %bb.m
  %.3 = phi ptr [ %i.bt, %bb.m ], [ %i.bw, %.preheader ], [ %i.cd, %bb.n ] ; 2 uses
  %.not27 = icmp eq ptr %.3, null
  br i1 %.not27, label %.loopexit35, label %.lr.ph48.split.split.split, !llvm.loop !502

.loopexit35:                                      ; preds = %bb.l, %.loopexit.us, %.lr.ph.us, %bb.d, %.loopexit.us.us, %.lr.ph.us.us, %bb.f, %.loopexit, %.lr.ph, %bb.k, %.loopexit.us67, %_ZN4pugi4impl12_GLOBAL__N_116node_is_ancestorEPNS_15xml_node_structES3_.exit.us.us72, %.lr.ph.us69
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawERKNS_10xpath_nodeEPNS1_15xpath_allocatorEbT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %7 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %8 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %.pre.i = load ptr, ptr %8, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = inttoptr i64 %i.c to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ %.pre.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.f = load ptr, ptr %i.a, align 8
  %.not.i.i17 = icmp eq ptr %i.f, null
  br i1 %.not.i.i17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.pre.i18 = load ptr, ptr %7, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit19

bb.f:                                             ; preds = %bb.d
  %i.g = load i64, ptr %2, align 8
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit19

_ZNK4pugi10xpath_node4nodeEv.exit19:              ; preds = %bb.e, %bb.f
  %i.i = phi ptr [ %i.h, %bb.f ], [ %.pre.i18, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.val = load i8, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val14 = load ptr, ptr %i.k, align 8
  %i.l = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_pushERNS1_18xpath_node_set_rawEPNS_15xml_node_structEPNS1_15xpath_allocatorE(i8 %.val, ptr readonly %.val14, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.i, ptr noundef %3) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit

bb.g:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %.not.i20 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i20, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit

_ZNK4pugi10xpath_node6parentEv.exit:              ; preds = %bb.g
  %.sroa.0.0.copyload.i22 = load ptr, ptr %2, align 8 ; 2 uses
  %.not.i23 = icmp eq ptr %.sroa.0.0.copyload.i22, null
  br i1 %.not.i23, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit30

_ZNK4pugi10xpath_node6parentEv.exit30:            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.val15.pre = load i8, ptr %.phi.trans.insert, align 1
  %i.m = icmp eq i8 %.val15.pre, 2
  br i1 %i.m, label %bb.h, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit

bb.h:                                             ; preds = %_ZNK4pugi10xpath_node6parentEv.exit30
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i31 = icmp eq ptr %i.o, null
  %spec.select.i = select i1 %.not.i31, ptr @.str, ptr %i.o ; 6 uses
  %i.p = load i8, ptr %spec.select.i, align 1
  %i.q = icmp eq i8 %i.p, 120
  br i1 %i.q, label %.lr.ph.i.1.i22.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.1.i22.i:                                 ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 109
  br i1 %i.t, label %.lr.ph.i.2.i23.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.2.i23.i:                                 ; preds = %.lr.ph.i.1.i22.i
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 108
  br i1 %i.w, label %.lr.ph.i.3.i24.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.3.i24.i:                                 ; preds = %.lr.ph.i.2.i23.i
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 3
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 110
  br i1 %i.z, label %.lr.ph.i.4.i25.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

.lr.ph.i.4.i25.i:                                 ; preds = %.lr.ph.i.3.i24.i
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 115
  br i1 %i.ac, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i

_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i: ; preds = %.lr.ph.i.4.i25.i
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 5
  %i.ae = load i8, ptr %i.ad, align 1
  switch i8 %i.ae, label %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i [
    i8 58, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit
  ]

_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, %.lr.ph.i.4.i25.i, %.lr.ph.i.3.i24.i, %.lr.ph.i.2.i23.i, %.lr.ph.i.1.i22.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.sroa.0.0.copyload.i22)
  call void @_ZN4pugi10xpath_nodeC1ERKNS_13xml_attributeERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i28.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.aj, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i

bb.j:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.thread.i
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, ptr noundef %3)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i

_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node9step_fillINS1_12axis_to_typeILNS1_6axis_tE12EEEEEvRNS1_18xpath_node_set_rawEPNS_20xml_attribute_structEPNS_15xml_node_structEPNS1_15xpath_allocatorEbT_.exit: ; preds = %bb.g, %_ZNK4pugi10xpath_node6parentEv.exit30, %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, %_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc.exit27.i, %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit29.i, %_ZNK4pugi10xpath_node6parentEv.exit, %_ZNK4pugi10xpath_node4nodeEv.exit19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef captures(none) %2) unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nsw i64 %i.h, 1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = shl i64 %i.k, 4                          ; 4 uses
  %i.m = add i64 %i.g, 7
  %i.n = and i64 %i.m, -8                         ; 2 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.pre30.i = load ptr, ptr %2, align 8           ; 2 uses
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.pre30.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %.pre.i, %i.n
  %i.p = add i64 %i.o, %i.l                       ; 2 uses
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not24.i = icmp ugt i64 %i.p, %i.s
  br i1 %.not24.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.p, ptr %.phi.trans.insert.i, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %._crit_edge.i
  %i.t = phi i64 [ %.pre32.i, %._crit_edge.i ], [ %i.s, %bb.b ]
  %i.u = phi ptr [ %.pre30.i, %._crit_edge.i ], [ %i.q, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = add i64 %.pre.i, %i.l                    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.w, %i.t
  br i1 %.not.i.i, label %bb.f, label %bb.e
end_hunk_0
