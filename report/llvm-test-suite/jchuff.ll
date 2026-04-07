begin_hunk_0_@encode_mcu_huff:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.an = tail call i32 %i.am(ptr noundef %i.ai) #9, !inline_history !96
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i.i.i

end_hunk_0
begin_hunk_1_@encode_mcu_huff:bb.a
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !95
  %i.bd = tail call i32 %i.bc(ptr noundef %i.ay) #9, !inline_history !96
  %.not.i37.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i37.i.i.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i.i.i

end_hunk_1
begin_hunk_2_@encode_mcu_huff:bb.a
  %i.bh = shl i64 %.03449.i.i.i, 8
  %i.bi = add nsw i32 %.03250.i.i.i, -8
  %i.bj = icmp sgt i32 %.03250.i.i.i, 15
  br i1 %i.bj, label %bb.d, label %.loopexit.i.loopexit, !llvm.loop !97

.loopexit.i.loopexit:                             ; preds = %bb.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !86
end_hunk_2
begin_hunk_3_@encode_mcu_huff:bb.a
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !82 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !95
  %i.bu = tail call i32 %i.bt(ptr noundef %i.bp) #9, !inline_history !98
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i

end_hunk_3
begin_hunk_4_@encode_mcu_huff:bb.a
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !82 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cj = tail call i32 %i.ci(ptr noundef %.pre113) #9, !inline_history !98
  %.not.i17.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i17.i, label %emit_restart.exit.thread, label %dump_buffer.exit19.i

end_hunk_4
begin_hunk_5_@encode_mcu_huff:bb.a
  %i.ct = load i32, ptr %i.co, align 4, !tbaa !61
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next.i, %i.cu
  br i1 %i.cv, label %bb.n, label %emit_restart.exit, !llvm.loop !99

emit_restart.exit:                                ; preds = %bb.n, %bb.m, %bb.b, %bb.a
  %i.cw = phi i64 [ %i.g, %bb.a ], [ %i.cn, %bb.m ], [ %i.g, %bb.b ], [ %i.cn, %bb.n ] ; 2 uses
end_hunk_5
begin_hunk_6_@encode_mcu_huff:bb.a
  %i.ed = add nuw nsw i32 %.049171.i, 1           ; 2 uses
  %i.ee = lshr i32 %.154170.i, 1                  ; 2 uses
  %.not.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i40, !llvm.loop !100

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.o
  %.049.lcssa.i = phi i32 [ 0, %bb.o ], [ %i.ed, %.lr.ph.i40 ] ; 3 uses
end_hunk_6
begin_hunk_7_@encode_mcu_huff:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i32 39, ptr %i.er, align 8, !tbaa !40
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !44
  tail call void %i.es(ptr noundef nonnull %i.ep) #9, !inline_history !101
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
end_hunk_7
begin_hunk_8_@encode_mcu_huff:bb.a
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !82 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !95
  %i.fp = tail call i32 %i.fo(ptr noundef %i.fk) #9, !inline_history !102
  %.not.i.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i.i

end_hunk_8
begin_hunk_9_@encode_mcu_huff:bb.a
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !82 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !95
  %i.gg = tail call i32 %i.gf(ptr noundef %i.gb) #9, !inline_history !102
  %.not.i37.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i37.i.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i.i

end_hunk_9
begin_hunk_10_@encode_mcu_huff:bb.a
  %i.gl = shl i64 %.03449.i.i, 8                  ; 2 uses
  %i.gm = add nsw i32 %.03250.i.i, -8             ; 2 uses
  %i.gn = icmp sgt i32 %.03250.i.i, 15
  br i1 %i.gn, label %.lr.ph.i.i, label %.loopexit153.i, !llvm.loop !97

.loopexit153.i:                                   ; preds = %bb.v, %bb.q
  %i.go = phi i64 [ %i.dg, %bb.q ], [ %i.gk, %bb.v ] ; 2 uses
