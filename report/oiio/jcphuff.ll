begin_hunk_0_@encode_mcu_AC_first:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i32 41, ptr %i.cm, align 8, !tbaa !53
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !58
  call void %i.cn(ptr noundef nonnull %i.ck) #7
  %.pre86 = load i32, ptr %i.an, align 8, !tbaa !37
  %i.co = icmp eq i32 %.pre86, 0
  br i1 %i.co, label %.thread, label %emit_symbol.exit
end_hunk_0
begin_hunk_1_@encode_mcu_AC_first:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !83
  %i.dl = call i32 %i.dk(ptr noundef %i.dg) #7
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %bb.l, label %dump_buffer.exit.i

end_hunk_1
begin_hunk_2_@encode_mcu_AC_first:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i32 25, ptr %i.do, align 8, !tbaa !53
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !58
  call void %i.dp(ptr noundef nonnull %i.dm) #7
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.l, %bb.k
end_hunk_2
begin_hunk_3_@encode_mcu_AC_first:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !83
  %i.ef = call i32 %i.ee(ptr noundef %i.ea) #7
  %.not.i31.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i31.i, label %bb.p, label %dump_buffer.exit32.i

end_hunk_3
begin_hunk_4_@encode_mcu_AC_first:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i32 25, ptr %i.ei, align 8, !tbaa !53
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !58
  call void %i.ej(ptr noundef nonnull %i.eg) #7
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.p, %bb.o
end_hunk_4
begin_hunk_5_@encode_mcu_AC_first:bb.a
  %i.en = shl i64 %.034.i, 8                      ; 2 uses
  %i.eo = add nsw i32 %.03033.i, -8               ; 2 uses
  %i.ep = icmp sgt i32 %.03033.i, 15
  br i1 %i.ep, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %bb.q, %.thread
  %.030.lcssa.i = phi i32 [ %i.cs, %.thread ], [ %i.eo, %bb.q ]
end_hunk_5
begin_hunk_6_@encode_mcu_AC_first:bb.a
emit_symbol.exit:                                 ; preds = %._crit_edge.i, %bb.j, %bb.h
  %i.eq = add nsw i32 %.072, -16                  ; 2 uses
  %i.er = icmp sgt i32 %.072, 31
  br i1 %i.er, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %emit_symbol.exit, %.lr.ph.split.us, %bb.g
  %.0.lcssa = phi i32 [ %i.au, %bb.g ], [ %i.br, %.lr.ph.split.us ], [ %i.eq, %emit_symbol.exit ]
end_hunk_6
begin_hunk_7_@encode_mcu_AC_first:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  %i.fu = lshr i64 %i.av, 1                       ; 2 uses
  %.not63 = icmp eq i64 %i.fu, 0
  br i1 %.not63, label %._crit_edge79, label %bb.g, !llvm.loop !87

._crit_edge79:                                    ; preds = %emit_symbol.exit66, %bb.d
  %.059.lcssa = phi ptr [ %i.a, %bb.d ], [ %i.ft, %emit_symbol.exit66 ]
end_hunk_7
begin_hunk_8_@encode_mcu_AC_first_prepare:bb.a
  %.1 = phi i64 [ %.02730, %.lr.ph ], [ %.02730, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ]
end_hunk_8
begin_hunk_9_@encode_mcu_DC_refine:bb.a
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !76
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !73
end_hunk_9
begin_hunk_10_@encode_mcu_AC_refine:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i32 41, ptr %i.bs, align 8, !tbaa !53
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !58
  call void %i.bt(ptr noundef nonnull %i.bq) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_10
begin_hunk_11_@encode_mcu_AC_refine:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store i32 41, ptr %i.cr, align 8, !tbaa !53
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !58
  call void %i.cs(ptr noundef nonnull %i.cp) #7
  %.pre214 = load i32, ptr %i.av, align 8, !tbaa !37 ; 2 uses
  %.not.i113 = icmp eq i32 %.pre214, 0
  br i1 %.not.i113, label %.thread, label %emit_symbol.exit.i
end_hunk_11
begin_hunk_12_@encode_mcu_AC_refine:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !70 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !83
  %i.dp = call i32 %i.do(ptr noundef %i.dk) #7
  %.not.i.i123 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i123, label %bb.m, label %dump_buffer.exit.i124

end_hunk_12
begin_hunk_13_@encode_mcu_AC_refine:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i32 25, ptr %i.ds, align 8, !tbaa !53
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !58
  call void %i.dt(ptr noundef nonnull %i.dq) #7
  br label %dump_buffer.exit.i124

