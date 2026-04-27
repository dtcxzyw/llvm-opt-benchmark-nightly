begin_hunk_0_@gs_type1_interpret:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !68   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !69   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.y, align 8, !tbaa !67 ; 21 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !67 ; 26 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !67 ; 26 uses
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.81.0.copyload = load i64, ptr %.sroa.81.0..sroa_idx, align 8, !tbaa !67 ; 26 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.107.0.copyload = load i32, ptr %.sroa.107.0..sroa_idx, align 8, !tbaa !4
  %.sroa.124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
end_hunk_0
begin_hunk_1_@gs_type1_interpret:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = icmp sgt i32 %.sroa.124.0.copyload, -1  ; 11 uses
  %i.ah = sub nsw i32 0, %.sroa.124.0.copyload
  %i.ai = zext nneg i32 %i.ah to i64              ; 44 uses
  %.not6831019 = icmp eq i32 %.sroa.107.0.copyload, 0 ; 31 uses
  %i.aj = zext nneg i32 %.sroa.124.0.copyload to i64 ; 52 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 17 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
end_hunk_1
begin_hunk_2_@gs_type1_interpret:bb.a
  br i1 %i.ci, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !77

.thread1096:                                      ; preds = %.thread1096.backedge, %.preheader
  %.2656 = phi i64 [ %.1655, %.preheader ], [ %.2656.be, %.thread1096.backedge ] ; 42 uses
  %.2646 = phi i64 [ %.1645, %.preheader ], [ %.2646.be, %.thread1096.backedge ] ; 45 uses
  %.2627 = phi i16 [ %.1626.lcssa, %.preheader ], [ %.2627.be, %.thread1096.backedge ] ; 2 uses
  %.2618 = phi ptr [ %.1617.lcssa, %.preheader ], [ %.2618.be, %.thread1096.backedge ] ; 7 uses
  %.3606 = phi ptr [ %.2605, %.preheader ], [ %.3606.be, %.thread1096.backedge ] ; 14 uses
end_hunk_2
begin_hunk_3_@gs_type1_interpret:bb.a
  %i.dy = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.dz = shl i64 %i.dy, 20
  %i.ea = ashr i64 %i.dz, 32                      ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %.sroa.81.0.copyload ; 2 uses
  %i.ec = shl i64 %i.eb, %i.ai
  %i.ed = add nsw i64 %i.ec, %.2646
  br i1 %.not6831019, label %bb.p, label %.thread769

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@gs_type1_interpret:bb.a

.thread769:                                       ; preds = %.thread767
  %i.el = mul nsw i64 %i.dk, %.sroa.29.0.copyload
  %3 = add i64 %i.eb, %i.el
  %i.em = shl i64 %3, %i.ai
  %i.en = add i64 %i.em, %.2646
  %i.eo = mul nsw i64 %i.ea, %.sroa.55.0.copyload
  %i.ep = shl i64 %i.eo, %i.ai
  br label %bb.o
end_hunk_4
begin_hunk_5_@gs_type1_interpret:bb.a
  %i.ge = load i64, ptr %i.a, align 16, !tbaa !67
  %i.gf = shl i64 %i.ge, 20
  %i.gg = ashr i64 %i.gf, 32                      ; 3 uses
  %i.gh = mul nsw i64 %i.gg, %.sroa.0.0.copyload  ; 3 uses
  br i1 %i.ag, label %bb.aa, label %.thread778

bb.aa:                                            ; preds = %bb.z
end_hunk_5
begin_hunk_6_@gs_type1_interpret:bb.a
  %i.gp = add nsw i64 %i.go, %.sroa.280.0.copyload
  %i.gq = ashr i64 %i.gp, %i.aj
  %i.gr = add nsw i64 %i.gq, %.2646               ; 2 uses
  br i1 %.not6831019, label %.thread1228, label %.thread1239.a

.thread778:                                       ; preds = %bb.z
  %i.gs = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.gt = shl i64 %i.gs, 20
  %i.gu = ashr i64 %i.gt, 32                      ; 2 uses
  %i.gv = mul nsw i64 %i.gu, %.sroa.81.0.copyload ; 2 uses
  br i1 %.not6831019, label %.thread790.thread, label %bb.ab

