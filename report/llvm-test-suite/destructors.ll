begin_hunk_0_@__local_laplacian:entry
  %a70 = tail call i32 @llvm.smin.i32(i32 %b73, i32 %a71)
  %i.db = tail call i32 @llvm.smax.i32(i32 %a70, i32 %b82) ; 3 uses
  %i.dc = sub nsw i32 %b185, %a181
  %13 = and i32 %i.dc, -8
  %14 = add nsw i32 %a181, 7
  %a78 = add i32 %14, %13
  %a77 = tail call i32 @llvm.smin.i32(i32 %b185, i32 %a78) ; 2 uses
  %i.dd = add nsw i32 %local_laplacian.extent.0, -1
  %i.de = and i32 %i.dd, -8
end_hunk_0
begin_hunk_1_@__local_laplacian:entry
  %i.di = tail call i32 @llvm.smax.i32(i32 %a85, i32 %b97) ; 3 uses
  %i.dj = sub nsw i32 %b149, %a145                ; 2 uses
  %i.dk = ashr i32 %i.dj, 5                       ; 3 uses
  %15 = and i32 %i.dj, -32
  %16 = add nsw i32 %a145, 31
  %a93 = add i32 %16, %15
  %a92 = tail call i32 @llvm.smin.i32(i32 %b149, i32 %a93) ; 2 uses
  %i.dl = add nsw i32 %local_laplacian.extent.1, -1 ; 2 uses
  %i.dm = ashr i32 %i.dl, 6
end_hunk_1
begin_hunk_2_@__local_laplacian:entry
  %f4.v4.min_realized = call i32 @llvm.smin.i32(i32 %a133, i32 %a253) ; 4 uses
  %i.ms = sub nsw i32 %b539, %a392                ; 2 uses
  %i.mt = ashr i32 %i.ms, 3
  %17 = and i32 %i.ms, -8
  %18 = add nsw i32 %a392, 7
  %a271 = add i32 %18, %17
  %i.mu = call i32 @llvm.smin.i32(i32 %b539, i32 %a271) ; 2 uses
  %i.mv = shl nsw i32 %i.mu, 1
  %a270 = add nsw i32 %i.mv, 2
end_hunk_2
begin_hunk_3_@__local_laplacian:entry
  %a275 = call i32 @llvm.smin.i32(i32 %b278, i32 %a276)
  %f4.v3.min_realized = call i32 @llvm.smin.i32(i32 %a163, i32 %a275) ; 4 uses
  %i.nd = sub nsw i32 %b556, %a416
  %19 = and i32 %i.nd, -8
  %20 = add nsw i32 %a416, 7
  %a299 = add i32 %20, %19
  %i.ne = call i32 @llvm.smin.i32(i32 %b556, i32 %a299) ; 2 uses
  %i.nf = shl nsw i32 %i.ne, 1
  %a298 = add nsw i32 %i.nf, 2
end_hunk_3
begin_hunk_4_@__local_laplacian:entry
  %f5.v4.min_realized = call i32 @llvm.smin.i32(i32 %i.mq, i32 %a380) ; 4 uses
  %i.po = sub nsw i32 %b624, %a485                ; 2 uses
  %i.pp = ashr i32 %i.po, 3
  %21 = and i32 %i.po, -8
  %22 = add nsw i32 %a485, 7
  %a397 = add i32 %22, %21
  %i.pq = call i32 @llvm.smin.i32(i32 %b624, i32 %a397) ; 2 uses
  %i.pr = shl nsw i32 %i.pq, 1
  %a396 = add nsw i32 %i.pr, 2
end_hunk_4
begin_hunk_5_@__local_laplacian:entry
  %a401 = call i32 @llvm.smin.i32(i32 %b404, i32 %a402)
  %f5.v3.min_realized = call i32 @llvm.smin.i32(i32 %i.my, i32 %a401) ; 4 uses
  %i.pz = sub nsw i32 %b641, %a509
  %23 = and i32 %i.pz, -8
  %24 = add nsw i32 %a509, 7
  %a422 = add i32 %24, %23
  %i.qa = call i32 @llvm.smin.i32(i32 %b641, i32 %a422) ; 2 uses
  %i.qb = shl nsw i32 %i.qa, 1
  %a421 = add nsw i32 %i.qb, 2
end_hunk_5
begin_hunk_6_@__local_laplacian:entry
  %f72.v4.min_realized = call i32 @llvm.smin.i32(i32 %b135, i32 %a435) ; 4 uses
  %i.se = sub nsw i32 %b539, %a535                ; 2 uses
  %i.sf = ashr i32 %i.se, 5
  %25 = and i32 %i.se, -32
  %26 = add nsw i32 %a535, 31
  %a448 = add i32 %26, %25
  %i.sg = call i32 @llvm.smin.i32(i32 %b539, i32 %a448) ; 2 uses
  %i.sh = shl nsw i32 %i.sg, 1
  %a447 = add nsw i32 %i.sh, 2
