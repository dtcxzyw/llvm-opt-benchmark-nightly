inline.NumInlined: 101
inline.NumDeleted: 16
begin_hunk_0_@hermes_g_strtod:bb.a
  %i.aft = getelementptr [4 x i8], ptr %.0103.i.i, i64 %i.afs
  %i.afu = getelementptr i8, ptr %i.aft, i64 20
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !3 ; 3 uses
  %.not.i.i161.i.i = icmp ult i32 %i.afv, 65536   ; 2 uses
  %i.afw = shl nuw i32 %i.afv, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i161.i.i, i32 %i.afw, i32 %i.afv ; 3 uses
  %spec.select26.i.i.i.i = select i1 %.not.i.i161.i.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i.i.i = icmp ult i32 %spec.select.i.i.i.i, 16777216 ; 2 uses
  %4 = or disjoint i32 %spec.select26.i.i.i.i, 8
  %i.afx = shl nuw i32 %spec.select.i.i.i.i, 8
  %.117.i.i.i.i = select i1 %.not21.i.i.i.i, i32 %i.afx, i32 %spec.select.i.i.i.i ; 3 uses
  %.1.i.i162.i.i = select i1 %.not21.i.i.i.i, i32 %4, i32 %spec.select26.i.i.i.i ; 2 uses
end_hunk_0
begin_hunk_1_@hermes_g_strtod:bb.a
  %i.agb = shl nuw i32 %.218.i.i.i.i, 2
  %.319.i.i.i.i = select i1 %.not23.i.i.i.i, i32 %i.agb, i32 %.218.i.i.i.i ; 2 uses
  %.3.i.i.i.i = select i1 %.not23.i.i.i.i, i32 %i.aga, i32 %.2.i.i.i.i ; 2 uses
  %5 = add nuw nsw i32 %.3.i.i.i.i, 1
  %.not25.i.i.i.i = icmp ult i32 %.319.i.i.i.i, 1073741824
  %spec.select27.i.i.i.i = select i1 %.not25.i.i.i.i, i32 1073741824, i32 %5
  %.not2428.i.i.i.i = icmp slt i32 %.319.i.i.i.i, 0
end_hunk_1
begin_hunk_2_@g_dtoa:bb.a
  %i.pd = getelementptr [4 x i8], ptr %.0410, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 20
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3  ; 3 uses
  %.not.i.i626 = icmp ult i32 %i.pf, 65536        ; 2 uses
  %i.pg = shl nuw i32 %i.pf, 16
  %spec.select.i.i = select i1 %.not.i.i626, i32 %i.pg, i32 %i.pf ; 3 uses
  %spec.select26.i.i = select i1 %.not.i.i626, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i.i, 16777216 ; 2 uses
  %8 = or disjoint i32 %spec.select26.i.i, 8
  %i.ph = shl nuw i32 %spec.select.i.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.ph, i32 %spec.select.i.i ; 3 uses
  %.1.i.i627 = select i1 %.not21.i.i, i32 %8, i32 %spec.select26.i.i ; 2 uses
end_hunk_2
begin_hunk_3_@g_dtoa:bb.a
  %i.pl = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.pl, i32 %.218.i.i ; 2 uses
  %.3.i.i = select i1 %.not23.i.i, i32 %i.pk, i32 %.2.i.i ; 2 uses
  %9 = add nuw nsw i32 %.3.i.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 1073741824, i32 %9
  %.not2428.i.i = icmp slt i32 %.319.i.i, 0
end_hunk_3
begin_hunk_4_@d2b:bb.a

bb.l:                                             ; preds = %bb.g
  %i.ah = and i32 %i.ab, 65528
  %.not33.i = icmp eq i32 %i.ah, 0                ; 2 uses
  %i.ai = lshr exact i32 %i.ab, 16
  %spec.select.i = select i1 %.not33.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i = select i1 %.not33.i, i32 %i.ai, i32 %i.ab ; 3 uses
  %i.aj = and i32 %spec.select41.i, 255
  %.not34.i = icmp eq i32 %i.aj, 0                ; 2 uses
  %4 = or disjoint i32 %spec.select.i, 8
  %i.ak = lshr exact i32 %spec.select41.i, 8
  %.127.i = select i1 %.not34.i, i32 %4, i32 %spec.select.i ; 2 uses
  %.1.i35 = select i1 %.not34.i, i32 %i.ak, i32 %spec.select41.i ; 3 uses
end_hunk_4
begin_hunk_5_@d2b:bb.a
  br i1 %.not37.i, label %bb.m, label %lo0bits.exit

bb.m:                                             ; preds = %bb.l
  %5 = add nuw nsw i32 %.329.i, 1
  %i.as = lshr exact i32 %.3.i, 1
  %.not38.i = icmp eq i32 %.3.i, 0                ; 2 uses
  %spec.select84 = select i1 %.not38.i, i32 32, i32 %5
end_hunk_5
begin_hunk_6_@d2b:bb.a

bb.t:                                             ; preds = %bb.o
  %i.be = and i32 %spec.select, 65528
  %.not33.i43 = icmp eq i32 %i.be, 0              ; 2 uses
  %i.bf = lshr exact i32 %spec.select, 16
  %spec.select.i44 = select i1 %.not33.i43, i32 16, i32 0 ; 2 uses
  %spec.select41.i45 = select i1 %.not33.i43, i32 %i.bf, i32 %spec.select ; 3 uses
  %i.bg = and i32 %spec.select41.i45, 255
  %.not34.i46 = icmp eq i32 %i.bg, 0              ; 2 uses
  %6 = or disjoint i32 %spec.select.i44, 8
  %i.bh = lshr exact i32 %spec.select41.i45, 8
  %.127.i47 = select i1 %.not34.i46, i32 %6, i32 %spec.select.i44 ; 2 uses
  %.1.i48 = select i1 %.not34.i46, i32 %i.bh, i32 %spec.select41.i45 ; 3 uses
