Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/xchar-test?download=true
inline.NumInlined: 12086
inline.NumDeleted: 3130
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.363) #30
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = icmp eq i8 %i.el, 123
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.364) #30
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ey = load i8, ptr %i.et, align 1, !tbaa !134
  switch i8 %i.ey, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit76
    i8 62, label %bb.bh
    i8 94, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

bb.bi:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

_ZN3fmt3v126detail11parse_alignEc.exit76:         ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i75 = phi i32 [ 8, %bb.bg ], [ 24, %bb.bi ], [ 16, %bb.bh ]
  %i.ez = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.ez, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread

_ZN3fmt3v126detail11parse_alignEc.exit76.thread:  ; preds = %bb.bg, %_ZN3fmt3v126detail11parse_alignEc.exit76
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.363) #30
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !273
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !273
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !134
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !134
  store i8 0, ptr %i.t, align 1, !tbaa !134
  store i8 0, ptr %i.u, align 2, !tbaa !134
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !134
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !134
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !134
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !134
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !134
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !134
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !134
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !134
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !273
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v126detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !134
  br label %bb.d, !llvm.loop !1495

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !273
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !311
  %i.b = load i8, ptr %0, align 1, !tbaa !134     ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !134   ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !6

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !134
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.365) #30
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !174
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !134
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !278 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.367) #30
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !278
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !311
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1496
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !1497
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !186
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l
  %.0 = phi ptr [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !134
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !311
  br label %bb.q

bb.p:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !134     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !6

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !134   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !6

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !134
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !134
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1500, !nonnull !170, !align !314
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1501, !nonnull !170, !align !315
  store i32 1, ptr %i.am, align 4, !tbaa !311
  %i.an = load ptr, ptr %2, align 8, !tbaa !1502, !nonnull !170, !align !314
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !278
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.368) #30
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !278
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1498

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !134 ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1498

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1498

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1500, !nonnull !170, !align !314 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1501, !nonnull !170, !align !315
  store i32 2, ptr %i.bl, align 4, !tbaa !311
  %i.bm = load ptr, ptr %2, align 8, !tbaa !1502, !nonnull !170, !align !314
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !278
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = lshr i64 %i.b, 1
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextINS0_14basic_appenderIwEEwEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERSA_:bb.a
  %.sink110 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.040.ph = phi i32 [ %i.p, %bb.g ], [ %i.bb, %bb.p ]
  %i.bc = zext nneg i32 %.sink to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sink110, i64 %i.bc
  %.sroa.011.0.copyload26 = load i128, ptr %i.bd, align 16, !tbaa !134 ; 3 uses
  %.sroa.011.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.011.0.copyload26 to i32
  %.sroa.011.sroa.0.sroa.11.0.extract.shift105 = lshr i128 %.sroa.011.0.copyload26, 32
  %.sroa.011.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.011.sroa.0.sroa.11.0.extract.shift105 to i32
  %.sroa.011.sroa.11.0.extract.shift = lshr i128 %.sroa.011.0.copyload26, 64
  %.sroa.011.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.011.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38: ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit
  %.sroa.011.sroa.0.sroa.11.0 = phi i32 [ %.sroa.011.sroa.0.sroa.11.0.extract.trunc90, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.011.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ] ; 4 uses
  %.sroa.011.sroa.0.sroa.0.0 = phi i32 [ %.sroa.011.sroa.0.sroa.0.0.extract.trunc74, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.011.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ] ; 7 uses
  %.sroa.011.sroa.11.0 = phi i64 [ %.sroa.011.sroa.11.0.extract.trunc63, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.011.sroa.11.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ]
  %.sroa.23.040 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit ], [ %.sroa.23.040.ph, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38.sink.split ]
  switch i32 %.sroa.23.040, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %i.be = icmp slt i32 %.sroa.011.sroa.0.sroa.0.0, 0
  %i.bf = zext nneg i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br i1 %i.be, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