.thread790.thread:                                ; preds = %.thread778
  %.pre1204 = load i64, ptr %i.al, align 16, !tbaa !67
  %.pre1206 = load i64, ptr %i.am, align 8, !tbaa !67
  %4 = shl i64 %.pre1204, 20
  %5 = ashr i64 %4, 32
  %i.gw = mul nsw i64 %5, %.sroa.0.0.copyload
  %6 = shl i64 %.pre1206, 20
  %i.gx = ashr i64 %6, 32
  %7 = mul nsw i64 %i.gx, %.sroa.81.0.copyload
  br label %.thread852

.thread1239.a:                                    ; preds = %bb.aa
  %i.gy = mul nsw i64 %i.gg, %.sroa.29.0.copyload
  %8 = add nsw i64 %i.gy, %.sroa.280.0.copyload
  %9 = ashr i64 %8, %i.aj
  %i.gz = add nsw i64 %9, %i.gr
  %i.ha = mul nsw i64 %i.gn, %.sroa.55.0.copyload
  %10 = add nsw i64 %i.ha, %.sroa.280.0.copyload
  %11 = ashr i64 %10, %i.aj
  %i.hb = add nsw i64 %11, %i.gk
  br label %.thread1228

.thread1228:                                      ; preds = %bb.aa, %.thread1239.a
  %.66501236 = phi i64 [ %i.gz, %.thread1239.a ], [ %i.gr, %bb.aa ] ; 3 uses
  %.66601235 = phi i64 [ %i.hb, %.thread1239.a ], [ %i.gk, %bb.aa ] ; 3 uses
  %.pre12051240 = load i64, ptr %i.al, align 16, !tbaa !67
  %.pre12071241 = load i64, ptr %i.am, align 8, !tbaa !67
  %i.hc = shl i64 %.pre12051240, 20
end_hunk_6
begin_hunk_7_@gs_type1_interpret:bb.a
  %i.hn = add nsw i64 %i.hm, %.66501236           ; 2 uses
  br i1 %.not6831019, label %.thread836, label %.thread863

.thread863:                                       ; preds = %.thread1228
  %i.ho = mul nsw i64 %i.hd, %.sroa.29.0.copyload
  %i.hp = add nsw i64 %i.ho, %.sroa.280.0.copyload
end_hunk_7
begin_hunk_8_@gs_type1_interpret:bb.a
  %i.hv = add nsw i64 %i.hu, %i.hh
  br label %.thread836

bb.ab:                                            ; preds = %.thread778
  %12 = mul nsw i64 %i.gg, %.sroa.29.0.copyload
  %13 = add i64 %i.gv, %12
  %i.hw = mul nsw i64 %i.gu, %.sroa.55.0.copyload
  %14 = add i64 %i.gh, %i.hw
  %.pre1205 = load i64, ptr %i.al, align 16, !tbaa !67
  %.pre1207 = load i64, ptr %i.am, align 8, !tbaa !67
  %i.hx = shl i64 %.pre1205, 20
  %15 = ashr i64 %i.hx, 32                        ; 2 uses
  %i.hy = mul nsw i64 %15, %.sroa.0.0.copyload
  %i.hz = shl i64 %.pre1207, 20
  %16 = ashr i64 %i.hz, 32                        ; 2 uses
  %17 = mul nsw i64 %16, %.sroa.81.0.copyload
  %18 = mul nsw i64 %15, %.sroa.29.0.copyload
  %19 = add i64 %17, %18
  %20 = mul nsw i64 %16, %.sroa.55.0.copyload
  %i.ia = add i64 %i.hy, %20
  br label %.thread852

.thread836:                                       ; preds = %.thread1228, %.thread863
end_hunk_8
begin_hunk_9_@gs_type1_interpret:bb.a
  %i.io = add nsw i64 %i.in, %.7651851            ; 2 uses
  br i1 %.not6831019, label %bb.af, label %bb.ac

