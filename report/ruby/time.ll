inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_timespec:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j
  %.sroa.9.0 = phi i64 [ %i.ag, %bb.j ], [ %i.ae, %bb.i ], [ %i.an, %bb.l ], [ %i.al, %bb.k ]
  %.0 = phi double [ %i.ah, %bb.j ], [ %i.aa, %bb.i ], [ %i.ao, %bb.l ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ap = fptosi double %.0 to i64                ; 2 uses
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = fcmp une double %.0, %i.aq
end_hunk_0
begin_hunk_1_@time_xmlschema:bb.a
  br label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit, %RSTRING_END.exit
  %.0136 = phi i64 [ %i.bn, %RSTRING_END.exit ], [ %i.bb, %RSTRING_PTR.exit ] ; 3 uses
  %.1135 = phi ptr [ %i.bw, %RSTRING_END.exit ], [ %i.bm, %RSTRING_PTR.exit ] ; 17 uses
  %i.bx = getelementptr i8, ptr %.1135, i64 1
  store i8 45, ptr %.1135, align 1, !tbaa !53
  %i.by = load i64, ptr %i.z, align 8
  %i.bz = and i64 %i.by, 7168
  %.cmp = icmp samesign ugt i64 %i.bz, 4608
  %i.ca = zext i1 %.cmp to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr i8, ptr %.1135, i64 2
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !53
  %i.cd = load i64, ptr %i.z, align 8
  %.fr = freeze i64 %i.cd
end_hunk_1
begin_hunk_2_@time_xmlschema:bb.a
  %i.ch = select i1 %.cmp159, i32 %i.cg, i32 %.urem
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr i8, ptr %.1135, i64 3
  store i8 %i.cj, ptr %i.cc, align 1, !tbaa !53
  %i.cl = getelementptr i8, ptr %.1135, i64 4
  store i8 45, ptr %i.ck, align 1, !tbaa !53
  %i.cm = load i64, ptr %i.z, align 8
  %i.cn = lshr i64 %i.cm, 13
end_hunk_2
begin_hunk_3_@time_xmlschema:bb.a
  %.lhs.trunc = and i8 %i.co, 30
  %i.cp = udiv i8 %.lhs.trunc, 10
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr i8, ptr %.1135, i64 5
  store i8 %i.cq, ptr %i.cl, align 1, !tbaa !53
  %i.cs = load i64, ptr %i.z, align 8
  %i.ct = lshr i64 %i.cs, 13
end_hunk_3
begin_hunk_4_@time_xmlschema:bb.a
  %.lhs.trunc160 = and i8 %i.cu, 31
  %i.cv = urem i8 %.lhs.trunc160, 10
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr i8, ptr %.1135, i64 6
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !53
  %i.cy = getelementptr i8, ptr %.1135, i64 7
  store i8 84, ptr %i.cx, align 1, !tbaa !53
  %i.cz = load i64, ptr %i.z, align 8
  %i.da = lshr i64 %i.cz, 18
end_hunk_4
begin_hunk_5_@time_xmlschema:bb.a
  %.lhs.trunc162 = and i8 %i.db, 30
  %i.dc = udiv i8 %.lhs.trunc162, 10
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr i8, ptr %.1135, i64 8
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !53
  %i.df = load i64, ptr %i.z, align 8
  %i.dg = lshr i64 %i.df, 18
end_hunk_5
begin_hunk_6_@time_xmlschema:bb.a
  %.lhs.trunc164 = and i8 %i.dh, 31
  %i.di = urem i8 %.lhs.trunc164, 10
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr i8, ptr %.1135, i64 9
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !53
  %i.dl = getelementptr i8, ptr %.1135, i64 10
  store i8 58, ptr %i.dk, align 1, !tbaa !53
  %i.dm = load i64, ptr %i.z, align 8
  %i.dn = lshr i64 %i.dm, 23
end_hunk_6
begin_hunk_7_@time_xmlschema:bb.a
  %.lhs.trunc166 = and i8 %i.do, 62
  %i.dp = udiv i8 %.lhs.trunc166, 10
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = getelementptr i8, ptr %.1135, i64 11
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !53
  %i.ds = load i64, ptr %i.z, align 8
  %i.dt = lshr i64 %i.ds, 23
end_hunk_7
begin_hunk_8_@time_xmlschema:bb.a
  %.lhs.trunc168 = and i8 %i.du, 63
  %i.dv = urem i8 %.lhs.trunc168, 10
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr i8, ptr %.1135, i64 12
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !53
  %i.dy = getelementptr i8, ptr %.1135, i64 13
  store i8 58, ptr %i.dx, align 1, !tbaa !53
  %i.dz = load i64, ptr %i.z, align 8
  %i.ea = lshr i64 %i.dz, 32
end_hunk_8
begin_hunk_9_@time_xmlschema:bb.a
  %i.ec = and i8 %i.eb, 62
  %i.ed = udiv i8 %i.ec, 10
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = getelementptr i8, ptr %.1135, i64 14
  store i8 %i.ee, ptr %i.dy, align 1, !tbaa !53
  %i.eg = load i64, ptr %i.z, align 8
  %i.eh = lshr i64 %i.eg, 32
end_hunk_9
begin_hunk_10_@time_xmlschema:bb.a
  %i.ej = and i8 %i.ei, 63
  %i.ek = urem i8 %i.ej, 10
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = getelementptr i8, ptr %.1135, i64 15    ; 2 uses
  store i8 %i.el, ptr %i.ef, align 1, !tbaa !53
  br i1 %i.ao, label %bb.t, label %ruby_nonempty_memcpy.exit

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr i8, ptr %.1.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !46 ; 8 uses
  %i.ep = getelementptr i8, ptr %.1135, i64 16    ; 4 uses
  store i8 46, ptr %i.em, align 1, !tbaa !53
  %i.eq = icmp samesign ult i64 %.0, 10
  br i1 %i.eq, label %bb.u, label %bb.v
end_hunk_10
begin_hunk_11_@time_xmlschema:bb.a

bb.aq:                                            ; preds = %rb_num2long_inline.exit153, %bb.am
  %.5 = phi ptr [ %i.hi, %bb.am ], [ %i.ih, %rb_num2long_inline.exit153 ]
  %i.ii = inttoptr i64 %.0136 to ptr              ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !30
  %i.ik = and i64 %i.ij, 8192
  %.not.i154 = icmp eq i64 %i.ik, 0
end_hunk_11
begin_hunk_12_@time_xmlschema:bb.a
  %i.io = ptrtoint ptr %.5 to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  tail call void @rb_str_set_len(i64 noundef %.0136, i64 noundef %i.iq) #19
  ret i64 %.0136
}

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6
end_hunk_12
begin_hunk_13_@time_init_parse:bb.a

