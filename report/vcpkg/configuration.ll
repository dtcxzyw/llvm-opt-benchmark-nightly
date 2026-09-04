Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/configuration?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1084
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.65) #25
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = icmp eq i8 %i.el, 123
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #25
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ey = load i8, ptr %i.et, align 1, !tbaa !44
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
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.65) #25
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !152
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !152
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !44
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !44
  store i8 0, ptr %i.t, align 1, !tbaa !44
  store i8 0, ptr %i.u, align 2, !tbaa !44
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !44
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !44
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !44
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !44
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !44
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !44
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !44
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !152
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v126detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !44
  br label %bb.d, !llvm.loop !434

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !152
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !159
  %i.b = load i8, ptr %0, align 1, !tbaa !44      ; 3 uses
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
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !44    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !11

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !11

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
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !44
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
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.67) #25
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !59
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !161 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.69) #25
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !161
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !159
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %4, ptr %5, align 8, !tbaa !435
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !436
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !437
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l
  %.0 = phi ptr [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !44
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !159
  br label %bb.q

bb.p:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #25
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !44      ; 5 uses
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
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !11

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !44    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !11

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !11

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
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !44
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
  %i.ai = load i8, ptr %.037, align 1, !tbaa !44
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #25
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !440, !nonnull !33, !align !124
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !441, !nonnull !33, !align !442
  store i32 1, ptr %i.am, align 4, !tbaa !159
  %i.an = load ptr, ptr %2, align 8, !tbaa !443, !nonnull !33, !align !124
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !161
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.70) #25
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !161
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
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.68) #25
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !438

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !44  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !438

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !438

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !440, !nonnull !33, !align !124 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !441, !nonnull !33, !align !442
  store i32 2, ptr %i.bl, align 4, !tbaa !159
  %i.bm = load ptr, ptr %2, align 8, !tbaa !443, !nonnull !33, !align !124
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !161
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 26812128014112720)
  %i.l = select i1 %i.j, i64 26812128014112720, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 344
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN5vcpkg14RegistryConfigC2EOS0_(ptr noundef nonnull align 8 dereferenceable(344) %i.q, ptr noundef nonnull align 8 dereferenceable(344) %2) #22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN5vcpkg14RegistryConfigC2EOS0_(ptr noundef nonnull align 8 dereferenceable(344) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.0911.i.i.i) #22
  tail call void @_ZN5vcpkg14RegistryConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %.0911.i.i.i) #22
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 344 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !526

_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 344 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN5vcpkg14RegistryConfigC2EOS0_(ptr noundef nonnull align 8 dereferenceable(344) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(344) %.0911.i.i.i19) #22
  tail call void @_ZN5vcpkg14RegistryConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %.0911.i.i.i19) #22
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 344 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 344 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !526

