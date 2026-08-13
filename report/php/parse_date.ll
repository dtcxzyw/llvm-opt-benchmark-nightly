inline.NumInlined: 177
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@timelib_parse_from_format_with_map:bb.a
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdd, i64 4
  store i32 %i.bdg, ptr %i.bdh, align 4, !tbaa !52
  %i.bdi = load i8, ptr %i.eu, align 1, !tbaa !16
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  store i8 %i.bdi, ptr %i.bdj, align 8, !tbaa !53
  %i.bdk = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.35) #17
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdd, i64 16
  store ptr %i.bdk, ptr %i.bdl, align 8, !tbaa !54
  br label %timelib_skip_day_suffix.exit

timelib_lookup_format.exit.thread:                ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.thread, %timelib_lookup_format.exit
  %.not441 = icmp eq i8 %.us-phi1035, %.us-phi1033
  br i1 %.not441, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %timelib_lookup_format.exit.thread
  %i.bdm = load i32, ptr %i.dq, align 4, !tbaa !12 ; 4 uses
  %i.bdn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bdm)
  %i.bdo = icmp samesign ult i32 %i.bdn, 2
  %.pre.i.i882 = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bdo, label %bb.gv, label %add_pbf_error.exit885

bb.gv:                                            ; preds = %bb.gu
  %.not.i.i883 = icmp eq i32 %i.bdm, 0
  %i.bdp = shl i32 %i.bdm, 1
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = mul nsw i64 %i.bdq, 24
  %i.bds = select i1 %.not.i.i883, i64 24, i64 %i.bdr
  %i.bdt = tail call ptr @_erealloc(ptr noundef %.pre.i.i882, i64 noundef %i.bds) #20 ; 2 uses
  store ptr %i.bdt, ptr %i.f, align 8, !tbaa !48
  %.pre9.i.i884 = load i32, ptr %i.dq, align 8, !tbaa !12
  br label %add_pbf_error.exit885

add_pbf_error.exit885:                            ; preds = %bb.gu, %bb.gv
  %i.bdu = phi i32 [ %.pre9.i.i884, %bb.gv ], [ %i.bdm, %bb.gu ] ; 2 uses
  %i.bdv = phi ptr [ %i.bdt, %bb.gv ], [ %.pre.i.i882, %bb.gu ]
  %i.bdw = add i32 %i.bdu, 1
  store i32 %i.bdw, ptr %i.dq, align 8, !tbaa !12
  %i.bdx = sext i32 %i.bdu to i64
  %i.bdy = getelementptr inbounds [24 x i8], ptr %i.bdv, i64 %i.bdx ; 4 uses
  store i32 537, ptr %i.bdy, align 8, !tbaa !50
  %i.bdz = ptrtoint ptr %i.eu to i64
  %i.bea = sub i64 %i.bdz, %i.q
  %i.beb = trunc i64 %i.bea to i32
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdy, i64 4
  store i32 %i.beb, ptr %i.bec, align 4, !tbaa !52
  %i.bed = load i8, ptr %i.eu, align 1, !tbaa !16
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdy, i64 8
  store i8 %i.bed, ptr %i.bee, align 8, !tbaa !53
  %i.bef = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.36) #17
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdy, i64 16
  store ptr %i.bef, ptr %i.beg, align 8, !tbaa !54
  br label %bb.gw

bb.gw:                                            ; preds = %add_pbf_error.exit885, %timelib_lookup_format.exit.thread
  %i.beh = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store ptr %i.beh, ptr %i.a, align 8, !tbaa !13
  br label %timelib_skip_day_suffix.exit