.critedge2:                                       ; preds = %bb.at, %.lr.ph196.a, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread257, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
  %.promoted198 = phi ptr [ %i.av, %bb.p ], [ %i.bq, %bb.y ], [ %i.ds, %bb.ap ], [ %i.bg, %bb.u ], [ %i.bg, %bb.t ], [ %i.av, %bb.q ], [ %i.bq, %bb.aa ], [ %.promoted198.pre, %.critedge.thread257 ], [ %i.bq, %bb.x ], [ %i.bq, %bb.z ], [ %i.ds, %bb.aq ], [ %.promoted198.pre, %.preheader ], [ %scevgep, %bb.at ], [ %i.ey, %.lr.ph196.a ] ; 6 uses
  %.2105 = phi i64 [ 4, %bb.p ], [ 4, %bb.y ], [ 4, %bb.ap ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %bb.aa ], [ 4, %.critedge.thread257 ], [ 4, %bb.x ], [ 4, %bb.z ], [ 4, %bb.aq ], [ %i.et, %.preheader ], [ %i.et, %.lr.ph196.a ], [ %i.et, %bb.at ] ; 4 uses
  %.1101 = phi i32 [ -1, %bb.p ], [ %i.bd, %bb.y ], [ %i.bd, %bb.ap ], [ %i.bd, %bb.u ], [ %i.bd, %bb.t ], [ -1, %bb.q ], [ %i.bd, %bb.aa ], [ %i.bd, %.critedge.thread257 ], [ %i.bd, %bb.x ], [ %i.bd, %bb.z ], [ %i.bd, %bb.aq ], [ %i.bd, %.preheader ], [ %i.bd, %.lr.ph196.a ], [ %i.bd, %bb.at ] ; 3 uses
  %.198 = phi i32 [ -1, %bb.p ], [ %i.bn, %bb.y ], [ %i.bn, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ %i.bn, %bb.aa ], [ %i.bn, %.critedge.thread257 ], [ %i.bn, %bb.x ], [ %i.bn, %bb.z ], [ %i.bn, %bb.aq ], [ %i.bn, %.preheader ], [ %i.bn, %.lr.ph196.a ], [ %i.bn, %bb.at ] ; 3 uses
  %.095 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.bz, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.bz, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.bz, %bb.aq ], [ %i.bz, %.preheader ], [ %i.bz, %.lr.ph196.a ], [ %i.bz, %bb.at ] ; 4 uses
  %.093 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.cu, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.cu, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.cu, %bb.aq ], [ %i.cu, %.preheader ], [ %i.cu, %.lr.ph196.a ], [ %i.cu, %bb.at ] ; 3 uses
  %.192 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.dp, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.dp, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.dp, %bb.aq ], [ %i.dp, %.preheader ], [ %i.dp, %.lr.ph196.a ], [ %i.dp, %bb.at ] ; 3 uses
  %.promoted198211 = ptrtoint ptr %.promoted198 to i64 ; 2 uses
  %i.fe = icmp ult ptr %.promoted198, %i.r
  br i1 %i.fe, label %.lr.ph199.preheader, label %.critedge4
