inline.NumInlined: 6127
inline.NumDeleted: 2467
begin_hunk_0_@_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.et = zext nneg i8 %i.er to i64               ; 2 uses
  %6 = sub nuw nsw i64 9223372036854775807, %i.et
  %i.eu = udiv i64 %6, 10
  %i.ev = icmp sgt i64 %i.eo, %i.eu
  br i1 %i.ev, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i, label %bb.ap, !prof !63
end_hunk_0
begin_hunk_1_@_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b:bb.a
bb.bm:                                            ; preds = %bb.bl, %bb.bj, %.lr.ph
  %.128.i.i21 = phi i64 [ %i.ir, %bb.bl ], [ %i.in, %bb.bj ], [ %i.hr, %.lr.ph ] ; 3 uses
  %i.ja = zext i8 %.0.i.i20 to i64                ; 2 uses
  %7 = sub nuw nsw i64 9223372036854775807, %i.ja
  %8 = lshr i64 %7, 4
  %.not41.i.i = icmp sgt i64 %i.il, %8
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_1
begin_hunk_2_@_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.md = zext nneg i8 %i.mb to i64               ; 2 uses
  %9 = sub nuw nsw i64 9223372036854775807, %i.md
  %i.me = udiv i64 %9, 10
  %i.mf = icmp sgt i64 %i.ly, %i.me
  br i1 %i.mf, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i, label %bb.cb, !prof !63
end_hunk_2
begin_hunk_3_@_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b:bb.a
bb.cn:                                            ; preds = %.lr.ph.i80.i
  %i.nr = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.ns = zext nneg i8 %i.ln to i64               ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.ns
  %i.nt = udiv i64 %10, 10
  %.not.i86.i = icmp sgt i64 %i.lk, %i.nt
  br i1 %.not.i86.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.co, !prof !63