end_hunk_6
begin_hunk_7_@__local_laplacian:entry
  %a450 = call i32 @llvm.smin.i32(i32 %b279, i32 %a451)
  %f72.v3.min_realized = call i32 @llvm.smin.i32(i32 %b165, i32 %a450) ; 4 uses
  %i.sl = sub nsw i32 %b556, %a552
  %27 = and i32 %i.sl, -8
  %28 = add nsw i32 %a552, 7
  %a465 = add i32 %28, %27
  %i.sm = call i32 @llvm.smin.i32(i32 %b556, i32 %a465) ; 2 uses
  %i.sn = shl nsw i32 %i.sm, 1
  %a464 = add nsw i32 %i.sn, 2
end_hunk_7
begin_hunk_8_@__local_laplacian:entry
  %f6.v4.min_realized = call i32 @llvm.smin.i32(i32 %i.pk, i32 %a475) ; 4 uses
  %i.uc = sub nsw i32 %b695, %a574                ; 2 uses
  %i.ud = ashr i32 %i.uc, 3
  %29 = and i32 %i.uc, -8
  %30 = add nsw i32 %a574, 7
  %a490 = add i32 %30, %29
  %i.ue = call i32 @llvm.smin.i32(i32 %b695, i32 %a490) ; 2 uses
  %i.uf = shl nsw i32 %i.ue, 1
  %a489 = add nsw i32 %i.uf, 2
end_hunk_8
begin_hunk_9_@__local_laplacian:entry
  %a494 = call i32 @llvm.smin.i32(i32 %b497, i32 %a495)
  %f6.v3.min_realized = call i32 @llvm.smin.i32(i32 %i.pv, i32 %a494) ; 4 uses
  %i.um = sub nsw i32 %b709, %a595
  %31 = and i32 %i.um, -8
  %32 = add nsw i32 %a595, 7
  %a515 = add i32 %32, %31
  %i.un = call i32 @llvm.smin.i32(i32 %b709, i32 %a515) ; 2 uses
  %i.uo = shl nsw i32 %i.un, 1
  %a514 = add nsw i32 %i.uo, 2
end_hunk_9
begin_hunk_10_@__local_laplacian:entry
  %f73.v4.min_realized = call i32 @llvm.smin.i32(i32 %i.sc, i32 %a528) ; 4 uses
  %i.wr = sub nsw i32 %b624, %a620                ; 2 uses
  %i.ws = ashr i32 %i.wr, 5
  %33 = and i32 %i.wr, -32
  %34 = add nsw i32 %a620, 31
  %a539 = add i32 %34, %33
  %i.wt = call i32 @llvm.smin.i32(i32 %b624, i32 %a539) ; 2 uses
  %i.wu = shl nsw i32 %i.wt, 1
  %a538 = add nsw i32 %i.wu, 2
end_hunk_10
begin_hunk_11_@__local_laplacian:entry
  %a541 = call i32 @llvm.smin.i32(i32 %b405, i32 %a542)
  %f73.v3.min_realized = call i32 @llvm.smin.i32(i32 %i.sj, i32 %a541) ; 4 uses
  %i.wy = sub nsw i32 %b641, %a637
  %35 = and i32 %i.wy, -8
  %36 = add nsw i32 %a637, 7
  %a556 = add i32 %36, %35
  %i.wz = call i32 @llvm.smin.i32(i32 %b641, i32 %a556) ; 2 uses
  %i.xa = shl nsw i32 %i.wz, 1
  %a555 = add nsw i32 %i.xa, 2
end_hunk_11
begin_hunk_12_@__local_laplacian:entry
  %f74.v4.min_realized = call i32 @llvm.smin.i32(i32 %i.wp, i32 %a613) ; 4 uses
  %i.aas = sub nsw i32 %b695, %a691               ; 2 uses
  %i.aat = ashr i32 %i.aas, 5
  %37 = and i32 %i.aas, -32
  %38 = add nsw i32 %a691, 31
  %a624 = add i32 %38, %37
  %i.aau = call i32 @llvm.smin.i32(i32 %b695, i32 %a624) ; 2 uses
  %i.aav = shl nsw i32 %i.aau, 1
  %a623 = add nsw i32 %i.aav, 2
end_hunk_12
begin_hunk_13_@__local_laplacian:entry
  %a626 = call i32 @llvm.smin.i32(i32 %b498, i32 %a627)
  %f74.v3.min_realized = call i32 @llvm.smin.i32(i32 %i.ww, i32 %a626) ; 4 uses
  %i.aaz = sub nsw i32 %b709, %a705
  %39 = and i32 %i.aaz, -8
  %40 = add nsw i32 %a705, 7
  %a641 = add i32 %40, %39
  %i.aba = call i32 @llvm.smin.i32(i32 %b709, i32 %a641) ; 2 uses
  %i.abb = shl nsw i32 %i.aba, 1
  %a640 = add nsw i32 %i.abb, 2
end_hunk_13