.thread852:                                       ; preds = %.thread790.thread, %bb.ab
  %.pn1323 = phi i64 [ %14, %bb.ab ], [ %i.gh, %.thread790.thread ] ; 3 uses
  %.pn1325 = phi i64 [ %13, %bb.ab ], [ %i.gv, %.thread790.thread ] ; 4 uses
  %.pn1225 = phi i64 [ %19, %bb.ab ], [ %7, %.thread790.thread ] ; 2 uses
  %.pn1227 = phi i64 [ %i.ia, %bb.ab ], [ %i.gw, %.thread790.thread ] ; 2 uses
  %.pn1324 = shl i64 %.pn1325, %i.ai
  %.66507991245 = add i64 %.pn1324, %.2646        ; 2 uses
  %.pn1322 = shl i64 %.pn1323, %i.ai
  %.66607971246 = add i64 %.pn1322, %.2656        ; 2 uses
  %21 = add i64 %.pn1323, %.pn1227
  %22 = shl i64 %21, %i.ai
  %.7661861 = add i64 %22, %.2656                 ; 2 uses
  %23 = add i64 %.pn1325, %.pn1225
  %24 = shl i64 %23, %i.ai
  %.7651862 = add i64 %24, %.2646                 ; 2 uses
  %i.ip = load i64, ptr %i.at, align 16, !tbaa !67
  %i.iq = shl i64 %i.ip, 20
  %i.ir = ashr i64 %i.iq, 32                      ; 2 uses
  %i.is = mul nsw i64 %i.ir, %.sroa.0.0.copyload
  %25 = add i64 %.pn1227, %i.is
  %26 = add i64 %.pn1323, %25
  %i.it = shl i64 %26, %i.ai
  %i.iu = add i64 %i.it, %.2656                   ; 2 uses
  %i.iv = load i64, ptr %i.au, align 8, !tbaa !67
  %i.iw = shl i64 %i.iv, 20
  %i.ix = ashr i64 %i.iw, 32                      ; 2 uses
  %i.iy = mul nsw i64 %i.ix, %.sroa.81.0.copyload
  %27 = add i64 %.pn1225, %i.iy                   ; 2 uses
  %28 = add i64 %.pn1325, %27
  %i.iz = shl i64 %28, %i.ai
  %i.ja = add i64 %i.iz, %.2646
  br i1 %.not6831019, label %bb.af, label %bb.ad

bb.ac:                                            ; preds = %.thread836
end_hunk_9
begin_hunk_10_@gs_type1_interpret:bb.a

bb.ad:                                            ; preds = %.thread852
  %i.ji = mul nsw i64 %i.ir, %.sroa.29.0.copyload
  %29 = add i64 %27, %i.ji
  %30 = add i64 %.pn1325, %29
  %i.jj = shl i64 %30, %i.ai
  %i.jk = add i64 %i.jj, %.2646
  %i.jl = mul nsw i64 %i.ix, %.sroa.55.0.copyload
  %i.jm = shl i64 %i.jl, %i.ai
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jn = phi i64 [ %i.je, %bb.ac ], [ %i.jk, %bb.ad ]
  %.7651850873886892911 = phi i64 [ %.7651851, %bb.ac ], [ %.7651862, %bb.ad ]
  %.7661848875885894909 = phi i64 [ %.7661849, %bb.ac ], [ %.7661861, %bb.ad ]
  %.6660796806813844879884896907 = phi i64 [ %.66601235, %bb.ac ], [ %.66607971246, %bb.ad ]
  %.6650798804815842881883898905 = phi i64 [ %.66501236, %bb.ac ], [ %.66507991245, %bb.ad ]
  %i.jo = phi i64 [ %i.ih, %bb.ac ], [ %i.iu, %bb.ad ]
  %i.jp = phi i64 [ %i.jh, %bb.ac ], [ %i.jm, %bb.ad ]
  %i.jq = add nsw i64 %i.jp, %i.jo
  br label %bb.af