end_hunk_10
begin_hunk_11_@encode_mcu_huff:bb.a
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !82 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !95
  %i.hm = tail call i32 %i.hl(ptr noundef %i.hh) #9, !inline_history !102
  %.not.i.i79.i = icmp eq i32 %i.hm, 0
  br i1 %.not.i.i79.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i80.i

end_hunk_11
begin_hunk_12_@encode_mcu_huff:bb.a
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !82 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !95
  %i.id = tail call i32 %i.ic(ptr noundef %i.hy) #9, !inline_history !102
  %.not.i37.i77.i = icmp eq i32 %i.id, 0
  br i1 %.not.i37.i77.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i78.i

end_hunk_12
begin_hunk_13_@encode_mcu_huff:bb.a
  %i.ii = shl i64 %.03449.i76.i, 8                ; 2 uses
  %i.ij = add nsw i32 %.03250.i75.i, -8           ; 2 uses
  %i.ik = icmp sgt i32 %.03250.i75.i, 15
  br i1 %i.ik, label %.lr.ph.i74.i, label %emit_bits.exit81.i, !llvm.loop !97

emit_bits.exit81.i:                               ; preds = %bb.ab, %bb.w
  %i.il = phi i64 [ %i.go, %bb.w ], [ %i.ih, %bb.ab ]
end_hunk_13
begin_hunk_14_@encode_mcu_huff:bb.a
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  store i32 39, ptr %i.jk, align 8, !tbaa !40
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !44
  tail call void %i.jl(ptr noundef nonnull %i.ji) #9, !inline_history !101
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph173.i
end_hunk_14
begin_hunk_15_@encode_mcu_huff:bb.a
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !82 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !95
  %i.kh = tail call i32 %i.kg(ptr noundef %i.kc) #9, !inline_history !102
  %.not.i.i92.i = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i92.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i93.i

end_hunk_15
begin_hunk_16_@encode_mcu_huff:bb.a
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !82 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !95
  %i.ky = tail call i32 %i.kx(ptr noundef %i.kt) #9, !inline_history !102
  %.not.i37.i90.i = icmp eq i32 %i.ky, 0
  br i1 %.not.i37.i90.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i91.i

end_hunk_16
begin_hunk_17_@encode_mcu_huff:bb.a
  %i.ld = shl i64 %.03449.i89.i, 8                ; 2 uses
  %i.le = add nsw i32 %.03250.i88.i, -8           ; 2 uses
  %i.lf = icmp samesign ugt i32 %.03250.i88.i, 15
  br i1 %i.lf, label %.lr.ph.i87.i, label %.loopexit.i42, !llvm.loop !97

.loopexit.i42:                                    ; preds = %bb.ak, %bb.af
  %i.lg = phi i64 [ %i.jb, %bb.af ], [ %i.lc, %bb.ak ] ; 2 uses
end_hunk_17
begin_hunk_18_@encode_mcu_huff:bb.a
  store i32 %.032.lcssa.i85.i, ptr %i.df, align 8, !tbaa !93
  %i.lh = add nsw i32 %.1172.i, -16               ; 2 uses
  %i.li = icmp sgt i32 %.1172.i, 31
  br i1 %i.li, label %.lr.ph173.i, label %._crit_edge174.i, !llvm.loop !103

._crit_edge174.i:                                 ; preds = %.loopexit.i42, %.preheader.i
  %i.lj = phi i64 [ %i.is, %.preheader.i ], [ %i.lg, %.loopexit.i42 ]
end_hunk_18
begin_hunk_19_@encode_mcu_huff:bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  store i32 39, ptr %i.mb, align 8, !tbaa !40
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !44
  tail call void %i.mc(ptr noundef nonnull %i.lz) #9, !inline_history !101
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge174.i
end_hunk_19
begin_hunk_20_@encode_mcu_huff:bb.a
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !82 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !95
  %i.my = tail call i32 %i.mx(ptr noundef %i.mt) #9, !inline_history !102
  %.not.i.i105.i = icmp eq i32 %i.my, 0
  br i1 %.not.i.i105.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i106.i