bb.r:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %i.bg = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext75 = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift76 = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext75, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext64 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert66 = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift76, %.sroa.011.sroa.0.sroa.0.0.insert.ext64
  %i.bh = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.011.sroa.0.sroa.0.0.insert.insert66, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift, %.sroa.011.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext83 = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift84 = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext83, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext70 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert72 = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift84, %.sroa.011.sroa.0.sroa.0.0.insert.ext70
  %.not106 = icmp sgt i64 %.sroa.011.sroa.11.0, -1
  br i1 %.not106, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.11.0.insert.ext79 = zext i32 %.sroa.011.sroa.0.sroa.11.0 to i64
  %.sroa.011.sroa.0.sroa.11.0.insert.shift80 = shl nuw i64 %.sroa.011.sroa.0.sroa.11.0.insert.ext79, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext67 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert69 = or disjoint i64 %.sroa.011.sroa.0.sroa.11.0.insert.shift80, %.sroa.011.sroa.0.sroa.0.0.insert.ext67
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIwEEwE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.011.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.011.sroa.0.sroa.0.0.insert.insert72, %bb.u ], [ %.sroa.011.sroa.0.sroa.0.0.insert.insert69, %bb.v ], [ %i.bg, %bb.r ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bi = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bi, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.378) #30
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i45 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bf, %bb.q ]
  %i.bj = trunc nuw nsw i64 %.0.i45 to i32
  store i32 %i.bj, ptr %1, align 4, !tbaa !174
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIwEEwEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIwEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler.279", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !311
  %i.b = load i32, ptr %0, align 4, !tbaa !192    ; 3 uses
  %i.c = add i32 %i.b, -48
  %or.cond22 = icmp ult i32 %i.c, 10
  br i1 %or.cond22, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  %.027.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ]
  %i.e = mul i32 %.027.i, 10
  %i.f = add nsw i32 %i.d, -48                    ; 2 uses
  %i.g = add i32 %i.e, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 5 uses
  %.not34.i = icmp eq ptr %i.h, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192  ; 2 uses
  %i.j = add i32 %i.i, -48
  %or.cond.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.b, %.preheader
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 40
  br i1 %i.n, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.o = icmp eq i64 %i.m, 40
  br i1 %i.o, label %bb.d, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %.027.i to i64
  %i.q = mul nuw nsw i64 %i.p, 10
  %i.r = zext nneg i32 %i.f to i64
  %i.s = add nuw nsw i64 %i.q, %i.r
  %i.t = icmp samesign ugt i64 %i.s, 2147483647
  %i.u = icmp eq i32 %i.g, -1
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit.thread, label %bb.e

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %i.g, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit.thread, label %bb.e

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit.thread: ; preds = %bb.d, %bb.c, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.365) #30
  unreachable

bb.e:                                             ; preds = %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  store i32 %i.g, ptr %2, align 4, !tbaa !174
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %i.b, 123
  br i1 %i.v, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.w, align 4, !tbaa !192
  switch i32 %i.x, label %bb.k [
    i32 125, label %bb.i
    i32 58, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !181  ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.367) #30
  unreachable

_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit: ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !181
  store i32 %i.z, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !311
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1922
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ac, align 8, !tbaa !1923
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.ad, align 8, !tbaa !186
  %i.ae = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIwNS1_20dynamic_spec_handlerIwEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.w, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit, %bb.k
  %.0 = phi ptr [ %i.w, %_ZN3fmt3v1213parse_contextIwE11next_arg_idEv.exit ], [ %i.ae, %bb.k ] ; 3 uses
  %.not21 = icmp eq ptr %.0, %1
  br i1 %.not21, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %.0, align 4, !tbaa !192
  %i.ag = icmp eq i32 %i.af, 125
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !311
  br label %bb.p

bb.o:                                             ; preds = %bb.g, %bb.l, %bb.m, %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.n
  %.sroa.3.0 = phi i32 [ 0, %bb.e ], [ %.sroa.3.0.pre, %bb.n ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ %i.ah, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIwNS1_20dynamic_spec_handlerIwEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !192    ; 5 uses
  %i.b = add i32 %i.a, -48
  %or.cond = icmp ult i32 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq i32 %i.a, 48
  br i1 %.not27, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.c = phi i32 [ %i.h, %bb.c ], [ %i.a, %bb.b ]
  %.027.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]
  %i.d = mul i32 %.027.i, 10
  %i.e = add nsw i32 %i.c, -48                    ; 2 uses
  %i.f = add i32 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 7 uses
  %.not34.i = icmp eq ptr %i.g, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.h = load i32, ptr %i.g, align 4, !tbaa !192  ; 2 uses
  %i.i = add i32 %i.h, -48
  %or.cond.i = icmp ult i32 %i.i, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 40
  br i1 %i.m, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.n = icmp eq i64 %i.l, 40
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %.027.i to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = zext nneg i32 %i.e to i64
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = icmp samesign ult i64 %i.r, 2147483648
  br i1 %i.s, label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit: ; preds = %bb.f, %bb.e, %.critedge.i, %bb.g
  %.036 = phi ptr [ %i.t, %bb.g ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ], [ %i.g, %bb.f ] ; 3 uses
  %.020 = phi i32 [ 0, %bb.g ], [ %i.f, %.critedge.i ], [ %i.f, %bb.e ], [ 2147483647, %bb.f ]
  %i.u = icmp eq ptr %.036, %1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  %i.v = load i32, ptr %.036, align 4, !tbaa !192
  switch i32 %i.v, label %bb.i [
    i32 125, label %bb.j
    i32 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail21parse_nonnegative_intIwEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1926, !nonnull !170, !align !314
  store i32 %.020, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1927, !nonnull !170, !align !315
  store i32 1, ptr %i.z, align 4, !tbaa !311
  %i.aa = load ptr, ptr %2, align 8, !tbaa !1928, !nonnull !170, !align !314
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !181
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.368) #30
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit: ; preds = %bb.j
  store i32 -1, ptr %i.ab, align 8, !tbaa !181
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ae = and i32 %i.a, -33
  %i.af = add i32 %i.ae, -65
  %or.cond8.i = icmp ult i32 %i.af, 26
  %i.ag = icmp eq i32 %i.a, 95
  %i.ah = or i1 %i.ag, %or.cond8.i
  br i1 %i.ah, label %.critedge3, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