bb.af:                                            ; preds = %.thread1058, %.thread980, %.thread836, %.thread1071, %bb.cj, %.thread993, %bb.cf, %.thread852, %bb.ae
  %.8662 = phi i64 [ %i.jq, %bb.ae ], [ %i.iu, %.thread852 ], [ %i.wr, %bb.cf ], [ %50, %.thread993 ], [ %i.yw, %bb.cj ], [ %.146681078, %.thread1071 ], [ %i.ih, %.thread836 ], [ %i.wj, %.thread980 ], [ %.146681068, %.thread1058 ] ; 2 uses
  %.8652 = phi i64 [ %i.jn, %bb.ae ], [ %i.ja, %.thread852 ], [ %i.wt, %bb.cf ], [ %.121001, %.thread993 ], [ %i.yu, %bb.cj ], [ %74, %.thread1071 ], [ %i.io, %.thread836 ], [ %.12992, %.thread980 ], [ %i.ym, %.thread1058 ] ; 2 uses
  %.0643 = phi i64 [ %.6660796806813844879884896907, %bb.ae ], [ %.66607971246, %.thread852 ], [ %.1266695395896598510071012, %bb.cf ], [ %.126669541262, %.thread993 ], [ %i.yt, %bb.cj ], [ %59, %.thread1071 ], [ %.66601235, %.thread836 ], [ %.126661254, %.thread980 ], [ %i.xa, %.thread1058 ]
  %.0642 = phi i64 [ %.6650798804815842881883898905, %bb.ae ], [ %.66507991245, %.thread852 ], [ %i.wq, %bb.cf ], [ %35, %.thread993 ], [ %.13103110361043106310851090, %bb.cj ], [ %.1310321278, %.thread1071 ], [ %.66501236, %.thread836 ], [ %i.ux, %.thread980 ], [ %.131270, %.thread1058 ]
  %.0641 = phi i64 [ %.7661848875885894909, %bb.ae ], [ %.7661861, %.thread852 ], [ %.1366798910061014, %bb.cf ], [ %.136671000, %.thread993 ], [ %.14668106710841092, %bb.cj ], [ %.146681078, %.thread1071 ], [ %.7661849, %.thread836 ], [ %.13667990, %.thread980 ], [ %.146681068, %.thread1058 ]
  %.0640 = phi i64 [ %.7651850873886892911, %bb.ae ], [ %.7651862, %.thread852 ], [ %.1299110051016, %bb.cf ], [ %.121001, %.thread993 ], [ %.14106910831094, %bb.cj ], [ %.141079, %.thread1071 ], [ %.7651851, %.thread836 ], [ %.12992, %.thread980 ], [ %.141070, %.thread1058 ]
  %i.jr = call i32 @gx_path_add_curve(ptr noundef %i.f, i64 noundef %.0643, i64 noundef %.0642, i64 noundef %.0641, i64 noundef %.0640, i64 noundef %.8662, i64 noundef %.8652) #12
  br label %bb.q

end_hunk_10
begin_hunk_11_@gs_type1_interpret:bb.a
  %i.ln = load i64, ptr %i.al, align 16, !tbaa !67
  %i.lo = shl i64 %i.ln, 20
  %i.lp = ashr i64 %i.lo, 32                      ; 2 uses
  %i.lq = mul nsw i64 %i.lp, %.sroa.81.0.copyload ; 2 uses
  %i.lr = shl i64 %i.lq, %i.ai
  %i.ls = add nsw i64 %i.lr, %i.t
  br i1 %.not6831019, label %bb.aq, label %.thread925

bb.ao:                                            ; preds = %bb.an
end_hunk_11
begin_hunk_12_@gs_type1_interpret:bb.a

.thread925:                                       ; preds = %.thread923
  %i.ma = mul nsw i64 %i.kz, %.sroa.29.0.copyload
  %31 = add i64 %i.lq, %i.ma
  %i.mb = shl i64 %31, %i.ai
  %i.mc = add i64 %i.mb, %i.t
  %i.md = mul nsw i64 %i.lp, %.sroa.55.0.copyload
  %i.me = shl i64 %i.md, %i.ai
  br label %bb.ap
end_hunk_12
begin_hunk_13_@gs_type1_interpret:bb.a

bb.bb:                                            ; preds = %bb.al, %bb.ba, %bb.ar
  %.10664 = phi i64 [ %.2656, %bb.ar ], [ %.2656, %bb.ba ], [ %i.r, %bb.al ] ; 2 uses
  %.10 = phi i64 [ %.2646, %bb.ar ], [ %.2646, %bb.ba ], [ %i.t, %bb.al ] ; 3 uses
  %.4629 = phi i16 [ %i.kn, %bb.ar ], [ %i.cp, %bb.ba ], [ %i.kn, %bb.al ] ; 3 uses
  %.5621 = phi ptr [ %i.ko, %bb.ar ], [ %i.cq, %bb.ba ], [ %i.ko, %bb.al ] ; 3 uses
  %i.og = load i64, ptr %i.a, align 16, !tbaa !67
