begin_hunk_0
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = zext i32 %i.r to i64
  %i.y = add nsw i64 %i.x, -1
  %i.z = sdiv i64 %i.y, 8                         ; 2 uses
  %i.aa = icmp eq i32 %i.r, 0
  br i1 %i.aa, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext i32 %1 to i64
  %i.ab = add nsw i64 %i.z, 1                     ; 4 uses
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.ab, 16
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 4294967295
  %i.af = icmp ugt i64 %i.ac, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  %n.vec81 = and i64 %i.ab, -4                    ; 4 uses
  %i.ah = trunc nsw i64 %n.vec81 to i32
  %cmp.n88 = icmp eq i64 %i.ab, %n.vec81
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.split.preheader.i.i
end_hunk_0
begin_hunk_1
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cd = zext i32 %i.r to i64
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = sdiv i64 %i.ce, 8                       ; 2 uses
  %i.cg = icmp eq i32 %i.r, 0
  br i1 %i.cg, label %_ZN5arrow7compute13EncoderBinary9DecodeImpILb1EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayE.exit, label %.lr.ph.split.preheader.i.i29

.lr.ph.split.preheader.i.i29:                     ; preds = %.lr.ph.i.i28
  %wide.trip.count.i.i30 = zext i32 %1 to i64
  %i.ch = add nsw i64 %i.cf, 1                    ; 4 uses
  %i.ci = call i64 @llvm.usub.sat.i64(i64 %i.ch, i64 1) ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = icmp eq i64 %i.cj, 4294967295
  %i.cl = icmp ugt i64 %i.ci, 4294967295
  %i.cm = or i1 %i.ck, %i.cl
  %n.vec = and i64 %i.ch, -4                      ; 4 uses
  %i.cn = trunc nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br label %.lr.ph.split.i.i31

.lr.ph.split.i.i31:                               ; preds = %_ZZN5arrow7compute13EncoderBinary9DecodeImpILb0EEEvjjjRKNS0_12RowTableImplEPNS0_14KeyColumnArrayEENKUlPhPKhlE_clES8_SA_l.exit.loopexit.i.i, %.lr.ph.split.preheader.i.i29
end_hunk_1
