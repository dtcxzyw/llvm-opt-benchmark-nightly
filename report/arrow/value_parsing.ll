inline.NumInlined: 865
inline.NumDeleted: 342
begin_hunk_0_@_ZN14arrow_vendored10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE:bb.a

bb.i:                                             ; preds = %.lr.ph.i46.2
  %i.an = icmp samesign ugt i64 %i.h, 7
  br i1 %i.an, label %.lr.ph.i52, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = and i8 %i.ap, -33
  %.not.i54 = icmp eq i8 %i.aq, 73
  br i1 %.not.i54, label %.lr.ph.i52.1, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.1:                                     ; preds = %.lr.ph.i52
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = and i8 %i.as, -33
  %.not.i54.1 = icmp eq i8 %i.at, 78
  br i1 %.not.i54.1, label %.lr.ph.i52.2, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.2:                                     ; preds = %.lr.ph.i52.1
  %i.au = getelementptr inbounds nuw i8, ptr %.035, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aw = and i8 %i.av, -33
  %.not.i54.2 = icmp eq i8 %i.aw, 73
  br i1 %.not.i54.2, label %.lr.ph.i52.3, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.3:                                     ; preds = %.lr.ph.i52.2
  %i.ax = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = and i8 %i.ay, -33
  %.not.i54.3 = icmp eq i8 %i.az, 84
  br i1 %.not.i54.3, label %.lr.ph.i52.4, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.4:                                     ; preds = %.lr.ph.i52.3
  %i.ba = getelementptr inbounds nuw i8, ptr %.035, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = and i8 %i.bb, -33
  %.not.i54.4 = icmp eq i8 %i.bc, 89
  br i1 %.not.i54.4, label %bb.j, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57: ; preds = %.lr.ph.i52, %.lr.ph.i52.1, %.lr.ph.i52.2, %.lr.ph.i52.3, %.lr.ph.i52.4, %bb.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i52.4, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57
  %.sink = phi i64 [ 3, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57 ], [ 8, %.lr.ph.i52.4 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.035, i64 %.sink
  %i.be = select i1 %i.b, float 0xFFF0000000000000, float 0x7FF0000000000000
  store float %i.be, ptr %2, align 4, !tbaa !7
  br label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE:bb.a

bb.i:                                             ; preds = %.lr.ph.i46.2
  %i.an = icmp samesign ugt i64 %i.h, 7
  br i1 %i.an, label %.lr.ph.i52, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = and i8 %i.ap, -33
  %.not.i54 = icmp eq i8 %i.aq, 73
  br i1 %.not.i54, label %.lr.ph.i52.1, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.1:                                     ; preds = %.lr.ph.i52
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = and i8 %i.as, -33
  %.not.i54.1 = icmp eq i8 %i.at, 78
  br i1 %.not.i54.1, label %.lr.ph.i52.2, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.2:                                     ; preds = %.lr.ph.i52.1
  %i.au = getelementptr inbounds nuw i8, ptr %.035, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aw = and i8 %i.av, -33
  %.not.i54.2 = icmp eq i8 %i.aw, 73
  br i1 %.not.i54.2, label %.lr.ph.i52.3, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.3:                                     ; preds = %.lr.ph.i52.2
  %i.ax = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = and i8 %i.ay, -33
  %.not.i54.3 = icmp eq i8 %i.az, 84
  br i1 %.not.i54.3, label %.lr.ph.i52.4, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.4:                                     ; preds = %.lr.ph.i52.3
  %i.ba = getelementptr inbounds nuw i8, ptr %.035, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = and i8 %i.bb, -33
  %.not.i54.4 = icmp eq i8 %i.bc, 89
  br i1 %.not.i54.4, label %bb.j, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57: ; preds = %.lr.ph.i52, %.lr.ph.i52.1, %.lr.ph.i52.2, %.lr.ph.i52.3, %.lr.ph.i52.4, %bb.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i52.4, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57
  %.sink = phi i64 [ 3, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57 ], [ 8, %.lr.ph.i52.4 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.035, i64 %.sink
  %i.be = select i1 %i.b, double 0xFFF0000000000000, double 0x7FF0000000000000
  store double %i.be, ptr %2, align 8, !tbaa !127
  br label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51
end_hunk_1