end_hunk_13
begin_hunk_14_@gs_type1_interpret:bb.a
  %i.ow = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.ox = shl i64 %i.ow, 20
  %i.oy = ashr i64 %i.ox, 32                      ; 2 uses
  %i.oz = mul nsw i64 %i.oy, %.sroa.81.0.copyload ; 2 uses
  %i.pa = shl i64 %i.oz, %i.ai
  %i.pb = add nsw i64 %i.pa, %.10
  br i1 %.not6831019, label %.thread1096.backedge, label %.thread930

bb.bd:                                            ; preds = %bb.bc
end_hunk_14
begin_hunk_15_@gs_type1_interpret:bb.a

.thread930:                                       ; preds = %.thread928
  %i.pj = mul nsw i64 %i.oi, %.sroa.29.0.copyload
  %32 = add i64 %i.oz, %i.pj
  %i.pk = shl i64 %32, %i.ai
  %i.pl = add i64 %i.pk, %.10
  %i.pm = mul nsw i64 %i.oy, %.sroa.55.0.copyload
  %i.pn = shl i64 %i.pm, %i.ai
  br label %bb.be
end_hunk_15
begin_hunk_16_@gs_type1_interpret:bb.a
  %i.td = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.te = shl i64 %i.td, 20
  %i.tf = ashr i64 %i.te, 32                      ; 2 uses
  %i.tg = mul nsw i64 %i.tf, %.sroa.81.0.copyload ; 2 uses
  %i.th = shl i64 %i.tg, %i.ai
  %i.ti = add nsw i64 %i.th, %.2646
  br i1 %.not6831019, label %bb.bx, label %.thread935

bb.bv:                                            ; preds = %bb.bu
end_hunk_16
begin_hunk_17_@gs_type1_interpret:bb.a

.thread935:                                       ; preds = %.thread933
  %i.tq = mul nsw i64 %i.sp, %.sroa.29.0.copyload
  %33 = add i64 %i.tg, %i.tq
  %i.tr = shl i64 %33, %i.ai
  %i.ts = add i64 %i.tr, %.2646
  %i.tt = mul nsw i64 %i.tf, %.sroa.55.0.copyload
  %i.tu = shl i64 %i.tt, %i.ai
  br label %bb.bw
end_hunk_17
begin_hunk_18_@gs_type1_interpret:bb.a
  %i.ur = load i64, ptr %i.a, align 16, !tbaa !67
  %i.us = shl i64 %i.ur, 20
  %i.ut = ashr i64 %i.us, 32                      ; 3 uses
  %i.uu = mul nsw i64 %i.ut, %.sroa.81.0.copyload ; 3 uses
  br i1 %i.ag, label %bb.cd, label %.thread940

bb.cd:                                            ; preds = %bb.cc
  %i.uv = add nsw i64 %i.uu, %.sroa.280.0.copyload
end_hunk_18
begin_hunk_19_@gs_type1_interpret:bb.a
  %i.ux = add nsw i64 %i.uw, %.2646               ; 3 uses
  br i1 %.not6831019, label %.thread1248, label %.thread1257

.thread940:                                       ; preds = %bb.cc
  %34 = shl i64 %i.uu, %i.ai
  %35 = add nsw i64 %34, %.2646                   ; 2 uses
  br i1 %.not6831019, label %.thread948.thread, label %bb.ce

.thread948.thread:                                ; preds = %.thread940
  %.pre1194 = load i64, ptr %i.ak, align 8, !tbaa !67
  %.pre1196 = load i64, ptr %i.al, align 16, !tbaa !67
  %i.uy = shl i64 %.pre1194, 20
  %i.uz = ashr i64 %i.uy, 32
  %i.va = mul nsw i64 %i.uz, %.sroa.0.0.copyload
  %i.vb = shl i64 %.pre1196, 20
  %i.vc = ashr i64 %i.vb, 32
  %i.vd = mul nsw i64 %i.vc, %.sroa.81.0.copyload
  br label %.thread993

.thread1257:                                      ; preds = %bb.cd
  %i.ve = mul nsw i64 %i.ut, %.sroa.55.0.copyload
end_hunk_19
begin_hunk_20_@gs_type1_interpret:bb.a
  %i.vr = add nsw i64 %i.vq, %.sroa.280.0.copyload
  %i.vs = ashr i64 %i.vr, %i.aj
  %i.vt = add nsw i64 %i.vs, %i.ux                ; 2 uses
  br i1 %.not6831019, label %.thread980, label %.thread1002.a

