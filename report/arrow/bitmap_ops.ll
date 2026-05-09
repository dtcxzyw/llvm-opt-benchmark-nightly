inline.NumInlined: 424
inline.NumDeleted: 159
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh:bb.a
  %wide.trip.count.i = zext nneg i32 %.sroa.15.0112 to i64 ; 2 uses
  %i.cq = zext i8 %i.cp to i32
  %i.cr = and i32 %i.bv, %i.cq
  %.not21.i = icmp eq i32 %i.cr, 0
  %spec.select.i42 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.bx, label %bb.l, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

bb.l:                                             ; preds = %.lr.ph.preheader.i
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh:bb.a
  br i1 %exitcond.not.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %5 = lshr exact i8 %spec.select.i42, 1          ; 2 uses
  %i.cu = zext i8 %.sroa.9.2.i to i32
  %i.cv = trunc nsw i64 %.sroa.16.1.i to i32
  %i.cw = shl nuw nsw i32 1, %i.cv
  %i.cx = and i32 %i.cw, %i.cu
  %.not21.i.1 = icmp eq i32 %i.cx, 0
  %6 = or disjoint i8 %5, -128
  %spec.select.i42.1 = select i1 %.not21.i.1, i8 %5, i8 %6 ; 2 uses
  %i.cy = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 8
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh:bb.a
  br i1 %exitcond.not.i.2, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.dq = lshr i8 %spec.select.i42.2, 1           ; 2 uses
  %i.dr = zext i8 %.sroa.9.2.i.2 to i32
  %i.ds = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.dt = shl nuw nsw i32 1, %i.ds
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a
  %wide.trip.count.i = zext nneg i32 %.sroa.15.0117 to i64 ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = and i32 %i.cc, %i.cy
  %.not21.i = icmp eq i32 %i.cz, 0
  %spec.select.i48 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.ce, label %bb.l, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

bb.l:                                             ; preds = %.lr.ph.preheader.i
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a
  br i1 %exitcond.not.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %5 = lshr exact i8 %spec.select.i48, 1          ; 2 uses
  %i.dc = zext i8 %.sroa.9.2.i to i32
  %i.dd = trunc nsw i64 %.sroa.16.1.i to i32
  %i.de = shl nuw nsw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not21.i.1 = icmp eq i32 %i.df, 0
  %6 = or disjoint i8 %5, -128
  %spec.select.i48.1 = select i1 %.not21.i.1, i8 %5, i8 %6 ; 2 uses
  %i.dg = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 8
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a
  br i1 %exitcond.not.i.2, label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.dy = lshr i8 %spec.select.i48.2, 1           ; 2 uses
  %i.dz = zext i8 %.sroa.9.2.i.2 to i32
  %i.ea = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.eb = shl nuw nsw i32 1, %i.ea
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  %i.bv = load i8, ptr %.sroa.683.1150, align 1, !tbaa !7 ; 3 uses
  %i.bw = zext i8 %i.bv to i32
  %i.bx = and i32 %i.bf, %i.bw
  %.not21.i = icmp eq i32 %i.bx, 0
  %spec.select.i47 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.bh, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %5 = lshr exact i8 %spec.select.i47, 1          ; 2 uses
  %i.ce = zext i8 %.sroa.9.2.i to i32
  %i.cf = trunc nsw i64 %.sroa.16.1.i to i32
  %i.cg = shl nuw nsw i32 1, %i.cf
  %i.ch = and i32 %i.cg, %i.ce
  %.not21.i.1 = icmp eq i32 %i.ch, 0
  %6 = or disjoint i8 %5, -128
  %spec.select.i47.1 = select i1 %.not21.i.1, i8 %5, i8 %6 ; 2 uses
  %i.ci = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 8
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.da = lshr i8 %spec.select.i47.2, 1           ; 2 uses
  %i.db = zext i8 %.sroa.9.2.i.2 to i32
  %i.dc = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.dd = shl nuw nsw i32 1, %i.dc
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  %i.fp = load i8, ptr %.sroa.6.1154, align 1, !tbaa !7 ; 3 uses
  %i.fq = zext i8 %i.fp to i32
  %i.fr = and i32 %i.bj, %i.fq
  %.not21.i61 = icmp eq i32 %i.fr, 0
  %spec.select.i62 = select i1 %.not21.i61, i8 0, i8 -128 ; 2 uses
  br i1 %i.bl, label %bb.aa, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63, !prof !15

