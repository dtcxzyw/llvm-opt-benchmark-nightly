inline.NumInlined: 120
inline.NumDeleted: 74
begin_hunk_0_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !144
  unreachable

bb.fd:                                            ; preds = %bb.fe, %.split.us.i.i.i.i.i
  %.pn14.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cm, %.split.us.i.i.i.i.i ], [ %.pn12.i.i.i.i.i.i, %bb.fe ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.ao) #14
          to label %.body.i.i.i.i.i unwind label %bb.fc, !noalias !144

bb.fe:                                            ; preds = %bb.ff, %.split17.us.i.i.i.i.i, %.split14.us.i.i.i.i.i, %.split11.us.i.i.i.i.i
  %.pn12.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cn, %.split11.us.i.i.i.i.i ], [ %.pn10.i.i.i.i.i.i, %bb.ff ], [ %i.cp, %.split17.us.i.i.i.i.i ], [ %i.co, %.split14.us.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.al) #14
          to label %bb.fd unwind label %bb.fc, !noalias !144

bb.ff:                                            ; preds = %bb.fg, %.split23.us.i.i.i.i.i, %.split20.us.i.i.i.i.i
  %.pn10.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cq, %.split20.us.i.i.i.i.i ], [ %.pn8.i.i.i.i.i.i, %bb.fg ], [ %i.cr, %.split23.us.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.af) #14
          to label %bb.fe unwind label %bb.fc, !noalias !144

bb.fg:                                            ; preds = %.split38.us.i.i.i.i.i, %.split35.us.i.i.i.i.i, %.split32.us.i.i.i.i.i, %.split29.us.i.i.i.i.i, %.split26.us.i.i.i.i.i
  %.pn8.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cs, %.split26.us.i.i.i.i.i ], [ %i.cw, %.split38.us.i.i.i.i.i ], [ %i.cv, %.split35.us.i.i.i.i.i ], [ %i.cu, %.split32.us.i.i.i.i.i ], [ %i.ct, %.split29.us.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.ab) #14
          to label %bb.ff unwind label %bb.fc, !noalias !144

._crit_edge.i.i.i.i.i:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit16.us.i.i.i.i.i, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !129
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !136 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx2.i.i.i.i, i64 24, i1 false), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !129
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.au)
          to label %_RNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0B3_.exit.i.i.i.i unwind label %bb.i, !noalias !129

.split41.i.i.i.i.i:                               ; preds = %_RNCNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env00B5_.exit.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fh:                                            ; preds = %.split41.i.i.i.i.i, %.split41.us.i.i.i.i.i
  %.us-phi42.i.i.i.i.i = phi { ptr, i32 } [ %i.dk, %.split41.i.i.i.i.i ], [ %i.cx, %.split41.us.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.body.i.i.i.i.i unwind label %bb.fj, !noalias !129

bb.fi:                                            ; preds = %_RNCNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env00B5_.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i unwind label %.loopexit.split.i.i.i.i.i, !noalias !129

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.i.i: ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.dl = icmp eq ptr %i.cy, %i.ch
  br i1 %i.dl, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.fj:                                            ; preds = %bb.fh, %.body.i.i.i.i.i, %bb.l, %bb.h
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !129
  unreachable

common.resume.i.i.i.i:                            ; preds = %.body.i3.i.i.i.i, %bb.h
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i3.i.i.i.i ], [ %.pn11.i.i.i.i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0B3_.exit.i.thread.i.i.i: ; preds = %bb.f, %bb.e
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCshbKHpCRGxgC_16deltalake_derive15FieldAttributesEBI_(ptr noalias noundef align 8 dereferenceable(80) %i.aw), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !129
  br label %bb.fq

_RNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0B3_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !129
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCshbKHpCRGxgC_16deltalake_derive15FieldAttributesEBI_(ptr noalias noundef align 8 dereferenceable(80) %i.aw), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !129
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775806
  br i1 %.not.i.i.i.i, label %bb.fq, label %bb.fk

bb.fk:                                            ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0B3_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !136
  %i.dn = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775807
  br i1 %i.dn, label %bb.fl, label %bb.fr

.sink.split.i.i.i:                                ; preds = %.thread.i.i.i, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !136
  br label %bb.fl

bb.fl:                                            ; preds = %.sink.split.i.i.i, %bb.fk
  %i.do = load i64, ptr %i.az, align 8, !range !3, !alias.scope !146, !noalias !149, !noundef !4
  %i.dp = icmp eq i64 %i.do, -9223372036854775808
  br i1 %i.dp, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit.thread5, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i unwind label %bb.fn, !noalias !149

bb.fn:                                            ; preds = %bb.fm
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body.i3.i.i.i.i unwind label %bb.fo, !noalias !149

bb.fo:                                            ; preds = %bb.fn
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !149
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i: ; preds = %bb.fm
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit.thread5 unwind label %bb.fp, !noalias !149

bb.fp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3.i.i.i.i

.body.i3.i.i.i.i:                                 ; preds = %bb.fp, %bb.fn
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ds, %bb.fp ], [ %i.dq, %bb.fn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i, i64 24, i1 false), !noalias !153
  br label %common.resume.i.i.i.i

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit.thread5: ; preds = %bb.fl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i, i64 24, i1 false), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit

bb.fq:                                            ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0B3_.exit.i.i.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0B3_.exit.i.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %i.dt = icmp eq ptr %i.bj, %i.bc
  br i1 %i.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.fr:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit
  %.sroa.0.0.copyload1.i.i.i.i.lcssa.sink = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.fr ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit ]
  store i64 %.sroa.0.0.copyload1.i.i.i.i.lcssa.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.fq, %bb.a, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit.thread5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %bb.fs
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !113, !noundef !4
  %i.c = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %.not = icmp eq i64 %i.c, -9223372036854775808
  %.val = load ptr, ptr %1, align 8, !nonnull !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.i.i = alloca [24 x i8], align 8    ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 18 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 17 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.i.i.i.i.i = alloca [16 x i8], align 8  ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [80 x i8], align 8                ; 7 uses
  %i.u = alloca [80 x i8], align 8                ; 12 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !155, !noalias !158, !nonnull !4, !align !113, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !168, !noalias !171 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !168, !noalias !171, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq ptr %.promoted.i.i.i, %i.aa
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.cz, %.lr.ph.i.i.i
  %i.ao = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ap, %bb.cz ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr %i.ap, ptr %1, align 8, !alias.scope !168, !noalias !171
  %.val5.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !174, !nonnull !4, !align !113, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !175
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 304
  %i.ar = load i8, ptr %i.aq, align 8, !range !134, !noalias !175, !noundef !4
  %.not.i.i.i.i.i = icmp eq i8 %i.ar, 3
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.c, !prof !135

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 288
  store ptr %i.as, ptr %i.w, align 8, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !180
  store i64 0, ptr %i.c, align 8, !noalias !180
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !180
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  store i32 1610612768, ptr %i.ac, align 8, !noalias !180
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !180
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !180
  store ptr %i.c, ptr %i.b, align 8, !noalias !180
  store ptr @23, ptr %i.ad, align 8, !noalias !180
  %i.at = invoke noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCsbjGuDcEILED_11proc_macro25IdentNtB6_7Display3fmtCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i.i.i, !noalias !184

.loopexit.i.i.i:                                  ; preds = %bb.c
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i.i.i:                         ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #14
          to label %common.resume.i.i.i.i unwind label %bb.g, !noalias !184

bb.e:                                             ; preds = %bb.c
  br i1 %i.at, label %bb.f, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, !prof !135

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #17
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !184

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !184
  unreachable

common.resume.i.i.i.i:                            ; preds = %.body.i3.i.i.i.i, %bb.cs, %bb.cb, %.body39.i.i.i.i.i, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i3.i.i.i.i ], [ %i.do, %bb.cs ], [ %lpad.phi.i.i.i, %bb.d ], [ %i.cx, %bb.cb ], [ %.pn30.i.i.i.i.i, %.body39.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !175
  %i.av = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 232
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !175, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 240
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !175, !noundef !4
  invoke void @_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ay)
          to label %bb.j unwind label %bb.i, !noalias !175

bb.h:                                             ; preds = %bb.b
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #16, !noalias !175
  unreachable