end_hunk_20
begin_hunk_21_@encode_mcu_huff:bb.a
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !82 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !95
  %i.np = tail call i32 %i.no(ptr noundef %i.nk) #9, !inline_history !102
  %.not.i37.i103.i = icmp eq i32 %i.np, 0
  br i1 %.not.i37.i103.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i104.i

end_hunk_21
begin_hunk_22_@encode_mcu_huff:bb.a
  %i.nu = shl i64 %.03449.i102.i, 8               ; 2 uses
  %i.nv = add nsw i32 %.03250.i101.i, -8          ; 2 uses
  %i.nw = icmp sgt i32 %.03250.i101.i, 15
  br i1 %i.nw, label %.lr.ph.i100.i, label %.loopexit150.i, !llvm.loop !97

.loopexit150.i:                                   ; preds = %bb.ar, %bb.am
  %i.nx = phi i64 [ %i.lj, %bb.am ], [ %i.nt, %bb.ar ]
end_hunk_22
begin_hunk_23_@encode_mcu_huff:bb.a
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !82 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !95
  %i.ou = tail call i32 %i.ot(ptr noundef %i.op) #9, !inline_history !102
  %.not.i.i118.i = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i118.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i119.i

end_hunk_23
begin_hunk_24_@encode_mcu_huff:bb.a
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !82 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !95
  %i.pl = tail call i32 %i.pk(ptr noundef %i.pg) #9, !inline_history !102
  %.not.i37.i116.i = icmp eq i32 %i.pl, 0
  br i1 %.not.i37.i116.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i117.i

end_hunk_24
begin_hunk_25_@encode_mcu_huff:bb.a
  %i.pq = shl i64 %.03449.i115.i, 8               ; 2 uses
  %i.pr = add nsw i32 %.03250.i114.i, -8          ; 2 uses
  %i.ps = icmp sgt i32 %.03250.i114.i, 15
  br i1 %i.ps, label %.lr.ph.i113.i, label %.thread.i, !llvm.loop !97

bb.ax:                                            ; preds = %bb.ad
  %i.pt = add nuw nsw i32 %.047177.i, 1
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i44, 64
  br i1 %exitcond.not.i, label %bb.ay, label %bb.ad, !llvm.loop !104

.thread.i:                                        ; preds = %bb.aw, %.loopexit150.i
  %i.pu = phi i64 [ %i.nx, %.loopexit150.i ], [ %i.pp, %bb.aw ] ; 2 uses
end_hunk_25
begin_hunk_26_@encode_mcu_huff:bb.a
  store i32 %.032.lcssa.i111.i, ptr %i.df, align 8, !tbaa !93
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %exitcond.not213.i = icmp eq i64 %indvars.iv.next212.i, 64
  br i1 %exitcond.not213.i, label %encode_one_block.exit, label %.outer.i, !llvm.loop !104

bb.ay:                                            ; preds = %bb.ax
  %i.pv = load i32, ptr %i.dz, align 4, !tbaa !4
end_hunk_26
begin_hunk_27_@encode_mcu_huff:bb.a
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  store i32 39, ptr %i.qc, align 8, !tbaa !40
  %i.qd = load ptr, ptr %i.qb, align 8, !tbaa !44
  tail call void %i.qd(ptr noundef nonnull %i.qa) #9, !inline_history !101
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
end_hunk_27
begin_hunk_28_@encode_mcu_huff:bb.a
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !82 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !95
  %i.qz = tail call i32 %i.qy(ptr noundef %i.qu) #9, !inline_history !102
  %.not.i.i131.i = icmp eq i32 %i.qz, 0
  br i1 %.not.i.i131.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i132.i

end_hunk_28
begin_hunk_29_@encode_mcu_huff:bb.a
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !82 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !95
  %i.rq = tail call i32 %i.rp(ptr noundef %i.rl) #9, !inline_history !102
  %.not.i37.i129.i = icmp eq i32 %i.rq, 0
  br i1 %.not.i37.i129.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i130.i