end_hunk_3
begin_hunk_4_@_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b:bb.a
bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.128.i.i = phi i64 [ %i.bj, %bb.r ], [ %i.bf, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bs = sext i16 %i.au to i32
  %6 = zext i8 %.0.i.i to i32
  %.lhs.trunc.i.i44.i = sub nuw nsw i32 32767, %6
  %.zext.i.i45.i = lshr i32 %.lhs.trunc.i.i44.i, 4
  %.not40.i.i = icmp slt i32 %.zext.i.i45.i, %i.bs
  br i1 %.not40.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_4
begin_hunk_5_@_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b:bb.a
bb.ae:                                            ; preds = %.lr.ph.i55.i
  %i.dk = add nuw i64 %.065100.i.i, 1             ; 3 uses
  %i.dl = zext nneg i8 %i.ct to i16               ; 2 uses
  %.lhs.trunc.i.i59.i = sub nuw nsw i16 32767, %i.dl
  %i.dm = udiv i16 %.lhs.trunc.i.i59.i, 10
  %.not.i60.i = icmp slt i16 %i.dm, %.sroa.0.1
  br i1 %.not.i60.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43, label %bb.af, !prof !63
end_hunk_5
begin_hunk_6_@_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ex = zext nneg i8 %i.ev to i64               ; 2 uses
  %7 = sub nuw nsw i64 9223372036854775807, %i.ex
  %i.ey = udiv i64 %7, 10
  %i.ez = icmp sgt i64 %i.es, %i.ey
  br i1 %i.ez, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, label %bb.ap, !prof !63
end_hunk_6
begin_hunk_7_@_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b:bb.a
bb.bm:                                            ; preds = %bb.bl, %bb.bj, %.lr.ph
  %.128.i.i22 = phi i64 [ %i.iv, %bb.bl ], [ %i.ir, %bb.bj ], [ %i.hv, %.lr.ph ] ; 3 uses
  %i.je = zext i8 %.0.i.i21 to i64                ; 2 uses
  %8 = sub nuw nsw i64 9223372036854775807, %i.je
  %9 = lshr i64 %8, 4
  %.not41.i.i = icmp sgt i64 %i.ip, %9
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_7
begin_hunk_8_@_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.mh = zext nneg i8 %i.mf to i64               ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.mh
  %i.mi = udiv i64 %10, 10
  %i.mj = icmp sgt i64 %i.mc, %i.mi
  br i1 %i.mj, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.cb, !prof !63
end_hunk_8
begin_hunk_9_@_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b:bb.a
bb.cn:                                            ; preds = %.lr.ph.i80.i
  %i.nv = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.nw = zext nneg i8 %i.lr to i64               ; 2 uses
  %11 = sub nuw nsw i64 9223372036854775807, %i.nw
  %i.nx = udiv i64 %11, 10
  %.not.i86.i = icmp sgt i64 %i.lo, %i.nx
  br i1 %.not.i86.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.co, !prof !63
end_hunk_9
begin_hunk_10_@_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b:bb.a
bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.128.i.i = phi i64 [ %i.bi, %bb.r ], [ %i.be, %bb.p ], [ %i.ar, %bb.o ] ; 2 uses
  %i.br = zext i8 %.0.i.i to i32                  ; 2 uses
  %6 = sub nuw nsw i32 2147483647, %i.br
  %7 = lshr i32 %6, 4
  %.not40.i.i = icmp sgt i32 %i.at, %7
  br i1 %.not40.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_10
begin_hunk_11_@_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b:bb.a
bb.ae:                                            ; preds = %.lr.ph.i53.i
  %i.di = add nuw i64 %.065100.i.i, 1             ; 3 uses
  %i.dj = zext nneg i8 %i.cr to i32               ; 2 uses
  %8 = sub nuw nsw i32 2147483647, %i.dj
  %i.dk = udiv i32 %8, 10
  %.not.i57.i = icmp sgt i32 %.sroa.0.1, %i.dk
  br i1 %.not.i57.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43, label %bb.af, !prof !63
end_hunk_11
begin_hunk_12_@_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ev = zext nneg i8 %i.et to i64               ; 2 uses
  %9 = sub nuw nsw i64 9223372036854775807, %i.ev
  %i.ew = udiv i64 %9, 10
  %i.ex = icmp sgt i64 %i.eq, %i.ew
  br i1 %i.ex, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, label %bb.ap, !prof !63
end_hunk_12
begin_hunk_13_@_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b:bb.a
bb.bm:                                            ; preds = %bb.bl, %bb.bj, %.lr.ph
  %.128.i.i21 = phi i64 [ %i.it, %bb.bl ], [ %i.ip, %bb.bj ], [ %i.ht, %.lr.ph ] ; 3 uses
  %i.jc = zext i8 %.0.i.i20 to i64                ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.jc
  %11 = lshr i64 %10, 4
  %.not41.i.i = icmp sgt i64 %i.in, %11
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_13
begin_hunk_14_@_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.mf = zext nneg i8 %i.md to i64               ; 2 uses
  %12 = sub nuw nsw i64 9223372036854775807, %i.mf
  %i.mg = udiv i64 %12, 10
  %i.mh = icmp sgt i64 %i.ma, %i.mg
  br i1 %i.mh, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.cb, !prof !63
end_hunk_14
begin_hunk_15_@_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b:bb.a
bb.cn:                                            ; preds = %.lr.ph.i80.i
  %i.nt = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.nu = zext nneg i8 %i.lp to i64               ; 2 uses
  %13 = sub nuw nsw i64 9223372036854775807, %i.nu
  %i.nv = udiv i64 %13, 10
  %.not.i86.i = icmp sgt i64 %i.lm, %i.nv
  br i1 %.not.i86.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.co, !prof !63
end_hunk_15
begin_hunk_16_@_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b:bb.a
bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.128.i.i = phi i64 [ %i.bi, %bb.r ], [ %i.be, %bb.p ], [ %i.ar, %bb.o ] ; 2 uses
  %i.br = zext i8 %.0.i.i to i64                  ; 2 uses
  %6 = sub nuw nsw i64 9223372036854775807, %i.br
  %7 = lshr i64 %6, 4
  %.not40.i.i = icmp sgt i64 %i.at, %7
  br i1 %.not40.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_16
begin_hunk_17_@_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b:bb.a
bb.ae:                                            ; preds = %.lr.ph.i53.i
  %i.di = add nuw i64 %.065100.i.i, 1             ; 3 uses
  %i.dj = zext nneg i8 %i.cr to i64               ; 2 uses
  %8 = sub nuw nsw i64 9223372036854775807, %i.dj
  %i.dk = udiv i64 %8, 10
  %.not.i57.i = icmp sgt i64 %.sroa.0.1, %i.dk
  br i1 %.not.i57.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43, label %bb.af, !prof !63
end_hunk_17
begin_hunk_18_@_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ev = zext nneg i8 %i.et to i64               ; 2 uses
  %9 = sub nuw nsw i64 9223372036854775807, %i.ev
  %i.ew = udiv i64 %9, 10
  %i.ex = icmp sgt i64 %i.eq, %i.ew
  br i1 %i.ex, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, label %bb.ap, !prof !63
end_hunk_18
begin_hunk_19_@_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b:bb.a
bb.bm:                                            ; preds = %bb.bl, %bb.bj, %.lr.ph
  %.128.i.i21 = phi i64 [ %i.ir, %bb.bl ], [ %i.in, %bb.bj ], [ %i.hr, %.lr.ph ] ; 3 uses
  %i.ja = zext i8 %.0.i.i20 to i64                ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.ja
  %11 = lshr i64 %10, 4
  %.not41.i.i = icmp sgt i64 %i.il, %11
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_19
begin_hunk_20_@_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.lz = zext nneg i8 %i.lx to i64               ; 2 uses
  %12 = sub nuw nsw i64 9223372036854775807, %i.lz
  %i.ma = udiv i64 %12, 10
  %i.mb = icmp sgt i64 %i.lu, %i.ma
  br i1 %i.mb, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.cb, !prof !63
end_hunk_20
begin_hunk_21_@_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b:bb.a
bb.cn:                                            ; preds = %.lr.ph.i80.i
  %i.nn = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.no = zext nneg i8 %i.lj to i64               ; 2 uses
  %13 = sub nuw nsw i64 9223372036854775807, %i.no
  %i.np = udiv i64 %13, 10
  %.not.i86.i = icmp sgt i64 %i.lg, %i.np
  br i1 %.not.i86.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.co, !prof !63
end_hunk_21
begin_hunk_22_@_ZN6duckdbL20TrySimpleIntegerCastIhLb0EEEbPKcmRT_b:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.ey = zext nneg i8 %i.ew to i64               ; 2 uses
  %6 = sub nuw nsw i64 9223372036854775807, %i.ey
  %i.ez = udiv i64 %6, 10
  %i.fa = icmp sgt i64 %i.et, %i.ez
  br i1 %i.fa, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i, label %bb.am, !prof !63
end_hunk_22
begin_hunk_23_@_ZN6duckdbL20TrySimpleIntegerCastIhLb0EEEbPKcmRT_b:bb.a
bb.bj:                                            ; preds = %bb.bi, %bb.bg, %.lr.ph
  %.128.i.i21 = phi i64 [ %i.iw, %bb.bi ], [ %i.is, %bb.bg ], [ %i.hw, %.lr.ph ] ; 3 uses
  %i.jf = zext i8 %.0.i.i20 to i64                ; 2 uses
  %7 = sub nuw nsw i64 9223372036854775807, %i.jf
  %8 = lshr i64 %7, 4
  %.not41.i.i = icmp sgt i64 %i.iq, %8
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_23
begin_hunk_24_@_ZN6duckdbL20TrySimpleIntegerCastIhLb0EEEbPKcmRT_b:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.mh = zext nneg i8 %i.mf to i64               ; 2 uses
  %9 = sub nuw nsw i64 9223372036854775807, %i.mh
  %i.mi = udiv i64 %9, 10
  %i.mj = icmp sgt i64 %i.mc, %i.mi
  br i1 %i.mj, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i, label %bb.by, !prof !63
end_hunk_24
begin_hunk_25_@_ZN6duckdbL20TrySimpleIntegerCastIhLb0EEEbPKcmRT_b:bb.a
bb.ck:                                            ; preds = %.lr.ph.i88.i
  %i.nv = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.nw = zext nneg i8 %i.lr to i64               ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.nw
  %i.nx = udiv i64 %10, 10
  %.not.i94.i = icmp sgt i64 %i.lo, %i.nx
  br i1 %.not.i94.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.cl, !prof !63
end_hunk_25
begin_hunk_26_@_ZN6duckdbL20TrySimpleIntegerCastItLb0EEEbPKcmRT_b:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.fc = zext nneg i8 %i.fa to i64               ; 2 uses
  %6 = sub nuw nsw i64 9223372036854775807, %i.fc
  %i.fd = udiv i64 %6, 10
  %i.fe = icmp sgt i64 %i.ex, %i.fd
  br i1 %i.fe, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i, label %bb.am, !prof !63
end_hunk_26
begin_hunk_27_@_ZN6duckdbL20TrySimpleIntegerCastItLb0EEEbPKcmRT_b:bb.a
bb.bj:                                            ; preds = %bb.bi, %bb.bg, %.lr.ph
  %.128.i.i21 = phi i64 [ %i.ja, %bb.bi ], [ %i.iw, %bb.bg ], [ %i.ia, %.lr.ph ] ; 3 uses
  %i.jj = zext i8 %.0.i.i20 to i64                ; 2 uses
  %7 = sub nuw nsw i64 9223372036854775807, %i.jj
  %8 = lshr i64 %7, 4
  %.not41.i.i = icmp sgt i64 %i.iu, %8
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_27
begin_hunk_28_@_ZN6duckdbL20TrySimpleIntegerCastItLb0EEEbPKcmRT_b:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.ml = zext nneg i8 %i.mj to i64               ; 2 uses
  %9 = sub nuw nsw i64 9223372036854775807, %i.ml
  %i.mm = udiv i64 %9, 10
  %i.mn = icmp sgt i64 %i.mg, %i.mm
  br i1 %i.mn, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i, label %bb.by, !prof !63
end_hunk_28
begin_hunk_29_@_ZN6duckdbL20TrySimpleIntegerCastItLb0EEEbPKcmRT_b:bb.a
bb.ck:                                            ; preds = %.lr.ph.i88.i
  %i.nz = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.oa = zext nneg i8 %i.lv to i64               ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.oa
  %i.ob = udiv i64 %10, 10
  %.not.i94.i = icmp sgt i64 %i.ls, %i.ob
  br i1 %.not.i94.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.cl, !prof !63
end_hunk_29
begin_hunk_30_@_ZN6duckdbL20TrySimpleIntegerCastIjLb0EEEbPKcmRT_b:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.fd = zext nneg i8 %i.fb to i64               ; 2 uses
  %6 = sub nuw nsw i64 9223372036854775807, %i.fd
  %i.fe = udiv i64 %6, 10
  %i.ff = icmp sgt i64 %i.ey, %i.fe
  br i1 %i.ff, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i, label %bb.am, !prof !63
end_hunk_30
begin_hunk_31_@_ZN6duckdbL20TrySimpleIntegerCastIjLb0EEEbPKcmRT_b:bb.a
bb.bj:                                            ; preds = %bb.bi, %bb.bg, %.lr.ph
  %.128.i.i21 = phi i64 [ %i.jb, %bb.bi ], [ %i.ix, %bb.bg ], [ %i.ib, %.lr.ph ] ; 3 uses
  %i.jk = zext i8 %.0.i.i20 to i64                ; 2 uses
  %7 = sub nuw nsw i64 9223372036854775807, %i.jk
  %8 = lshr i64 %7, 4
  %.not41.i.i = icmp sgt i64 %i.iv, %8
  br i1 %.not41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i, !prof !63

end_hunk_31
begin_hunk_32_@_ZN6duckdbL20TrySimpleIntegerCastIjLb0EEEbPKcmRT_b:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.mm = zext nneg i8 %i.mk to i64               ; 2 uses
  %9 = sub nuw nsw i64 9223372036854775807, %i.mm
  %i.mn = udiv i64 %9, 10
  %i.mo = icmp sgt i64 %i.mh, %i.mn
  br i1 %i.mo, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i, label %bb.by, !prof !63
end_hunk_32
begin_hunk_33_@_ZN6duckdbL20TrySimpleIntegerCastIjLb0EEEbPKcmRT_b:bb.a
bb.ck:                                            ; preds = %.lr.ph.i88.i
  %i.oa = add nuw i64 %.089138.i.i, 1             ; 3 uses
  %i.ob = zext nneg i8 %i.lw to i64               ; 2 uses
  %10 = sub nuw nsw i64 9223372036854775807, %i.ob
  %i.oc = udiv i64 %10, 10
  %.not.i94.i = icmp sgt i64 %i.lt, %i.oc
  br i1 %.not.i94.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread, label %bb.cl, !prof !63
end_hunk_33
begin_hunk_34_@_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b:bb.a
bb.e:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.065100, 1                  ; 3 uses
  %i.y = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i = sub nuw nsw i16 32767, %i.y
  %i.z = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.z, %i.d
  br i1 %.not, label %.thread, label %bb.f, !prof !63
end_hunk_34
begin_hunk_35_@_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b:bb.a
bb.e:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.065100, 1                  ; 3 uses
  %i.y = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i = sub nuw nsw i16 32767, %i.y
  %i.z = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.z, %i.d
  br i1 %.not, label %.thread, label %bb.f, !prof !63
end_hunk_35
