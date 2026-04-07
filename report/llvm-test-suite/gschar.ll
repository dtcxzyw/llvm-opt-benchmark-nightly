inline.NumInlined: 14
begin_hunk_0_@continue_show_update:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = load float, ptr %i.v, align 4, !tbaa !89
  %i.x = fpext float %i.w to double
  %i.y = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.p, double noundef %i.u, double noundef %i.x) #12, !inline_history !90 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@continue_show_update:bb.a

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !91
  %i.an = fpext float %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !92
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.p, double noundef %i.an, double noundef %i.aq) #12, !inline_history !90 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.av = load i8, ptr %i.au, align 8, !tbaa !93
  %.not25.not.i = icmp eq i8 %i.av, 0
  br i1 %.not25.not.i, label %show_move.exit, label %bb.h

end_hunk_1
begin_hunk_2_@continue_show_update:bb.a
  %i.ba = add nsw <2 x i64> %i.az, %i.ay
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 137
  store i8 0, ptr %i.bb, align 1, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !31
  %.not26.i = icmp eq i32 %i.bd, 0
end_hunk_2
begin_hunk_3_@show_move:bb.a

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !91
  %i.y = fpext float %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load float, ptr %i.z, align 8, !tbaa !92
  %i.ab = fpext float %i.aa to double
  %i.ac = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.a, double noundef %i.y, double noundef %i.ab) #12 ; 0 uses
  br label %bb.e
end_hunk_3
begin_hunk_4_@show_move:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !93
  %.not25.not = icmp eq i8 %i.ag, 0
  br i1 %.not25.not, label %.thread, label %bb.f

end_hunk_4
begin_hunk_5_@show_move:bb.a
  %i.al = add nsw <2 x i64> %i.ak, %i.aj
  store <2 x i64> %i.al, ptr %i.ai, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 137
  store i8 0, ptr %i.am, align 1, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31
  %.not26 = icmp eq i32 %i.ao, 0
end_hunk_5
begin_hunk_6_@show_proceed:bb.a
  %i.av = fpext float %i.au to double
  %i.aw = load float, ptr %i.l, align 4, !tbaa !89
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.as, double noundef %i.av, double noundef %i.ax) #12, !inline_history !90 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_6
begin_hunk_7_@show_proceed:bb.a
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = load float, ptr %i.n, align 4, !tbaa !91
  %i.bj = fpext float %i.bi to double
  %i.bk = load float, ptr %i.o, align 8, !tbaa !92
  %i.bl = fpext float %i.bk to double
  %i.bm = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.as, double noundef %i.bj, double noundef %i.bl) #12, !inline_history !90 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !93
  %.not25.not.i = icmp eq i8 %i.bq, 0
  br i1 %.not25.not.i, label %.thread, label %bb.n

end_hunk_7
begin_hunk_8_@show_proceed:bb.a
  %i.bu = add nsw <2 x i64> %i.bt, %i.bs
  store <2 x i64> %i.bu, ptr %i.br, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 137
  store i8 0, ptr %i.bv, align 1, !tbaa !97
  %i.bw = load i32, ptr %i.p, align 4, !tbaa !31
  %.not26.i = icmp ne i32 %i.bw, 0
  %.pre167 = load i32, ptr %i.f, align 4, !tbaa !34 ; 2 uses
end_hunk_8
begin_hunk_9_@show_proceed:bb.a
bb.o:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %i.q, align 8, !tbaa !52  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !93
  %.not105 = icmp eq i8 %i.ca, 0
  br i1 %.not105, label %.thread, label %bb.p

end_hunk_9
begin_hunk_10_@show_proceed:bb.a
  %i.cf = add nsw <2 x i64> %i.ce, %i.cd
  store <2 x i64> %i.cf, ptr %i.cc, align 8, !tbaa !48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 137
  store i8 0, ptr %i.cg, align 1, !tbaa !97
  %.pre = load i32, ptr %i.f, align 4, !tbaa !34
  %.pre168 = load i32, ptr %i.g, align 8, !tbaa !8
  br label %bb.q
end_hunk_10
begin_hunk_11_@show_proceed:bb.a
bb.t:                                             ; preds = %.thread121
  %i.ct = load i32, ptr %i.r, align 4, !tbaa !32
  %i.cu = trunc i32 %i.ct to i8
  store i8 %i.cu, ptr %i.s, align 1, !tbaa !98
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !52  ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !93
  %.not107.not = icmp eq i8 %i.cx, 0
  br i1 %.not107.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !99 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  %i.db = load i64, ptr %i.da, align 8, !tbaa !100 ; 2 uses
  %i.dc = tail call i32 @gx_path_is_void(ptr noundef nonnull %i.cv) #12
  %.not108 = icmp eq i32 %i.dc, 0
  br i1 %.not108, label %bb.v, label %bb.x
end_hunk_11
begin_hunk_12_@show_proceed:bb.a
  %i.dm = sitofp i64 %i.dl to double
  %i.dn = fmul nnan double %i.dm, 0x3F30000000000000
  %i.do = fptrunc double %i.dn to float
  store float %i.do, ptr %i.v, align 8, !tbaa !101
  store <2 x i64> %i.dk, ptr %i.u, align 8, !tbaa !48
  %i.dp = extractelement <2 x i64> %i.dk, i64 1
  %i.dq = sitofp i64 %i.dp to double
  %i.dr = fmul nnan double %i.dq, 0x3F30000000000000
  %i.ds = fptrunc double %i.dr to float
  store float %i.ds, ptr %i.w, align 8, !tbaa !102
  store i32 0, ptr %i.x, align 8, !tbaa !55
  store ptr @continue_show_update, ptr %i.y, align 8, !tbaa !35
  %i.dt = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 168
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !103
  %i.dw = zext i8 %.090 to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 176
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !104
  %i.dz = tail call i32 %i.dv(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.dt, i32 noundef %i.dw, ptr noundef %i.dy) #12 ; 3 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %.thread, label %bb.y