.body39.i.i.i.i.i:                                ; preds = %bb.cq, %bb.bz, %.body37.i.i.i.i.i, %bb.i
  %.pn30.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body38.i.i.i.i.i, %.body37.i.i.i.i.i ], [ %.pn25.pn.pn.pn4.i.i.i.i.i, %bb.cq ], [ %i.az, %bb.i ], [ %i.cv, %bb.bz ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #14
          to label %common.resume.i.i.i.i unwind label %bb.ax, !noalias !175

bb.i:                                             ; preds = %bb.cn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i, %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i.i.i.i.i

bb.j:                                             ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  %i.ba = load i64, ptr %i.t, align 8, !range !3, !noalias !175, !noundef !4
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !175
  br label %bb.cr

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 80, i1 false), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !175
  %i.bc = load i8, ptr %i.ae, align 8, !range !137, !noalias !175, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.cn, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !175
  invoke void @_RNvCshbKHpCRGxgC_16deltalake_derive16determine_parser(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.val5.i.i.i)
          to label %bb.p unwind label %.thread.i.i.i.i.i, !noalias !175

.thread.i.i.i.i.i:                                ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.n:                                             ; preds = %.body.i.i.i.i.i
  br i1 %.sroa.010.2.i.i.i.i.i, label %bb.cp, label %bb.co

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.p:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.r, align 8, !range !138, !noalias !175, !noundef !4
  %i.bh = icmp eq i64 %i.bg, -9223372036854775807
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !175
  br label %bb.cn

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !175
  %i.bi = load i8, ptr %i.af, align 8, !range !137, !noalias !175, !noundef !4
  %i.bj = trunc nuw i8 %i.bi to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !175
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !175
  %i.bk = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #18, !noalias !175 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.s, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !135

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp11.i.i.i, !noalias !175

.noexc.i.i.i.i.i:                                 ; preds = %bb.s
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, %bb.t, %.loopexit.split-lp11.i.i.i, %.loopexit10.i.i.i
  %.sroa.010.2.i.i.i.i.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i ], [ true, %bb.t ], [ false, %bb.au ], [ false, %.loopexit10.i.i.i ], [ true, %.loopexit.split-lp11.i.i.i ]
  %.pn25.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn25.pn.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %bb.t ], [ %i.cf, %bb.au ], [ %lpad.loopexit12.i.i.i, %.loopexit10.i.i.i ], [ %lpad.loopexit.split-lp13.i.i.i, %.loopexit.split-lp11.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.s) #14
          to label %bb.n unwind label %bb.ax, !noalias !175

.loopexit10.i.i.i:                                ; preds = %bb.av
  %lpad.loopexit12.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp11.i.i.i:                       ; preds = %bb.s
  %lpad.loopexit.split-lp13.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !175
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.v unwind label %bb.u, !noalias !175

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.w ], [ %i.bm, %bb.u ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bk, i64 noundef 32, i64 noundef 8) #18, !noalias !175
  br label %.body.i.i.i.i.i

bb.u:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.x unwind label %bb.w, !noalias !175

bb.w:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.p) #14
          to label %bb.t unwind label %bb.ax, !noalias !175

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !175
  store i64 1, ptr %i.q, align 8, !noalias !175
  store ptr %i.bk, ptr %i.ag, align 8, !noalias !175
  store i64 1, ptr %i.ah, align 8, !noalias !175
  %i.bo = load ptr, ptr %i.ai, align 8, !noalias !175, !nonnull !4, !noundef !4 ; 4 uses
  %i.bp = load i64, ptr %i.u, align 8, !range !187, !noalias !175, !noundef !4
  %i.bq = load i64, ptr %i.aj, align 8, !noalias !175, !noundef !4 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 384307168202282326
  call void @llvm.assume(i1 %i.br)
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.bq, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !175
  store ptr %i.bo, ptr %i.o, align 8, !noalias !175
  store ptr %i.bo, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8, !noalias !175
  store i64 %i.bp, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !175
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i