dump_buffer.exit.i124:                            ; preds = %bb.m, %bb.l
end_hunk_13
begin_hunk_14_@encode_mcu_AC_refine:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !70 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !83
  %i.ej = call i32 %i.ei(ptr noundef %i.ee) #7
  %.not.i31.i121 = icmp eq i32 %i.ej, 0
  br i1 %.not.i31.i121, label %bb.q, label %dump_buffer.exit32.i122

end_hunk_14
begin_hunk_15_@encode_mcu_AC_refine:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i32 25, ptr %i.em, align 8, !tbaa !53
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !58
  call void %i.en(ptr noundef nonnull %i.ek) #7
  br label %dump_buffer.exit32.i122

dump_buffer.exit32.i122:                          ; preds = %bb.q, %bb.p
end_hunk_15
begin_hunk_16_@encode_mcu_AC_refine:bb.a
  %i.er = shl i64 %.034.i119, 8                   ; 2 uses
  %i.es = add nsw i32 %.03033.i120, -8            ; 2 uses
  %i.et = icmp sgt i32 %.03033.i120, 15
  br i1 %i.et, label %.lr.ph.i118, label %._crit_edge.i115.loopexit, !llvm.loop !84

._crit_edge.i115.loopexit:                        ; preds = %bb.r
  %.pre216.pre.pre = load i32, ptr %i.av, align 8, !tbaa !37
end_hunk_16
begin_hunk_17_@encode_mcu_AC_refine:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !70 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !83
  %i.ft = call i32 %i.fs(ptr noundef %i.fo) #7
  %.not.i.i110 = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i110, label %bb.v, label %dump_buffer.exit.i111

end_hunk_17
begin_hunk_18_@encode_mcu_AC_refine:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  store i32 25, ptr %i.fw, align 8, !tbaa !53
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !58
  call void %i.fx(ptr noundef nonnull %i.fu) #7
  br label %dump_buffer.exit.i111

dump_buffer.exit.i111:                            ; preds = %bb.v, %bb.u
end_hunk_18
begin_hunk_19_@encode_mcu_AC_refine:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !70 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !83
  %i.gn = call i32 %i.gm(ptr noundef %i.gi) #7
  %.not.i31.i108 = icmp eq i32 %i.gn, 0
  br i1 %.not.i31.i108, label %bb.z, label %dump_buffer.exit32.i109

end_hunk_19
begin_hunk_20_@encode_mcu_AC_refine:bb.a
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  store i32 25, ptr %i.gq, align 8, !tbaa !53
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !58
  call void %i.gr(ptr noundef nonnull %i.go) #7
  br label %dump_buffer.exit32.i109

dump_buffer.exit32.i109:                          ; preds = %bb.z, %bb.y
end_hunk_20
begin_hunk_21_@encode_mcu_AC_refine:bb.a
  %i.gv = shl i64 %.034.i106, 8                   ; 2 uses
  %i.gw = add nsw i32 %.03033.i107, -8            ; 2 uses
  %i.gx = icmp sgt i32 %.03033.i107, 15
  br i1 %i.gx, label %.lr.ph.i105, label %._crit_edge.i102.loopexit, !llvm.loop !84

._crit_edge.i102.loopexit:                        ; preds = %bb.aa
  %.pre215.pre = load i32, ptr %i.av, align 8, !tbaa !37
end_hunk_21
begin_hunk_22_@encode_mcu_AC_refine:bb.a
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !70 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !83
  %i.ib = call i32 %i.ia(ptr noundef %i.hw) #7
  %.not.i.i100 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i100, label %bb.ad, label %dump_buffer.exit.i

end_hunk_22
begin_hunk_23_@encode_mcu_AC_refine:bb.a
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  store i32 25, ptr %i.ie, align 8, !tbaa !53
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !58
  call void %i.if(ptr noundef nonnull %i.ic) #7
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.ad, %bb.ac
end_hunk_23
begin_hunk_24_@encode_mcu_AC_refine:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !70 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !83
  %i.iv = call i32 %i.iu(ptr noundef %i.iq) #7
  %.not.i31.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i31.i, label %bb.ah, label %dump_buffer.exit32.i

end_hunk_24
begin_hunk_25_@encode_mcu_AC_refine:bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store i32 25, ptr %i.iy, align 8, !tbaa !53
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !58
  call void %i.iz(ptr noundef nonnull %i.iw) #7
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.ah, %bb.ag
end_hunk_25
begin_hunk_26_@encode_mcu_AC_refine:bb.a
  %i.jd = shl i64 %.034.i, 8                      ; 2 uses
  %i.je = add nsw i32 %.03033.i, -8               ; 2 uses
  %i.jf = icmp sgt i32 %.03033.i, 15
  br i1 %i.jf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ab
  %.030.lcssa.i = phi i32 [ %i.hi, %bb.ab ], [ %i.je, %bb.ai ]