._crit_edge.loopexit.i68:                         ; preds = %.lr.ph.i55.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  br i1 %exitcond.not.i67, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.1

.lr.ph.i55.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63
  %7 = lshr exact i8 %spec.select.i62, 1          ; 2 uses
  %i.fy = zext i8 %.sroa.9.2.i64 to i32
  %i.fz = trunc nsw i64 %.sroa.16.1.i66 to i32
  %i.ga = shl nuw nsw i32 1, %i.fz
  %i.gb = and i32 %i.ga, %i.fy
  %.not21.i61.1 = icmp eq i32 %i.gb, 0
  %8 = or disjoint i8 %7, -128
  %spec.select.i62.1 = select i1 %.not21.i61.1, i8 %7, i8 %8 ; 2 uses
  %i.gc = add nsw i64 %.sroa.16.1.i66, 1          ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 8
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll:bb.a
  br i1 %exitcond.not.i67.2, label %._crit_edge.loopexit.i68, label %.lr.ph.i55.3

.lr.ph.i55.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i63.2
  %i.gu = lshr i8 %spec.select.i62.2, 1           ; 2 uses
  %i.gv = zext i8 %.sroa.9.2.i64.2 to i32
  %i.gw = trunc nsw i64 %.sroa.16.1.i66.2 to i32
  %i.gx = shl nuw nsw i32 1, %i.gw
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  %i.dm = load i8, ptr %.sroa.687.1127, align 1, !tbaa !7 ; 3 uses
  %i.dn = zext i8 %i.dm to i32
  %i.do = and i32 %i.ck, %i.dn
  %.not21.i = icmp eq i32 %i.do, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cm, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %7 = lshr exact i8 %spec.select.i21, 1          ; 2 uses
  %i.dv = zext i8 %.sroa.9.2.i to i32
  %i.dw = trunc nsw i64 %.sroa.16.1.i to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not21.i.1 = icmp eq i32 %i.dy, 0
  %8 = or disjoint i8 %7, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %7, i8 %8 ; 2 uses
  %i.dz = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 8
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.er = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.es = zext i8 %.sroa.9.2.i.2 to i32
  %i.et = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.eu = shl nuw nsw i32 1, %i.et
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  %i.hg = load i8, ptr %.sroa.675.1121, align 1, !tbaa !7 ; 3 uses
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.co, %i.hh
  %.not21.i35 = icmp eq i32 %i.hi, 0
  %spec.select.i36 = select i1 %.not21.i35, i8 0, i8 -128 ; 2 uses
  br i1 %i.cq, label %bb.aa, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37, !prof !15

._crit_edge.loopexit.i42:                         ; preds = %.lr.ph.i29.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
end_hunk_15
begin_hunk_16_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.1

.lr.ph.i29.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
  %9 = lshr exact i8 %spec.select.i36, 1          ; 2 uses
  %i.hp = zext i8 %.sroa.9.2.i38 to i32
  %i.hq = trunc nsw i64 %.sroa.16.1.i40 to i32
  %i.hr = shl nuw nsw i32 1, %i.hq
  %i.hs = and i32 %i.hr, %i.hp
  %.not21.i35.1 = icmp eq i32 %i.hs, 0
  %10 = or disjoint i8 %9, -128
  %spec.select.i36.1 = select i1 %.not21.i35.1, i8 %9, i8 %10 ; 2 uses
  %i.ht = add nsw i64 %.sroa.16.1.i40, 1          ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 8