.critedge3:                                       ; preds = %bb.l, %bb.n
  %.0 = phi ptr [ %i.ai, %bb.n ], [ %0, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 5 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge3
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !192 ; 3 uses
  %i.ak = and i32 %i.aj, -33
  %i.al = add i32 %i.ak, -65
  %or.cond8.i31 = icmp ult i32 %i.al, 26
  %i.am = icmp eq i32 %i.aj, 95
  %i.an = or i1 %i.am, %or.cond8.i31
  %i.ao = add i32 %i.aj, -48
  %or.cond30 = icmp ult i32 %i.ao, 10
  %or.cond37 = or i1 %or.cond30, %i.an
  br i1 %or.cond37, label %.critedge3, label %.critedge, !llvm.loop !1924

.critedge:                                        ; preds = %bb.n, %.critedge3
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1926, !nonnull !170, !align !314 ; 2 uses
  store ptr %0, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1927, !nonnull !170, !align !315
  store i32 2, ptr %i.aw, align 4, !tbaa !311
  %i.ax = load ptr, ptr %2, align 8, !tbaa !1928, !nonnull !170, !align !314
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 -1, ptr %i.ay, align 8, !tbaa !181
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit
  %.021 = phi ptr [ %.036, %_ZN3fmt3v126detail20dynamic_spec_handlerIwE8on_indexEi.exit ], [ %i.ai, %.critedge ]
  ret ptr %.021
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %class.anon.233, align 4            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr %3, align 4, !tbaa !273    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERSA_:bb.a
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext110 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.12.0 to i32
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift111 = shl nuw i32 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext110, 16 ; 2 uses
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext93 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i32
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert95 = or disjoint i32 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift111, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext93
  %i.bg = icmp slt i32 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift111, 0
  %i.bh = zext nneg i32 %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert95 to i64
  br i1 %i.bg, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

bb.r:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift = shl nuw nsw i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext, 16
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext118 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift119 = shl nuw nsw i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext118, 16
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext99 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert101 = or disjoint i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift119, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext99
  %.sroa.010.sroa.0.sroa.12.0.insert.ext77 = zext i32 %.sroa.010.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.12.0.insert.shift78 = shl nuw i64 %.sroa.010.sroa.0.sroa.12.0.insert.ext77, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.12.0.insert.shift78, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert101
  %i.bi = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert68, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext114 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift115 = shl nuw nsw i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext114, 16
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext96 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert98 = or disjoint i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift115, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext96
  %.sroa.010.sroa.0.sroa.12.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.12.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.12.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.12.0.insert.shift, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert98
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext126 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift127 = shl nuw nsw i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext126, 16
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext105 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert107 = or disjoint i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift127, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext105
  %.sroa.010.sroa.0.sroa.12.0.insert.ext85 = zext i32 %.sroa.010.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.12.0.insert.shift86 = shl nuw i64 %.sroa.010.sroa.0.sroa.12.0.insert.ext85, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.insert74 = or disjoint i64 %.sroa.010.sroa.0.sroa.12.0.insert.shift86, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert107
  %.not152 = icmp sgt i64 %.sroa.010.sroa.12.0, -1
  br i1 %.not152, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext122 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift123 = shl nuw nsw i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.ext122, 16
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext102 = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert104 = or disjoint i64 %.sroa.010.sroa.0.sroa.0.sroa.12.0.insert.shift123, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.ext102
  %.sroa.010.sroa.0.sroa.12.0.insert.ext81 = zext i32 %.sroa.010.sroa.0.sroa.12.0 to i64
  %.sroa.010.sroa.0.sroa.12.0.insert.shift82 = shl nuw i64 %.sroa.010.sroa.0.sroa.12.0.insert.ext81, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.12.0.insert.shift82, %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert104
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  %i.bj = zext i16 %.sroa.010.sroa.0.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

bb.y:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDsEEDsE3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert74, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.v ], [ %.sroa.010.sroa.0.sroa.0.sroa.0.0.insert.insert, %bb.r ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bk = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bk, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.378) #30
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43: ; preds = %bb.x, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i45 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bj, %bb.x ], [ %i.bh, %bb.q ]
  %i.bl = trunc nuw nsw i64 %.0.i45 to i32
  store i32 %i.bl, ptr %1, align 4, !tbaa !174
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDsEEDsEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIDsEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler.372", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !311
  %i.b = load i16, ptr %0, align 2, !tbaa !217    ; 3 uses
  %i.c = add i16 %i.b, -48
  %or.cond23 = icmp ult i16 %i.c, 10
  br i1 %or.cond23, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.d = phi i16 [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.027.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ]
  %i.e = mul i32 %.027.i, 10
  %i.f = zext nneg i16 %i.d to i32
  %i.g = add nsw i32 %i.f, -48
  %i.h = add i32 %i.g, %i.e                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 5 uses
  %.not34.i = icmp eq ptr %i.i, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.j = load i16, ptr %i.i, align 2, !tbaa !217  ; 2 uses
  %i.k = add i16 %i.j, -48
  %or.cond.i = icmp ult i16 %i.k, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !57

