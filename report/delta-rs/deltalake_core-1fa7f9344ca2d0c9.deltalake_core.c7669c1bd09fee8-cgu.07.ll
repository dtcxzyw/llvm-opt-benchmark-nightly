inline.NumInlined: 9982
inline.NumDeleted: 4210
begin_hunk_0_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter17generalize_filter:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.da

.body191.thread:                                  ; preds = %.thread387, %bb.eq, %.body191
  %.pn71357 = phi { ptr, i32 } [ %.pn68.pn, %.body191 ], [ %i.id, %bb.eq ], [ %lpad.thr_comm385, %.thread387 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.n) #58
          to label %.critedge80.thread275 unwind label %bb.av

end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21construct_placeholder:bb.a
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bs, %bb.bk
  %.sroa.015.9 = phi i8 [ 0, %bb.bs ], [ 1, %bb.bk ] ; 4 uses
  %.sroa.012.12 = phi i8 [ 1, %bb.bs ], [ 0, %bb.bk ] ; 5 uses
  %.sroa.056.0 = phi ptr [ %i.dn, %bb.bs ], [ %i.ds, %bb.bk ]
  %.sroa.01.0 = phi ptr [ %i.eo, %bb.bs ], [ %i.dt, %bb.bk ]
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21construct_placeholder:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit139 unwind label %bb.ar

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit139: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i133
  %6 = trunc nuw i8 %.sroa.015.9 to i1
  %.sroa.025.0.pre258 = load ptr, ptr %1, align 8 ; 2 uses
  br i1 %6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit117

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit117._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit117, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit117.thread, %bb.bw
  %i.ex = phi ptr [ %i.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit117.thread ], [ %i.dj, %bb.bw ], [ %i.dj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit117 ]
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !17684, !noalias !17686, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable8get_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ah, ptr noundef nonnull %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @97)
          to label %bb.ar unwind label %bb.k, !noalias !17689

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull readonly align 16 dereferenceable(112) %2, i64 112, i1 false), !alias.scope !17680
end_hunk_3
begin_hunk_4_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17689
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable8get_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.03.0.i.i, ptr noundef nonnull %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @97)
          to label %bb.l unwind label %bb.k, !noalias !17689

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull readonly align 16 dereferenceable(112) %2, i64 112, i1 false), !alias.scope !17680
end_hunk_4
begin_hunk_5_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  store i8 0, ptr %.sroa.56.0..sroa_idx.i.i, align 1, !alias.scope !17687, !noalias !17688
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB6_5FnMutTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutBV_.exit

bb.j:                                             ; preds = %.body144.i.i, %bb.k
  %.sroa.099.0.i.i = phi i8 [ %.sroa.099.1.i.i, %bb.k ], [ %.sroa.099.2.i.i, %.body144.i.i ]
  %.pn142.i.i = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn134.i.i, %.body144.i.i ] ; 2 uses
  %3 = trunc nuw i8 %.sroa.099.0.i.i to i1
  br i1 %3, label %.thread.i.i, label %bb.cs

bb.k:                                             ; preds = %bb.cq, %bb.cn, %bb.bg, %bb.ap, %bb.af, %bb.w, %bb.h, %bb.d
  %.sroa.099.1.i.i = phi i8 [ 0, %bb.ap ], [ 1, %bb.w ], [ 1, %bb.af ], [ 1, %bb.h ], [ 1, %bb.bg ], [ %.sroa.099.6.i.i, %bb.cn ], [ 1, %bb.cq ], [ 1, %bb.d ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %i.u, align 8, !range !13121, !noalias !17689, !noundef !3 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17689
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.v)
          to label %bb.ao unwind label %bb.k, !noalias !17689

bb.x:                                             ; preds = %bb.v
  %.sroa.6115.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
end_hunk_6
begin_hunk_7_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !alias.scope !17687, !noalias !17688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17689
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.v)
          to label %bb.al unwind label %bb.k, !noalias !17689