end_hunk_13
begin_hunk_14_@time_init_parse:bb.a
  br label %bb.bb

bb.az:                                            ; preds = %.critedge8
  %i.gv = icmp eq i32 %.095, -1
  br i1 %i.gv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
end_hunk_14
begin_hunk_15_@time_init_parse:bb.a

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %.090 = phi i64 [ %i.gu, %bb.ay ], [ %3, %bb.az ] ; 3 uses
  %i.gx = icmp eq i64 %.2105, 4
  br i1 %i.gx, label %.thread149, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
end_hunk_15
begin_hunk_16_@time_init_parse:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.ha = sub nuw nsw i64 9, %i.gy
  %i.hb = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.ha) #19
  %i.hc = call i64 @rb_int_mul(i64 noundef %.2105, i64 noundef %i.hb) #19
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
end_hunk_16
begin_hunk_17_@time_init_parse:bb.a
bb.bf:                                            ; preds = %bb.be
  %i.he = add i64 %i.gy, -9
  %i.hf = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.he) #19
  %i.hg = call i64 @rb_rational_new(i64 noundef %.2105, i64 noundef %i.hf) #19
  br label %bb.bg

.thread149:                                       ; preds = %bb.o, %bb.bb
  %.2102.ph = phi i32 [ %.1101, %bb.bb ], [ -1, %bb.o ]
  %.299.ph = phi i32 [ %.198, %bb.bb ], [ -1, %bb.o ]
  %.196.ph = phi i32 [ %.095, %bb.bb ], [ -1, %bb.o ]
  %.194.ph = phi i32 [ %.093, %bb.bb ], [ -1, %bb.o ]
  %.2.ph = phi i32 [ %.192, %bb.bb ], [ -1, %bb.o ]
  %.1.ph = phi i64 [ %.090, %bb.bb ], [ %3, %bb.o ]
  store i64 %i.al, ptr %5, align 8, !tbaa !65
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_17
begin_hunk_18_@time_init_parse:bb.a
bb.bh:                                            ; preds = %bb.bg, %.thread149, %.thread170
  %i.hk = phi ptr [ %i.hd, %.thread170 ], [ %i.hi, %bb.bg ], [ %i.hh, %.thread149 ]
  %.1168 = phi i64 [ %.090, %.thread170 ], [ %.090, %bb.bg ], [ %.1.ph, %.thread149 ]
  %.2164 = phi i32 [ %.192, %.thread170 ], [ %.192, %bb.bg ], [ %.2.ph, %.thread149 ]
  %.194166 = phi i32 [ %.093, %.thread170 ], [ %.093, %bb.bg ], [ %.194.ph, %.thread149 ]
  %.196164 = phi i32 [ %.095, %.thread170 ], [ %.095, %bb.bg ], [ %.196.ph, %.thread149 ]
  %.299162 = phi i32 [ %.198, %.thread170 ], [ %.198, %bb.bg ], [ %.299.ph, %.thread149 ] ; 2 uses
  %.2102160 = phi i32 [ %.1101, %.thread170 ], [ %.1101, %bb.bg ], [ %.2102.ph, %.thread149 ] ; 2 uses
  %i.hl = phi i64 [ %.2105, %.thread170 ], [ %spec.select, %bb.bg ], [ 1, %.thread149 ]
  store i64 %i.hl, ptr %i.hk, align 8, !tbaa !66
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.hm, align 8, !tbaa !70
end_hunk_18
begin_hunk_19_@time_init_parse:bb.a
  %i.ho = load i64, ptr @str_empty, align 8, !tbaa !13
  store i64 %i.ho, ptr %i.hn, align 8, !tbaa !71
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hq = icmp slt i32 %.2102160, 0
  %i.hr = shl i32 %.2102160, 9
  %i.hs = and i32 %i.hr, 7680
  %spec.select181 = select i1 %i.hq, i32 512, i32 %i.hs
  %i.ht = icmp slt i32 %.299162, 0
  %i.hu = shl i32 %.299162, 13
  %i.hv = and i32 %i.hu, 253952
  %i.hw = select i1 %i.ht, i32 8192, i32 %i.hv
  %i.hx = call i32 @llvm.smax.i32(i32 %.196164, i32 0)
  %i.hy = shl i32 %i.hx, 18
  %i.hz = and i32 %i.hy, 8126464
  %i.ia = call i32 @llvm.smax.i32(i32 %.194166, i32 0)
  %i.ib = shl i32 %i.ia, 23
  %i.ic = and i32 %i.ib, 528482304
  %6 = or disjoint i32 %i.hz, %i.ic
  %7 = or disjoint i32 %6, %i.hw
  %i.id = or disjoint i32 %7, %spec.select181
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = call i32 @llvm.smax.i32(i32 %.2164, i32 0)
  %i.ig = and i32 %i.if, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = shl nuw nsw i64 %i.ih, 32