end_hunk_16
begin_hunk_17_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41.2, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.3

.lr.ph.i29.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2
  %i.il = lshr i8 %spec.select.i36.2, 1           ; 2 uses
  %i.im = zext i8 %.sroa.9.2.i38.2 to i32
  %i.in = trunc nsw i64 %.sroa.16.1.i40.2 to i32
  %i.io = shl nuw nsw i32 1, %i.in
end_hunk_17
begin_hunk_18_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  %i.dm = load i8, ptr %.sroa.687.1127, align 1, !tbaa !7 ; 3 uses
  %i.dn = zext i8 %i.dm to i32
  %i.do = and i32 %i.ck, %i.dn
  %.not21.i = icmp eq i32 %i.do, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cm, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
end_hunk_18
begin_hunk_19_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %7 = lshr exact i8 %spec.select.i21, 1          ; 2 uses
  %i.dv = zext i8 %.sroa.9.2.i to i32
  %i.dw = trunc nsw i64 %.sroa.16.1.i to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not21.i.1 = icmp eq i32 %i.dy, 0
  %8 = or disjoint i8 %7, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %7, i8 %8 ; 2 uses
  %i.dz = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 8
end_hunk_19
begin_hunk_20_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.er = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.es = zext i8 %.sroa.9.2.i.2 to i32
  %i.et = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.eu = shl nuw nsw i32 1, %i.et
end_hunk_20
begin_hunk_21_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  %i.hg = load i8, ptr %.sroa.675.1121, align 1, !tbaa !7 ; 3 uses
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.co, %i.hh
  %.not21.i35 = icmp eq i32 %i.hi, 0
  %spec.select.i36 = select i1 %.not21.i35, i8 0, i8 -128 ; 2 uses
  br i1 %i.cq, label %bb.aa, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37, !prof !15

._crit_edge.loopexit.i42:                         ; preds = %.lr.ph.i29.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
end_hunk_21
begin_hunk_22_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.1

.lr.ph.i29.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
  %9 = lshr exact i8 %spec.select.i36, 1          ; 2 uses
  %i.hp = zext i8 %.sroa.9.2.i38 to i32
  %i.hq = trunc nsw i64 %.sroa.16.1.i40 to i32
  %i.hr = shl nuw nsw i32 1, %i.hq
  %i.hs = and i32 %i.hr, %i.hp
  %.not21.i35.1 = icmp eq i32 %i.hs, 0
  %10 = or disjoint i8 %9, -128
  %spec.select.i36.1 = select i1 %.not21.i35.1, i8 %9, i8 %10 ; 2 uses
  %i.ht = add nsw i64 %.sroa.16.1.i40, 1          ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 8
end_hunk_22
begin_hunk_23_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41.2, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.3

.lr.ph.i29.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2
  %i.il = lshr i8 %spec.select.i36.2, 1           ; 2 uses
  %i.im = zext i8 %.sroa.9.2.i38.2 to i32
  %i.in = trunc nsw i64 %.sroa.16.1.i40.2 to i32
  %i.io = shl nuw nsw i32 1, %i.in
end_hunk_23
begin_hunk_24_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  %i.dm = load i8, ptr %.sroa.687.1127, align 1, !tbaa !7 ; 3 uses
  %i.dn = zext i8 %i.dm to i32
  %i.do = and i32 %i.ck, %i.dn
  %.not21.i = icmp eq i32 %i.do, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cm, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
end_hunk_24
begin_hunk_25_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %7 = lshr exact i8 %spec.select.i21, 1          ; 2 uses
  %i.dv = zext i8 %.sroa.9.2.i to i32
  %i.dw = trunc nsw i64 %.sroa.16.1.i to i32
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not21.i.1 = icmp eq i32 %i.dy, 0
  %8 = or disjoint i8 %7, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %7, i8 %8 ; 2 uses
  %i.dz = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 8
end_hunk_25
begin_hunk_26_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.er = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.es = zext i8 %.sroa.9.2.i.2 to i32
  %i.et = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.eu = shl nuw nsw i32 1, %i.et