.critedge.i:                                      ; preds = %bb.b, %.preheader
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp slt i64 %i.n, 20
  br i1 %i.o, label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.p = icmp eq i64 %i.n, 20
  br i1 %i.p, label %bb.d, label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %.027.i to i64
  %i.r = mul nuw nsw i64 %i.q, 10
  %i.s = zext nneg i16 %i.d to i64
  %i.t = add nuw nsw i64 %i.s, 4294967248
  %i.u = and i64 %i.t, 4294967294
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = icmp samesign ugt i64 %i.v, 2147483647
  %i.x = icmp eq i32 %i.h, -1
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit.thread, label %bb.e

_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %i.h, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit.thread, label %bb.e

_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit.thread: ; preds = %bb.d, %bb.c, %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.365) #30
  unreachable

bb.e:                                             ; preds = %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit
  store i32 %i.h, ptr %2, align 4, !tbaa !174
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.y = icmp eq i16 %i.b, 123
  br i1 %i.y, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !217
  switch i16 %i.aa, label %bb.k [
    i16 125, label %bb.i
    i16 58, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !450 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZN3fmt3v1213parse_contextIDsE11next_arg_idEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.367) #30
  unreachable

_ZN3fmt3v1213parse_contextIDsE11next_arg_idEv.exit: ; preds = %bb.i
  %i.ae = add nuw nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !450
  store i32 %i.ac, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !311
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2376
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !2377
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !186
  %i.ah = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIDsNS1_20dynamic_spec_handlerIDsEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.z, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1213parse_contextIDsE11next_arg_idEv.exit, %bb.k
  %.0 = phi ptr [ %i.z, %_ZN3fmt3v1213parse_contextIDsE11next_arg_idEv.exit ], [ %i.ah, %bb.k ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i16, ptr %.0, align 2, !tbaa !217
  %i.aj = icmp eq i16 %i.ai, 125
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !311
  br label %bb.p

bb.o:                                             ; preds = %bb.g, %bb.l, %bb.m, %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.n
  %.sroa.3.0 = phi i32 [ 0, %bb.e ], [ %.sroa.3.0.pre, %bb.n ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.e ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIDsNS1_20dynamic_spec_handlerIDsEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !217    ; 5 uses
  %i.b = add i16 %i.a, -48
  %or.cond = icmp ult i16 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i16 %i.a, 48
  br i1 %.not28, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.c = phi i16 [ %i.i, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.027.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %0, %bb.b ]
  %i.d = mul i32 %.027.i, 10
  %i.e = zext nneg i16 %i.c to i32
  %i.f = add nsw i32 %i.e, -48
  %i.g = add i32 %i.f, %i.d                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 7 uses
  %.not34.i = icmp eq ptr %i.h, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.i = load i16, ptr %i.h, align 2, !tbaa !217  ; 2 uses
  %i.j = add i16 %i.i, -48
  %or.cond.i = icmp ult i16 %i.j, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !57

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 20
  br i1 %i.n, label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.o = icmp eq i64 %i.m, 20
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext i32 %.027.i to i64
  %i.q = mul nuw nsw i64 %i.p, 10
  %i.r = zext nneg i16 %i.c to i64
  %i.s = add nuw nsw i64 %i.r, 4294967248
  %i.t = and i64 %i.s, 4294967294
  %i.u = add nuw nsw i64 %i.t, %i.q
  %i.v = icmp samesign ult i64 %i.u, 2147483648
  br i1 %i.v, label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit: ; preds = %bb.f, %bb.e, %.critedge.i, %bb.g
  %.037 = phi ptr [ %i.w, %bb.g ], [ %i.h, %.critedge.i ], [ %i.h, %bb.e ], [ %i.h, %bb.f ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.g ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ], [ 2147483647, %bb.f ]
  %i.x = icmp eq ptr %.037, %1
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit
  %i.y = load i16, ptr %.037, align 2, !tbaa !217
  switch i16 %i.y, label %bb.i [
    i16 125, label %bb.j
    i16 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail21parse_nonnegative_intIDsEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2380, !nonnull !170, !align !314
  store i32 %.021, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2381, !nonnull !170, !align !315
  store i32 1, ptr %i.ac, align 4, !tbaa !311
  %i.ad = load ptr, ptr %2, align 8, !tbaa !2382, !nonnull !170, !align !314
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !450
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %_ZN3fmt3v126detail20dynamic_spec_handlerIDsE8on_indexEi.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.368) #30
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIDsE8on_indexEi.exit: ; preds = %bb.j
  store i32 -1, ptr %i.ae, align 8, !tbaa !450
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ah = and i16 %i.a, -33
  %i.ai = add i16 %i.ah, -65
  %or.cond10.i = icmp ult i16 %i.ai, 26
  %i.aj = icmp eq i16 %i.a, 95
  %i.ak = or i1 %i.aj, %or.cond10.i
  br i1 %i.ak, label %.critedge4, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

.critedge4:                                       ; preds = %bb.l, %bb.n
  %.0 = phi ptr [ %i.al, %bb.n ], [ %0, %bb.l ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 5 uses
  %.not = icmp eq ptr %i.al, %1
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !217 ; 3 uses
  %i.an = and i16 %i.am, -33
  %i.ao = add i16 %i.an, -65
  %or.cond10.i32 = icmp ult i16 %i.ao, 26
  %i.ap = icmp eq i16 %i.am, 95
  %i.aq = or i1 %i.ap, %or.cond10.i32
  %i.ar = add i16 %i.am, -48
  %or.cond31 = icmp ult i16 %i.ar, 10
  %or.cond38 = or i1 %or.cond31, %i.aq
  br i1 %or.cond38, label %.critedge4, label %.critedge, !llvm.loop !2378

.critedge:                                        ; preds = %bb.n, %.critedge4
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = ptrtoint ptr %0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2380, !nonnull !170, !align !314 ; 2 uses
  store ptr %0, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2381, !nonnull !170, !align !315
  store i32 2, ptr %i.az, align 4, !tbaa !311
  %i.ba = load ptr, ptr %2, align 8, !tbaa !2382, !nonnull !170, !align !314
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 -1, ptr %i.bb, align 8, !tbaa !450
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIDsE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIDsE8on_indexEi.exit ], [ %i.al, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIDsNS0_14basic_appenderIDsEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %class.anon.339, align 2            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr %3, align 4, !tbaa !273    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail19handle_dynamic_specINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERSA_:bb.a
  %.sink110 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.040.ph = phi i32 [ %i.p, %bb.g ], [ %i.bb, %bb.p ]
  %i.bc = zext nneg i32 %.sink to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sink110, i64 %i.bc
  %.sroa.011.0.copyload26 = load i128, ptr %i.bd, align 16, !tbaa !134 ; 3 uses
  %.sroa.011.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.011.0.copyload26 to i32
  %.sroa.011.sroa.0.sroa.12.0.extract.shift105 = lshr i128 %.sroa.011.0.copyload26, 32
  %.sroa.011.sroa.0.sroa.12.0.extract.trunc = trunc i128 %.sroa.011.sroa.0.sroa.12.0.extract.shift105 to i32
  %.sroa.011.sroa.12.0.extract.shift = lshr i128 %.sroa.011.0.copyload26, 64
  %.sroa.011.sroa.12.0.extract.trunc = trunc nuw i128 %.sroa.011.sroa.12.0.extract.shift to i64
  br label %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38

_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38: ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38.sink.split, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit
  %.sroa.011.sroa.0.sroa.12.0 = phi i32 [ %.sroa.011.sroa.0.sroa.12.0.extract.trunc90, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit ], [ %.sroa.011.sroa.0.sroa.12.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38.sink.split ] ; 4 uses
  %.sroa.011.sroa.0.sroa.0.0 = phi i32 [ %.sroa.011.sroa.0.sroa.0.0.extract.trunc74, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit ], [ %.sroa.011.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38.sink.split ] ; 8 uses
  %.sroa.011.sroa.12.0 = phi i64 [ %.sroa.011.sroa.12.0.extract.trunc63, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit ], [ %.sroa.011.sroa.12.0.extract.trunc, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38.sink.split ]
  %.sroa.23.040 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit ], [ %.sroa.23.040.ph, %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38.sink.split ]
  switch i32 %.sroa.23.040, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %i.be = icmp slt i32 %.sroa.011.sroa.0.sroa.0.0, 0
  %i.bf = zext nneg i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br i1 %i.be, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

bb.r:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %i.bg = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.12.0.insert.ext75 = zext i32 %.sroa.011.sroa.0.sroa.12.0 to i64
  %.sroa.011.sroa.0.sroa.12.0.insert.shift76 = shl nuw i64 %.sroa.011.sroa.0.sroa.12.0.insert.ext75, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext64 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert66 = or disjoint i64 %.sroa.011.sroa.0.sroa.12.0.insert.shift76, %.sroa.011.sroa.0.sroa.0.0.insert.ext64
  %i.bh = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.011.sroa.0.sroa.0.0.insert.insert66, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.12.0.insert.ext = zext i32 %.sroa.011.sroa.0.sroa.12.0 to i64
  %.sroa.011.sroa.0.sroa.12.0.insert.shift = shl nuw i64 %.sroa.011.sroa.0.sroa.12.0.insert.ext, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.011.sroa.0.sroa.12.0.insert.shift, %.sroa.011.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.12.0.insert.ext83 = zext i32 %.sroa.011.sroa.0.sroa.12.0 to i64
  %.sroa.011.sroa.0.sroa.12.0.insert.shift84 = shl nuw i64 %.sroa.011.sroa.0.sroa.12.0.insert.ext83, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext70 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert72 = or disjoint i64 %.sroa.011.sroa.0.sroa.12.0.insert.shift84, %.sroa.011.sroa.0.sroa.0.0.insert.ext70
  %.not106 = icmp sgt i64 %.sroa.011.sroa.12.0, -1
  br i1 %.not106, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %.sroa.011.sroa.0.sroa.12.0.insert.ext79 = zext i32 %.sroa.011.sroa.0.sroa.12.0 to i64
  %.sroa.011.sroa.0.sroa.12.0.insert.shift80 = shl nuw i64 %.sroa.011.sroa.0.sroa.12.0.insert.ext79, 32
  %.sroa.011.sroa.0.sroa.0.0.insert.ext67 = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  %.sroa.011.sroa.0.sroa.0.0.insert.insert69 = or disjoint i64 %.sroa.011.sroa.0.sroa.12.0.insert.shift80, %.sroa.011.sroa.0.sroa.0.0.insert.ext67
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  %i.bi = zext i32 %.sroa.011.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.y:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v1215generic_contextINS0_14basic_appenderIDiEEDiE3argEi.exit.thread38
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.379) #30
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v, %bb.x
  %.0.i = phi i64 [ %.sroa.011.sroa.0.sroa.0.0.insert.insert72, %bb.u ], [ %.sroa.011.sroa.0.sroa.0.0.insert.insert69, %bb.v ], [ %i.bi, %bb.x ], [ %i.bg, %bb.r ], [ %i.bh, %bb.s ], [ %.sroa.011.sroa.0.sroa.0.0.insert.insert, %bb.t ] ; 2 uses
  %i.bj = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bj, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.378) #30
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i45 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.bf, %bb.q ]
  %i.bk = trunc nuw nsw i64 %.0.i45 to i32
  store i32 %i.bk, ptr %1, align 4, !tbaa !174
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_15generic_contextINS0_14basic_appenderIDiEEDiEEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIDiEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler.445", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !311
  %i.b = load i32, ptr %0, align 4, !tbaa !229    ; 3 uses
  %i.c = add i32 %i.b, -48
  %or.cond22 = icmp ult i32 %i.c, 10
  br i1 %or.cond22, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  %.027.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ]
  %i.e = mul i32 %.027.i, 10
  %i.f = add nsw i32 %i.d, -48                    ; 2 uses
  %i.g = add i32 %i.e, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 5 uses
  %.not34.i = icmp eq ptr %i.h, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = load i32, ptr %i.h, align 4, !tbaa !229  ; 2 uses
  %i.j = add i32 %i.i, -48
  %or.cond.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !79

