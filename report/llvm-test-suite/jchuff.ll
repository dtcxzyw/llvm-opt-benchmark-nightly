inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@encode_mcu_huff:bb.a
  %.not.i37.i116.i = icmp eq i32 %i.pl, 0
  br i1 %.not.i37.i116.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i117.i

dump_buffer.exit39.i117.i:                        ; preds = %bb.av
  %i.pm = load ptr, ptr %i.pi, align 8, !tbaa !83
  store ptr %i.pm, ptr %2, align 8, !tbaa !86
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !89 ; 2 uses
  store i64 %i.po, ptr %i.h, align 8, !tbaa !90
  br label %bb.aw

bb.aw:                                            ; preds = %dump_buffer.exit39.i117.i, %bb.au, %bb.at
  %i.pp = phi i64 [ %i.po, %dump_buffer.exit39.i117.i ], [ %i.pe, %bb.au ], [ %i.oy, %bb.at ]
  %i.pq = shl i64 %.03446.i115.i, 8               ; 2 uses
  %i.pr = add nsw i32 %.03247.i114.i, -8          ; 2 uses
  %i.ps = icmp sgt i32 %.03247.i114.i, 15
  br i1 %i.ps, label %.lr.ph.i113.i, label %.thread.i, !llvm.loop !97

bb.ax:                                            ; preds = %bb.ad
  %i.pt = add nuw nsw i32 %.047177.i, 1
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i44, 64
  br i1 %exitcond.not.i, label %bb.ay, label %bb.ad, !llvm.loop !104

.thread.i:                                        ; preds = %bb.aw, %.loopexit150.i
  %i.pu = phi i64 [ %i.nx, %.loopexit150.i ], [ %i.pp, %bb.aw ] ; 2 uses
  %.034.lcssa.i110.i = phi i64 [ %i.og, %.loopexit150.i ], [ %i.pq, %bb.aw ] ; 2 uses
  %.032.lcssa.i111.i = phi i32 [ %i.oc, %.loopexit150.i ], [ %i.pr, %bb.aw ] ; 2 uses
  store i64 %.034.lcssa.i110.i, ptr %i.i, align 8, !tbaa !94
  store i32 %.032.lcssa.i111.i, ptr %i.df, align 8, !tbaa !93
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %exitcond.not213.i = icmp eq i64 %indvars.iv.next212.i, 64
  br i1 %exitcond.not213.i, label %encode_one_block.exit, label %.outer.i, !llvm.loop !104

bb.ay:                                            ; preds = %bb.ax
  %i.pv = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.pw = load i8, ptr %i.ir, align 4, !tbaa !30  ; 2 uses
  %i.px = sext i8 %i.pw to i32                    ; 2 uses
  %i.py = zext i32 %i.pv to i64
  %i.pz = icmp eq i8 %i.pw, 0
  br i1 %i.pz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.qa = load ptr, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !39 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  store i32 39, ptr %i.qc, align 8, !tbaa !40
  %i.qd = load ptr, ptr %i.qb, align 8, !tbaa !44
  tail call void %i.qd(ptr noundef nonnull %i.qa) #8, !inline_history !101
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.qe = zext nneg i32 %i.px to i64
  %notmask.i121.i = shl nsw i64 -1, %i.qe
  %i.qf = xor i64 %notmask.i121.i, -1
  %i.qg = and i64 %i.qf, %i.py
  %i.qh = add nsw i32 %.ph221.i, %i.px            ; 4 uses
  %i.qi = sub nsw i32 24, %i.qh
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = shl i64 %i.qg, %i.qj
  %i.ql = or i64 %.pre198.i, %i.qk                ; 2 uses
  %i.qm = icmp sgt i32 %i.qh, 7
  br i1 %i.qm, label %.lr.ph.i126.i, label %emit_bits.exit133.i