timelib_skip_day_suffix.exit:                     ; preds = %.preheader969, %bb.ei, %bb.eh, %bb.eg, %.preheader968, %bb.fi, %bb.fh, %add_pbf_error.exit726, %bb.dp, %add_pbf_error.exit701, %bb.di, %add_pbf_error.exit579, %bb.bh, %bb.bg, %bb.be, %bb.ac, %bb.ab, %bb.x, %timelib_lookup_format.exit, %add_pbf_error.exit774, %bb.ef, %add_pbf_error.exit750, %bb.dx, %add_pbf_error.exit502, %bb.p, %bb.gn, %bb.da, %bb.db, %bb.al, %bb.am, %bb.gw, %timelib_parse_tz_minutes.exit, %add_pbf_error.exit881, %bb.gi, %add_pbf_error.exit870, %add_pbf_error.exit866, %bb.gb, %add_pbf_error.exit846, %add_pbf_error.exit842, %bb.fu, %add_pbf_error.exit822, %bb.fq, %add_pbf_error.exit802, %add_pbf_error.exit798, %bb.fj, %bb.eu, %bb.et, %add_pbf_error.exit794, %bb.ep, %add_pbf_error.exit790, %bb.en, %add_pbf_error.exit676, %bb.co, %add_pbf_error.exit663, %bb.cg, %add_pbf_error.exit639, %add_pbf_error.exit635, %bb.bv, %add_pbf_error.exit611, %bb.bo, %add_pbf_error.exit603, %bb.ax, %add_pbf_error.exit568, %bb.at, %add_pbf_error.exit564, %add_pbf_error.exit540, %bb.w, %add_pbf_error.exit511
  %.1341 = phi i32 [ %.0340.ph1070, %bb.gw ], [ %.0340.ph1070, %timelib_parse_tz_minutes.exit ], [ %.0340.ph1070, %add_pbf_error.exit511 ], [ %.0340.ph1070, %bb.w ], [ %.0340.ph1070, %timelib_lookup_format.exit ], [ %.0340.ph1070, %add_pbf_error.exit540 ], [ %.0340.ph1070, %bb.am ], [ %.0340.ph1070, %bb.al ], [ %.0340.ph1070, %add_pbf_error.exit564 ], [ %.0340.ph1070, %bb.at ], [ %.0340.ph1070, %bb.ax ], [ %.0340.ph1070, %add_pbf_error.exit568 ], [ %.0340.ph1070, %bb.ac ], [ %.0340.ph1070, %add_pbf_error.exit603 ], [ %.0340.ph1070, %bb.bo ], [ %.0340.ph1070, %add_pbf_error.exit611 ], [ %.0340.ph1070, %bb.bv ], [ %.0340.ph1070, %add_pbf_error.exit635 ], [ %.0340.ph1070, %add_pbf_error.exit639 ], [ %.0340.ph1070, %bb.cg ], [ %.0340.ph1070, %add_pbf_error.exit663 ], [ %.0340.ph1070, %bb.co ], [ %.0340.ph1070, %add_pbf_error.exit676 ], [ %.0340.ph1070, %bb.db ], [ %.0340.ph1070, %bb.da ], [ %.0340.ph1070, %add_pbf_error.exit579 ], [ %.0340.ph1070, %add_pbf_error.exit701 ], [ %.0340.ph1070, %add_pbf_error.exit502 ], [ %.0340.ph1070, %add_pbf_error.exit750 ], [ %.0340.ph1070, %add_pbf_error.exit726 ], [ %.0340.ph1070, %bb.en ], [ %.0340.ph1070, %add_pbf_error.exit790 ], [ %.0340.ph1070, %bb.ep ], [ %.0340.ph1070, %add_pbf_error.exit794 ], [ %.0340.ph1070, %bb.et ], [ %.0340.ph1070, %bb.eu ], [ %.0340.ph1070, %bb.fh ], [ %.0340.ph1070, %bb.fj ], [ %.0340.ph1070, %add_pbf_error.exit802 ], [ %.0340.ph1070, %bb.fq ], [ %.0340.ph1070, %add_pbf_error.exit798 ], [ %.0340.ph1070, %bb.fi ], [ %.0340.ph1070, %add_pbf_error.exit774 ], [ %.0340.ph1070, %add_pbf_error.exit822 ], [ %.0340.ph1070, %bb.fu ], [ %.0340.ph1070, %add_pbf_error.exit842 ], [ %.0340.ph1070, %add_pbf_error.exit846 ], [ %.0340.ph1070, %bb.gb ], [ -9999999, %add_pbf_error.exit866 ], [ %i.azp, %add_pbf_error.exit870 ], [ %i.azp, %bb.gi ], [ %.0340.ph1070, %bb.gn ], [ %.0340.ph1070, %add_pbf_error.exit881 ], [ %.0340.ph1070, %bb.p ], [ %.0340.ph1070, %bb.dx ], [ %.0340.ph1070, %bb.ef ], [ %.0340.ph1070, %bb.x ], [ %.0340.ph1070, %bb.ab ], [ %.0340.ph1070, %bb.be ], [ %.0340.ph1070, %bb.bg ], [ %.0340.ph1070, %bb.bh ], [ %.0340.ph1070, %bb.di ], [ %.0340.ph1070, %bb.dp ], [ %.0340.ph1070, %bb.ei ], [ %.0340.ph1070, %.preheader968 ], [ %.0340.ph1070, %bb.eg ], [ %.0340.ph1070, %bb.eh ], [ %.0340.ph1070, %.preheader969 ] ; 2 uses
  %.1339 = phi i32 [ %.0338.ph1073, %bb.gw ], [ %.0338.ph1073, %timelib_parse_tz_minutes.exit ], [ %.0338.ph1073, %add_pbf_error.exit511 ], [ %.0338.ph1073, %bb.w ], [ %.0338.ph1073, %timelib_lookup_format.exit ], [ %.0338.ph1073, %add_pbf_error.exit540 ], [ %.0338.ph1073, %bb.am ], [ %.0338.ph1073, %bb.al ], [ %.0338.ph1073, %add_pbf_error.exit564 ], [ %.0338.ph1073, %bb.at ], [ %.0338.ph1073, %bb.ax ], [ %.0338.ph1073, %add_pbf_error.exit568 ], [ %.0338.ph1073, %bb.ac ], [ %.0338.ph1073, %add_pbf_error.exit603 ], [ %.0338.ph1073, %bb.bo ], [ %.0338.ph1073, %add_pbf_error.exit611 ], [ %.0338.ph1073, %bb.bv ], [ %.0338.ph1073, %add_pbf_error.exit635 ], [ %.0338.ph1073, %add_pbf_error.exit639 ], [ %.0338.ph1073, %bb.cg ], [ %.0338.ph1073, %add_pbf_error.exit663 ], [ %.0338.ph1073, %bb.co ], [ %.0338.ph1073, %add_pbf_error.exit676 ], [ %.0338.ph1073, %bb.db ], [ %.0338.ph1073, %bb.da ], [ %.0338.ph1073, %add_pbf_error.exit579 ], [ %.0338.ph1073, %add_pbf_error.exit701 ], [ %.0338.ph1073, %add_pbf_error.exit502 ], [ %.0338.ph1073, %add_pbf_error.exit750 ], [ %.0338.ph1073, %add_pbf_error.exit726 ], [ %.0338.ph1073, %bb.en ], [ %.0338.ph1073, %add_pbf_error.exit790 ], [ %.0338.ph1073, %bb.ep ], [ %.0338.ph1073, %add_pbf_error.exit794 ], [ %.0338.ph1073, %bb.et ], [ %.0338.ph1073, %bb.eu ], [ %.0338.ph1073, %bb.fh ], [ %.0338.ph1073, %bb.fj ], [ %.0338.ph1073, %add_pbf_error.exit802 ], [ %.0338.ph1073, %bb.fq ], [ %.0338.ph1073, %add_pbf_error.exit798 ], [ %.0338.ph1073, %bb.fi ], [ %.0338.ph1073, %add_pbf_error.exit774 ], [ %.0338.ph1073, %add_pbf_error.exit822 ], [ %.0338.ph1073, %bb.fu ], [ -9999999, %add_pbf_error.exit842 ], [ %i.axl, %add_pbf_error.exit846 ], [ %i.axl, %bb.gb ], [ %.0338.ph1073, %add_pbf_error.exit866 ], [ %.0338.ph1073, %add_pbf_error.exit870 ], [ %.0338.ph1073, %bb.gi ], [ %.0338.ph1073, %bb.gn ], [ %.0338.ph1073, %add_pbf_error.exit881 ], [ %.0338.ph1073, %bb.p ], [ %.0338.ph1073, %bb.dx ], [ %.0338.ph1073, %bb.ef ], [ %.0338.ph1073, %bb.x ], [ %.0338.ph1073, %bb.ab ], [ %.0338.ph1073, %bb.be ], [ %.0338.ph1073, %bb.bg ], [ %.0338.ph1073, %bb.bh ], [ %.0338.ph1073, %bb.di ], [ %.0338.ph1073, %bb.dp ], [ %.0338.ph1073, %bb.ei ], [ %.0338.ph1073, %.preheader968 ], [ %.0338.ph1073, %bb.eg ], [ %.0338.ph1073, %bb.eh ], [ %.0338.ph1073, %.preheader969 ] ; 2 uses
  %.1337 = phi i32 [ %.0336.ph1076, %bb.gw ], [ %.0336.ph1076, %timelib_parse_tz_minutes.exit ], [ %.0336.ph1076, %add_pbf_error.exit511 ], [ %.0336.ph1076, %bb.w ], [ %.0336.ph1076, %timelib_lookup_format.exit ], [ %.0336.ph1076, %add_pbf_error.exit540 ], [ %.0336.ph1076, %bb.am ], [ %.0336.ph1076, %bb.al ], [ %.0336.ph1076, %add_pbf_error.exit564 ], [ %.0336.ph1076, %bb.at ], [ %.0336.ph1076, %bb.ax ], [ %.0336.ph1076, %add_pbf_error.exit568 ], [ %.0336.ph1076, %bb.ac ], [ %.0336.ph1076, %add_pbf_error.exit603 ], [ %.0336.ph1076, %bb.bo ], [ %.0336.ph1076, %add_pbf_error.exit611 ], [ %.0336.ph1076, %bb.bv ], [ %.0336.ph1076, %add_pbf_error.exit635 ], [ %.0336.ph1076, %add_pbf_error.exit639 ], [ %.0336.ph1076, %bb.cg ], [ %.0336.ph1076, %add_pbf_error.exit663 ], [ %.0336.ph1076, %bb.co ], [ %.0336.ph1076, %add_pbf_error.exit676 ], [ %.0336.ph1076, %bb.db ], [ %.0336.ph1076, %bb.da ], [ %.0336.ph1076, %add_pbf_error.exit579 ], [ %.0336.ph1076, %add_pbf_error.exit701 ], [ %.0336.ph1076, %add_pbf_error.exit502 ], [ %.0336.ph1076, %add_pbf_error.exit750 ], [ %.0336.ph1076, %add_pbf_error.exit726 ], [ %.0336.ph1076, %bb.en ], [ %.0336.ph1076, %add_pbf_error.exit790 ], [ %.0336.ph1076, %bb.ep ], [ %.0336.ph1076, %add_pbf_error.exit794 ], [ %.0336.ph1076, %bb.et ], [ %.0336.ph1076, %bb.eu ], [ %.0336.ph1076, %bb.fh ], [ %.0336.ph1076, %bb.fj ], [ %.0336.ph1076, %add_pbf_error.exit802 ], [ %.0336.ph1076, %bb.fq ], [ %.0336.ph1076, %add_pbf_error.exit798 ], [ %.0336.ph1076, %bb.fi ], [ %.0336.ph1076, %add_pbf_error.exit774 ], [ -9999999, %add_pbf_error.exit822 ], [ %i.awa, %bb.fu ], [ %.0336.ph1076, %add_pbf_error.exit842 ], [ %.0336.ph1076, %add_pbf_error.exit846 ], [ %.0336.ph1076, %bb.gb ], [ %.0336.ph1076, %add_pbf_error.exit866 ], [ %.0336.ph1076, %add_pbf_error.exit870 ], [ %.0336.ph1076, %bb.gi ], [ %.0336.ph1076, %bb.gn ], [ %.0336.ph1076, %add_pbf_error.exit881 ], [ %.0336.ph1076, %bb.p ], [ %.0336.ph1076, %bb.dx ], [ %.0336.ph1076, %bb.ef ], [ %.0336.ph1076, %bb.x ], [ %.0336.ph1076, %bb.ab ], [ %.0336.ph1076, %bb.be ], [ %.0336.ph1076, %bb.bg ], [ %.0336.ph1076, %bb.bh ], [ %.0336.ph1076, %bb.di ], [ %.0336.ph1076, %bb.dp ], [ %.0336.ph1076, %bb.ei ], [ %.0336.ph1076, %.preheader968 ], [ %.0336.ph1076, %bb.eg ], [ %.0336.ph1076, %bb.eh ], [ %.0336.ph1076, %.preheader969 ] ; 2 uses
  %.1333 = phi i1 [ %.0332.ph1080, %bb.gw ], [ %.0332.ph1080, %timelib_parse_tz_minutes.exit ], [ %.0332.ph1080, %add_pbf_error.exit511 ], [ %.0332.ph1080, %bb.w ], [ true, %timelib_lookup_format.exit ], [ %.0332.ph1080, %add_pbf_error.exit540 ], [ %.0332.ph1080, %bb.am ], [ %.0332.ph1080, %bb.al ], [ %.0332.ph1080, %add_pbf_error.exit564 ], [ %.0332.ph1080, %bb.at ], [ %.0332.ph1080, %bb.ax ], [ %.0332.ph1080, %add_pbf_error.exit568 ], [ %.0332.ph1080, %bb.ac ], [ %.0332.ph1080, %add_pbf_error.exit603 ], [ %.0332.ph1080, %bb.bo ], [ %.0332.ph1080, %add_pbf_error.exit611 ], [ %.0332.ph1080, %bb.bv ], [ %.0332.ph1080, %add_pbf_error.exit635 ], [ %.0332.ph1080, %add_pbf_error.exit639 ], [ %.0332.ph1080, %bb.cg ], [ %.0332.ph1080, %add_pbf_error.exit663 ], [ %.0332.ph1080, %bb.co ], [ %.0332.ph1080, %add_pbf_error.exit676 ], [ %.0332.ph1080, %bb.db ], [ %.0332.ph1080, %bb.da ], [ %.0332.ph1080, %add_pbf_error.exit579 ], [ %.0332.ph1080, %add_pbf_error.exit701 ], [ %.0332.ph1080, %add_pbf_error.exit502 ], [ %.0332.ph1080, %add_pbf_error.exit750 ], [ %.0332.ph1080, %add_pbf_error.exit726 ], [ %.0332.ph1080, %bb.en ], [ %.0332.ph1080, %add_pbf_error.exit790 ], [ %.0332.ph1080, %bb.ep ], [ %.0332.ph1080, %add_pbf_error.exit794 ], [ %.0332.ph1080, %bb.et ], [ %.0332.ph1080, %bb.eu ], [ %.0332.ph1080, %bb.fh ], [ %.0332.ph1080, %bb.fj ], [ %.0332.ph1080, %add_pbf_error.exit802 ], [ %.0332.ph1080, %bb.fq ], [ %.0332.ph1080, %add_pbf_error.exit798 ], [ %.0332.ph1080, %bb.fi ], [ %.0332.ph1080, %add_pbf_error.exit774 ], [ %.0332.ph1080, %add_pbf_error.exit822 ], [ %.0332.ph1080, %bb.fu ], [ %.0332.ph1080, %add_pbf_error.exit842 ], [ %.0332.ph1080, %add_pbf_error.exit846 ], [ %.0332.ph1080, %bb.gb ], [ %.0332.ph1080, %add_pbf_error.exit866 ], [ %.0332.ph1080, %add_pbf_error.exit870 ], [ %.0332.ph1080, %bb.gi ], [ %.0332.ph1080, %bb.gn ], [ %.0332.ph1080, %add_pbf_error.exit881 ], [ %.0332.ph1080, %bb.p ], [ %.0332.ph1080, %bb.dx ], [ %.0332.ph1080, %bb.ef ], [ %.0332.ph1080, %bb.x ], [ %.0332.ph1080, %bb.ab ], [ %.0332.ph1080, %bb.be ], [ %.0332.ph1080, %bb.bg ], [ %.0332.ph1080, %bb.bh ], [ %.0332.ph1080, %bb.di ], [ %.0332.ph1080, %bb.dp ], [ %.0332.ph1080, %bb.ei ], [ %.0332.ph1080, %.preheader968 ], [ %.0332.ph1080, %bb.eg ], [ %.0332.ph1080, %bb.eh ], [ %.0332.ph1080, %.preheader969 ] ; 2 uses
  %.1331 = phi ptr [ %.us-phi1034, %bb.gw ], [ %.us-phi1034, %timelib_parse_tz_minutes.exit ], [ %.us-phi1034, %add_pbf_error.exit511 ], [ %.us-phi1034, %bb.w ], [ %.us-phi1034, %timelib_lookup_format.exit ], [ %.us-phi1034, %add_pbf_error.exit540 ], [ %.us-phi1034, %bb.am ], [ %.us-phi1034, %bb.al ], [ %.us-phi1034, %add_pbf_error.exit564 ], [ %.us-phi1034, %bb.at ], [ %.us-phi1034, %bb.ax ], [ %.us-phi1034, %add_pbf_error.exit568 ], [ %.us-phi1034, %bb.ac ], [ %.us-phi1034, %add_pbf_error.exit603 ], [ %.us-phi1034, %bb.bo ], [ %.us-phi1034, %add_pbf_error.exit611 ], [ %.us-phi1034, %bb.bv ], [ %.us-phi1034, %add_pbf_error.exit635 ], [ %.us-phi1034, %add_pbf_error.exit639 ], [ %.us-phi1034, %bb.cg ], [ %.us-phi1034, %add_pbf_error.exit663 ], [ %.us-phi1034, %bb.co ], [ %.us-phi1034, %add_pbf_error.exit676 ], [ %.us-phi1034, %bb.db ], [ %.us-phi1034, %bb.da ], [ %.us-phi1034, %add_pbf_error.exit579 ], [ %.us-phi1034, %add_pbf_error.exit701 ], [ %.us-phi1034, %add_pbf_error.exit502 ], [ %.us-phi1034, %add_pbf_error.exit750 ], [ %.us-phi1034, %add_pbf_error.exit726 ], [ %.us-phi1034, %bb.en ], [ %.us-phi1034, %add_pbf_error.exit790 ], [ %.us-phi1034, %bb.ep ], [ %.us-phi1034, %add_pbf_error.exit794 ], [ %.us-phi1034, %bb.et ], [ %.us-phi1034, %bb.eu ], [ %.us-phi1034, %bb.fh ], [ %.us-phi1034, %bb.fj ], [ %i.atj, %add_pbf_error.exit802 ], [ %i.atj, %bb.fq ], [ %.us-phi1034, %add_pbf_error.exit798 ], [ %.us-phi1034, %bb.fi ], [ %.us-phi1034, %add_pbf_error.exit774 ], [ %.us-phi1034, %add_pbf_error.exit822 ], [ %.us-phi1034, %bb.fu ], [ %.us-phi1034, %add_pbf_error.exit842 ], [ %.us-phi1034, %add_pbf_error.exit846 ], [ %.us-phi1034, %bb.gb ], [ %.us-phi1034, %add_pbf_error.exit866 ], [ %.us-phi1034, %add_pbf_error.exit870 ], [ %.us-phi1034, %bb.gi ], [ %.us-phi1034, %bb.gn ], [ %.us-phi1034, %add_pbf_error.exit881 ], [ %.us-phi1034, %bb.p ], [ %.us-phi1034, %bb.dx ], [ %.us-phi1034, %bb.ef ], [ %.us-phi1034, %bb.x ], [ %.us-phi1034, %bb.ab ], [ %.us-phi1034, %bb.be ], [ %.us-phi1034, %bb.bg ], [ %.us-phi1034, %bb.bh ], [ %.us-phi1034, %bb.di ], [ %.us-phi1034, %bb.dp ], [ %.us-phi1034, %bb.ei ], [ %.us-phi1034, %.preheader968 ], [ %.us-phi1034, %bb.eg ], [ %.us-phi1034, %bb.eh ], [ %.us-phi1034, %.preheader969 ]
  %i.bei = getelementptr inbounds nuw i8, ptr %.1331, i64 1 ; 3 uses
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !16 ; 2 uses
  %.not1010 = icmp eq i8 %i.bej, 0
  br i1 %.not1010, label %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge, label %.lr.ph, !llvm.loop !107

timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge: ; preds = %timelib_skip_day_suffix.exit
  %.pre1168.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %.backedge, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge
  %.ph = phi ptr [ %.pre1168.pre, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge ], [ %i.es, %.backedge ] ; 4 uses
  %.0340.ph.lcssa.ph = phi i32 [ %.1341, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge ], [ %.0340.ph1070, %.backedge ] ; 3 uses
  %.0338.ph.lcssa.ph = phi i32 [ %.1339, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge ], [ %.0338.ph1073, %.backedge ] ; 3 uses
  %.0336.ph.lcssa.ph = phi i32 [ %.1337, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge ], [ %.0336.ph1076, %.backedge ] ; 3 uses
  %.0332.ph.lcssa.ph = phi i1 [ %.1333, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge ], [ %.0332.ph1080, %.backedge ]
  %.0330.lcssa.ph = phi ptr [ %i.bei, %timelib_skip_day_suffix.exit..critedge.loopexit1097_crit_edge ], [ %.0330.be, %.backedge ] ; 3 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !16
  %.not371 = icmp eq i8 %.pr, 0
  br i1 %.not371, label %.critedge.thread, label %bb.gx

.critedge.thread1223:                             ; preds = %bb.a
  %.pr1230 = load i8, ptr %1, align 1, !tbaa !16
  %.not3711231 = icmp eq i8 %.pr1230, 0
  br i1 %.not3711231, label %.critedge11, label %.thread1238