end_hunk_26
begin_hunk_27_@encode_mcu_AC_refine:bb.a
  %i.jg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.jh = add i32 %.0.i.i, -1                     ; 2 uses
  %.old1.not.i.i = icmp eq i32 %i.jh, 0
  br i1 %.old1.not.i.i, label %emit_buffered_bits.exit.i, label %.preheader.i.i, !llvm.loop !90

emit_buffered_bits.exit.i:                        ; preds = %emit_bits.exit, %emit_bits.exit112.thread, %emit_bits.exit112
  store i32 0, ptr %i.ak, align 8, !tbaa !62
end_hunk_27
begin_hunk_28_@encode_mcu_AC_refine:bb.a
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  store i32 41, ptr %i.kc, align 8, !tbaa !53
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !58
  call void %i.kd(ptr noundef nonnull %i.ka) #7
  %.pre217 = load i32, ptr %i.av, align 8, !tbaa !37
  %i.ke = icmp eq i32 %.pre217, 0
  br i1 %i.ke, label %.thread246, label %emit_buffered_bits.exit
end_hunk_28
begin_hunk_29_@encode_mcu_AC_refine:bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !70 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !83
  %i.lb = call i32 %i.la(ptr noundef %i.kw) #7
  %.not.i.i136 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i136, label %bb.an, label %dump_buffer.exit.i137

end_hunk_29
begin_hunk_30_@encode_mcu_AC_refine:bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  store i32 25, ptr %i.le, align 8, !tbaa !53
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !58
  call void %i.lf(ptr noundef nonnull %i.lc) #7
  br label %dump_buffer.exit.i137

dump_buffer.exit.i137:                            ; preds = %bb.an, %bb.am
end_hunk_30
begin_hunk_31_@encode_mcu_AC_refine:bb.a
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !70 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !83
  %i.lv = call i32 %i.lu(ptr noundef %i.lq) #7
  %.not.i31.i134 = icmp eq i32 %i.lv, 0
  br i1 %.not.i31.i134, label %bb.ar, label %dump_buffer.exit32.i135

end_hunk_31
begin_hunk_32_@encode_mcu_AC_refine:bb.a
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  store i32 25, ptr %i.ly, align 8, !tbaa !53
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !58
  call void %i.lz(ptr noundef nonnull %i.lw) #7
  br label %dump_buffer.exit32.i135

dump_buffer.exit32.i135:                          ; preds = %bb.ar, %bb.aq
end_hunk_32
begin_hunk_33_@encode_mcu_AC_refine:bb.a
  %i.md = shl i64 %.034.i132, 8                   ; 2 uses
  %i.me = add nsw i32 %.03033.i133, -8            ; 2 uses
  %i.mf = icmp sgt i32 %.03033.i133, 15
  br i1 %i.mf, label %.lr.ph.i131, label %._crit_edge.i128.loopexit, !llvm.loop !84

._crit_edge.i128.loopexit:                        ; preds = %bb.as
  %.pre218.pre = load i32, ptr %i.av, align 8, !tbaa !37
end_hunk_33
begin_hunk_34_@encode_mcu_AC_refine:bb.a
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !70 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !83
  %i.ng = call i32 %i.nf(ptr noundef %i.nb) #7
  %.not.i.i148 = icmp eq i32 %i.ng, 0
  br i1 %.not.i.i148, label %bb.av, label %dump_buffer.exit.i149

end_hunk_34
begin_hunk_35_@encode_mcu_AC_refine:bb.a
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  store i32 25, ptr %i.nj, align 8, !tbaa !53
  %i.nk = load ptr, ptr %i.ni, align 8, !tbaa !58
  call void %i.nk(ptr noundef nonnull %i.nh) #7
  br label %dump_buffer.exit.i149

dump_buffer.exit.i149:                            ; preds = %bb.av, %bb.au
end_hunk_35
begin_hunk_36_@encode_mcu_AC_refine:bb.a
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !70 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !83
  %i.oa = call i32 %i.nz(ptr noundef %i.nv) #7
  %.not.i31.i146 = icmp eq i32 %i.oa, 0
  br i1 %.not.i31.i146, label %bb.az, label %dump_buffer.exit32.i147