.lr.ph.i126.i:                                    ; preds = %bb.ba, %bb.bf
  %.03247.i127.i = phi i32 [ %i.rw, %bb.bf ], [ %i.qh, %bb.ba ] ; 2 uses
  %.03446.i128.i = phi i64 [ %i.rv, %bb.bf ], [ %i.ql, %bb.ba ] ; 3 uses
  %i.qn = lshr i64 %.03446.i128.i, 16
  %i.qo = trunc i64 %i.qn to i8
  %i.qp = load ptr, ptr %2, align 8, !tbaa !86    ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 1
  store ptr %i.qq, ptr %2, align 8, !tbaa !86
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !30
  %i.qr = load i64, ptr %i.h, align 8, !tbaa !90
  %i.qs = add i64 %i.qr, -1                       ; 3 uses
  store i64 %i.qs, ptr %i.h, align 8, !tbaa !90
  %i.qt = icmp eq i64 %i.qs, 0
  br i1 %i.qt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i126.i
  %i.qu = load ptr, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !82 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !95
  %i.qz = tail call i32 %i.qy(ptr noundef %i.qu) #8, !inline_history !102
  %.not.i.i131.i = icmp eq i32 %i.qz, 0
  br i1 %.not.i.i131.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i132.i

dump_buffer.exit.i132.i:                          ; preds = %bb.bb
  %i.ra = load ptr, ptr %i.qw, align 8, !tbaa !83
  store ptr %i.ra, ptr %2, align 8, !tbaa !86
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !89 ; 2 uses
  store i64 %i.rc, ptr %i.h, align 8, !tbaa !90
  br label %bb.bc

bb.bc:                                            ; preds = %dump_buffer.exit.i132.i, %.lr.ph.i126.i
  %i.rd = phi i64 [ %i.rc, %dump_buffer.exit.i132.i ], [ %i.qs, %.lr.ph.i126.i ]
  %i.re = and i64 %.03446.i128.i, 16711680
  %i.rf = icmp eq i64 %i.re, 16711680
  br i1 %i.rf, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.rg = load ptr, ptr %2, align 8, !tbaa !86    ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  store ptr %i.rh, ptr %2, align 8, !tbaa !86
  store i8 0, ptr %i.rg, align 1, !tbaa !30
  %i.ri = load i64, ptr %i.h, align 8, !tbaa !90
  %i.rj = add i64 %i.ri, -1                       ; 3 uses
  store i64 %i.rj, ptr %i.h, align 8, !tbaa !90
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.rl = load ptr, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !82 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !95
  %i.rq = tail call i32 %i.rp(ptr noundef %i.rl) #8, !inline_history !102
  %.not.i37.i129.i = icmp eq i32 %i.rq, 0
  br i1 %.not.i37.i129.i, label %emit_restart.exit.thread, label %dump_buffer.exit39.i130.i

dump_buffer.exit39.i130.i:                        ; preds = %bb.be
  %i.rr = load ptr, ptr %i.rn, align 8, !tbaa !83
  store ptr %i.rr, ptr %2, align 8, !tbaa !86
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !89 ; 2 uses
  store i64 %i.rt, ptr %i.h, align 8, !tbaa !90
  br label %bb.bf

bb.bf:                                            ; preds = %dump_buffer.exit39.i130.i, %bb.bd, %bb.bc
  %i.ru = phi i64 [ %i.rt, %dump_buffer.exit39.i130.i ], [ %i.rj, %bb.bd ], [ %i.rd, %bb.bc ]
  %i.rv = shl i64 %.03446.i128.i, 8               ; 2 uses
  %i.rw = add nsw i32 %.03247.i127.i, -8          ; 2 uses
  %i.rx = icmp sgt i32 %.03247.i127.i, 15
  br i1 %i.rx, label %.lr.ph.i126.i, label %emit_bits.exit133.i, !llvm.loop !97