bb.ag:                                            ; preds = %.thread.i.i, %.body.i.i, %.body163.i.i, %bb.bu, %bb.az, %.body144.i.i, %bb.an, %.body147.i.i, %bb.ad, %bb.q, %.thread5.i.i
  %i.bj = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  store i8 0, ptr %.sroa.416.0..sroa_idx.i.i, align 16, !alias.scope !17687, !noalias !17688
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.517.0..sroa_idx.i.i, align 1, !alias.scope !17687, !noalias !17688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.v)
          to label %4 unwind label %bb.k, !noalias !17689

4:                                                ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17689
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB6_5FnMutTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutBV_.exit

end_hunk_8
begin_hunk_9_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  br label %.body144.i.i

.body144.i.i:                                     ; preds = %.body.i.i, %bb.cj, %bb.bj, %bb.az, %bb.ax, %bb.aw
  %.sroa.099.2.i.i = phi i8 [ 1, %bb.az ], [ %.sroa.099.4.i.i, %.body.i.i ], [ %.sroa.099.6.i.i, %bb.cj ], [ 1, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.bj ]
  %.pn134.i.i = phi { ptr, i32 } [ %i.cc, %bb.az ], [ %.pn.i.i, %.body.i.i ], [ %i.dl, %bb.cj ], [ %i.bz, %bb.aw ], [ %i.ca, %bb.ax ], [ %i.cl, %bb.bj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m) #58
          to label %bb.j unwind label %bb.ag, !noalias !17689

bb.ax:                                            ; preds = %bb.be, %bb.bc, %bb.bb, %bb.av, %bb.au
  %i.ca = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17689
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m)
          to label %bb.bn unwind label %bb.k, !noalias !17689

bb.bh:                                            ; preds = %bb.bf
  %.sroa.6127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
end_hunk_10
begin_hunk_11_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  br label %.body163.i.i

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit172.i.i, %bb.cb
  %.sroa.099.6.i.i = phi i8 [ 1, %bb.cb ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit172.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17689
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.cn) #63
          to label %bb.cn unwind label %bb.cj, !noalias !17721, !inline_history !720
end_hunk_11
begin_hunk_12_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17689
  %5 = trunc nuw i8 %.sroa.099.6.i.i to i1
  br i1 %5, label %bb.aq, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB6_5FnMutTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutBV_.exit

bb.cp:                                            ; preds = %bb.cg
  %i.dn = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB7_6FnOnceTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9call_onceBX_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17689
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m)
          to label %bb.cr unwind label %bb.k, !noalias !17689

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17689
  br label %bb.am

.body.i.i:                                        ; preds = %.body163.i.i, %bb.cm, %bb.cd, %bb.bu, %bb.bs, %bb.br
  %.sroa.099.4.i.i = phi i8 [ 1, %.body163.i.i ], [ 1, %bb.bu ], [ 0, %bb.cm ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.cd ]
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body164.i.i, %.body163.i.i ], [ %i.cy, %bb.bu ], [ %i.dm, %bb.cm ], [ %i.cv, %bb.br ], [ %i.cw, %bb.bs ], [ %i.dg, %bb.cd ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.k) #58
          to label %.body144.i.i unwind label %bb.ag, !noalias !17689

bb.cs:                                            ; preds = %.thread.i.i, %bb.j
  %.pn1423.i.i = phi { ptr, i32 } [ %.pn1424.i.i, %.thread.i.i ], [ %.pn142.i.i, %bb.j ]
  resume { ptr, i32 } %.pn1423.i.i

.thread.i.i:                                      ; preds = %.thread5.i.i, %bb.j
  %.pn1424.i.i = phi { ptr, i32 } [ %.pn142.i.i, %bb.j ], [ %.pn140.i.i, %.thread5.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.w) #58
          to label %bb.cs unwind label %bb.ag, !noalias !17686

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsRNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils25coerce_predicate_literals0INtB6_5FnMutTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutBV_.exit: ; preds = %bb.b, %bb.e, %bb.i, %bb.am, %4, %bb.aq, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void
}
end_hunk_13