end_hunk_6
begin_hunk_7_@d2b:bb.a
  br i1 %.not37.i55, label %bb.u, label %lo0bits.exit57

bb.u:                                             ; preds = %bb.t
  %7 = add nuw nsw i32 %.329.i53, 1
  %i.bp = lshr exact i32 %.3.i54, 1
  %.not38.i56 = icmp eq i32 %.3.i54, 0            ; 2 uses
  %spec.select86 = select i1 %.not38.i56, i32 %spec.select, i32 %i.bp
end_hunk_7
begin_hunk_8_@d2b:bb.a
  %i.bx = getelementptr [4 x i8], ptr %i.u, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3  ; 3 uses
  %.not.i58 = icmp ult i32 %i.bz, 65536           ; 2 uses
  %i.ca = shl nuw i32 %i.bz, 16
  %spec.select.i59 = select i1 %.not.i58, i32 %i.ca, i32 %i.bz ; 3 uses
  %spec.select26.i = select i1 %.not.i58, i32 16, i32 0 ; 2 uses
  %.not21.i = icmp ult i32 %spec.select.i59, 16777216 ; 2 uses
  %8 = or disjoint i32 %spec.select26.i, 8
  %i.cb = shl nuw i32 %spec.select.i59, 8
  %.117.i = select i1 %.not21.i, i32 %i.cb, i32 %spec.select.i59 ; 3 uses
  %.1.i60 = select i1 %.not21.i, i32 %8, i32 %spec.select26.i ; 2 uses
end_hunk_8
begin_hunk_9_@d2b:bb.a
  %i.cf = shl nuw i32 %.218.i, 2
  %.319.i = select i1 %.not23.i, i32 %i.cf, i32 %.218.i ; 2 uses
  %.3.i62 = select i1 %.not23.i, i32 %i.ce, i32 %.2.i61 ; 2 uses
  %9 = add nuw nsw i32 %.3.i62, 1
  %.not25.i = icmp ult i32 %.319.i, 1073741824
  %spec.select27.i = select i1 %.not25.i, i32 32, i32 %9
  %.not2428.i = icmp slt i32 %.319.i, 0
end_hunk_9
begin_hunk_10_@dtoa_fixedpoint:bb.a
  %i.pb = getelementptr [4 x i8], ptr %.0395, i64 %i.pa
  %i.pc = getelementptr i8, ptr %i.pb, i64 20
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !3  ; 3 uses
  %.not.i.i595 = icmp ult i32 %i.pd, 65536        ; 2 uses
  %i.pe = shl nuw i32 %i.pd, 16
  %spec.select.i.i = select i1 %.not.i.i595, i32 %i.pe, i32 %i.pd ; 3 uses
  %spec.select26.i.i = select i1 %.not.i.i595, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i.i, 16777216 ; 2 uses
  %8 = or disjoint i32 %spec.select26.i.i, 8
  %i.pf = shl nuw i32 %spec.select.i.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.pf, i32 %spec.select.i.i ; 3 uses
  %.1.i.i596 = select i1 %.not21.i.i, i32 %8, i32 %spec.select26.i.i ; 2 uses
end_hunk_10
begin_hunk_11_@dtoa_fixedpoint:bb.a
  %i.pj = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.pj, i32 %.218.i.i ; 2 uses
  %.3.i.i = select i1 %.not23.i.i, i32 %i.pi, i32 %.2.i.i ; 2 uses
  %9 = add nuw nsw i32 %.3.i.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 1073741824, i32 %9
  %.not2428.i.i = icmp slt i32 %.319.i.i, 0
end_hunk_11
begin_hunk_12_@b2d:bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 %.idx    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -4       ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 7 uses
  %.not.i = icmp ult i32 %i.g, 65536              ; 2 uses
  %i.h = shl nuw i32 %i.g, 16
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 %i.g ; 3 uses
  %spec.select26.i = select i1 %.not.i, i32 16, i32 0 ; 2 uses
  %.not21.i = icmp ult i32 %spec.select.i, 16777216 ; 2 uses
  %2 = or disjoint i32 %spec.select26.i, 8
  %i.i = shl nuw i32 %spec.select.i, 8
  %.117.i = select i1 %.not21.i, i32 %i.i, i32 %spec.select.i ; 3 uses
  %.1.i = select i1 %.not21.i, i32 %2, i32 %spec.select26.i ; 2 uses
end_hunk_12
begin_hunk_13_@b2d:bb.a
  %i.m = shl nuw i32 %.218.i, 2
  %.319.i = select i1 %.not23.i, i32 %i.m, i32 %.218.i ; 2 uses
  %.3.i = select i1 %.not23.i, i32 %i.l, i32 %.2.i ; 2 uses
  %3 = add nuw nsw i32 %.3.i, 1
  %.not25.i = icmp ult i32 %.319.i, 1073741824
  %spec.select27.i = select i1 %.not25.i, i32 32, i32 %3
  %.not2428.i = icmp slt i32 %.319.i, 0
end_hunk_13