emit_bits.exit133.i:                              ; preds = %bb.bf, %bb.ba
  %i.ry = phi i64 [ %i.is, %bb.ba ], [ %i.ru, %bb.bf ]
  %.034.lcssa.i123.i = phi i64 [ %i.ql, %bb.ba ], [ %i.rv, %bb.bf ]
  %.032.lcssa.i124.i = phi i32 [ %i.qh, %bb.ba ], [ %i.rw, %bb.bf ]
  store i64 %.034.lcssa.i123.i, ptr %i.i, align 8, !tbaa !94
  store i32 %.032.lcssa.i124.i, ptr %i.df, align 8, !tbaa !93
  br label %encode_one_block.exit

encode_one_block.exit:                            ; preds = %.thread.i, %emit_bits.exit133.i
  %i.rz = phi i64 [ %i.ry, %emit_bits.exit133.i ], [ %i.pu, %.thread.i ] ; 2 uses
  %i.sa = load ptr, ptr %i.dm, align 8, !tbaa !75
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !77
  %i.sc = sext i16 %i.sb to i32
  store i32 %i.sc, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sd = load i32, ptr %i.cx, align 8, !tbaa !74
  %i.se = sext i32 %i.sd to i64
  %i.sf = icmp slt i64 %indvars.iv.next, %i.se
  br i1 %i.sf, label %bb.o, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %encode_one_block.exit, %emit_restart.exit
  %i.sg = phi i64 [ %i.cw, %emit_restart.exit ], [ %i.rz, %encode_one_block.exit ]
  %i.sh = load ptr, ptr %2, align 8, !tbaa !86
  %i.si = load ptr, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  store ptr %i.sh, ptr %i.si, align 8, !tbaa !83
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store i64 %i.sg, ptr %i.sj, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !tbaa.struct !91
  %i.sk = load i32, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %.not38 = icmp eq i32 %i.sk, 0
  br i1 %.not38, label %emit_restart.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge
  %i.sl = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !71 ; 2 uses
  %i.sn = icmp eq i32 %i.sm, 0
  br i1 %i.sn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.so = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !72
  %i.sq = add nsw i32 %i.sp, 1
  %i.sr = and i32 %i.sq, 7
  store i32 %i.sr, ptr %i.so, align 4, !tbaa !72
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ss = phi i32 [ %i.sk, %bb.bh ], [ %i.sm, %bb.bg ]
  %i.st = add i32 %i.ss, -1
  store i32 %i.st, ptr %i.sl, align 8, !tbaa !71
  br label %emit_restart.exit.thread

