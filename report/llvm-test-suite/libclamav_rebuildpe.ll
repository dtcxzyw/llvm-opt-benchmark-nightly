begin_hunk_0
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !10
  %i.ay = load i32, ptr %i.am, align 4, !tbaa !10
  %i.az = load i32, ptr %i.an, align 4, !tbaa !10
end_hunk_0
begin_hunk_1
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 2
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 3
  %i.bf = add <4 x i32> %i.aw, splat (i32 511)
  %i.bg = add <4 x i32> %i.be, splat (i32 511)
  %i.bh = and <4 x i32> %i.bf, splat (i32 -512)
  %i.bi = and <4 x i32> %i.bg, splat (i32 -512)
  %i.bj = add <4 x i32> %i.bh, %vec.phi           ; 2 uses
end_hunk_1
begin_hunk_2
  %.097112 = phi i32 [ %i.bs, %.lr.ph ], [ %.097112.ph, %.lr.ph.preheader142 ]
  %i.bn = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10
  %i.bq = add i32 %i.bp, 511
  %i.br = and i32 %i.bq, -512
  %i.bs = add i32 %i.br, %.097112                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_2
begin_hunk_3
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !10
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr align 1 %i.dp, i64 %i.dr, i1 false)
  %i.ds = load i32, ptr %i.dg, align 4, !tbaa !10
  %i.dt = add i32 %i.ds, 511
  %i.du = and i32 %i.dt, -512
  %i.dv = add i32 %i.du, %.1102114                ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1100115, i64 40
  %i.dx = load i32, ptr %i.db, align 4, !tbaa !22
  %i.dy = add i32 %i.dx, 4095
  %i.dz = and i32 %i.dy, -4096
  %i.ea = add i32 %i.dz, %.2116                   ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
end_hunk_3
