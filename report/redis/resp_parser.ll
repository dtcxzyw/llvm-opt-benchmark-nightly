begin_hunk_0_@parseReply:bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !13
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.o
  call void %i.v(ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef %i.y) #6
  br label %parseBulk.exit

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@parseReply:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ae, %i.o
  call void %i.ad(ptr noundef %1, ptr noundef %i.z, i64 noundef %i.s, ptr noundef nonnull %i.i, i64 noundef %i.af) #6
  br label %parseBulk.exit

parseBulk.exit:                                   ; preds = %bb.c, %bb.d
end_hunk_1
begin_hunk_2_@parseReply:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.an = xor i64 %i.am, -1
  %i.ao = add i64 %i.al, %i.an
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = sub i64 %i.ap, %i.am
  tail call void %i.ak(ptr noundef %1, ptr noundef nonnull %i.ag, i64 noundef %i.ao, ptr noundef nonnull %i.i, i64 noundef %i.aq) #6
  br label %bb.v

bb.f:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@parseReply:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = add i64 %i.aw, %i.ay
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.ba, %i.ax
  tail call void %i.av(ptr noundef %1, ptr noundef nonnull %i.ar, i64 noundef %i.az, ptr noundef nonnull %i.i, i64 noundef %i.bb) #6
  br label %bb.v

bb.g:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@parseReply:bb.a
  %i.bi = add i64 %i.bf, %i.bh
  %i.bj = call i32 @string2ll(ptr noundef nonnull %i.bc, i64 noundef %i.bi, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !19
  %i.bn = load ptr, ptr %0, align 8, !tbaa !13
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bg
  call void %i.bl(ptr noundef %1, i64 noundef %i.bm, ptr noundef nonnull %i.i, i64 noundef %i.bp) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.v

end_hunk_4
begin_hunk_5_@parseReply:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = sub i64 %i.cc, %i.bt
  call void %i.cb(ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef %i.cd) #6
  br label %parseArray.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27
  call void %i.cf(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.by, ptr noundef nonnull %i.i) #6
  br label %parseArray.exit

parseArray.exit:                                  ; preds = %bb.i, %bb.j
end_hunk_5
begin_hunk_6_@parseReply:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store ptr %i.cn, ptr %0, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !28
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !19
  call void %i.cp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.cq, ptr noundef nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.v

end_hunk_6
begin_hunk_7_@parseReply:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store ptr %i.cy, ptr %0, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.db = load i64, ptr %i.d, align 8, !tbaa !19
  call void %i.da(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.db, ptr noundef nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.v

end_hunk_7
begin_hunk_8_@parseReply:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 2 uses
  store ptr %i.de, ptr %0, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30
  %i.dh = load i8, ptr %i.dc, align 1, !tbaa !18
  %i.di = icmp eq i8 %i.dh, 116
  %i.dj = zext i1 %i.di to i32
  %i.dk = ptrtoint ptr %i.de to i64
  %i.dl = ptrtoint ptr %i.i to i64
  %i.dm = sub i64 %i.dk, %i.dl
  tail call void %i.dg(ptr noundef %1, i32 noundef %i.dj, ptr noundef nonnull %i.i, i64 noundef %i.dm) #6
  br label %bb.v

bb.n:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@parseReply:bb.a
  %i.dx = phi ptr [ %.pre.i, %bb.o ], [ %i.dp, %bb.n ]
  %.0.i = phi double [ %i.dw, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.ea, %i.dr
  call void %i.dz(ptr noundef %1, double noundef %.0.i, ptr noundef nonnull %i.i, i64 noundef %i.eb) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.v

end_hunk_9
begin_hunk_10_@parseReply:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !32
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = ptrtoint ptr %i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei
  tail call void %i.eg(ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef %i.ej) #6
  br label %bb.v

bb.q:                                             ; preds = %bb.a
end_hunk_10
begin_hunk_11_@parseReply:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2 ; 2 uses
  store ptr %i.em, ptr %0, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.er = xor i64 %i.eq, -1
  %i.es = add i64 %i.ep, %i.er
  %i.et = ptrtoint ptr %i.em to i64
  %i.eu = sub i64 %i.et, %i.eq
  tail call void %i.eo(ptr noundef %1, ptr noundef nonnull %i.ek, i64 noundef %i.es, ptr noundef nonnull %i.i, i64 noundef %i.eu) #6
  br label %bb.v

bb.r:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@parseReply:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2 ; 2 uses
  store ptr %i.fg, ptr %0, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !34
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fk = add nsw i64 %i.fe, -4
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = sub i64 %i.fl, %i.ez
  call void %i.fi(ptr noundef %1, ptr noundef %i.fd, ptr noundef nonnull %i.fj, i64 noundef %i.fk, ptr noundef nonnull %i.i, i64 noundef %i.fm) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.v

end_hunk_12
begin_hunk_13_@parseReply:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  store ptr %i.fu, ptr %0, align 8, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !19
  call void %i.fw(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.fx, ptr noundef nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !36 ; 2 uses
  %.not = icmp eq ptr %i.fz, null
  br i1 %.not, label %bb.v, label %bb.u

end_hunk_13
begin_hunk_14_@fast_float_strtod
!19 = !{!20, !20, i64 0}
!20 = !{!"long long", !11, i64 0}
!21 = !{!14, !16, i64 16}
!22 = !{!14, !16, i64 24}
!23 = !{!14, !16, i64 40}
!24 = !{!14, !16, i64 32}
!25 = !{!14, !16, i64 48}
!26 = !{!14, !16, i64 8}
!27 = !{!14, !16, i64 56}
!28 = !{!14, !16, i64 64}
!29 = !{!14, !16, i64 72}
!30 = !{!14, !16, i64 80}
!31 = !{!14, !16, i64 88}
!32 = !{!14, !16, i64 120}
!33 = !{!14, !16, i64 96}
!34 = !{!14, !16, i64 104}
!35 = !{!14, !16, i64 112}
!36 = !{!14, !16, i64 128}
end_hunk_14
