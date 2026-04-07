begin_hunk_0_@decode_mcu:bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #4, !inline_history !107
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %process_restart.exit.thread, label %.preheader.i

end_hunk_0
begin_hunk_1_@decode_mcu:bb.a
  %i.x = load i32, ptr %i.s, align 8, !tbaa !94
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %bb.d, label %process_restart.exit, !llvm.loop !108

process_restart.exit:                             ; preds = %bb.d, %.preheader.i
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !100
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 0, ptr %i.ab, align 4, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %process_restart.exit, %bb.b, %bb.a
end_hunk_1
begin_hunk_2_@decode_mcu:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !110 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !111 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 7 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !112
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !113
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

end_hunk_2
begin_hunk_3_@decode_mcu:bb.a
  %.0171535 = phi i64 [ %i.an, %.lr.ph ], [ %.21, %.loopexit ] ; 2 uses
  %.0184534 = phi i32 [ %i.ap, %.lr.ph ], [ %.21205, %.loopexit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !114 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
end_hunk_3
begin_hunk_4_@decode_mcu:bb.a
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.ce = tail call i32 %i.cd(ptr noundef %i.bw) #4, !inline_history !116
  %.not54.i = icmp eq i32 %i.ce, 0
  br i1 %.not54.i, label %process_restart.exit.thread, label %bb.j

end_hunk_4
begin_hunk_5_@decode_mcu:bb.a
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70
  %i.cu = tail call i32 %i.ct(ptr noundef %i.co) #4, !inline_history !116
  %.not55.i = icmp eq i32 %i.cu, 0
  br i1 %.not55.i, label %process_restart.exit.thread, label %bb.m

end_hunk_5
begin_hunk_6_@decode_mcu:bb.a
  store i32 113, ptr %i.df, align 8, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !78
  tail call void %i.dh(ptr noundef nonnull %i.bw, i32 noundef -1) #4, !inline_history !116
  store i32 1, ptr %i.by, align 4, !tbaa !4
  br label %.loopexit58.i

end_hunk_6
begin_hunk_7_@decode_mcu:bb.a
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !69
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !70
  %i.eq = tail call i32 %i.ep(ptr noundef %i.ei) #4, !inline_history !116
  %.not54.i284 = icmp eq i32 %i.eq, 0
  br i1 %.not54.i284, label %process_restart.exit.thread, label %bb.ac

end_hunk_7
begin_hunk_8_@decode_mcu:bb.a
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !69
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !70
  %i.fg = tail call i32 %i.ff(ptr noundef %i.fa) #4, !inline_history !116
  %.not55.i283 = icmp eq i32 %i.fg, 0
  br i1 %.not55.i283, label %process_restart.exit.thread, label %bb.af

end_hunk_8
begin_hunk_9_@decode_mcu:bb.a
  store i32 113, ptr %i.fr, align 8, !tbaa !76
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !78
  tail call void %i.ft(ptr noundef nonnull %i.ei, i32 noundef -1) #4, !inline_history !116
  store i32 1, ptr %i.ek, align 4, !tbaa !4
  br label %.loopexit58.i272

end_hunk_9
begin_hunk_10_@decode_mcu:bb.a
  %.6177 = phi i64 [ %.4175.ph, %bb.x ], [ %.5176, %bb.al ], [ %.5176, %bb.am ] ; 2 uses
  %.3156 = phi i32 [ 0, %bb.x ], [ %i.gd, %bb.al ], [ %i.gk, %bb.am ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !117
  %.not240 = icmp eq i32 %i.gm, 0
  br i1 %.not240, label %bb.cc, label %bb.ao

end_hunk_10
begin_hunk_11_@decode_mcu:bb.a
  %i.gp = add nsw i32 %i.go, %.3156               ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !4
  %i.gq = trunc i32 %i.gp to i16
  store i16 %i.gq, ptr %i.bd, align 2, !tbaa !118
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !119
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %.preheader, label %bb.cc

end_hunk_11
begin_hunk_12_@decode_mcu:bb.a
  %i.he = load ptr, ptr %i.ha, align 8, !tbaa !69
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !70
  %i.hh = tail call i32 %i.hg(ptr noundef %i.gz) #4, !inline_history !116
  %.not54.i314 = icmp eq i32 %i.hh, 0
  br i1 %.not54.i314, label %process_restart.exit.thread, label %bb.at

end_hunk_12
begin_hunk_13_@decode_mcu:bb.a
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !69
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !70
  %i.hx = tail call i32 %i.hw(ptr noundef %i.hr) #4, !inline_history !116
  %.not55.i313 = icmp eq i32 %i.hx, 0
  br i1 %.not55.i313, label %process_restart.exit.thread, label %bb.aw

end_hunk_13
begin_hunk_14_@decode_mcu:bb.a
  store i32 113, ptr %i.ii, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !78
  tail call void %i.ik(ptr noundef nonnull %i.gz, i32 noundef -1) #4, !inline_history !116
  store i32 1, ptr %i.hb, align 4, !tbaa !4
  br label %.loopexit58.i302

end_hunk_14
begin_hunk_15_@decode_mcu:bb.a
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !69
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !70
  %i.jt = tail call i32 %i.js(ptr noundef %i.jl) #4, !inline_history !116
  %.not54.i344 = icmp eq i32 %i.jt, 0
  br i1 %.not54.i344, label %process_restart.exit.thread, label %bb.bm

end_hunk_15
begin_hunk_16_@decode_mcu:bb.a
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !69
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !70
  %i.kj = tail call i32 %i.ki(ptr noundef %i.kd) #4, !inline_history !116
  %.not55.i343 = icmp eq i32 %i.kj, 0
  br i1 %.not55.i343, label %process_restart.exit.thread, label %bb.bp

end_hunk_16
begin_hunk_17_@decode_mcu:bb.a
  store i32 113, ptr %i.ku, align 8, !tbaa !76
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !78
  tail call void %i.kw(ptr noundef nonnull %i.jl, i32 noundef -1) #4, !inline_history !116
  store i32 1, ptr %i.jn, align 4, !tbaa !4
  br label %.loopexit58.i332

end_hunk_17
begin_hunk_18_@decode_mcu:bb.a
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.lt
  store i16 %i.lp, ptr %i.lu, align 2, !tbaa !118
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bh
end_hunk_18
begin_hunk_19_@decode_mcu:bb.a
  %.1163 = phi i32 [ %i.jh, %bb.by ], [ %i.lv, %bb.ca ] ; 2 uses
  %i.lw = add nsw i32 %.1163, 1
  %i.lx = icmp slt i32 %.1163, 63
  br i1 %i.lx, label %bb.ap, label %.loopexit, !llvm.loop !120

bb.cc:                                            ; preds = %bb.ao, %bb.an
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bs, i64 360
end_hunk_19
begin_hunk_20_@decode_mcu:bb.a
  %i.mi = load ptr, ptr %i.me, align 8, !tbaa !69
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !70
  %i.ml = tail call i32 %i.mk(ptr noundef %i.md) #4, !inline_history !116
  %.not54.i374 = icmp eq i32 %i.ml, 0
  br i1 %.not54.i374, label %process_restart.exit.thread, label %bb.ch

end_hunk_20
begin_hunk_21_@decode_mcu:bb.a
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !69
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !70
  %i.nb = tail call i32 %i.na(ptr noundef %i.mv) #4, !inline_history !116
  %.not55.i373 = icmp eq i32 %i.nb, 0
  br i1 %.not55.i373, label %process_restart.exit.thread, label %bb.ck

end_hunk_21
begin_hunk_22_@decode_mcu:bb.a
  store i32 113, ptr %i.nm, align 8, !tbaa !76
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !78
  tail call void %i.no(ptr noundef nonnull %i.md, i32 noundef -1) #4, !inline_history !116
  store i32 1, ptr %i.mf, align 4, !tbaa !4
  br label %.loopexit58.i362

end_hunk_22
begin_hunk_23_@decode_mcu:bb.a
  %i.ot = load ptr, ptr %i.op, align 8, !tbaa !69
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !70
  %i.ow = tail call i32 %i.ov(ptr noundef %i.oo) #4, !inline_history !116
  %.not54.i404 = icmp eq i32 %i.ow, 0
  br i1 %.not54.i404, label %process_restart.exit.thread, label %bb.da

end_hunk_23
begin_hunk_24_@decode_mcu:bb.a
  %i.pj = load ptr, ptr %i.ph, align 8, !tbaa !69
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !70
  %i.pm = tail call i32 %i.pl(ptr noundef %i.pg) #4, !inline_history !116
  %.not55.i403 = icmp eq i32 %i.pm, 0
  br i1 %.not55.i403, label %process_restart.exit.thread, label %bb.dd

end_hunk_24
begin_hunk_25_@decode_mcu:bb.a
  store i32 113, ptr %i.px, align 8, !tbaa !76
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !78
  tail call void %i.pz(ptr noundef nonnull %i.oo, i32 noundef -1) #4, !inline_history !116
  store i32 1, ptr %i.oq, align 4, !tbaa !4
  br label %.loopexit58.i392

end_hunk_25
begin_hunk_26_@decode_mcu:bb.a
  %.3165 = add i32 %.2164533, 1
  %i.qf = add i32 %.3165, %i.oj                   ; 2 uses
  %i.qg = icmp slt i32 %i.qf, 64
  br i1 %i.qg, label %bb.cd, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %bb.bz, %bb.cb, %bb.dl, %bb.dm
  %.21205 = phi i32 [ %.18202.ph, %bb.dl ], [ %.20204, %bb.dm ], [ %.13197, %bb.cb ], [ %.11195.ph, %bb.bz ] ; 2 uses
  %.21 = phi i64 [ %.18.ph, %bb.dl ], [ %.20, %bb.dm ], [ %.13, %bb.cb ], [ %.11182.ph, %bb.bz ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qh = load i32, ptr %i.at, align 8, !tbaa !113
  %i.qi = sext i32 %i.qh to i64
  %i.qj = icmp slt i64 %indvars.iv.next, %i.qi
  br i1 %i.qj, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !122

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load ptr, ptr %2, align 8, !tbaa !63
end_hunk_26
begin_hunk_27_@decode_mcu:bb.a
  store ptr %i.qn, ptr %i.qm, align 8, !tbaa !72
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i64 %i.ql, ptr %i.qo, align 8, !tbaa !73
  store i32 %i.qk, ptr %i.aj, align 4, !tbaa !110
  store i64 %.0171.lcssa, ptr %i.am, align 8, !tbaa !111
  store i32 %.0184.lcssa, ptr %i.ao, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !112
  %i.qp = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !101
  %i.qr = add i32 %i.qq, -1
end_hunk_27
begin_hunk_28_@llvm.memcpy.p0.p0.i64
!104 = !{!105, !5, i64 172}
!105 = !{!"jpeg_marker_reader", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172}
!106 = !{!105, !9, i64 16}
!107 = distinct !{null}
!108 = distinct !{!108, !40}
!109 = !{!85, !5, i64 28}
!110 = !{!11, !5, i64 524}
!111 = !{!85, !35, i64 16}
!112 = !{i64 0, i64 16, !38}
!113 = !{!11, !5, i64 464}
!114 = !{!115, !115, i64 0}
!115 = !{!"p1 short", !9, i64 0}
!116 = !{ptr @jpeg_fill_bit_buffer}
!117 = !{!96, !5, i64 48}
!118 = !{!20, !20, i64 0}
!119 = !{!96, !5, i64 36}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !40}
end_hunk_28