.critedge.i:                                      ; preds = %bb.b, %.preheader
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 40
  br i1 %i.n, label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.o = icmp eq i64 %i.m, 40
  br i1 %i.o, label %bb.d, label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %.027.i to i64
  %i.q = mul nuw nsw i64 %i.p, 10
  %i.r = zext nneg i32 %i.f to i64
  %i.s = add nuw nsw i64 %i.q, %i.r
  %i.t = icmp samesign ugt i64 %i.s, 2147483647
  %i.u = icmp eq i32 %i.g, -1
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit.thread, label %bb.e

_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %i.g, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit.thread, label %bb.e

_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit.thread: ; preds = %bb.d, %bb.c, %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.365) #30
  unreachable

bb.e:                                             ; preds = %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit
  store i32 %i.g, ptr %2, align 4, !tbaa !174
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %i.b, 123
  br i1 %i.v, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.w, align 4, !tbaa !229
  switch i32 %i.x, label %bb.k [
    i32 125, label %bb.i
    i32 58, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !524  ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_ZN3fmt3v1213parse_contextIDiE11next_arg_idEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.367) #30
  unreachable

_ZN3fmt3v1213parse_contextIDiE11next_arg_idEv.exit: ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !524
  store i32 %i.z, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !311
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2707
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ac, align 8, !tbaa !2708
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.ad, align 8, !tbaa !186
  %i.ae = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIDiNS1_20dynamic_spec_handlerIDiEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.w, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1213parse_contextIDiE11next_arg_idEv.exit, %bb.k
  %.0 = phi ptr [ %i.w, %_ZN3fmt3v1213parse_contextIDiE11next_arg_idEv.exit ], [ %i.ae, %bb.k ] ; 3 uses
  %.not21 = icmp eq ptr %.0, %1
  br i1 %.not21, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %.0, align 4, !tbaa !229
  %i.ag = icmp eq i32 %i.af, 125
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !311
  br label %bb.p