_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5vcpkg14RegistryConfigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #24
  br label %_ZNSt12_Vector_baseIN5vcpkg14RegistryConfigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5vcpkg14RegistryConfigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !140
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw [344 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg12msgARegistryE, align 8, !tbaa !51
  tail call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerINS_14RegistryConfigEE10visit_nullERNS0_6ReaderE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.33") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %6 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %7 = alloca %"class.std::vector", align 16      ; 12 uses
  tail call void @_ZNK12_GLOBAL__N_126RegistryConfigDeserializer12visit_objectERN5vcpkg4Json6ReaderERKNS2_6ObjectE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Optional.33") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.b = load i8, ptr %0, align 8, !tbaa !75, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = select i1 %i.c, ptr %i.d, ptr null       ; 4 uses
  %i.f = load i8, ptr %i.d, align 8, !range !32
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.c, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #22
  %i.i = load ptr, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 @_ZN5vcpkgneENS_10StringViewES0_(ptr %i.i, i64 %i.k, ptr nonnull @.str.24, i64 8) #22
  br i1 %i.l, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !129, !range !32, !noundef !33
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN5vcpkg7details15OptionalStorageISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb1EE7emplaceIJEEERS5_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.m, align 8, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !148  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt8_DestroyIN5vcpkg25PackagePatternDeclarationEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN5vcpkg25PackagePatternDeclarationEEvPT_.exit.i.i.i.i.i ], [ %i.q, %bb.d ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyIN5vcpkg25PackagePatternDeclarationEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZSt8_DestroyIN5vcpkg25PackagePatternDeclarationEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5vcpkg25PackagePatternDeclarationEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg25PackagePatternDeclarationEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.d
  %i.af = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.q, %bb.d ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg7details15OptionalStorageISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb1EE7emplaceIJEEERS5_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !150
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #24
  br label %_ZN5vcpkg7details15OptionalStorageISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb1EE7emplaceIJEEERS5_DpOT_.exit

_ZN5vcpkg7details15OptionalStorageISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb1EE7emplaceIJEEERS5_DpOT_.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN5vcpkg25PackagePatternDeclarationES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.m, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN5vcpkg12msgARegistryE, align 8, !tbaa !51, !noalias !536
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %6, i64 %.sroa.0.0.copyload.i)
          to label %_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv.exit unwind label %bb.w

_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv.exit: ; preds = %_ZN5vcpkg7details15OptionalStorageISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb1EE7emplaceIJEEERS5_DpOT_.exit
  invoke void @_ZN5vcpkg4Json6Reader21required_object_fieldISt6vectorINS_25PackagePatternDeclarationESaIS4_EEEEvRKNS_15LocalizedStringERKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISE_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.50, i64 8, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_131PackagePatternArrayDeserializer8instanceE)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv.exit
  %i.am = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !44
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !537
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 328 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !149, !noalias !537 ; 2 uses
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !148, !noalias !537 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 6                 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 288230376151711743
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #25
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %.not = icmp eq ptr %i.as, %i.at
  br i1 %.not, label %"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_.exit", label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bb = ashr exact i64 %i.aw, 1
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #26
          to label %.noexc36 unwind label %bb.k   ; 4 uses

.noexc36:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.bd = load ptr, ptr %7, align 16, !tbaa !70   ; 5 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !71 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc36, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bc, %.noexc36 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bd, %.noexc36 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !48, !alias.scope !538, !noalias !539
  %i.bg = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !539, !noalias !538 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !47, !alias.scope !539, !noalias !538 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !540
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bg, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !538, !noalias !539
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !44, !alias.scope !539, !noalias !538
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !44, !alias.scope !538, !noalias !539
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !47, !alias.scope !539, !noalias !538
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34, %bb.i
  %i.bo = phi i64 [ %i.bk, %bb.i ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !47, !alias.scope !538, !noalias !539
  store ptr %i.bh, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !539, !noalias !538
  store i64 0, ptr %i.bp, align 8, !tbaa !47, !alias.scope !539, !noalias !538
  store i8 0, ptr %i.bh, align 8, !tbaa !44, !alias.scope !539, !noalias !538
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.be
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc36
  %.not.i8.i = icmp eq ptr %i.bd, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.bt = load ptr, ptr %i.az, align 16, !tbaa !73
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bd to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bw) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, %bb.j
  store ptr %i.bc, ptr %7, align 16, !tbaa !70
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !71
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.ax
  store ptr %i.bx, ptr %i.az, align 16, !tbaa !73
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !131, !noalias !537 ; 2 uses
  %.pre39 = load ptr, ptr %i.ar, align 8, !tbaa !131, !noalias !537 ; 2 uses
  %.not6.i = icmp eq ptr %.pre, %.pre39
  br i1 %.not6.i, label %"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %.sroa.01.07.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !537
  %.val.i = load ptr, ptr %.sroa.01.07.i, align 8, !tbaa !43 ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.01.07.i, i64 8
  %.val12.i = load i64, ptr %i.cc, align 8, !tbaa !47 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  store ptr %i.by, ptr %4, align 8, !tbaa !48, !alias.scope !541, !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !542
  store i64 %.val12.i, ptr %i.a, align 8, !tbaa !51, !noalias !542
  %i.cd = icmp ugt i64 %.val12.i, 15
  br i1 %i.cd, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.l
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.s   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ce, ptr %4, align 8, !tbaa !43, !alias.scope !541, !noalias !537
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !542
  store i64 %i.cf, ptr %i.by, align 8, !tbaa !44, !alias.scope !541, !noalias !537
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %bb.l
  %i.cg = phi ptr [ %i.ce, %.noexc.i ], [ %i.by, %bb.l ] ; 2 uses
  switch i64 %.val12.i, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ch = load i8, ptr %.val.i, align 1, !tbaa !44, !noalias !541
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !44
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr readonly align 1 %.val.i, i64 %.val12.i, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !542 ; 2 uses
  store i64 %i.ci, ptr %i.bz, align 8, !tbaa !47, !alias.scope !541, !noalias !537
  %i.cj = load ptr, ptr %4, align 8, !tbaa !43, !alias.scope !541, !noalias !537
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 0, ptr %i.ck, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !542
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !71, !alias.scope !537 ; 7 uses
  %i.cm = load ptr, ptr %i.az, align 16, !tbaa !73, !alias.scope !537
  %.not.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 3 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !48
  %i.co = load ptr, ptr %4, align 8, !tbaa !43, !noalias !537 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.by
  br i1 %i.cp, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