bb.gx:                                            ; preds = %.critedge
  br i1 %.0332.ph.lcssa.ph, label %bb.gy, label %.thread1238

bb.gy:                                            ; preds = %bb.gx
  %i.bek = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !12 ; 4 uses
  %i.ben = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bem)
  %i.beo = icmp samesign ult i32 %i.ben, 2
  %.pre.i.i886 = load ptr, ptr %i.bek, align 8, !tbaa !48 ; 2 uses
  br i1 %i.beo, label %bb.gz, label %add_pbf_warning.exit

bb.gz:                                            ; preds = %bb.gy
  %.not.i.i887 = icmp eq i32 %i.bem, 0
  %i.bep = shl i32 %i.bem, 1
  %i.beq = sext i32 %i.bep to i64
  %i.ber = mul nsw i64 %i.beq, 24
  %i.bes = select i1 %.not.i.i887, i64 24, i64 %i.ber
  %i.bet = tail call ptr @_erealloc(ptr noundef %.pre.i.i886, i64 noundef %i.bes) #20 ; 2 uses
  store ptr %i.bet, ptr %i.bek, align 8, !tbaa !48
  %.pre9.i.i888 = load i32, ptr %i.bel, align 4, !tbaa !12
  br label %add_pbf_warning.exit

add_pbf_warning.exit:                             ; preds = %bb.gy, %bb.gz
  %i.beu = phi i32 [ %.pre9.i.i888, %bb.gz ], [ %i.bem, %bb.gy ] ; 2 uses
  %i.bev = phi ptr [ %i.bet, %bb.gz ], [ %.pre.i.i886, %bb.gy ]
  %i.bew = add i32 %i.beu, 1
  store i32 %i.bew, ptr %i.bel, align 4, !tbaa !12
  br label %.critedge.thread.sink.split