emit_restart.exit.thread:                         ; preds = %bb.h, %bb.e, %bb.r, %bb.u, %bb.x, %bb.aa, %bb.bb, %bb.be, %bb.an, %bb.aq, %bb.as, %bb.av, %bb.ag, %bb.aj, %bb.l, %bb.j, %._crit_edge, %bb.bi
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.r ], [ 1, %bb.bi ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.x ], [ 0, %bb.bb ], [ 0, %bb.as ], [ 0, %bb.ag ], [ 0, %bb.an ], [ 0, %bb.aj ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.be ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.e ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 {
bb.a:
  %.sroa.24 = alloca [20 x i8], align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.18.16.copyload15 = load i64, ptr %i.h, align 8, !tbaa !35 ; 2 uses
  %.sroa.22.16..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.22.16.copyload17 = load i32, ptr %.sroa.22.16..sroa_idx16, align 8, !tbaa !4 ; 4 uses
  %.sroa.24.16..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24.16..sroa_idx18, i64 20, i1 false), !tbaa.struct !106
  %i.i = icmp sgt i32 %.sroa.22.16.copyload17, 0
  br i1 %i.i, label %.lr.ph.i.i, label %flush_bits.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.j = sub nsw i32 17, %.sroa.22.16.copyload17
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl i64 127, %i.k
  %i.m = or i64 %i.l, %.sroa.18.16.copyload15
  %i.n = add nuw nsw i32 %.sroa.22.16.copyload17, 7
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.10.1 = phi i64 [ %i.g, %.lr.ph.i.i ], [ %.sroa.10.3, %bb.g ]
  %.sroa.0.1 = phi ptr [ %i.e, %.lr.ph.i.i ], [ %.sroa.0.3, %bb.g ] ; 2 uses
  %.03247.i.i = phi i32 [ %i.n, %.lr.ph.i.i ], [ %i.an, %bb.g ] ; 2 uses
  %.03446.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.o = lshr i64 %.03446.i.i, 16
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 2 uses
  store i8 %i.p, ptr %.sroa.0.1, align 1, !tbaa !30
  %i.r = add i64 %.sroa.10.1, -1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.w = tail call i32 %i.v(ptr noundef %0) #8, !inline_history !107
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %bb.h, label %dump_buffer.exit.i.i

dump_buffer.exit.i.i:                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %dump_buffer.exit.i.i, %bb.b
  %.sroa.10.2 = phi i64 [ %i.z, %dump_buffer.exit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.x, %dump_buffer.exit.i.i ], [ %i.q, %bb.b ] ; 3 uses
  %i.aa = and i64 %.03446.i.i, 16711680
  %i.ab = icmp eq i64 %i.aa, 16711680
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1 ; 2 uses
  store i8 0, ptr %.sroa.0.2, align 1, !tbaa !30
  %i.ad = add i64 %.sroa.10.2, -1                 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !82  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !95
  %i.ai = tail call i32 %i.ah(ptr noundef %0) #8, !inline_history !107
  %.not.i37.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i37.i.i, label %bb.h, label %dump_buffer.exit39.i.i

dump_buffer.exit39.i.i:                           ; preds = %bb.f
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %dump_buffer.exit39.i.i, %bb.e, %bb.d
  %.sroa.10.3 = phi i64 [ %i.al, %dump_buffer.exit39.i.i ], [ %i.ad, %bb.e ], [ %.sroa.10.2, %bb.d ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.aj, %dump_buffer.exit39.i.i ], [ %i.ac, %bb.e ], [ %.sroa.0.2, %bb.d ] ; 2 uses
  %i.am = shl i64 %.03446.i.i, 8
  %i.an = add nsw i32 %.03247.i.i, -8
  %i.ao = icmp sgt i32 %.03247.i.i, 15
  br i1 %i.ao, label %bb.b, label %flush_bits.exit, !llvm.loop !97

bb.h:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.4.ph = phi ptr [ %i.ac, %bb.f ], [ %i.q, %bb.c ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 22, ptr %i.aq, align 8, !tbaa !40
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !44
  tail call void %i.ar(ptr noundef nonnull %0) #8
  br label %flush_bits.exit

flush_bits.exit:                                  ; preds = %bb.g, %bb.a, %bb.h
  %.sroa.0.433 = phi ptr [ %.sroa.0.4.ph, %bb.h ], [ %i.e, %bb.a ], [ %.sroa.0.3, %bb.g ]
  %.sroa.10.431 = phi i64 [ 0, %bb.h ], [ %i.g, %bb.a ], [ %.sroa.10.3, %bb.g ]
  %.sroa.18.029 = phi i64 [ %.sroa.18.16.copyload15, %bb.h ], [ 0, %bb.a ], [ 0, %bb.g ]
  %.sroa.22.027 = phi i32 [ %.sroa.22.16.copyload17, %bb.h ], [ 0, %bb.a ], [ 0, %bb.g ]
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  store ptr %.sroa.0.433, ptr %i.as, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.10.431, ptr %i.at, align 8, !tbaa !89
  store i64 %.sroa.18.029, ptr %i.h, align 8, !tbaa !35
  store i32 %.sroa.22.027, ptr %.sroa.22.16..sroa_idx16, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24.16..sroa_idx18, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.24, i64 20, i1 false), !tbaa.struct !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"jpeg_compress_struct", !12, i64 0, !13, i64 8, !14, i64 16, !5, i64 24, !5, i64 28, !15, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !16, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !9, i64 80, !6, i64 88, !6, i64 120, !6, i64 152, !6, i64 184, !6, i64 200, !6, i64 216, !5, i64 232, !9, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !6, i64 284, !17, i64 286, !17, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !6, i64 320, !5, i64 352, !5, i64 356, !5, i64 360, !6, i64 364, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !18, i64 424, !19, i64 432, !20, i64 440, !21, i64 448, !22, i64 456, !23, i64 464, !24, i64 472, !25, i64 480, !26, i64 488}