end_hunk_26
begin_hunk_27_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  %i.hg = load i8, ptr %.sroa.675.1121, align 1, !tbaa !7 ; 3 uses
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.co, %i.hh
  %.not21.i35 = icmp eq i32 %i.hi, 0
  %spec.select.i36 = select i1 %.not21.i35, i8 0, i8 -128 ; 2 uses
  br i1 %i.cq, label %bb.aa, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37, !prof !15

._crit_edge.loopexit.i42:                         ; preds = %.lr.ph.i29.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
end_hunk_27
begin_hunk_28_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.1

.lr.ph.i29.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
  %9 = lshr exact i8 %spec.select.i36, 1          ; 2 uses
  %i.hp = zext i8 %.sroa.9.2.i38 to i32
  %i.hq = trunc nsw i64 %.sroa.16.1.i40 to i32
  %i.hr = shl nuw nsw i32 1, %i.hq
  %i.hs = and i32 %i.hr, %i.hp
  %.not21.i35.1 = icmp eq i32 %i.hs, 0
  %10 = or disjoint i8 %9, -128
  %spec.select.i36.1 = select i1 %.not21.i35.1, i8 %9, i8 %10 ; 2 uses
  %i.ht = add nsw i64 %.sroa.16.1.i40, 1          ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 8
end_hunk_28
begin_hunk_29_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41.2, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.3

.lr.ph.i29.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2
  %i.il = lshr i8 %spec.select.i36.2, 1           ; 2 uses
  %i.im = zext i8 %.sroa.9.2.i38.2 to i32
  %i.in = trunc nsw i64 %.sroa.16.1.i40.2 to i32
  %i.io = shl nuw nsw i32 1, %i.in
end_hunk_29
begin_hunk_30_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  %i.dq = load i8, ptr %.sroa.687.1127, align 1, !tbaa !7 ; 3 uses
  %i.dr = zext i8 %i.dq to i32
  %i.ds = and i32 %i.cn, %i.dr
  %.not21.i = icmp eq i32 %i.ds, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cp, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
end_hunk_30
begin_hunk_31_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %7 = lshr exact i8 %spec.select.i21, 1          ; 2 uses
  %i.dz = zext i8 %.sroa.9.2.i to i32
  %i.ea = trunc nsw i64 %.sroa.16.1.i to i32
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = and i32 %i.eb, %i.dz
  %.not21.i.1 = icmp eq i32 %i.ec, 0
  %8 = or disjoint i8 %7, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %7, i8 %8 ; 2 uses
  %i.ed = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 8
end_hunk_31
begin_hunk_32_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.ev = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.ew = zext i8 %.sroa.9.2.i.2 to i32
  %i.ex = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ey = shl nuw nsw i32 1, %i.ex
end_hunk_32
begin_hunk_33_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  %i.hk = load i8, ptr %.sroa.675.1121, align 1, !tbaa !7 ; 3 uses
  %i.hl = zext i8 %i.hk to i32
  %i.hm = and i32 %i.cr, %i.hl
  %.not21.i35 = icmp eq i32 %i.hm, 0
  %spec.select.i36 = select i1 %.not21.i35, i8 0, i8 -128 ; 2 uses
  br i1 %i.ct, label %bb.aa, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37, !prof !15

._crit_edge.loopexit.i42:                         ; preds = %.lr.ph.i29.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
end_hunk_33
begin_hunk_34_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.1

.lr.ph.i29.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
  %9 = lshr exact i8 %spec.select.i36, 1          ; 2 uses
  %i.ht = zext i8 %.sroa.9.2.i38 to i32
  %i.hu = trunc nsw i64 %.sroa.16.1.i40 to i32
  %i.hv = shl nuw nsw i32 1, %i.hu
  %i.hw = and i32 %i.hv, %i.ht
  %.not21.i35.1 = icmp eq i32 %i.hw, 0
  %10 = or disjoint i8 %9, -128
  %spec.select.i36.1 = select i1 %.not21.i35.1, i8 %9, i8 %10 ; 2 uses
  %i.hx = add nsw i64 %.sroa.16.1.i40, 1          ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 8