end_hunk_36
begin_hunk_37_@encode_mcu_AC_refine:bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 40
  store i32 25, ptr %i.od, align 8, !tbaa !53
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !58
  call void %i.oe(ptr noundef nonnull %i.ob) #7
  br label %dump_buffer.exit32.i147

dump_buffer.exit32.i147:                          ; preds = %bb.az, %bb.ay
end_hunk_37
begin_hunk_38_@encode_mcu_AC_refine:bb.a
  %i.oi = shl i64 %.034.i144, 8                   ; 2 uses
  %i.oj = add nsw i32 %.03033.i145, -8            ; 2 uses
  %i.ok = icmp sgt i32 %.03033.i145, 15
  br i1 %i.ok, label %.lr.ph.i143, label %._crit_edge.i140, !llvm.loop !84

._crit_edge.i140:                                 ; preds = %bb.ba, %bb.at
  %.030.lcssa.i141 = phi i32 [ %i.mn, %bb.at ], [ %i.oj, %bb.ba ]
end_hunk_38
begin_hunk_39_@encode_mcu_AC_refine:bb.a
  %i.ol = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.om = add i32 %.0.i, -1                       ; 2 uses
  %.old1.not.i = icmp eq i32 %i.om, 0
  br i1 %.old1.not.i, label %emit_buffered_bits.exit, label %.preheader.i, !llvm.loop !91

emit_buffered_bits.exit:                          ; preds = %emit_bits.exit150, %bb.aj, %bb.al, %emit_symbol.exit
  %i.on = add nsw i32 %.1180, -16                 ; 2 uses
  %i.oo = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %i.op = icmp sgt i32 %.1180, 31
  br i1 %i.op, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %emit_buffered_bits.exit, %bb.e
  %.184.lcssa = phi i32 [ %.083185, %bb.e ], [ 0, %emit_buffered_bits.exit ] ; 4 uses
end_hunk_39
begin_hunk_40_@encode_mcu_AC_refine:bb.a
  %.0.be = lshr i64 %i.bf, 1
  %.0166.be = lshr i64 %i.bc, 1                   ; 2 uses
  %.not87 = icmp eq i64 %.0166.be, 0
  br i1 %.not87, label %._crit_edge192, label %bb.e, !llvm.loop !93

bb.bc:                                            ; preds = %._crit_edge
  call fastcc void @emit_eobrun(ptr noundef %i.d)
end_hunk_40
begin_hunk_41_@encode_mcu_AC_refine:bb.a
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !70 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !83
  %i.qv = call i32 %i.qu(ptr noundef %i.qq) #7
  %.not.i.i160 = icmp eq i32 %i.qv, 0
  br i1 %.not.i.i160, label %bb.bh, label %dump_buffer.exit.i161

end_hunk_41
begin_hunk_42_@encode_mcu_AC_refine:bb.a
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 40
  store i32 25, ptr %i.qy, align 8, !tbaa !53
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !58
  call void %i.qz(ptr noundef nonnull %i.qw) #7
  br label %dump_buffer.exit.i161

dump_buffer.exit.i161:                            ; preds = %bb.bh, %bb.bg
end_hunk_42
begin_hunk_43_@encode_mcu_AC_refine:bb.a
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !70 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !83
  %i.rp = call i32 %i.ro(ptr noundef %i.rk) #7
  %.not.i31.i158 = icmp eq i32 %i.rp, 0
  br i1 %.not.i31.i158, label %bb.bl, label %dump_buffer.exit32.i159

end_hunk_43
begin_hunk_44_@encode_mcu_AC_refine:bb.a
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 40
  store i32 25, ptr %i.rs, align 8, !tbaa !53
  %i.rt = load ptr, ptr %i.rr, align 8, !tbaa !58
  call void %i.rt(ptr noundef nonnull %i.rq) #7
  br label %dump_buffer.exit32.i159

dump_buffer.exit32.i159:                          ; preds = %bb.bl, %bb.bk
end_hunk_44
begin_hunk_45_@encode_mcu_AC_refine:bb.a
  %i.rx = shl i64 %.034.i156, 8                   ; 2 uses
  %i.ry = add nsw i32 %.03033.i157, -8            ; 2 uses
  %i.rz = icmp sgt i32 %.03033.i157, 15
  br i1 %i.rz, label %.lr.ph.i155, label %._crit_edge.i152, !llvm.loop !84

._crit_edge.i152:                                 ; preds = %bb.bm, %bb.bf
  %.030.lcssa.i153 = phi i32 [ %i.qc, %bb.bf ], [ %i.ry, %bb.bm ]