bb.o:                                             ; preds = %bb.g, %bb.l, %bb.m, %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.n
  %.sroa.3.0 = phi i32 [ 0, %bb.e ], [ %.sroa.3.0.pre, %bb.n ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ %i.ah, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIDiNS1_20dynamic_spec_handlerIDiEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !229    ; 5 uses
  %i.b = add i32 %i.a, -48
  %or.cond = icmp ult i32 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq i32 %i.a, 48
  br i1 %.not27, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.c = phi i32 [ %i.h, %bb.c ], [ %i.a, %bb.b ]
  %.027.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]
  %i.d = mul i32 %.027.i, 10
  %i.e = add nsw i32 %i.c, -48                    ; 2 uses
  %i.f = add i32 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 7 uses
  %.not34.i = icmp eq ptr %i.g, %1
  br i1 %.not34.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.h = load i32, ptr %i.g, align 4, !tbaa !229  ; 2 uses
  %i.i = add i32 %i.h, -48
  %or.cond.i = icmp ult i32 %i.i, 10
  br i1 %or.cond.i, label %.preheader, label %.critedge.i, !llvm.loop !79

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 40
  br i1 %i.m, label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.n = icmp eq i64 %i.l, 40
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %.027.i to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = zext nneg i32 %i.e to i64
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = icmp samesign ult i64 %i.r, 2147483648
  br i1 %i.s, label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit: ; preds = %bb.f, %bb.e, %.critedge.i, %bb.g
  %.036 = phi ptr [ %i.t, %bb.g ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ], [ %i.g, %bb.f ] ; 3 uses
  %.020 = phi i32 [ 0, %bb.g ], [ %i.f, %.critedge.i ], [ %i.f, %bb.e ], [ 2147483647, %bb.f ]
  %i.u = icmp eq ptr %.036, %1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit
  %i.v = load i32, ptr %.036, align 4, !tbaa !229
  switch i32 %i.v, label %bb.i [
    i32 125, label %bb.j
    i32 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail21parse_nonnegative_intIDiEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2711, !nonnull !170, !align !314
  store i32 %.020, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2712, !nonnull !170, !align !315
  store i32 1, ptr %i.z, align 4, !tbaa !311
  %i.aa = load ptr, ptr %2, align 8, !tbaa !2713, !nonnull !170, !align !314
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !524
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %_ZN3fmt3v126detail20dynamic_spec_handlerIDiE8on_indexEi.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.368) #30
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIDiE8on_indexEi.exit: ; preds = %bb.j
  store i32 -1, ptr %i.ab, align 8, !tbaa !524
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ae = and i32 %i.a, -33
  %i.af = add i32 %i.ae, -65
  %or.cond8.i = icmp ult i32 %i.af, 26
  %i.ag = icmp eq i32 %i.a, 95
  %i.ah = or i1 %i.ag, %or.cond8.i
  br i1 %i.ah, label %.critedge3, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.366) #30
  unreachable

