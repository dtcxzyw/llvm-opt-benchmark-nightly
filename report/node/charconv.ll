inline.NumInlined: 255
inline.NumDeleted: 101
begin_hunk_0_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.049.i = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ] ; 20 uses
  %.0.i = phi ptr [ %0, %bb.a ], [ %spec.select55.i, %bb.b ] ; 6 uses
  %i.e = and i32 %3, 4
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a

bb.s:                                             ; preds = %bb.q
  %i.bl = trunc i64 %spec.select.i12.i.i to i32   ; 3 uses
  %7 = select i1 %.049.i, i32 -2147483648, i32 0  ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, 8388607
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = shl i32 %spec.select9.i.i.i, 23
  %8 = or disjoint i32 %7, 1258291200
  %i.bo = add i32 %8, %i.bn
  %i.bp = and i32 %i.bl, 8388607
  br label %_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bq = icmp eq i32 %spec.select10.i.i.i, -149
  br i1 %i.bq, label %_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i.i, label %bb.v

end_hunk_1
begin_hunk_2_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a
  unreachable

_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i.i: ; preds = %bb.u, %bb.t
  %.07.i.i.i = phi i32 [ %i.bo, %bb.t ], [ %7, %bb.u ]
  %.0.i.i.i = phi i32 [ %i.bp, %bb.t ], [ %i.bl, %bb.u ]
  %i.br = add i32 %.0.i.i.i, %.07.i.i.i
  store i32 %i.br, ptr %2, align 4
end_hunk_2
begin_hunk_3_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a

bb.as:                                            ; preds = %bb.aq
  %i.ea = trunc i64 %spec.select.i12.i79.i to i32 ; 3 uses
  %9 = select i1 %.049.i, i32 -2147483648, i32 0  ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, 8388607
  br i1 %i.eb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ec = shl i32 %spec.select9.i.i80.i, 23
  %10 = or disjoint i32 %9, 1258291200
  %i.ed = add i32 %10, %i.ec
  %i.ee = and i32 %i.ea, 8388607
  br label %_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i89.i

bb.au:                                            ; preds = %bb.as
  %i.ef = icmp eq i32 %spec.select10.i.i81.i, -149
  br i1 %i.ef, label %_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i89.i, label %bb.av

end_hunk_3
begin_hunk_4_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a
  unreachable

_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i89.i: ; preds = %bb.au, %bb.at
  %.07.i.i90.i = phi i32 [ %i.ed, %bb.at ], [ %9, %bb.au ]
  %.0.i.i91.i = phi i32 [ %i.ee, %bb.at ], [ %i.ea, %bb.au ]
  %i.eg = add i32 %.0.i.i91.i, %.07.i.i90.i
  store i32 %i.eg, ptr %2, align 4
end_hunk_4
begin_hunk_5_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a

bb.cm:                                            ; preds = %bb.ck
  %i.lk = trunc i64 %.fca.0.extract.i to i32      ; 3 uses
  %11 = select i1 %.049.i, i32 -2147483648, i32 0 ; 2 uses
  %i.ll = icmp ugt i32 %i.lk, 8388607
  br i1 %i.ll, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.lm = shl i32 %.fca.1.extract.i, 23
  %12 = or disjoint i32 %11, 1258291200
  %i.ln = add i32 %12, %i.lm
  %i.lo = and i32 %i.lk, 8388607
  br label %_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i113.i

bb.co:                                            ; preds = %bb.cm
  %i.lp = icmp eq i32 %.fca.1.extract.i, -149
  br i1 %i.lp, label %_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i113.i, label %bb.cp

end_hunk_5
begin_hunk_6_@_ZN4absl10from_charsEPKcS1_RfNS_12chars_formatE:bb.a
  unreachable

_ZN4absl12_GLOBAL__N_111FloatTraitsIfE4MakeEjib.exit.i113.i: ; preds = %bb.co, %bb.cn
  %.07.i.i114.i = phi i32 [ %i.ln, %bb.cn ], [ %11, %bb.co ]
  %.0.i.i115.i = phi i32 [ %i.lo, %bb.cn ], [ %i.lk, %bb.co ]
  %i.lq = add i32 %.0.i.i115.i, %.07.i.i114.i
  store i32 %i.lq, ptr %2, align 4
end_hunk_6
begin_hunk_7_@_ZN4absl12_GLOBAL__N_111MustRoundUpEmiRKNS_16strings_internal11ParsedFloatE:bb.a
bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl16strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340) %3, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %.not.i = icmp ult i64 %i.c, 4294967296
  %i.g = select i1 %.not.i, i32 1, i32 2          ; 3 uses
  store i32 %i.g, ptr %4, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
end_hunk_7
begin_hunk_8_@_ZN4absl12_GLOBAL__N_111MustRoundUpEmiRKNS_16strings_internal11ParsedFloatE:bb.a
  br i1 %i.bi, label %_ZN4absl16strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, label %bb.p

_ZN4absl16strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51: ; preds = %bb.o
  %6 = shl nuw nsw i32 %i.g, 2
  %.idx.i.i.i.i50 = zext nneg i32 %6 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 0, i64 %.idx.i.i.i.i50, i1 false)
  store i32 0, ptr %4, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

end_hunk_8