!12 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!13 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!14 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!15 = !{!"p1 _ZTS20jpeg_destination_mgr", !9, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!"p1 _ZTS16jpeg_comp_master", !9, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_main_controller", !9, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_prep_controller", !9, i64 0}
!21 = !{!"p1 _ZTS22jpeg_c_coef_controller", !9, i64 0}
!22 = !{!"p1 _ZTS18jpeg_marker_writer", !9, i64 0}
!23 = !{!"p1 _ZTS20jpeg_color_converter", !9, i64 0}
!24 = !{!"p1 _ZTS16jpeg_downsampler", !9, i64 0}
!25 = !{!"p1 _ZTS16jpeg_forward_dct", !9, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_encoder", !9, i64 0}
!27 = !{!28, !9, i64 0}
!28 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !29, i64 88}
!29 = !{!"long", !6, i64 0}
!30 = !{!6, !6, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = !{!29, !29, i64 0}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !32}
!38 = distinct !{!38, !32}
!39 = !{!11, !12, i64 0}
!40 = !{!41, !5, i64 40}
!41 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !29, i64 128, !42, i64 136, !5, i64 144, !42, i64 152, !5, i64 160, !5, i64 164}
!42 = !{!"p2 omnipotent char", !43, i64 0}
!43 = !{!"any p2 pointer", !9, i64 0}
!44 = !{!41, !9, i64 0}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = distinct !{!47, !32}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !32}
!52 = !{!53, !5, i64 276}
!53 = !{!"", !6, i64 0, !6, i64 17, !5, i64 276}
!54 = !{!11, !26, i64 488}
!55 = !{!56, !9, i64 0}
!56 = !{!"", !57, i64 0, !58, i64 24, !5, i64 56, !5, i64 60, !6, i64 64, !6, i64 96, !6, i64 128, !6, i64 160}
!57 = !{!"jpeg_entropy_encoder", !9, i64 0, !9, i64 8, !9, i64 16}
!58 = !{!"", !29, i64 0, !5, i64 8, !6, i64 12}
!59 = !{!56, !9, i64 8}
!60 = !{!56, !9, i64 16}
!61 = !{!11, !5, i64 316}
!62 = !{!63, !5, i64 20}
!63 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !9, i64 80, !9, i64 88}
!64 = !{!63, !5, i64 24}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 long", !9, i64 0}
!67 = distinct !{!67, !32}
!68 = !{!56, !29, i64 24}
!69 = !{!56, !5, i64 32}
!70 = !{!11, !5, i64 272}
!71 = !{!56, !5, i64 56}
!72 = !{!56, !5, i64 60}
!73 = distinct !{!73, !32}
!74 = !{!11, !5, i64 360}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 short", !9, i64 0}
!77 = !{!17, !17, i64 0}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = !{!11, !15, i64 32}
!83 = !{!84, !85, i64 0}
!84 = !{!"jpeg_destination_mgr", !85, i64 0, !29, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!85 = !{!"p1 omnipotent char", !9, i64 0}
!86 = !{!87, !85, i64 0}
!87 = !{!"", !85, i64 0, !29, i64 8, !58, i64 16, !88, i64 48}
!88 = !{!"p1 _ZTS20jpeg_compress_struct", !9, i64 0}
!89 = !{!84, !29, i64 8}
!90 = !{!87, !29, i64 8}
!91 = !{i64 0, i64 8, !35, i64 8, i64 4, !4, i64 12, i64 16, !30}
!92 = !{!87, !88, i64 48}
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
end_hunk_0
