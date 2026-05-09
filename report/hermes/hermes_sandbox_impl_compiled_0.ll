inline.NumInlined: 15600
inline.NumDeleted: 36
begin_hunk_0_@w2c_hermes_d2b:bb.a

bb.k:                                             ; preds = %bb.h
  %i.an = and i32 %.0.copyload.i570, 65528
  %.not534 = icmp eq i32 %i.an, 0                 ; 2 uses
  %i.ao = select i1 %.not534, i32 16, i32 0       ; 2 uses
  %5 = or disjoint i32 %i.ao, 8
  %i.ap = lshr i32 %.0.copyload.i570, 16
  %i.aq = select i1 %.not534, i32 %i.ap, i32 %.0.copyload.i570 ; 3 uses
  %i.ar = and i32 %i.aq, 255
end_hunk_0
begin_hunk_1_@w2c_hermes_d2b:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bh = lshr exact i32 %i.be, 1
  %6 = add nuw nsw i32 %i.bc, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.k
end_hunk_1
begin_hunk_2_@w2c_hermes_d2b:bb.a

bb.s:                                             ; preds = %bb.p
  %i.bv = and i32 %i.af, 65528
  %.not526 = icmp eq i32 %i.bv, 0                 ; 2 uses
  %i.bw = select i1 %.not526, i32 16, i32 0       ; 2 uses
  %7 = or disjoint i32 %i.bw, 8
  %i.bx = lshr i32 %i.af, 16
  %i.by = select i1 %.not526, i32 %i.bx, i32 %i.af ; 3 uses
  %i.bz = and i32 %i.by, 255
end_hunk_2
begin_hunk_3_@w2c_hermes_d2b:bb.a

bb.u:                                             ; preds = %bb.t
  %i.cp = lshr exact i32 %i.cm, 1
  %8 = add nuw nsw i32 %i.ck, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.u, %bb.r
end_hunk_3
begin_hunk_4_@w2c_hermes_d2b:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dp
  %.0.copyload.i571 = load i32, ptr %i.dq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i571) #16, !srcloc !22
  %i.dr = icmp ult i32 %.0.copyload.i571, 65536   ; 2 uses
  %i.ds = select i1 %i.dr, i32 16, i32 0          ; 2 uses
  %9 = or disjoint i32 %i.ds, 8
  %i.dt = shl i32 %.0.copyload.i571, 16
  %i.du = select i1 %i.dr, i32 %i.dt, i32 %.0.copyload.i571 ; 3 uses
  %i.dv = icmp ult i32 %i.du, 16777216            ; 2 uses
end_hunk_4
begin_hunk_5_@w2c_hermes_d2b:bb.a
  %i.ej = select i1 %i.ef, i32 %i.ei, i32 %i.ee   ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  %.not543 = icmp ult i32 %i.ej, 1073741824
  %10 = add nuw nsw i32 %i.eg, 1
  %spec.select = select i1 %.not543, i32 32, i32 %10
  %.0508 = select i1 %i.ek, i32 %i.eg, i32 %spec.select
  %i.el = sub nuw nsw i32 %i.eh, %.0508
end_hunk_5
begin_hunk_6_@w2c_hermes_dtoa_fixedpoint:bb.a
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %.0.copyload.i3493 = load i32, ptr %i.to, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3493) #16, !srcloc !22
  %i.tp = icmp ult i32 %.0.copyload.i3493, 65536  ; 2 uses
  %i.tq = select i1 %i.tp, i32 16, i32 0          ; 2 uses
  %8 = or disjoint i32 %i.tq, 8
  %i.tr = shl i32 %.0.copyload.i3493, 16
  %i.ts = select i1 %i.tp, i32 %i.tr, i32 %.0.copyload.i3493 ; 3 uses
  %i.tt = icmp ult i32 %i.ts, 16777216            ; 2 uses
end_hunk_6
begin_hunk_7_@w2c_hermes_dtoa_fixedpoint:bb.a
  %i.ug = select i1 %i.ud, i32 %i.uf, i32 %i.uc   ; 2 uses
  %i.uh = icmp slt i32 %i.ug, 0
  %.not3185 = icmp ult i32 %i.ug, 1073741824
  %9 = add nuw nsw i32 %i.ue, 1
  %spec.select = select i1 %.not3185, i32 1073741824, i32 %9
  %.11 = select i1 %i.uh, i32 %i.ue, i32 %spec.select
  %i.ui = tail call i32 @llvm.smax.i32(i32 %.32951, i32 0)
end_hunk_7
begin_hunk_8_@w2c_hermes_g_dtoa:bb.a
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %.0.copyload.i2462 = load i32, ptr %i.lv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2462) #16, !srcloc !22
  %i.lw = icmp ult i32 %.0.copyload.i2462, 65536  ; 2 uses
  %i.lx = select i1 %i.lw, i32 16, i32 0          ; 2 uses
  %6 = or disjoint i32 %i.lx, 8
  %i.ly = shl i32 %.0.copyload.i2462, 16
  %i.lz = select i1 %i.lw, i32 %i.ly, i32 %.0.copyload.i2462 ; 3 uses
  %i.ma = icmp ult i32 %i.lz, 16777216            ; 2 uses
end_hunk_8
begin_hunk_9_@w2c_hermes_g_dtoa:bb.a
  %i.mn = select i1 %i.mk, i32 %i.mm, i32 %i.mj   ; 2 uses
  %i.mo = icmp slt i32 %i.mn, 0
  %.not2202 = icmp ult i32 %i.mn, 1073741824
  %7 = add nuw nsw i32 %i.ml, 1
  %spec.select = select i1 %.not2202, i32 1073741824, i32 %7
  %.6 = select i1 %i.mo, i32 %i.ml, i32 %spec.select
  %i.mp = tail call i32 @llvm.smax.i32(i32 %.22058, i32 0)
end_hunk_9
begin_hunk_10_@w2c_hermes_b2d:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.i
  %.0.copyload.i235 = load i32, ptr %i.j, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i235) #16, !srcloc !22
  %i.k = icmp ult i32 %.0.copyload.i235, 65536    ; 2 uses
  %i.l = select i1 %i.k, i32 16, i32 0            ; 2 uses
  %3 = or disjoint i32 %i.l, 8
  %i.m = shl i32 %.0.copyload.i235, 16
  %i.n = select i1 %i.k, i32 %i.m, i32 %.0.copyload.i235 ; 3 uses
  %i.o = icmp ult i32 %i.n, 16777216              ; 2 uses
end_hunk_10
begin_hunk_11_@w2c_hermes_b2d:bb.a
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = add nuw nsw i32 %i.z, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
end_hunk_11