bb.q:                                             ; preds = %bb.p
  %i.cq = load i64, ptr %i.bz, align 8, !tbaa !47, !noalias !537 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.p
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !43
  %i.ct = load i64, ptr %i.by, align 8, !tbaa !44, !noalias !537
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !44
  %.pre.i = load i64, ptr %i.bz, align 8, !tbaa !47, !noalias !537
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22, %bb.q
  %i.cu = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22 ], [ %i.cq, %bb.q ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.cw, ptr %i.ca, align 8, !tbaa !71, !alias.scope !537
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.r:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i unwind label %bb.t

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i: ; preds = %bb.r
  %.pre8.i = load ptr, ptr %4, align 8, !tbaa !43, !noalias !537 ; 2 uses
  %i.cx = icmp eq ptr %.pre8.i, %i.by
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i
  %i.cy = load i64, ptr %i.by, align 8, !tbaa !44, !noalias !537
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %.pre8.i, i64 noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !537
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.da, %.pre39
  br i1 %.not.i, label %"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_.exit", label %bb.l

bb.s:                                             ; preds = %.noexc.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

bb.t:                                             ; preds = %bb.r
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %4, align 8, !tbaa !43, !noalias !537 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.by
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %bb.t
  %i.df = load i64, ptr %i.by, align 8, !tbaa !44, !noalias !537
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.db, %bb.s ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i ], [ %i.dc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !537
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.k
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %i.cb, %bb.k ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.y

"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.h, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 3 uses
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !107, !range !32, !noundef !33
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.u, label %_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7emplaceIJSA_EEERSA_DpOT_.exit

bb.u:                                             ; preds = %"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_.exit"
  store i8 0, ptr %i.dh, align 8, !tbaa !107
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !70 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 2 uses
  %.not4.i.i.i.i.i24 = icmp eq ptr %i.dl, %i.dn
  br i1 %.not4.i.i.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %bb.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i26 = phi ptr [ %i.dt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.dl, %bb.u ] ; 3 uses
  %i.do = load ptr, ptr %.05.i.i.i.i.i26, align 8, !tbaa !43 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i26, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i25
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !44
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i26, i64 32 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.dt, %i.dn
  br i1 %.not.i.i.i.i.i27, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i25, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i28 = load ptr, ptr %i.dk, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.u
  %i.du = phi ptr [ %.pr.i.i.i28, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.dl, %bb.u ] ; 3 uses
  %.not.i.i1.i.i.i29 = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i.i.i29, label %_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7destroyEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !73
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #24
  br label %_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7destroyEv.exit.i

_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7destroyEv.exit.i: ; preds = %bb.v, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  store i8 0, ptr %i.dk, align 8, !tbaa !44
  br label %_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7emplaceIJSA_EEERSA_DpOT_.exit

_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7emplaceIJSA_EEERSA_DpOT_.exit: ; preds = %"_ZN5vcpkg4Util4fmapIRSt6vectorINS_25PackagePatternDeclarationESaIS3_EEZNK12_GLOBAL__N_120RegistryDeserializer12visit_objectERNS_4Json6ReaderERKNS9_6ObjectEE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISH_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISH_EE5beginEEEE4typeESaISP_EEOSH_OSL_.exit", %_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7destroyEv.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.eb = load <2 x ptr>, ptr %7, align 16, !tbaa !68
  store <2 x ptr> %i.eb, ptr %i.ea, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ed = load ptr, ptr %i.az, align 16, !tbaa !73
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !73
  store i8 1, ptr %i.dh, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.aa

bb.w:                                             ; preds = %_ZN5vcpkg7details15OptionalStorageISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb1EE7emplaceIJEEERS5_DpOT_.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit33

bb.x:                                             ; preds = %_ZNK12_GLOBAL__N_120RegistryDeserializer9type_nameEv.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN5vcpkg15LocalizedStringD2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.x
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !44
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit33

_ZN5vcpkg15LocalizedStringD2Ev.exit33:            ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.w ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %i.ef, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.y

bb.y:                                             ; preds = %.body, %_ZN5vcpkg15LocalizedStringD2Ev.exit33
  %.pn20 = phi { ptr, i32 } [ %.pn.pn.i, %.body ], [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit33 ]
  %i.el = load i8, ptr %0, align 8, !tbaa !75, !range !32, !noundef !33
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.z, label %_ZN5vcpkg7details19OptionalStorageDtorINS_14RegistryConfigELb0EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZN5vcpkg14RegistryConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %i.d) #22
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_14RegistryConfigELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINS_14RegistryConfigELb0EED2Ev.exit: ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn20