.critedge3:                                       ; preds = %bb.l, %bb.n
  %.0 = phi ptr [ %i.ai, %bb.n ], [ %0, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 5 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge3
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !229 ; 3 uses
  %i.ak = and i32 %i.aj, -33
  %i.al = add i32 %i.ak, -65
  %or.cond8.i31 = icmp ult i32 %i.al, 26
  %i.am = icmp eq i32 %i.aj, 95
  %i.an = or i1 %i.am, %or.cond8.i31
  %i.ao = add i32 %i.aj, -48
  %or.cond30 = icmp ult i32 %i.ao, 10
  %or.cond37 = or i1 %or.cond30, %i.an
  br i1 %or.cond37, label %.critedge3, label %.critedge, !llvm.loop !2709

.critedge:                                        ; preds = %bb.n, %.critedge3
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2711, !nonnull !170, !align !314 ; 2 uses
  store ptr %0, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2712, !nonnull !170, !align !315
  store i32 2, ptr %i.aw, align 4, !tbaa !311
  %i.ax = load ptr, ptr %2, align 8, !tbaa !2713, !nonnull !170, !align !314
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 -1, ptr %i.ay, align 8, !tbaa !524
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIDiE8on_indexEi.exit
  %.021 = phi ptr [ %.036, %_ZN3fmt3v126detail20dynamic_spec_handlerIDiE8on_indexEi.exit ], [ %i.ai, %.critedge ]
  ret ptr %.021
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIDiNS0_14basic_appenderIDiEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %class.anon.414, align 4            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr %3, align 4, !tbaa !273    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
end_hunk_3
begin_hunk_4_@_ZN7testing8internal18CmpHelperEQFailureIA10_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3353
  store ptr %3, ptr %i.a, align 8, !tbaa !178, !noalias !3354
  call void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3353
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA12_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA12_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA12_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !134
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.g = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !134
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA12_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !134
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.s = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !134
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3361
  store ptr %3, ptr %i.a, align 8, !tbaa !178, !noalias !3362
  call void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3361
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !134
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.g = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !134
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !134
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.s = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !134
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_15generic_contextINS0_14basic_appenderIwEEwEEE13format_customINS0_7weekdayEEEvPvRNS0_13parse_contextIwEERS6_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter.574", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !273
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !134
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIwJLw37ELw70ELw32ELw37ELw84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !203    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !204  ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.i, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.g, align 4, !tbaa !192
  %i.l = icmp eq i32 %i.k, 76
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 49152, ptr %3, align 8, !tbaa !273
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %.not13.i = icmp eq ptr %.0.i, %i.j
  br i1 %.not13.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %.0.i, align 4, !tbaa !192
  %i.o = icmp ne i32 %i.n, 125                    ; 2 uses
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.f, align 8, !tbaa !673
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v129formatterINS0_7weekdayEwvE5parseERNS0_13parse_contextIwEE.exit

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZN3fmt3v129formatterI2tmwvE8do_parseERNS0_13parse_contextIwEEb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %1, align 8, !tbaa !203
  %.pre7 = load i64, ptr %i.h, align 8, !tbaa !204
  br label %_ZN3fmt3v129formatterINS0_7weekdayEwvE5parseERNS0_13parse_contextIwEE.exit

.critedge.i:                                      ; preds = %bb.d, %bb.a
  %.016.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.a ]
  store i8 0, ptr %i.f, align 8, !tbaa !673
  br label %_ZN3fmt3v129formatterINS0_7weekdayEwvE5parseERNS0_13parse_contextIwEE.exit