.thread1238:                                      ; preds = %.critedge.thread1223, %bb.gx
  %.ph12321249 = phi ptr [ %.ph, %bb.gx ], [ %1, %.critedge.thread1223 ]
  %.0340.ph.lcssa.ph12331248 = phi i32 [ %.0340.ph.lcssa.ph, %bb.gx ], [ -9999999, %.critedge.thread1223 ]
  %.0338.ph.lcssa.ph12341247 = phi i32 [ %.0338.ph.lcssa.ph, %bb.gx ], [ -9999999, %.critedge.thread1223 ]
  %.0336.ph.lcssa.ph12351246 = phi i32 [ %.0336.ph.lcssa.ph, %bb.gx ], [ -9999999, %.critedge.thread1223 ]
  %.0330.lcssa.ph12371245 = phi ptr [ %.0330.lcssa.ph, %bb.gx ], [ %0, %.critedge.thread1223 ]
  %i.bex = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !12 ; 4 uses
  %i.bez = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bey)
  %i.bfa = icmp samesign ult i32 %i.bez, 2
  %.pre.i.i889 = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bfa, label %bb.ha, label %add_pbf_error.exit892

bb.ha:                                            ; preds = %.thread1238
  %.not.i.i890 = icmp eq i32 %i.bey, 0
  %i.bfb = shl i32 %i.bey, 1
  %i.bfc = sext i32 %i.bfb to i64
  %i.bfd = mul nsw i64 %i.bfc, 24
  %i.bfe = select i1 %.not.i.i890, i64 24, i64 %i.bfd
  %i.bff = tail call ptr @_erealloc(ptr noundef %.pre.i.i889, i64 noundef %i.bfe) #20 ; 2 uses
  store ptr %i.bff, ptr %i.f, align 8, !tbaa !48
  %.pre9.i.i891 = load i32, ptr %i.bex, align 8, !tbaa !12
  br label %add_pbf_error.exit892

add_pbf_error.exit892:                            ; preds = %.thread1238, %bb.ha
  %i.bfg = phi i32 [ %.pre9.i.i891, %bb.ha ], [ %i.bey, %.thread1238 ] ; 2 uses
  %i.bfh = phi ptr [ %i.bff, %bb.ha ], [ %.pre.i.i889, %.thread1238 ]
  %i.bfi = add i32 %i.bfg, 1
  store i32 %i.bfi, ptr %i.bex, align 8, !tbaa !12
  br label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %add_pbf_error.exit892, %add_pbf_warning.exit
  %.sink1341 = phi i32 [ %i.beu, %add_pbf_warning.exit ], [ %i.bfg, %add_pbf_error.exit892 ]
  %.sink1339 = phi ptr [ %i.bev, %add_pbf_warning.exit ], [ %i.bfh, %add_pbf_error.exit892 ]
  %.sink = phi i32 [ 282, %add_pbf_warning.exit ], [ 538, %add_pbf_error.exit892 ]
  %.ph.sink1337 = phi ptr [ %.ph, %add_pbf_warning.exit ], [ %.ph12321249, %add_pbf_error.exit892 ] ; 3 uses
  %.0330.lcssa1222.ph.ph = phi ptr [ %.0330.lcssa.ph, %add_pbf_warning.exit ], [ %.0330.lcssa.ph12371245, %add_pbf_error.exit892 ]
  %.0336.ph.lcssa1221.ph.ph = phi i32 [ %.0336.ph.lcssa.ph, %add_pbf_warning.exit ], [ %.0336.ph.lcssa.ph12351246, %add_pbf_error.exit892 ]
  %.0338.ph.lcssa1220.ph.ph = phi i32 [ %.0338.ph.lcssa.ph, %add_pbf_warning.exit ], [ %.0338.ph.lcssa.ph12341247, %add_pbf_error.exit892 ]
  %.0340.ph.lcssa1219.ph.ph = phi i32 [ %.0340.ph.lcssa.ph, %add_pbf_warning.exit ], [ %.0340.ph.lcssa.ph12331248, %add_pbf_error.exit892 ]
  %i.bfj = sext i32 %.sink1341 to i64
  %i.bfk = getelementptr inbounds [24 x i8], ptr %.sink1339, i64 %i.bfj ; 4 uses
  store i32 %.sink, ptr %i.bfk, align 8, !tbaa !50
  %i.bfl = ptrtoint ptr %.ph.sink1337 to i64
  %i.bfm = ptrtoint ptr %1 to i64
  %i.bfn = sub i64 %i.bfl, %i.bfm
  %i.bfo = trunc i64 %i.bfn to i32
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfk, i64 4
  store i32 %i.bfo, ptr %i.bfp, align 4, !tbaa !52
  %i.bfq = load i8, ptr %.ph.sink1337, align 1, !tbaa !16
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  store i8 %i.bfq, ptr %i.bfr, align 8, !tbaa !53
  %i.bfs = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.37) #17
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfk, i64 16
  store ptr %i.bfs, ptr %i.bft, align 8, !tbaa !54
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph.split.us, %.lr.ph.split, %.critedge.thread.sink.split, %.critedge
  %.0330.lcssa1222.ph = phi ptr [ %.0330.lcssa.ph, %.critedge ], [ %.0330.lcssa1222.ph.ph, %.critedge.thread.sink.split ], [ %.03301012, %.lr.ph.split ], [ %.0330.ph1082, %.lr.ph.split.us ] ; 2 uses
  %.0336.ph.lcssa1221.ph = phi i32 [ %.0336.ph.lcssa.ph, %.critedge ], [ %.0336.ph.lcssa1221.ph.ph, %.critedge.thread.sink.split ], [ %.0336.ph1076, %.lr.ph.split ], [ %.0336.ph1076, %.lr.ph.split.us ] ; 3 uses
  %.0338.ph.lcssa1220.ph = phi i32 [ %.0338.ph.lcssa.ph, %.critedge ], [ %.0338.ph.lcssa1220.ph.ph, %.critedge.thread.sink.split ], [ %.0338.ph1073, %.lr.ph.split ], [ %.0338.ph1073, %.lr.ph.split.us ] ; 3 uses
  %.0340.ph.lcssa1219.ph = phi i32 [ %.0340.ph.lcssa.ph, %.critedge ], [ %.0340.ph.lcssa1219.ph.ph, %.critedge.thread.sink.split ], [ %.0340.ph1070, %.lr.ph.split ], [ %.0340.ph1070, %.lr.ph.split.us ] ; 3 uses
  %.ph1250 = phi ptr [ %.ph, %.critedge ], [ %.ph.sink1337, %.critedge.thread.sink.split ], [ %i.du, %.lr.ph.split ], [ %.promoted1083, %.lr.ph.split.us ] ; 5 uses
  %.pr1251 = load i8, ptr %.0330.lcssa1222.ph, align 1, !tbaa !16 ; 2 uses
  %.not372 = icmp eq i8 %.pr1251, 0
  br i1 %.not372, label %.critedge11, label %.lr.ph1095