end_hunk_45
begin_hunk_46_@encode_mcu_AC_refine:bb.a
emit_bits.exit162:                                ; preds = %.preheader.i94, %._crit_edge.i152
  %i.sa = add i32 %.0.i96, -1                     ; 2 uses
  %.old1.not.i97 = icmp eq i32 %i.sa, 0
  br i1 %.old1.not.i97, label %emit_buffered_bits.exit98, label %.preheader.i94thread-pre-split, !llvm.loop !94

emit_buffered_bits.exit98:                        ; preds = %emit_bits.exit162, %emit_symbol.exit92
  %i.sb = load ptr, ptr %i.aj, align 8, !tbaa !35
end_hunk_46
begin_hunk_47_@encode_mcu_AC_refine_prepare:bb.a
  %spec.select = select i1 %i.t, i32 %i.u, i32 %.03234 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.032.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ]
end_hunk_47
begin_hunk_48_@finish_pass_gather_phuff:bb.a
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next33, %i.ae
  br i1 %i.af, label %.lr.ph.split.us.splitthread-pre-split, label %._crit_edge, !llvm.loop !96

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %i.ag = phi i32 [ %i.at, %bb.j ], [ %i.g, %.lr.ph ]
end_hunk_48
begin_hunk_49_@finish_pass_gather_phuff:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph.split, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.j, %bb.f, %.lr.ph.split.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
end_hunk_49
begin_hunk_50_@emit_restart:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %i.r = tail call i32 %i.q(ptr noundef %i.m) #7
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %dump_buffer.exit

end_hunk_50
begin_hunk_51_@emit_restart:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 25, ptr %i.u, align 8, !tbaa !53
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !58
  tail call void %i.v(ptr noundef nonnull %i.s) #7
  br label %dump_buffer.exit

dump_buffer.exit:                                 ; preds = %bb.c, %bb.d
end_hunk_51
begin_hunk_52_@emit_restart:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.am = tail call i32 %i.al(ptr noundef %i.ah) #7
  %.not.i17 = icmp eq i32 %i.am, 0
  br i1 %.not.i17, label %bb.g, label %dump_buffer.exit18

end_hunk_52
begin_hunk_53_@emit_restart:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 25, ptr %i.ap, align 8, !tbaa !53
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !58
  tail call void %i.aq(ptr noundef nonnull %i.an) #7
  br label %dump_buffer.exit18

dump_buffer.exit18:                               ; preds = %bb.f, %bb.g
end_hunk_53
begin_hunk_54_@emit_restart:bb.a
  %i.be = load i32, ptr %i.az, align 8, !tbaa !44
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.i, label %.loopexit, !llvm.loop !98

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 116
end_hunk_54
begin_hunk_55_@emit_bits:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.al = tail call i32 %i.ak(ptr noundef %i.ag) #7
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.g, label %dump_buffer.exit

end_hunk_55
begin_hunk_56_@emit_bits:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i32 25, ptr %i.ao, align 8, !tbaa !53
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !58
  tail call void %i.ap(ptr noundef nonnull %i.am) #7
  br label %dump_buffer.exit

dump_buffer.exit:                                 ; preds = %bb.f, %bb.g
end_hunk_56
begin_hunk_57_@emit_bits:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = tail call i32 %i.be(ptr noundef %i.ba) #7
  %.not.i31 = icmp eq i32 %i.bf, 0
  br i1 %.not.i31, label %bb.k, label %dump_buffer.exit32

end_hunk_57
begin_hunk_58_@emit_bits:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i32 25, ptr %i.bi, align 8, !tbaa !53
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !58
  tail call void %i.bj(ptr noundef nonnull %i.bg) #7
  br label %dump_buffer.exit32

dump_buffer.exit32:                               ; preds = %bb.j, %bb.k
end_hunk_58
begin_hunk_59_@emit_bits:bb.a
  %i.bn = shl i64 %.034, 8                        ; 2 uses
  %i.bo = add nsw i32 %.03033, -8                 ; 2 uses
  %i.bp = icmp sgt i32 %.03033, 15
  br i1 %i.bp, label %bb.e, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.l, %bb.d
  %.030.lcssa = phi i32 [ %i.o, %bb.d ], [ %i.bo, %bb.l ]
end_hunk_59
begin_hunk_60_@llvm.usub.sat.i32
!80 = !{!28, !28, i64 0}
!81 = distinct !{!81, !49}
!82 = !{!8, !4, i64 464}
!83 = !{!72, !10, i64 24}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !49, !86}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !86}
!91 = distinct !{!91, !86}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = distinct !{!94, !86}
!95 = distinct !{!95, !49}
!96 = distinct !{!96, !49, !86}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
end_hunk_60