.thread1002.a:                                    ; preds = %.thread1248
  %36 = mul nsw i64 %i.vj, %.sroa.29.0.copyload
  %37 = add nsw i64 %36, %.sroa.280.0.copyload
  %i.vu = ashr i64 %37, %i.aj
  %38 = add nsw i64 %i.vu, %i.vt
  %i.vv = mul nsw i64 %i.vp, %.sroa.55.0.copyload
  %39 = add nsw i64 %i.vv, %.sroa.280.0.copyload
  %40 = ashr i64 %39, %i.aj
  %i.vw = add nsw i64 %40, %i.vn
  br label %.thread980

bb.ce:                                            ; preds = %.thread940
  %i.vx = mul nsw i64 %i.ut, %.sroa.55.0.copyload
  %41 = shl i64 %i.vx, %i.ai
  %i.vy = add nsw i64 %41, %.2656
  %.pre1195 = load i64, ptr %i.ak, align 8, !tbaa !67
  %.pre1197 = load i64, ptr %i.al, align 16, !tbaa !67
  %42 = shl i64 %.pre1195, 20
  %43 = ashr i64 %42, 32                          ; 2 uses
  %44 = mul nsw i64 %43, %.sroa.0.0.copyload
  %45 = shl i64 %.pre1197, 20
  %i.vz = ashr i64 %45, 32                        ; 2 uses
  %46 = mul nsw i64 %i.vz, %.sroa.81.0.copyload
  %i.wa = mul nsw i64 %43, %.sroa.29.0.copyload
  %i.wb = add i64 %46, %i.wa
  %47 = mul nsw i64 %i.vz, %.sroa.55.0.copyload
  %i.wc = add i64 %44, %47
  br label %.thread993

.thread980:                                       ; preds = %.thread1248, %.thread1002.a
  %.12992 = phi i64 [ %38, %.thread1002.a ], [ %i.vt, %.thread1248 ] ; 3 uses
  %.13667990 = phi i64 [ %i.vw, %.thread1002.a ], [ %i.vn, %.thread1248 ] ; 3 uses
  %i.wd = load i64, ptr %i.am, align 8, !tbaa !67
  %i.we = shl i64 %i.wd, 20
  %i.wf = ashr i64 %i.we, 32                      ; 2 uses
end_hunk_20
begin_hunk_21_@gs_type1_interpret:bb.a
  %i.wh = add nsw i64 %i.wg, %.sroa.280.0.copyload
  %i.wi = ashr i64 %i.wh, %i.aj
  %i.wj = add nsw i64 %i.wi, %.13667990           ; 2 uses
  br i1 %.not6831019, label %bb.af, label %51

.thread993:                                       ; preds = %.thread948.thread, %bb.ce
  %.126669541262 = phi i64 [ %i.vy, %bb.ce ], [ %.2656, %.thread948.thread ] ; 4 uses
  %.pn1221 = phi i64 [ %i.wb, %bb.ce ], [ %i.vd, %.thread948.thread ]
  %.pn1223 = phi i64 [ %i.wc, %bb.ce ], [ %i.va, %.thread948.thread ] ; 2 uses
  %.pn1222 = shl i64 %.pn1223, %i.ai
  %.136671000 = add i64 %.pn1222, %.126669541262  ; 2 uses
  %48 = add i64 %i.uu, %.pn1221
  %i.wk = shl i64 %48, %i.ai
  %.121001 = add i64 %i.wk, %.2646                ; 3 uses
  %i.wl = load i64, ptr %i.am, align 8, !tbaa !67
  %i.wm = shl i64 %i.wl, 20
  %i.wn = ashr i64 %i.wm, 32                      ; 2 uses
  %i.wo = mul nsw i64 %i.wn, %.sroa.0.0.copyload
  %i.wp = add i64 %.pn1223, %i.wo
  %49 = shl i64 %i.wp, %i.ai
  %50 = add i64 %49, %.126669541262               ; 2 uses
  br i1 %.not6831019, label %bb.af, label %55

51:                                               ; preds = %.thread980
  %52 = mul nsw i64 %i.wf, %.sroa.29.0.copyload
  %53 = add nsw i64 %52, %.sroa.280.0.copyload
  %54 = ashr i64 %53, %i.aj
  br label %bb.cf