end_hunk_19
begin_hunk_20_@gmtimew_noleapsecond:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.ac, %bb.y
  %.056 = phi i32 [ %i.el, %bb.y ], [ %i.eu, %bb.ac ], [ %i.fd, %bb.ag ], [ %.sext86, %bb.ai ] ; 2 uses
  %.3 = phi i32 [ 2000, %bb.y ], [ %i.et, %bb.ac ], [ %i.fc, %bb.ag ], [ %i.fh, %bb.ai ] ; 2 uses
  %i.fi = add nsw i32 %.056, 1
  %i.fj = load i64, ptr %i.g, align 8
  %i.fk = and i32 %i.fi, 511
  %i.fl = zext nneg i32 %i.fk to i64
end_hunk_20
begin_hunk_21_@gmtimew_noleapsecond:bb.a
  %i.fn = or disjoint i64 %i.fm, %i.fl
  store i64 %i.fn, ptr %i.g, align 8
  %i.fo = load i64, ptr %1, align 8, !tbaa !65    ; 7 uses
  %i.fp = sext i32 %.3 to i64                     ; 4 uses
  %i.fq = shl nsw i64 %i.fp, 1
  %i.fr = or disjoint i64 %i.fq, 1                ; 2 uses
  %i.fs = and i64 %i.fo, 1
end_hunk_21
begin_hunk_22_@gmtimew_noleapsecond:bb.a
addv.exit:                                        ; preds = %bb.al, %bb.am, %bb.ao, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i75
  %.0.i73 = phi i64 [ %i.gi, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i75 ], [ %i.gh, %bb.ao ], [ %i.fx, %bb.al ], [ %i.fy, %bb.am ]
  store i64 %.0.i73, ptr %1, align 8, !tbaa !65
  %i.gj = icmp sgt i32 %.3, -1
  br i1 %i.gj, label %bb.aq, label %bb.ap, !prof !15

bb.ap:                                            ; preds = %addv.exit
end_hunk_22
begin_hunk_23_@gmtimew_noleapsecond:bb.a
leap_year_p.exit.thread81:                        ; preds = %leap_year_p.exit, %bb.ar, %leap_year_p.exit.thread
  %common_year_mon_of_yday.sink = phi ptr [ @common_year_mon_of_yday, %leap_year_p.exit.thread ], [ @leap_year_mon_of_yday, %bb.ar ], [ @leap_year_mon_of_yday, %leap_year_p.exit ]
  %common_year_mday_of_yday.sink = phi ptr [ @common_year_mday_of_yday, %leap_year_p.exit.thread ], [ @leap_year_mday_of_yday, %bb.ar ], [ @leap_year_mday_of_yday, %leap_year_p.exit ]
  %i.gq = sext i32 %.056 to i64                   ; 2 uses
  %i.gr = getelementptr i8, ptr %common_year_mon_of_yday.sink, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !53
  %i.gt = load i64, ptr %i.g, align 8
end_hunk_23
begin_hunk_24_@gmtime_with_leapsecond:bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %.088 = select i1 %i.g, i32 1, i32 -1           ; 3 uses
  %.082 = tail call i64 @llvm.abs.i64(i64 %i.f, i1 false) ; 3 uses
  %i.h = srem i64 %.082, 60                       ; 2 uses
  %i.i = sdiv i64 %.082, 60
  %i.j = srem i64 %i.i, 60
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i64 %.082, 3600
  %i.m = trunc i64 %i.l to i32
  %i.n = mul nsw i32 %.088, %i.k                  ; 3 uses
  %i.o = mul i32 %.088, %i.m                      ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nsw i64 %i.h to i32
  %i.q = mul nsw i32 %.088, %i.p
  %i.r = load i32, ptr %1, align 8, !tbaa !83
  %i.s = add i32 %i.r, %i.q                       ; 4 uses
  store i32 %i.s, ptr %1, align 8, !tbaa !83
end_hunk_24