.lr.ph1095:                                       ; preds = %.critedge.thread
  %.not10.i893 = icmp eq ptr %i.e, null
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bgc = ptrtoint ptr %.ph1250 to i64
  %i.bgd = ptrtoint ptr %1 to i64
  %i.bge = sub i64 %i.bgc, %i.bgd
  %i.bgf = trunc i64 %i.bge to i32
  br label %8

8:                                                ; preds = %.lr.ph1095, %timelib_time_reset_unset_fields.exit900
  %9 = phi i8 [ %.pr1251, %.lr.ph1095 ], [ %i.bhu, %timelib_time_reset_unset_fields.exit900 ]
  %.21093 = phi ptr [ %.0330.lcssa1222.ph, %.lr.ph1095 ], [ %i.bht, %timelib_time_reset_unset_fields.exit900 ]
  br i1 %.not10.i893, label %timelib_lookup_format.exit899.thread, label %.lr.ph.i894.preheader

.lr.ph.i894.preheader:                            ; preds = %8
  %i.bgg = load i8, ptr %i.e, align 4, !tbaa !108 ; 2 uses
  %.not8.i8961089 = icmp eq i8 %i.bgg, 0
  br i1 %.not8.i8961089, label %timelib_lookup_format.exit899.thread, label %.lr.ph1091

.lr.ph1091:                                       ; preds = %.lr.ph.i894.preheader, %.lr.ph.i894
  %i.bgh = phi i8 [ %i.bgk, %.lr.ph.i894 ], [ %i.bgg, %.lr.ph.i894.preheader ]
  %.011.i8951090 = phi ptr [ %i.bgj, %.lr.ph.i894 ], [ %i.e, %.lr.ph.i894.preheader ] ; 2 uses
  %i.bgi = icmp eq i8 %i.bgh, %9
  br i1 %i.bgi, label %timelib_lookup_format.exit899, label %.lr.ph.i894

.lr.ph.i894:                                      ; preds = %.lr.ph1091
  %i.bgj = getelementptr inbounds nuw i8, ptr %.011.i8951090, i64 8 ; 2 uses
  %i.bgk = load i8, ptr %i.bgj, align 4, !tbaa !108 ; 2 uses
  %.not8.i896 = icmp eq i8 %i.bgk, 0
  br i1 %.not8.i896, label %timelib_lookup_format.exit899.thread, label %.lr.ph1091

timelib_lookup_format.exit899:                    ; preds = %.lr.ph1091
  %i.bgl = getelementptr inbounds nuw i8, ptr %.011.i8951090, i64 4
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !110
  switch i32 %i.bgm, label %timelib_lookup_format.exit899.thread [
    i32 23, label %bb.hb
    i32 24, label %bb.hc
    i32 0, label %timelib_time_reset_unset_fields.exit900
  ]

bb.hb:                                            ; preds = %timelib_lookup_format.exit899
  store i64 1970, ptr %i.h, align 8, !tbaa !72
  store i64 1, ptr %i.bfu, align 8, !tbaa !73
  store i64 1, ptr %i.bfv, align 8, !tbaa !74
  store ptr null, ptr %i.bga, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bfw, i8 0, i64 32, i1 false)
  br label %timelib_time_reset_unset_fields.exit900

bb.hc:                                            ; preds = %timelib_lookup_format.exit899
  %i.bgn = load i64, ptr %i.h, align 8, !tbaa !72
  %i.bgo = icmp eq i64 %i.bgn, -9999999
  br i1 %i.bgo, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store i64 1970, ptr %i.h, align 8, !tbaa !72
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.bgp = load i64, ptr %i.bfu, align 8, !tbaa !73
  %i.bgq = icmp eq i64 %i.bgp, -9999999
  br i1 %i.bgq, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  store i64 1, ptr %i.bfu, align 8, !tbaa !73
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.bgr = load i64, ptr %i.bfv, align 8, !tbaa !74
  %i.bgs = icmp eq i64 %i.bgr, -9999999
  br i1 %i.bgs, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i64 1, ptr %i.bfv, align 8, !tbaa !74
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.bgt = load i64, ptr %i.bfw, align 8, !tbaa !67
  %i.bgu = icmp eq i64 %i.bgt, -9999999
  br i1 %i.bgu, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  store i64 0, ptr %i.bfw, align 8, !tbaa !67
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.bgv = load i64, ptr %i.bfx, align 8, !tbaa !68
  %i.bgw = icmp eq i64 %i.bgv, -9999999
  br i1 %i.bgw, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  store i64 0, ptr %i.bfx, align 8, !tbaa !68
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.bgx = load i64, ptr %i.bfy, align 8, !tbaa !69
  %i.bgy = icmp eq i64 %i.bgx, -9999999
  br i1 %i.bgy, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  store i64 0, ptr %i.bfy, align 8, !tbaa !69
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.bgz = load i64, ptr %i.bfz, align 8, !tbaa !57
  %i.bha = icmp eq i64 %i.bgz, -9999999
  br i1 %i.bha, label %bb.hp, label %timelib_time_reset_unset_fields.exit900

bb.hp:                                            ; preds = %bb.ho
  store i64 0, ptr %i.bfz, align 8, !tbaa !57
  br label %timelib_time_reset_unset_fields.exit900

timelib_lookup_format.exit899.thread:             ; preds = %.lr.ph.i894.preheader, %8, %timelib_lookup_format.exit899, %.lr.ph.i894
  %i.bhb = load i32, ptr %i.bgb, align 4, !tbaa !12 ; 4 uses
  %i.bhc = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bhb)
  %i.bhd = icmp samesign ult i32 %i.bhc, 2
  %.pre.i.i901 = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bhd, label %bb.hq, label %timelib_time_reset_unset_fields.exit900.thread