_ZN3fmt3v129formatterINS0_7weekdayEwvE5parseERNS0_13parse_contextIwEE.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  %i.r = phi i64 [ %.pre7, %bb.f ], [ %i.i, %.critedge.i ], [ %i.i, %bb.e ]
  %i.s = phi ptr [ %.pre, %bb.f ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.q, %bb.f ], [ %.016.i, %.critedge.i ], [ %.0.i, %bb.e ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  store ptr %i.y, ptr %1, align 8, !tbaa !203
  %i.z = sub i64 %i.r, %i.x
  store i64 %i.z, ptr %i.h, align 8, !tbaa !204
  %.sroa.0.0.copyload = load i8, ptr %0, align 1, !tbaa !134
  %i.aa = call ptr @_ZNK3fmt3v129formatterINS0_7weekdayEwvE6formatINS0_15generic_contextINS0_14basic_appenderIwEEwEEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %3, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v129formatterINS0_7weekdayEwvE6formatINS0_15generic_contextINS0_14basic_appenderIwEEwEEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::locale_ref", align 8 ; 4 uses
  %4 = alloca %struct.tm, align 8                 ; 7 uses
  %5 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.a, ptr %i.b, align 8, !tbaa !617
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !673, !range !169, !noundef !170
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZNK3fmt3v129formatterI2tmwvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_15generic_contextINS0_14basic_appenderIwEEwEEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.g = load i32, ptr %0, align 8, !tbaa !273
  %i.h = and i32 %i.g, 16384                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %.lobit = lshr exact i32 %i.h, 14
  %i.j = trunc nuw nsw i32 %.lobit to i8          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.j, ptr %i.k, align 8, !tbaa !605
  br i1 %.not, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre = load i8, ptr %i.k, align 8, !tbaa !605, !range !169
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.c, %bb.d
  %i.l = phi i8 [ %i.j, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !606

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #29
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !608
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #29
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #29
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.h, %bb.f, %bb.e
  %i.s = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !608, !nonnull !170, !align !314
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.t = phi ptr [ %i.s, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i7 = load ptr, ptr %2, align 8, !tbaa !183 ; 3 uses
  %i.u = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.n, !prof !606

bb.j:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #29
  %.not.i.i9 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i9, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.x, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !608
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #29
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #29
  br label %.body

bb.n:                                             ; preds = %bb.l, %bb.j, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.z = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !608, !nonnull !170, !align !314
  %i.aa = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #29
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !617 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ab, 7
  br i1 %or.cond.i.i, label %_ZN3fmt3v126detail18tm_wday_short_nameEi.exit.i, label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIwEEEET0_S5_PKT_.exit.i

_ZN3fmt3v126detail18tm_wday_short_nameEi.exit.i:  ; preds = %bb.o
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail18tm_wday_short_nameEiE15short_name_list, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !266
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIwEEEET0_S5_PKT_.exit.i

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIwEEEET0_S5_PKT_.exit.i: ; preds = %_ZN3fmt3v126detail18tm_wday_short_nameEi.exit.i, %bb.o
  %i.af = phi ptr [ %i.ae, %_ZN3fmt3v126detail18tm_wday_short_nameEi.exit.i ], [ @.str.433, %bb.o ] ; 3 uses
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIwEEEET1_T0_S8_S7_(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr %.sroa.0.0.copyload.i7)
          to label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv.exit unwind label %bb.r

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN3fmt3v126detail8do_writeIwEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i7, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext 97, i8 noundef signext 0)
          to label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv.exit unwind label %bb.r

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv.exit: ; preds = %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIwEEEET0_S5_PKT_.exit.i, %bb.p
  %.sroa.0.0.copyload.sink.i = phi ptr [ %i.ai, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIwEEEET0_S5_PKT_.exit.i ], [ %.sroa.0.0.copyload.i7, %bb.p ]
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !605, !range !169, !noundef !170
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.q, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.q:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #29
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIwEEwNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIwEEEET0_S5_PKT_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.al, %bb.r ], [ %i.y, %bb.m ]
  %i.am = load i8, ptr %i.k, align 8, !tbaa !605, !range !169, !noundef !170
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.s, label %_ZN3fmt3v126detail10get_localeD2Ev.exit15

bb.s:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #29
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit15

_ZN3fmt3v126detail10get_localeD2Ev.exit15:        ; preds = %.body, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %eh.lpad-body

bb.t:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.b
  %.sroa.06.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.sink.i, %_ZN3fmt3v126detail10get_localeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS8_EEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.382, i32 noundef 6368)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.488, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
end_hunk_4