55:                                               ; preds = %.thread993
  %56 = mul nsw i64 %i.wn, %.sroa.29.0.copyload
  %57 = shl i64 %56, %i.ai
  br label %bb.cf

bb.cf:                                            ; preds = %55, %51
  %.1299110051016 = phi i64 [ %.12992, %51 ], [ %.121001, %55 ] ; 2 uses
  %.1366798910061014 = phi i64 [ %.13667990, %51 ], [ %.136671000, %55 ]
  %i.wq = phi i64 [ %i.ux, %51 ], [ %35, %55 ]
  %.1266695395896598510071012 = phi i64 [ %.126661254, %51 ], [ %.126669541262, %55 ]
  %i.wr = phi i64 [ %i.wj, %51 ], [ %50, %55 ]
  %i.ws = phi i64 [ %54, %51 ], [ %57, %55 ]
  %i.wt = add nsw i64 %i.ws, %.1299110051016
  br label %bb.af

end_hunk_21
begin_hunk_22_@gs_type1_interpret:bb.a
  %i.wu = load i64, ptr %i.a, align 16, !tbaa !67
  %i.wv = shl i64 %i.wu, 20
  %i.ww = ashr i64 %i.wv, 32                      ; 3 uses
  %i.wx = mul nsw i64 %i.ww, %.sroa.0.0.copyload  ; 3 uses
  br i1 %i.ag, label %bb.ch, label %.thread1018

bb.ch:                                            ; preds = %bb.cg
  %i.wy = add nsw i64 %i.wx, %.sroa.280.0.copyload
end_hunk_22
begin_hunk_23_@gs_type1_interpret:bb.a
  %i.xa = add nsw i64 %i.wz, %.2656               ; 3 uses
  br i1 %.not6831019, label %.thread1264, label %.thread1273

.thread1018:                                      ; preds = %bb.cg
  %58 = shl i64 %i.wx, %i.ai
  %59 = add nsw i64 %58, %.2656                   ; 2 uses
  br i1 %.not6831019, label %.thread1026.thread, label %bb.ci

.thread1026.thread:                               ; preds = %.thread1018
  %.pre = load i64, ptr %i.ak, align 8, !tbaa !67
  %.pre1192 = load i64, ptr %i.al, align 16, !tbaa !67
  %i.xb = shl i64 %.pre, 20
  %i.xc = ashr i64 %i.xb, 32
  %i.xd = mul nsw i64 %i.xc, %.sroa.0.0.copyload
  %i.xe = shl i64 %.pre1192, 20
  %i.xf = ashr i64 %i.xe, 32
  %i.xg = mul nsw i64 %i.xf, %.sroa.81.0.copyload
  br label %.thread1071

.thread1273:                                      ; preds = %bb.ch
  %i.xh = mul nsw i64 %i.ww, %.sroa.29.0.copyload
end_hunk_23
begin_hunk_24_@gs_type1_interpret:bb.a
  %i.xu = add nsw i64 %i.xt, %.sroa.280.0.copyload
  %i.xv = ashr i64 %i.xu, %i.aj
  %i.xw = add nsw i64 %i.xv, %.131270             ; 2 uses
  br i1 %.not6831019, label %.thread1058, label %.thread1080.a

.thread1080.a:                                    ; preds = %.thread1264
  %60 = mul nsw i64 %i.xm, %.sroa.29.0.copyload
  %61 = add nsw i64 %60, %.sroa.280.0.copyload
  %i.xx = ashr i64 %61, %i.aj
  %62 = add nsw i64 %i.xx, %i.xw
  %i.xy = mul nsw i64 %i.xs, %.sroa.55.0.copyload
  %63 = add nsw i64 %i.xy, %.sroa.280.0.copyload
  %64 = ashr i64 %63, %i.aj
  %i.xz = add nsw i64 %64, %i.xq
  br label %.thread1058

