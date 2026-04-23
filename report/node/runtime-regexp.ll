inline.NumInlined: 3452
inline.NumDeleted: 1065
begin_hunk_0_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.dx = add i64 %i.dw, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = lshr i64 %i.ea, 32
  %i.ec = trunc nuw i64 %i.eb to i32              ; 3 uses
  %i.ed = sdiv i32 %i.ec, 2                       ; 4 uses
  %i.ee = icmp sgt i32 %i.ec, 3
  br i1 %i.ee, label %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_10RegExpDataEEEbNS0_12DirectHandleIT0_EE.exit.i, label %.thread.a

_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_10RegExpDataEEEbNS0_12DirectHandleIT0_EE.exit.i: ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit
  %i.ef = load i64, ptr %.0.i.i, align 8          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load i64, ptr %i.eo, align 8            ; 3 uses
  %i.eq = trunc i64 %i.ep to i1
  br i1 %i.eq, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.thread.a

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit
  %i.er = add nsw i64 %i.ep, -1
end_hunk_1
begin_hunk_2_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.ew = load atomic volatile i16, ptr %i.ev monotonic, align 2
  %i.ex = add i16 %i.ew, -205
  %i.ey = icmp ult i16 %i.ex, 13
  br i1 %i.ey, label %bb.u, label %.thread.a

bb.u:                                             ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ez = load ptr, ptr %i.b, align 8             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.fc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi ptr [ %i.fc, %bb.v ], [ %i.ez, %bb.u ] ; 3 uses
  %i.fd = ptrtoint ptr %.0.i.i.i to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.ff = inttoptr i64 %i.fe to ptr
  store ptr %i.ff, ptr %i.b, align 8
  store i64 %i.ep, ptr %.0.i.i.i, align 8
  br label %.thread.a

.thread.a:                                        ; preds = %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, %bb.w
  %.1134.i234 = phi i1 [ true, %bb.w ], [ false, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit ], [ false, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ false, %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit ]
  %.sroa.070.0233 = phi ptr [ %.0.i.i.i, %bb.w ], [ null, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit ], [ null, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ null, %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit ] ; 3 uses
  %5 = phi i32 [ 3, %bb.w ], [ 2, %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit ], [ 2, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 2, %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit ]
  %6 = icmp ugt i32 %i.ed, 65526
  %i.fg = add nuw nsw i32 %5, %i.ed               ; 2 uses
  %i.fh = icmp ugt i32 %i.fg, 65526
  %i.fi = select i1 %6, i1 true, i1 %i.fh
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread.a
end_hunk_4