bb.hq:                                            ; preds = %timelib_lookup_format.exit899.thread
  %.not.i.i902 = icmp eq i32 %i.bhb, 0
  %i.bhe = shl i32 %i.bhb, 1
  %i.bhf = sext i32 %i.bhe to i64
  %i.bhg = mul nsw i64 %i.bhf, 24
  %i.bhh = select i1 %.not.i.i902, i64 24, i64 %i.bhg
  %i.bhi = tail call ptr @_erealloc(ptr noundef %.pre.i.i901, i64 noundef %i.bhh) #20 ; 2 uses
  store ptr %i.bhi, ptr %i.f, align 8, !tbaa !48
  %.pre9.i.i903 = load i32, ptr %i.bgb, align 8, !tbaa !12
  br label %timelib_time_reset_unset_fields.exit900.thread

timelib_time_reset_unset_fields.exit900.thread:   ; preds = %bb.hq, %timelib_lookup_format.exit899.thread
  %i.bhj = phi i32 [ %.pre9.i.i903, %bb.hq ], [ %i.bhb, %timelib_lookup_format.exit899.thread ] ; 2 uses
  %i.bhk = phi ptr [ %i.bhi, %bb.hq ], [ %.pre.i.i901, %timelib_lookup_format.exit899.thread ]
  %i.bhl = add i32 %i.bhj, 1
  store i32 %i.bhl, ptr %i.bgb, align 8, !tbaa !12
  %i.bhm = sext i32 %i.bhj to i64
  %i.bhn = getelementptr inbounds [24 x i8], ptr %i.bhk, i64 %i.bhm ; 4 uses
  store i32 539, ptr %i.bhn, align 8, !tbaa !50
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 4
  store i32 %i.bgf, ptr %i.bho, align 4, !tbaa !52
  %i.bhp = load i8, ptr %.ph1250, align 1, !tbaa !16
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhn, i64 8
  store i8 %i.bhp, ptr %i.bhq, align 8, !tbaa !53
  %i.bhr = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.38) #17
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhn, i64 16
  store ptr %i.bhr, ptr %i.bhs, align 8, !tbaa !54
  br label %.critedge11

timelib_time_reset_unset_fields.exit900:          ; preds = %bb.hp, %bb.ho, %bb.hb, %timelib_lookup_format.exit899
  %i.bht = getelementptr inbounds nuw i8, ptr %.21093, i64 1 ; 2 uses
  %i.bhu = load i8, ptr %i.bht, align 1, !tbaa !16 ; 2 uses
  %.not373.not = icmp eq i8 %i.bhu, 0
  br i1 %.not373.not, label %.critedge11, label %8, !llvm.loop !115

.critedge11:                                      ; preds = %timelib_time_reset_unset_fields.exit900, %.critedge.thread1223, %timelib_time_reset_unset_fields.exit900.thread, %.critedge.thread
  %i.bhv = phi ptr [ %1, %.critedge.thread1223 ], [ %.ph1250, %.critedge.thread ], [ %.ph1250, %timelib_time_reset_unset_fields.exit900.thread ], [ %.ph1250, %timelib_time_reset_unset_fields.exit900 ] ; 10 uses
  %.0340.ph.lcssa12191260 = phi i32 [ -9999999, %.critedge.thread1223 ], [ %.0340.ph.lcssa1219.ph, %.critedge.thread ], [ %.0340.ph.lcssa1219.ph, %timelib_time_reset_unset_fields.exit900.thread ], [ %.0340.ph.lcssa1219.ph, %timelib_time_reset_unset_fields.exit900 ] ; 4 uses
  %.0338.ph.lcssa12201259 = phi i32 [ -9999999, %.critedge.thread1223 ], [ %.0338.ph.lcssa1220.ph, %.critedge.thread ], [ %.0338.ph.lcssa1220.ph, %timelib_time_reset_unset_fields.exit900.thread ], [ %.0338.ph.lcssa1220.ph, %timelib_time_reset_unset_fields.exit900 ] ; 4 uses
  %.0336.ph.lcssa12211258 = phi i32 [ -9999999, %.critedge.thread1223 ], [ %.0336.ph.lcssa1221.ph, %.critedge.thread ], [ %.0336.ph.lcssa1221.ph, %timelib_time_reset_unset_fields.exit900.thread ], [ %.0336.ph.lcssa1221.ph, %timelib_time_reset_unset_fields.exit900 ] ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !67
  %.not375 = icmp eq i64 %i.bhx, -9999999
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !68 ; 2 uses
  br i1 %.not375, label %bb.hr, label %.critedge11._crit_edge

bb.hr:                                            ; preds = %.critedge11
  %.not376 = icmp eq i64 %i.bhz, -9999999
  br i1 %.not376, label %bb.hs, label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.bia = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bib = load i64, ptr %i.bia, align 8, !tbaa !69
  %.not377 = icmp eq i64 %i.bib, -9999999
  br i1 %.not377, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.bic = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bid = load i64, ptr %i.bic, align 8, !tbaa !57
  %.not378 = icmp eq i64 %i.bid, -9999999
  br i1 %.not378, label %bb.ia, label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hr
  store i64 0, ptr %i.bhw, align 8, !tbaa !67
  br label %.critedge11._crit_edge

.critedge11._crit_edge:                           ; preds = %.critedge11, %bb.hu
  %i.bie = icmp eq i64 %i.bhz, -9999999
  br i1 %i.bie, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %.critedge11._crit_edge
  %i.bif = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.bif, align 8, !tbaa !68
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.critedge11._crit_edge
  %i.big = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.bih = load i64, ptr %i.big, align 8, !tbaa !69
  %i.bii = icmp eq i64 %i.bih, -9999999
  br i1 %i.bii, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i64 0, ptr %i.big, align 8, !tbaa !69
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.bij = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.bik = load i64, ptr %i.bij, align 8, !tbaa !57
  %i.bil = icmp eq i64 %i.bik, -9999999
  br i1 %i.bil, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i64 0, ptr %i.bij, align 8, !tbaa !57
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hy, %bb.hz, %bb.ht
  %i.bim = load i64, ptr %i.h, align 8, !tbaa !72
  %.not379 = icmp eq i64 %i.bim, -9999999
  br i1 %.not379, label %bb.ie, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bin = icmp ne i32 %.0338.ph.lcssa12201259, -9999999
  %i.bio = icmp ne i32 %.0336.ph.lcssa12211258, -9999999
  %or.cond13 = select i1 %i.bin, i1 true, i1 %i.bio
  %i.bip = icmp ne i32 %.0340.ph.lcssa12191260, -9999999
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.bip
  br i1 %or.cond15, label %bb.ic, label %.critedge447

bb.ic:                                            ; preds = %bb.ib
  %i.biq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !12 ; 4 uses
  %i.bis = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bir)
  %i.bit = icmp samesign ult i32 %i.bis, 2
  %.pre.i.i905 = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bit, label %bb.id, label %add_pbf_error.exit908