.body45.i.i.i.i.i:                                ; preds = %bb.cl, %.body42.i.i.i.i.i, %bb.y
  %.pn25.i.i.i.i.i = phi { ptr, i32 } [ %.pn23.i.i.i.i.i, %.body42.i.i.i.i.i ], [ %i.bu, %bb.y ], [ %i.dj, %bb.cl ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i unwind label %bb.ax, !noalias !175

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i.i.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit48.i.i.i.i.i
  %i.bv = phi ptr [ %i.dm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit48.i.i.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bw, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !188, !noalias !191
  %.sroa.01.0.copyload2.i.i.i.i.i = load i64, ptr %i.bv, align 8, !noalias !193 ; 2 uses
  %.sroa.7.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx3.i.i.i.i.i, i64 16, i1 false), !noalias !193
  %.not16.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload2.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !175
  store i64 %.sroa.01.0.copyload2.i.i.i.i.i, ptr %i.n, align 8, !noalias !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i.i.i, i64 16, i1 false), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !175
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.ce unwind label %bb.cd, !noalias !175

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit48.i.i.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit34.i.i.i.i.i unwind label %bb.aa, !noalias !175

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i, %.loopexit10.i.i.i.i.i, %bb.aa, %.body45.i.i.i.i.i
  %.pn25.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i.i.i, %.loopexit10.i.i.i.i.i ], [ %.pn21.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %i.bx, %bb.aa ], [ %.pn25.i.i.i.i.i, %.body45.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.q) #14
          to label %.body.i.i.i.i.i unwind label %bb.ax, !noalias !175

bb.aa:                                            ; preds = %bb.ac, %bb.ab, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit34.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !175
  br i1 %i.bj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit34.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !175
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ad unwind label %bb.aa, !noalias !175

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit34.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !175
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.ay unwind label %bb.aa, !noalias !175

bb.ad:                                            ; preds = %bb.ab
  %i.by = load ptr, ptr %i.ag, align 8, !noalias !175, !nonnull !4, !noundef !4 ; 3 uses
  %i.bz = load i64, ptr %i.ah, align 8, !noalias !175, !noundef !4 ; 3 uses
  %.idx32.i.i.i.i.i = shl nuw nsw i64 %i.bz, 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx32.i.i.i.i.i
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %.preheader9.preheader.i.i.i.i.i unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

.preheader9.preheader.i.i.i.i.i:                  ; preds = %bb.ad
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %.loopexit16.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.preheader9.preheader.i.i.i.i.i
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.preheader9.i.i.i.i.i.preheader unwind label %.loopexit10.loopexit.split-lp.i.i.i.i.i, !noalias !175

.preheader9.i.i.i.i.i.preheader:                  ; preds = %bb.ae
  %i.cc = icmp eq i64 %i.bz, 1
  br i1 %i.cc, label %.loopexit16.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader9.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i122 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  br label %bb.af

.loopexit10.i.i.i.i.i:                            ; preds = %bb.ao, %.loopexit.split-lp11.i.i.i.i.i, %.loopexit10.loopexit.split-lp.i.i.i.i.i, %.loopexit10.loopexit.i.i.i.i.i
  %.pn17.i.i.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.ao ], [ %lpad.loopexit.split-lp13.i.i.i.i.i, %.loopexit.split-lp11.i.i.i.i.i ], [ %lpad.loopexit17.i.i.i.i.i, %.loopexit10.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp18.i.i.i.i.i, %.loopexit10.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.f) #14
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i unwind label %bb.ax, !noalias !175

.loopexit10.loopexit.i.i.i.i.i:                   ; preds = %bb.ag, %bb.af
  %lpad.loopexit17.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit10.i.i.i.i.i

.loopexit10.loopexit.split-lp.i.i.i.i.i:          ; preds = %bb.ae
  %lpad.loopexit.split-lp18.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit10.i.i.i.i.i

.loopexit.split-lp11.i.i.i.i.i:                   ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.loopexit16.i.i.i.i.i, %bb.ad
  %lpad.loopexit.split-lp13.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit10.i.i.i.i.i

.preheader9.i.i.i.i.i:                            ; preds = %bb.ag
  %.sroa.012.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i123, i64 32 ; 2 uses
  %i.cd = icmp eq ptr %.sroa.012.0.i.i.i.i.i, %i.ca
  br i1 %i.cd, label %.loopexit16.i.i.i.i.i, label %bb.af, !llvm.loop !194