end_hunk_34
begin_hunk_35_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41.2, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.3

.lr.ph.i29.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2
  %i.ip = lshr i8 %spec.select.i36.2, 1           ; 2 uses
  %i.iq = zext i8 %.sroa.9.2.i38.2 to i32
  %i.ir = trunc nsw i64 %.sroa.16.1.i40.2 to i32
  %i.is = shl nuw nsw i32 1, %i.ir
end_hunk_35
begin_hunk_36_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
  %i.dq = load i8, ptr %.sroa.687.1127, align 1, !tbaa !7 ; 3 uses
  %i.dr = zext i8 %i.dq to i32
  %i.ds = and i32 %i.cn, %i.dr
  %.not21.i = icmp eq i32 %i.ds, 0
  %spec.select.i21 = select i1 %.not21.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.cp, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, !prof !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
end_hunk_36
begin_hunk_37_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i
  %7 = lshr exact i8 %spec.select.i21, 1          ; 2 uses
  %i.dz = zext i8 %.sroa.9.2.i to i32
  %i.ea = trunc nsw i64 %.sroa.16.1.i to i32
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = and i32 %i.eb, %i.dz
  %.not21.i.1 = icmp eq i32 %i.ec, 0
  %8 = or disjoint i8 %7, -128
  %spec.select.i21.1 = select i1 %.not21.i.1, i8 %7, i8 %8 ; 2 uses
  %i.ed = add nsw i64 %.sroa.16.1.i, 1            ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 8
end_hunk_37
begin_hunk_38_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.2
  %i.ev = lshr i8 %spec.select.i21.2, 1           ; 2 uses
  %i.ew = zext i8 %.sroa.9.2.i.2 to i32
  %i.ex = trunc nsw i64 %.sroa.16.1.i.2 to i32
  %i.ey = shl nuw nsw i32 1, %i.ex
end_hunk_38
begin_hunk_39_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
  %i.hk = load i8, ptr %.sroa.675.1121, align 1, !tbaa !7 ; 3 uses
  %i.hl = zext i8 %i.hk to i32
  %i.hm = and i32 %i.cr, %i.hl
  %.not21.i35 = icmp eq i32 %i.hm, 0
  %spec.select.i36 = select i1 %.not21.i35, i8 0, i8 -128 ; 2 uses
  br i1 %i.ct, label %bb.aa, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37, !prof !15

._crit_edge.loopexit.i42:                         ; preds = %.lr.ph.i29.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
end_hunk_39
begin_hunk_40_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.1

.lr.ph.i29.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37
  %9 = lshr exact i8 %spec.select.i36, 1          ; 2 uses
  %i.ht = zext i8 %.sroa.9.2.i38 to i32
  %i.hu = trunc nsw i64 %.sroa.16.1.i40 to i32
  %i.hv = shl nuw nsw i32 1, %i.hu
  %i.hw = and i32 %i.hv, %i.ht
  %.not21.i35.1 = icmp eq i32 %i.hw, 0
  %10 = or disjoint i8 %9, -128
  %spec.select.i36.1 = select i1 %.not21.i35.1, i8 %9, i8 %10 ; 2 uses
  %i.hx = add nsw i64 %.sroa.16.1.i40, 1          ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 8
end_hunk_40
begin_hunk_41_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
  br i1 %exitcond.not.i41.2, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.3

.lr.ph.i29.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.2
  %i.ip = lshr i8 %spec.select.i36.2, 1           ; 2 uses
  %i.iq = zext i8 %.sroa.9.2.i38.2 to i32
  %i.ir = trunc nsw i64 %.sroa.16.1.i40.2 to i32
  %i.is = shl nuw nsw i32 1, %i.ir
end_hunk_41