bb.id:                                            ; preds = %bb.ic
  %.not.i.i906 = icmp eq i32 %i.bir, 0
  %i.biu = shl i32 %i.bir, 1
  %i.biv = sext i32 %i.biu to i64
  %i.biw = mul nsw i64 %i.biv, 24
  %i.bix = select i1 %.not.i.i906, i64 24, i64 %i.biw
  %i.biy = tail call ptr @_erealloc(ptr noundef %.pre.i.i905, i64 noundef %i.bix) #20 ; 2 uses
  store ptr %i.biy, ptr %i.f, align 8, !tbaa !48
  %.pre9.i.i907 = load i32, ptr %i.biq, align 8, !tbaa !12
  br label %add_pbf_error.exit908

add_pbf_error.exit908:                            ; preds = %bb.ic, %bb.id
  %i.biz = phi i32 [ %.pre9.i.i907, %bb.id ], [ %i.bir, %bb.ic ] ; 2 uses
  %i.bja = phi ptr [ %i.biy, %bb.id ], [ %.pre.i.i905, %bb.ic ]
  %i.bjb = add i32 %i.biz, 1
  store i32 %i.bjb, ptr %i.biq, align 8, !tbaa !12
  %i.bjc = sext i32 %i.biz to i64
  %i.bjd = getelementptr inbounds [24 x i8], ptr %i.bja, i64 %i.bjc ; 4 uses
  store i32 549, ptr %i.bjd, align 8, !tbaa !50
  %i.bje = ptrtoint ptr %i.bhv to i64
  %i.bjf = ptrtoint ptr %1 to i64
  %i.bjg = sub i64 %i.bje, %i.bjf
  %i.bjh = trunc i64 %i.bjg to i32
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjd, i64 4
  store i32 %i.bjh, ptr %i.bji, align 4, !tbaa !52
  %i.bjj = load i8, ptr %i.bhv, align 1, !tbaa !16
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjd, i64 8
  store i8 %i.bjj, ptr %i.bjk, align 8, !tbaa !53
  %i.bjl = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.39) #17
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  store ptr %i.bjl, ptr %i.bjm, align 8, !tbaa !54
  br label %bb.ie

bb.ie:                                            ; preds = %add_pbf_error.exit908, %bb.ia
  %.not380 = icmp eq i32 %.0336.ph.lcssa12211258, -9999999
  br i1 %.not380, label %.critedge447, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bjn = load i64, ptr %i.h, align 8, !tbaa !72
  %.not381 = icmp eq i64 %i.bjn, -9999999
  br i1 %.not381, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bjp = load i64, ptr %i.bjo, align 8, !tbaa !73
  %.not382 = icmp eq i64 %i.bjp, -9999999
  br i1 %.not382, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bjr = load i64, ptr %i.bjq, align 8, !tbaa !74
  %.not383 = icmp eq i64 %i.bjr, -9999999
  br i1 %.not383, label %bb.ik, label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %bb.if
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !12 ; 4 uses
  %i.bju = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bjt)
  %i.bjv = icmp samesign ult i32 %i.bju, 2
  %.pre.i.i909 = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bjv, label %bb.ij, label %add_pbf_error.exit912

bb.ij:                                            ; preds = %bb.ii
  %.not.i.i910 = icmp eq i32 %i.bjt, 0
  %i.bjw = shl i32 %i.bjt, 1
  %i.bjx = sext i32 %i.bjw to i64
  %i.bjy = mul nsw i64 %i.bjx, 24
  %i.bjz = select i1 %.not.i.i910, i64 24, i64 %i.bjy
  %i.bka = tail call ptr @_erealloc(ptr noundef %.pre.i.i909, i64 noundef %i.bjz) #20 ; 2 uses
  store ptr %i.bka, ptr %i.f, align 8, !tbaa !48
  %.pre9.i.i911 = load i32, ptr %i.bjs, align 8, !tbaa !12
  br label %add_pbf_error.exit912

add_pbf_error.exit912:                            ; preds = %bb.ii, %bb.ij
  %i.bkb = phi i32 [ %.pre9.i.i911, %bb.ij ], [ %i.bjt, %bb.ii ] ; 2 uses
  %i.bkc = phi ptr [ %i.bka, %bb.ij ], [ %.pre.i.i909, %bb.ii ]
  %i.bkd = add i32 %i.bkb, 1
  store i32 %i.bkd, ptr %i.bjs, align 8, !tbaa !12
  %i.bke = sext i32 %i.bkb to i64
  %i.bkf = getelementptr inbounds [24 x i8], ptr %i.bkc, i64 %i.bke ; 4 uses
  store i32 549, ptr %i.bkf, align 8, !tbaa !50
  %i.bkg = ptrtoint ptr %i.bhv to i64
  %i.bkh = ptrtoint ptr %1 to i64
  %i.bki = sub i64 %i.bkg, %i.bkh
  %i.bkj = trunc i64 %i.bki to i32
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkf, i64 4
  store i32 %i.bkj, ptr %i.bkk, align 4, !tbaa !52
  %i.bkl = load i8, ptr %i.bhv, align 1, !tbaa !16
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkf, i64 8
  store i8 %i.bkl, ptr %i.bkm, align 8, !tbaa !53
  %i.bkn = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.39) #17
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkf, i64 16
  store ptr %i.bkn, ptr %i.bko, align 8, !tbaa !54
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ih, %add_pbf_error.exit912
  %i.bkp = icmp eq i32 %.0338.ph.lcssa12201259, -9999999
  %spec.store.select = select i1 %i.bkp, i32 1, i32 %.0338.ph.lcssa12201259
  %i.bkq = icmp eq i32 %.0340.ph.lcssa12191260, -9999999
  %spec.store.select18 = select i1 %i.bkq, i32 1, i32 %.0340.ph.lcssa12191260
  %i.bkr = sext i32 %.0336.ph.lcssa12211258 to i64
  %i.bks = sext i32 %spec.store.select to i64
  %i.bkt = sext i32 %spec.store.select18 to i64
  %i.bku = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @timelib_date_from_isodate(i64 noundef %i.bkr, i64 noundef %i.bks, i64 noundef %i.bkt, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bku, ptr noundef nonnull %i.bkv) #17
  br label %bb.in

.critedge447:                                     ; preds = %bb.ib, %bb.ie
  %i.bkw = icmp ne i32 %.0338.ph.lcssa12201259, -9999999
  %i.bkx = icmp ne i32 %.0340.ph.lcssa12191260, -9999999
  %or.cond17 = select i1 %i.bkw, i1 true, i1 %i.bkx
  br i1 %or.cond17, label %bb.il, label %bb.in

bb.il:                                            ; preds = %.critedge447
  %i.bky = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
end_hunk_0