bb.ci:                                            ; preds = %.thread1018
  %i.ya = mul nsw i64 %i.ww, %.sroa.29.0.copyload
  %65 = shl i64 %i.ya, %i.ai
  %i.yb = add nsw i64 %65, %.2646
  %.pre1191 = load i64, ptr %i.ak, align 8, !tbaa !67
  %.pre1193 = load i64, ptr %i.al, align 16, !tbaa !67
  %66 = shl i64 %.pre1191, 20
  %67 = ashr i64 %66, 32                          ; 2 uses
  %68 = mul nsw i64 %67, %.sroa.0.0.copyload
  %69 = shl i64 %.pre1193, 20
  %i.yc = ashr i64 %69, 32                        ; 2 uses
  %70 = mul nsw i64 %i.yc, %.sroa.81.0.copyload
  %i.yd = mul nsw i64 %67, %.sroa.29.0.copyload
  %i.ye = add i64 %70, %i.yd
  %71 = mul nsw i64 %i.yc, %.sroa.55.0.copyload
  %i.yf = add i64 %68, %71
  br label %.thread1071

.thread1058:                                      ; preds = %.thread1264, %.thread1080.a
  %.141070 = phi i64 [ %62, %.thread1080.a ], [ %i.xw, %.thread1264 ] ; 3 uses
  %.146681068 = phi i64 [ %i.xz, %.thread1080.a ], [ %i.xq, %.thread1264 ] ; 3 uses
  %i.yg = load i64, ptr %i.am, align 8, !tbaa !67
  %i.yh = shl i64 %i.yg, 20
  %i.yi = ashr i64 %i.yh, 32                      ; 2 uses
end_hunk_24
begin_hunk_25_@gs_type1_interpret:bb.a
  %i.yk = add nsw i64 %i.yj, %.sroa.280.0.copyload
  %i.yl = ashr i64 %i.yk, %i.aj
  %i.ym = add nsw i64 %i.yl, %.141070             ; 2 uses
  br i1 %.not6831019, label %bb.af, label %75

.thread1071:                                      ; preds = %.thread1026.thread, %bb.ci
  %.1310321278 = phi i64 [ %i.yb, %bb.ci ], [ %.2646, %.thread1026.thread ] ; 4 uses
  %.pn1217 = phi i64 [ %i.ye, %bb.ci ], [ %i.xg, %.thread1026.thread ] ; 2 uses
  %.pn1219 = phi i64 [ %i.yf, %bb.ci ], [ %i.xd, %.thread1026.thread ]
  %i.yn = add i64 %i.wx, %.pn1219
  %72 = shl i64 %i.yn, %i.ai
  %.146681078 = add i64 %72, %.2656               ; 3 uses
  %.pn1216 = shl i64 %.pn1217, %i.ai
  %.141079 = add i64 %.pn1216, %.1310321278       ; 2 uses
  %i.yo = load i64, ptr %i.am, align 8, !tbaa !67
  %i.yp = shl i64 %i.yo, 20
  %i.yq = ashr i64 %i.yp, 32                      ; 2 uses
  %i.yr = mul nsw i64 %i.yq, %.sroa.81.0.copyload
  %i.ys = add i64 %.pn1217, %i.yr
  %73 = shl i64 %i.ys, %i.ai
  %74 = add i64 %73, %.1310321278                 ; 2 uses
  br i1 %.not6831019, label %bb.af, label %79

75:                                               ; preds = %.thread1058
  %76 = mul nsw i64 %i.yi, %.sroa.55.0.copyload
  %77 = add nsw i64 %76, %.sroa.280.0.copyload
  %78 = ashr i64 %77, %i.aj
  br label %bb.cj

79:                                               ; preds = %.thread1071
  %80 = mul nsw i64 %i.yq, %.sroa.55.0.copyload
  %81 = shl i64 %80, %i.ai
  br label %bb.cj

bb.cj:                                            ; preds = %79, %75
  %.14106910831094 = phi i64 [ %.141070, %75 ], [ %.141079, %79 ]
  %.14668106710841092 = phi i64 [ %.146681068, %75 ], [ %.146681078, %79 ] ; 2 uses
  %i.yt = phi i64 [ %i.xa, %75 ], [ %59, %79 ]
  %.13103110361043106310851090 = phi i64 [ %.131270, %75 ], [ %.1310321278, %79 ]
  %i.yu = phi i64 [ %i.ym, %75 ], [ %74, %79 ]
  %i.yv = phi i64 [ %78, %75 ], [ %81, %79 ]
  %i.yw = add nsw i64 %i.yv, %.14668106710841092
  br label %bb.af

end_hunk_25