.loopexit16.i.i.i.i.i:                            ; preds = %.preheader9.i.i.i.i.i, %.preheader9.i.i.i.i.i.preheader, %.preheader9.preheader.i.i.i.i.i
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private14push_fat_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ah unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.af:                                            ; preds = %.lr.ph, %.preheader9.i.i.i.i.i
  %.sroa.012.0.i.i.i.i.i123 = phi ptr [ %.sroa.012.0.i.i.i.i.i122, %.lr.ph ], [ %.sroa.012.0.i.i.i.i.i, %.preheader9.i.i.i.i.i ] ; 2 uses
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_or(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ag unwind label %.loopexit10.loopexit.i.i.i.i.i, !noalias !175

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.012.0.i.i.i.i.i123, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.preheader9.i.i.i.i.i unwind label %.loopexit10.loopexit.i.i.i.i.i, !noalias !175, !llvm.loop !194

bb.ah:                                            ; preds = %.loopexit16.i.i.i.i.i
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 4)
          to label %bb.ai unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_dot(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.aj unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ak unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.al unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.am unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !175
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.an unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 1)
          to label %bb.ap unwind label %bb.ao, !noalias !175

bb.ao:                                            ; preds = %bb.an
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.d) #14
          to label %.loopexit10.i.i.i.i.i unwind label %bb.ax, !noalias !175

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !175
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.aq unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !175
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private13push_question(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ar unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.as unwind label %.loopexit.split-lp11.i.i.i.i.i, !noalias !175

bb.as:                                            ; preds = %bb.ar
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !175
  br label %bb.at

bb.at:                                            ; preds = %bb.bs, %bb.as
  %.sroa.05.0.i.i.i.i = phi i64 [ %.sroa.05.0.copyload6.i.i.i.i, %bb.bs ], [ %.sroa.05.0.copyload.i.i.i.i, %bb.as ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.av unwind label %bb.au, !noalias !175

bb.au:                                            ; preds = %bb.at
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i.i.i.i.i unwind label %bb.aw, !noalias !175

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i unwind label %.loopexit10.i.i.i, !noalias !175

bb.aw:                                            ; preds = %bb.au
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !175
  unreachable

bb.ax:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cf, %.body42.i.i.i.i.i, %.body37.i.i.i.i.i, %bb.bn, %bb.bj, %.loopexit.i.i.i.i.i, %bb.ao, %.loopexit10.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, %.body45.i.i.i.i.i, %bb.w, %.body.i.i.i.i.i, %.body39.i.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !175
  unreachable

bb.ay:                                            ; preds = %bb.ac
  %i.ci = load ptr, ptr %i.ag, align 8, !noalias !175, !nonnull !4, !noundef !4 ; 3 uses
  %i.cj = load i64, ptr %i.ah, align 8, !noalias !175, !noundef !4 ; 3 uses
  %.idx33.i.i.i.i.i = shl nuw nsw i64 %i.cj, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx33.i.i.i.i.i
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %.preheader.preheader.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !175

.preheader.preheader.i.i.i.i.i:                   ; preds = %bb.ay
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %.loopexit20.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.preheader.preheader.i.i.i.i.i
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.preheader.i.i.i.i.i.preheader unwind label %.loopexit.loopexit.split-lp.i.i.i.i.i, !noalias !175

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.az
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %.loopexit20.i.i.i.i.i, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader.i.i.i.i.i.preheader
  %.sroa.011.0.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  br label %bb.ba

.loopexit.i.i.i.i.i:                              ; preds = %bb.bj, %.loopexit.split-lp.i.i.i.i.i, %.loopexit.loopexit.split-lp.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i
  %.pn21.i.i.i.i.i = phi { ptr, i32 } [ %.pn19.i.i.i.i.i, %bb.bj ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ], [ %lpad.loopexit21.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp22.i.i.i.i.i, %.loopexit.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.k) #14
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i unwind label %bb.ax, !noalias !175

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.bb, %bb.ba
  %lpad.loopexit21.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i

.loopexit.loopexit.split-lp.i.i.i.i.i:            ; preds = %bb.az
  %lpad.loopexit.split-lp22.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.br, %bb.bq, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %.loopexit20.i.i.i.i.i, %bb.ay
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_0