end_hunk_29
begin_hunk_30_@encode_mcu_huff:bb.a
  %i.rv = shl i64 %.03449.i128.i, 8               ; 2 uses
  %i.rw = add nsw i32 %.03250.i127.i, -8          ; 2 uses
  %i.rx = icmp sgt i32 %.03250.i127.i, 15
  br i1 %i.rx, label %.lr.ph.i126.i, label %emit_bits.exit133.i, !llvm.loop !97

emit_bits.exit133.i:                              ; preds = %bb.bf, %bb.ba
  %i.ry = phi i64 [ %i.is, %bb.ba ], [ %i.ru, %bb.bf ]
end_hunk_30
begin_hunk_31_@encode_mcu_huff:bb.a
  %i.sd = load i32, ptr %i.cx, align 8, !tbaa !74
  %i.se = sext i32 %i.sd to i64
  %i.sf = icmp slt i64 %indvars.iv.next, %i.se
  br i1 %i.sf, label %bb.o, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %encode_one_block.exit, %emit_restart.exit
  %i.sg = phi i64 [ %i.cw, %emit_restart.exit ], [ %i.rz, %encode_one_block.exit ]
end_hunk_31
begin_hunk_32_@finish_pass_huff:bb.a
  %.sroa.22.16..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.22.16.copyload17 = load i32, ptr %.sroa.22.16..sroa_idx16, align 8, !tbaa !4 ; 4 uses
  %.sroa.24.16..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24.16..sroa_idx18, i64 20, i1 false), !tbaa.struct !106
  %i.i = icmp sgt i32 %.sroa.22.16.copyload17, 0
  br i1 %i.i, label %.lr.ph.i.i, label %flush_bits.exit

end_hunk_32
begin_hunk_33_@finish_pass_huff:bb.a
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.w = tail call i32 %i.v(ptr noundef %0) #9, !inline_history !107
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %bb.h, label %dump_buffer.exit.i.i

end_hunk_33
begin_hunk_34_@finish_pass_huff:bb.a
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !82  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !95
  %i.ai = tail call i32 %i.ah(ptr noundef %0) #9, !inline_history !107
  %.not.i37.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i37.i.i, label %bb.h, label %dump_buffer.exit39.i.i

end_hunk_34
begin_hunk_35_@finish_pass_huff:bb.a
  %i.am = shl i64 %.03449.i.i, 8
  %i.an = add nsw i32 %.03250.i.i, -8
  %i.ao = icmp sgt i32 %.03250.i.i, 15
  br i1 %i.ao, label %bb.b, label %flush_bits.exit, !llvm.loop !97

bb.h:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.4.ph = phi ptr [ %i.ac, %bb.f ], [ %i.q, %bb.c ]
end_hunk_35
begin_hunk_36_@finish_pass_huff:bb.a
  store i64 %.sroa.10.431, ptr %i.at, align 8, !tbaa !89
  store i64 %.sroa.18.029, ptr %i.h, align 8, !tbaa !35
  store i32 %.sroa.22.027, ptr %.sroa.22.16..sroa_idx16, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24.16..sroa_idx18, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24, i64 20, i1 false), !tbaa.struct !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  ret void
}
end_hunk_36
begin_hunk_37_@llvm.assume
!93 = !{!87, !5, i64 24}
!94 = !{!87, !29, i64 16}
!95 = !{!84, !9, i64 24}
!96 = distinct !{null, null, null, null}
!97 = distinct !{!97, !32}
!98 = distinct !{null, null}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = distinct !{null, null}
!102 = distinct !{null, null, null}
!103 = distinct !{!103, !32}
!104 = distinct !{!104, !32}
!105 = distinct !{!105, !32}
!106 = !{i64 0, i64 16, !30}
!107 = distinct !{null, null, null}
end_hunk_37
