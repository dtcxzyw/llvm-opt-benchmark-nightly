begin_hunk_0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 53 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 9 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
end_hunk_0
begin_hunk_1

iter.check394:                                    ; preds = %bb.y
  %i.bh = ptrtoint ptr %i.bg to i64
  %reass.sub425 = sub i64 %i.bh, %i.a
  %i.bi = add i64 %reass.sub425, -2050            ; 3 uses
  %i.bj = lshr i64 %i.bi, 1
  %i.bk = add nuw i64 %i.bj, 1                    ; 5 uses
  %min.iters.check378 = icmp ult i64 %i.bi, 6
end_hunk_1
begin_hunk_2

.lr.ph.i24.i.i101.preheader:                      ; preds = %bb.aa
  %i.cd = ptrtoint ptr %i.cc to i64
  %reass.sub = sub i64 %i.cd, %i.a
  %i.ce = add i64 %reass.sub, -2052               ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check411 = icmp ult i64 %i.ce, 28
end_hunk_2
begin_hunk_3

iter.check346:                                    ; preds = %bb.ai
  %i.eu = ptrtoint ptr %i.et to i64
  %reass.sub427 = sub i64 %i.eu, %i.a
  %i.ev = add i64 %reass.sub427, -2050            ; 3 uses
  %i.ew = lshr i64 %i.ev, 1
  %i.ex = add nuw i64 %i.ew, 1                    ; 5 uses
  %min.iters.check330 = icmp ult i64 %i.ev, 6
end_hunk_3
begin_hunk_4

.lr.ph.i24.i.i137.preheader:                      ; preds = %bb.ak
  %i.fq = ptrtoint ptr %i.fp to i64
  %reass.sub426 = sub i64 %i.fq, %i.a
  %i.fr = add i64 %reass.sub426, -2052            ; 2 uses
  %i.fs = lshr i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check363 = icmp ult i64 %i.fr, 28
end_hunk_4
begin_hunk_5

iter.check:                                       ; preds = %bb.cc
  %i.rf = ptrtoint ptr %i.re to i64
  %reass.sub429 = sub i64 %i.rf, %i.a
  %i.rg = add i64 %reass.sub429, -2050            ; 3 uses
  %i.rh = lshr i64 %i.rg, 1
  %i.ri = add nuw i64 %i.rh, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.rg, 6
end_hunk_5
begin_hunk_6

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.ce
  %i.sb = ptrtoint ptr %i.sa to i64
  %reass.sub428 = sub i64 %i.sb, %i.a
  %i.sc = add i64 %reass.sub428, -2052            ; 2 uses
  %i.sd = lshr i64 %i.sc, 2
  %i.se = add nuw nsw i64 %i.sd, 1                ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.sc, 28
end_hunk_6
begin_hunk_7
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !322
  br label %bb.b

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccc.exit, %bb.a
end_hunk_7
begin_hunk_8

iter.check:                                       ; preds = %bb.n
  %i.az = ptrtoint ptr %i.ay to i64
  %reass.sub69 = sub i64 %i.az, %i.a
  %i.ba = add i64 %reass.sub69, -2050             ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ba, 6
end_hunk_8
begin_hunk_9

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.p
  %i.bv = ptrtoint ptr %i.bu to i64
  %reass.sub = sub i64 %i.bv, %i.a
  %i.bw = add i64 %reass.sub, -2052               ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.bw, 28
end_hunk_9
begin_hunk_10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 15 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.s
end_hunk_10
begin_hunk_11

iter.check:                                       ; preds = %bb.k
  %i.av = ptrtoint ptr %i.au to i64
  %reass.sub75 = sub i64 %i.av, %i.a
  %i.aw = add i64 %reass.sub75, -2050             ; 3 uses
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = add nuw i64 %i.ax, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aw, 6
end_hunk_11
begin_hunk_12

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.m
  %i.br = ptrtoint ptr %i.bq to i64
  %reass.sub = sub i64 %i.br, %i.a
  %i.bs = add i64 %reass.sub, -2052               ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %i.bs, 28
end_hunk_12
begin_hunk_13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 15 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
end_hunk_13
begin_hunk_14

iter.check:                                       ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.aq to i64
  %reass.sub66 = sub i64 %i.ar, %i.b
  %i.as = add i64 %reass.sub66, -2050             ; 3 uses
  %i.at = lshr i64 %i.as, 1
  %i.au = add nuw i64 %i.at, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.as, 6
end_hunk_14
begin_hunk_15

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.l
  %i.bn = ptrtoint ptr %i.bm to i64
  %reass.sub = sub i64 %i.bn, %i.b
  %i.bo = add i64 %reass.sub, -2052               ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check53 = icmp ult i64 %i.bo, 28
end_hunk_15
begin_hunk_16
  %.not47 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = and i32 %3, 256
  %.not49 = icmp eq i32 %i.i, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ak
end_hunk_16
begin_hunk_17

iter.check:                                       ; preds = %bb.l
  %i.bt = ptrtoint ptr %i.bs to i64
  %reass.sub145 = sub i64 %i.bt, %i.b
  %i.bu = add i64 %reass.sub145, -2050            ; 3 uses
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = add nuw i64 %i.bv, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bu, 6
end_hunk_17
begin_hunk_18

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.n
  %i.cp = ptrtoint ptr %i.co to i64
  %reass.sub = sub i64 %i.cp, %i.b
  %i.cq = add i64 %reass.sub, -2052               ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.cq, 28
end_hunk_18