end_hunk_12
begin_hunk_13_@show_proceed:bb.a
  %i.er = fpext float %i.eq to double
  %i.es = load float, ptr %i.l, align 4, !tbaa !89
  %i.et = fpext float %i.es to double
  %i.eu = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.eo, double noundef %i.er, double noundef %i.et) #12, !inline_history !90 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
end_hunk_13
begin_hunk_14_@show_proceed:bb.a
  br i1 %i.fd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load float, ptr %i.n, align 4, !tbaa !91
  %i.ff = fpext float %i.fe to double
  %i.fg = load float, ptr %i.o, align 8, !tbaa !92
  %i.fh = fpext float %i.fg to double
  %i.fi = tail call i32 (ptr, double, double, ...) @gs_rmoveto(ptr noundef %i.eo, double noundef %i.ff, double noundef %i.fh) #12, !inline_history !90 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 256
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !52 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 136
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !93
  %.not25.not.i114 = icmp eq i8 %i.fm, 0
  br i1 %.not25.not.i114, label %.thread, label %bb.ag

end_hunk_14
begin_hunk_15_@show_proceed:bb.a
  %i.fq = add nsw <2 x i64> %i.fp, %i.fo
  store <2 x i64> %i.fq, ptr %i.fn, align 8, !tbaa !48
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 137
  store i8 0, ptr %i.fr, align 1, !tbaa !97
  %i.fs = load i32, ptr %i.p, align 4, !tbaa !31
  %.not26.i115 = icmp eq i32 %i.fs, 0
  br i1 %.not26.i115, label %.backedge, label %bb.ah
end_hunk_15
begin_hunk_16_@continue_stringwidth_update:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = load i8, ptr %i.p, align 8, !tbaa !93
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %stringwidth_move.exit, label %bb.d

end_hunk_16
begin_hunk_17_@continue_stringwidth_update:bb.a
  %i.v = add nsw <2 x i64> %i.u, %i.t
  store <2 x i64> %i.v, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 137
  store i8 0, ptr %i.w, align 1, !tbaa !97
  %i.x = tail call i32 @stringwidth_proceed(ptr noundef nonnull %0)
  br label %stringwidth_move.exit

end_hunk_17
begin_hunk_18_@stringwidth_move:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i8, ptr %i.d, align 8, !tbaa !93
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_18
begin_hunk_19_@stringwidth_move:bb.a
  %i.j = add nsw <2 x i64> %i.i, %i.h
  store <2 x i64> %i.j, ptr %i.g, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 137
  store i8 0, ptr %i.k, align 1, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_19
begin_hunk_20_@stringwidth_proceed:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !93
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %.thread86, label %.backedge

end_hunk_20
begin_hunk_21_@stringwidth_proceed:bb.a
  %i.au = add nsw <2 x i64> %i.at, %i.as
  store <2 x i64> %i.au, ptr %i.ar, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %.sink118, i64 137
  store i8 0, ptr %i.av, align 1, !tbaa !97
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.d, align 4, !tbaa !34
end_hunk_21
begin_hunk_22_@stringwidth_proceed:bb.a
bb.g:                                             ; preds = %.thread78
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !52  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !93
  %.not71.not = icmp eq i8 %i.be, 0
  br i1 %.not71.not, label %.thread86, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !99
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !100
  %i.bj = tail call i32 (ptr, ptr, ...) @gs_setmatrix(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n) #12 ; 0 uses
  %i.bk = tail call i32 (ptr, i64, i64, ...) @gs_translate_to_fixed(ptr noundef nonnull %i.a, i64 noundef %i.bg, i64 noundef %i.bi) #12 ; 0 uses
  store i32 0, ptr %i.l, align 8, !tbaa !55
  store ptr @continue_stringwidth_update, ptr %i.o, align 8, !tbaa !35
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !47  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !103
  %i.bo = zext i8 %i.af to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !104
  %i.br = tail call i32 %i.bn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.bl, i32 noundef %i.bo, ptr noundef %i.bq) #12 ; 3 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread86, label %bb.i
end_hunk_22
begin_hunk_23_@stringwidth_proceed:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 256
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !93
  %.not.i74 = icmp eq i8 %i.ci, 0
  br i1 %.not.i74, label %.thread86, label %.backedge

end_hunk_23
begin_hunk_24_@llvm.smin.v2i64
!87 = !{!9, !5, i64 356}
!88 = !{!9, !13, i64 32}
!89 = !{!9, !13, i64 36}
!90 = !{ptr @show_move}
!91 = !{!9, !13, i64 20}
!92 = !{!9, !13, i64 24}
!93 = !{!94, !6, i64 136}
!94 = !{!"gx_path_s", !38, i64 0, !95, i64 16, !96, i64 48, !95, i64 56, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !23, i64 120, !6, i64 136, !6, i64 137, !6, i64 138}
!95 = !{!"gs_fixed_rect_s", !23, i64 0, !23, i64 16}
!96 = !{!"p1 _ZTS9segment_s", !11, i64 0}
!97 = !{!94, !6, i64 137}
!98 = !{!37, !6, i64 437}
!99 = !{!94, !18, i64 120}
!100 = !{!94, !18, i64 128}
!101 = !{!37, !13, i64 88}
!102 = !{!37, !13, i64 104}
!103 = !{!58, !11, i64 168}
!104 = !{!58, !12, i64 176}
end_hunk_24