bb.aa:                                            ; preds = %bb.a, %_ZN5vcpkg7details15OptionalStorageISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb1EE7emplaceIJSA_EEERSA_DpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_120RegistryDeserializer12valid_fieldsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @_ZZNK12_GLOBAL__N_120RegistryDeserializer12valid_fieldsEvE1t, i64 8 }
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5vcpkgneENS_10StringViewES0_(ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg4Json6Reader21required_object_fieldISt6vectorINS_25PackagePatternDeclarationESaIS4_EEEEvRKNS_15LocalizedStringERKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISE_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %i.a = tail call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %3, i64 %4) #22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5vcpkg4Json6Reader12visit_in_keyISt6vectorINS_25PackagePatternDeclarationESaIS4_EEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerISB_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = load ptr, ptr %6, align 8, !tbaa !83
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  invoke void @_ZN5vcpkg4Json6Reader23add_missing_field_errorERKNS_15LocalizedStringENS_10StringViewES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %7, align 8, !tbaa !43     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !44
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !43     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5vcpkg15LocalizedStringD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !44
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit18

_ZN5vcpkg15LocalizedStringD2Ev.exit18:            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg4Json6Reader12visit_in_keyISt6vectorINS_25PackagePatternDeclarationESaIS4_EEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerISB_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.vcpkg::Optional.13", align 8 ; 11 uses
  %7 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i3.i.i, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %i.b, align 8, !tbaa !142
  br label %_ZN5vcpkg4Json6Reader9PathGuardC2ERSt6vectorINS1_15JsonPathElementESaIS4_EENS_10StringViewE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !104  ; 5 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
end_hunk_1
