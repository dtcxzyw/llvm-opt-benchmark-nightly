Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-zdma?download=true
inline.NumInlined: 111
inline.NumDeleted: 31
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zdma_ch_ctrlx_postw:bb.a
  %i.eg = zext nneg i32 %i.ef to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.bx, ptr noundef nonnull align 16 %i.by, i64 noundef range(i64 0, 4294967296) %i.eg, i1 noundef false) #5
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.eh = phi i1 [ true, %bb.ac ], [ false, %bb.ab ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.y ]
  %.081107.i.i = phi i32 [ 1, %bb.ac ], [ %i.dp, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.y ]
  %.082106.i.i = phi i32 [ %i.ds, %bb.ac ], [ %i.ds, %bb.ab ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.y ] ; 2 uses
  %.077.in.i.i = phi i32 [ %i.ed, %bb.ac ], [ %i.dl, %bb.ab ], [ %i.dl, %bb.z ], [ %i.dl, %bb.aa ], [ %i.dl, %bb.y ]
  %.077.i.i = and i32 %.077.in.i.i, 1073741823    ; 2 uses
  %.not91115.i.i = icmp eq i32 %.077.i.i, 0
  br i1 %.not91115.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i.i
  %i.ei = icmp eq i32 %.082106.i.i, 0
  %i.ej = icmp eq i32 %.082106.i.i, 1
  %.not92.i.i = icmp eq i32 %.081107.i.i, 2
  br label %bb.ad

bb.ad:                                            ; preds = %zdma_write_dst.exit.i.i, %.lr.ph.i.i
  %.0117.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %.1.i.i, %zdma_write_dst.exit.i.i ] ; 3 uses
  %.178116.i.i = phi i32 [ %.077.i.i, %.lr.ph.i.i ], [ %i.hr, %zdma_write_dst.exit.i.i ] ; 2 uses
  %i.ek = tail call i32 @llvm.umin.i32(i32 %.178116.i.i, i32 2048) ; 2 uses
  br i1 %i.ei, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.el = load i32, ptr %i.bz, align 8
  %i.em = lshr i32 %i.el, 3
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 %i.em)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.079.i.i = phi i32 [ %i.ek, %bb.ad ], [ %spec.select.i.i, %bb.ae ] ; 3 uses
  br i1 %i.eh, label %bb.ag, label %address_space_read.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.en = load i32, ptr %i.bz, align 8
  %i.eo = lshr i32 %i.en, 3
  %spec.select93.i.i = tail call i32 @llvm.umin.i32(i32 %.079.i.i, i32 %i.eo)
  br label %bb.ah

address_space_read.exit.i.i:                      ; preds = %bb.af
  %i.ep = zext nneg i32 %.079.i.i to i64          ; 2 uses
  %i.eq = load i64, ptr %i.bp, align 16
  %i.er = tail call i32 @address_space_read_full(ptr noundef nonnull %i.bo, i64 noundef %.0117.i.i, i64 %i.eq, ptr noundef nonnull %i.bx, i64 noundef range(i64 0, 4294967296) %i.ep) #5 ; 0 uses
  %i.es = select i1 %i.ej, i64 %i.ep, i64 0
  %spec.select94.i.i = add i64 %i.es, %.0117.i.i
  br label %bb.ah

bb.ah:                                            ; preds = %address_space_read.exit.i.i, %bb.ag
  %.180.i.i = phi i32 [ %spec.select93.i.i, %bb.ag ], [ %.079.i.i, %address_space_read.exit.i.i ] ; 4 uses
  %.1.i.i = phi i64 [ %.0117.i.i, %bb.ag ], [ %spec.select94.i.i, %address_space_read.exit.i.i ]
  %.not5456.i.i.i = icmp eq i32 %.180.i.i, 0
  %or.cond114.i.i = select i1 %.not92.i.i, i1 true, i1 %.not5456.i.i.i
  br i1 %or.cond114.i.i, label %zdma_write_dst.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah
  %i.et = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.eu = and i32 %i.et, 64
  %.not.i96.i.i = icmp eq i32 %i.eu, 0            ; 3 uses
  %i.ev = load i32, ptr %i.bv, align 8
  %i.ew = lshr i32 %i.ev, 12
  %i.ex = and i32 %i.ew, 3
  %spec.store.select.i.i.i = select i1 %.not.i96.i.i, i32 %i.ex, i32 1 ; 2 uses
  %i.ey = and i32 %i.et, 48
  %i.ez = icmp ne i32 %i.ey, 16
  %or.cond3.i.i.i = and i1 %.not.i96.i.i, %i.ez
  %i.fa = icmp eq i32 %spec.store.select.i.i.i, 0
  %i.fb = icmp eq i32 %spec.store.select.i.i.i, 1
  %.pre.i.i.i = load i32, ptr %i.bw, align 16
  %i.fc = and i32 %.pre.i.i.i, 1073741823
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %.lr.ph.i.i.i
  %i.fd = phi i32 [ %i.fc, %.lr.ph.i.i.i ], [ %i.hl, %bb.aw ] ; 2 uses
  %.058.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i ], [ %i.gz, %bb.aw ] ; 3 uses
  %.04957.i.i.i = phi i32 [ %.180.i.i, %.lr.ph.i.i.i ], [ %i.ha, %bb.aw ] ; 3 uses
  %i.fe = icmp ne i32 %i.fd, 0
  %or.cond.not.i.i.i = select i1 %i.fe, i1 true, i1 %.not.i96.i.i
  br i1 %or.cond.not.i.i.i, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i32, ptr %i.bk, align 8
  %i.fg = and i32 %i.ff, 64
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load i64, ptr %i.cg, align 16
  store i64 %i.fi, ptr %i.ca, align 8
  %i.fj = load <2 x i32>, ptr %i.ch, align 8
  %i.fk = load i32, ptr %i.ch, align 8
  store <2 x i32> %i.fj, ptr %i.bw, align 16
  br label %zdma_load_dst_descriptor.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fl = load i64, ptr %i.cf, align 8            ; 5 uses
  %i.fm = and i64 %i.fl, 15
  %.not.i.i100.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i100.i.i, label %zdma_load_descriptor.exit.thread.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = load i32, ptr @qemu_loglevel, align 4
  %i.fo = and i32 %i.fn, 2048
  %.not16.i.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not16.i.i.i.i, label %bb.ao, label %bb.an, !prof !8

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i64 noundef %i.fl) #5
  br label %bb.ao

zdma_load_descriptor.exit.thread.i.i.i:           ; preds = %bb.al
  %i.fp = load i64, ptr %i.bp, align 16
  %i.fq = tail call i64 @address_space_ldq_le(ptr noundef nonnull %i.bo, i64 noundef %i.fl, i64 %i.fp, ptr noundef null) #5
  store i64 %i.fq, ptr %i.ca, align 8
  %i.fr = or disjoint i64 %i.fl, 8
  %i.fs = load i64, ptr %i.bp, align 16
  %i.ft = tail call i32 @address_space_ldl_le(ptr noundef nonnull %i.bo, i64 noundef %i.fr, i64 %i.fs, ptr noundef null) #5
  store i32 %i.ft, ptr %i.bw, align 16
  %i.fu = or disjoint i64 %i.fl, 12
  %i.fv = load i64, ptr %i.bp, align 16
  %i.fw = tail call i32 @address_space_ldl_le(ptr noundef nonnull %i.bo, i64 noundef %i.fu, i64 %i.fv, ptr noundef null) #5 ; 2 uses
  store i32 %i.fw, ptr %i.cb, align 4
  %i.fx = and i32 %i.fw, 2
  %i.fy = icmp eq i32 %i.fx, 0
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 noundef 0, i64 noundef 16, i1 noundef false) #5
  store i8 1, ptr %i.bj, align 16
  %i.fz = load i32, ptr %i.bn, align 8
  %i.ga = or i32 %i.fz, 128
  store i32 %i.ga, ptr %i.bn, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %zdma_load_descriptor.exit.thread.i.i.i
  %.not.i102.i.i = phi i1 [ %i.fy, %zdma_load_descriptor.exit.thread.i.i.i ], [ true, %bb.ao ]
  %i.gb = load i64, ptr %i.cf, align 8
  %i.gc = add i64 %i.gb, 16                       ; 2 uses
  br i1 %.not.i102.i.i, label %zdma_update_descr_addr.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = load i64, ptr %i.bp, align 16
  %i.ge = tail call i64 @address_space_ldq_le(ptr noundef nonnull %i.bo, i64 noundef %i.gc, i64 %i.gd, ptr noundef null) #5
  br label %zdma_update_descr_addr.exit.i.i.i

zdma_update_descr_addr.exit.i.i.i:                ; preds = %bb.aq, %bb.ap
  %.0.i.i103.i.i = phi i64 [ %i.ge, %bb.aq ], [ %i.gc, %bb.ap ]
  store i64 %.0.i.i103.i.i, ptr %i.cf, align 8
  %.pre118.i.i = load i32, ptr %i.bw, align 16
  br label %zdma_load_dst_descriptor.exit.i.i

zdma_load_dst_descriptor.exit.i.i:                ; preds = %zdma_update_descr_addr.exit.i.i.i, %bb.ak
  %i.gf = phi i32 [ %i.fk, %bb.ak ], [ %.pre118.i.i, %zdma_update_descr_addr.exit.i.i.i ]
  %i.gg = and i32 %i.gf, 1073741823
  br label %bb.ar

bb.ar:                                            ; preds = %zdma_load_dst_descriptor.exit.i.i, %bb.ai
  %.050.i.i.i = phi i32 [ %i.gg, %zdma_load_dst_descriptor.exit.i.i ], [ %i.fd, %bb.ai ]
  %spec.select.i.i.i = select i1 %or.cond3.i.i.i, i32 %.04957.i.i.i, i32 %.050.i.i.i ; 3 uses
  %i.gh = load i32, ptr %i.cb, align 4
  %i.gi = and i32 %i.gh, 4
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = tail call i32 @llvm.umin.i32(i32 %.04957.i.i.i, i32 %spec.select.i.i.i) ; 4 uses
  br i1 %i.fa, label %.thread.i.i.i, label %bb.as

.thread.i.i.i:                                    ; preds = %bb.ar
  %i.gl = load i32, ptr %i.bz, align 8
  %i.gm = lshr i32 %i.gl, 3
  %spec.select55.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.gk, i32 %i.gm) ; 2 uses
  %i.gn = load i64, ptr %i.ca, align 8
  %i.go = zext nneg i32 %spec.select55.i.i.i to i64 ; 2 uses
  %i.gp = load i64, ptr %i.bp, align 16
  %i.gq = tail call i32 @address_space_write(ptr noundef nonnull %i.bo, i64 noundef %i.gn, i64 %i.gp, ptr noundef %.058.i.i.i, i64 noundef %i.go) #5 ; 0 uses
  br label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gr = load i64, ptr %i.ca, align 8
  %i.gs = zext i32 %i.gk to i64                   ; 4 uses
  %i.gt = load i64, ptr %i.bp, align 16
  %i.gu = tail call i32 @address_space_write(ptr noundef nonnull %i.bo, i64 noundef %i.gr, i64 %i.gt, ptr noundef %.058.i.i.i, i64 noundef %i.gs) #5 ; 0 uses
  br i1 %i.fb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gv = load i64, ptr %i.ca, align 8
  %i.gw = add i64 %i.gv, %i.gs
  store i64 %i.gw, ptr %i.ca, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %.thread.i.i.i
  %i.gx = phi i64 [ %i.go, %.thread.i.i.i ], [ %i.gs, %bb.at ], [ %i.gs, %bb.as ]
  %.05162.i.i.i = phi i32 [ %spec.select55.i.i.i, %.thread.i.i.i ], [ %i.gk, %bb.at ], [ %i.gk, %bb.as ] ; 3 uses
  %i.gy = sub i32 %spec.select.i.i.i, %.05162.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.058.i.i.i, i64 %i.gx
  %i.ha = sub i32 %.04957.i.i.i, %.05162.i.i.i    ; 2 uses
  %i.hb = icmp eq i32 %spec.select.i.i.i, %.05162.i.i.i
  %or.cond5.i.i.i = select i1 %i.hb, i1 %i.gj, i1 false
  br i1 %or.cond5.i.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hc = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.hd = and i32 %i.hc, 255
  %2 = trunc i32 %i.hc to i8
  %3 = add i8 %2, 1
  store i8 %3, ptr %i.cc, align 4
  %i.he = load i32, ptr %i.bn, align 8
  %.not.not.i.i.i.i = icmp eq i32 %i.hd, 255
  %spec.select.v.i.i.i.i = select i1 %.not.not.i.i.i.i, i32 36, i32 4
  %spec.select.i.i.i.i = or i32 %spec.select.v.i.i.i.i, %i.he ; 2 uses
  store i32 %spec.select.i.i.i.i, ptr %i.bn, align 8
  %i.hf = load i32, ptr %i.cd, align 4
  %i.hg = xor i32 %i.hf, -1
  %i.hh = and i32 %spec.select.i.i.i.i, %i.hg
  %i.hi = icmp ne i32 %i.hh, 0
  %i.hj = load ptr, ptr %i.ce, align 16
  %i.hk = zext i1 %i.hi to i32
  tail call void @qemu_set_irq(ptr noundef %i.hj, i32 noundef %i.hk) #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hl = and i32 %i.gy, 1073741823               ; 2 uses
  %i.hm = load i32, ptr %i.bw, align 16
  %i.hn = and i32 %i.hm, -1073741824
  %i.ho = or disjoint i32 %i.hn, %i.hl
  store i32 %i.ho, ptr %i.bw, align 16
  %.not54.i.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not54.i.i.i, label %zdma_write_dst.exit.i.i, label %bb.ai, !llvm.loop !11

zdma_write_dst.exit.i.i:                          ; preds = %bb.aw, %bb.ah
  %i.hp = load i32, ptr %i.ci, align 16
  %i.hq = add i32 %i.hp, %.180.i.i
  store i32 %i.hq, ptr %i.ci, align 16
  %i.hr = sub i32 %.178116.i.i, %.180.i.i         ; 2 uses
  %.not91.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not91.i.i, label %._crit_edge.i.i, label %bb.ad, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %zdma_write_dst.exit.i.i, %.thread.i.i
  %i.hs = load i32, ptr %i.bn, align 8
  %i.ht = or i32 %i.hs, 1024                      ; 2 uses
  store i32 %i.ht, ptr %i.bn, align 8
  br i1 %.not.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i
  %i.hu = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.hv = and i32 %i.hu, 255
  %4 = trunc i32 %i.hu to i8
  %5 = add i8 %4, 1
  store i8 %5, ptr %i.cj, align 8
  %.not.not.i.i.i = icmp eq i32 %i.hv, 255
  %spec.select.v.i.i.i = select i1 %.not.not.i.i.i, i32 18, i32 2
  %spec.select.i97.i.i = or i32 %spec.select.v.i.i.i, %i.ht ; 2 uses
  store i32 %spec.select.i97.i.i, ptr %i.bn, align 8
  %i.hw = load i32, ptr %i.cd, align 4
  %i.hx = xor i32 %i.hw, -1
  %i.hy = and i32 %spec.select.i97.i.i, %i.hx
  %i.hz = icmp ne i32 %i.hy, 0
  %i.ia = load ptr, ptr %i.ce, align 16
  %i.ib = zext i1 %i.hz to i32
  tail call void @qemu_set_irq(ptr noundef %i.ia, i32 noundef %i.ib) #5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i
  %i.ic = icmp eq i32 %i.du, 2
  %or.cond.i.i = select i1 %.not88.i.i, i1 true, i1 %i.ic
  br i1 %or.cond.i.i, label %bb.az, label %zdma_set_state.exit.i.i

bb.az:                                            ; preds = %bb.ay
  %i.id = load i32, ptr %i.d, align 8
  %i.ie = and i32 %i.id, -2
  store i32 %i.ie, ptr %i.d, align 8
  store i32 0, ptr %i.bi, align 4
  %i.if = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.ig = and i32 %i.if, -4
  store i32 %i.ig, ptr %i.ck, align 4
  %i.ih = load i8, ptr %i.bj, align 16, !range !14, !noundef !15
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ba, label %zdma_set_state.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ij = or i32 %i.if, 3
  store i32 %i.ij, ptr %i.ck, align 4
  br label %zdma_set_state.exit.i.i

zdma_set_state.exit.i.i:                          ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ik = icmp eq i32 %i.du, 1
  br i1 %i.ik, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %zdma_set_state.exit.i.i
  store i32 2, ptr %i.bi, align 4
  %i.il = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.im = and i32 %i.il, -4
  %i.in = or disjoint i32 %i.im, 2
  store i32 %i.in, ptr %i.ck, align 4
  %i.io = load i8, ptr %i.bj, align 16, !range !14, !noundef !15
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.bc, label %zdma_set_state.exit98.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.iq = or i32 %i.il, 3
  store i32 %i.iq, ptr %i.ck, align 4
  br label %zdma_set_state.exit98.i.i

zdma_set_state.exit98.i.i:                        ; preds = %bb.bc, %bb.bb
  %i.ir = load i32, ptr %i.bn, align 8
  %i.is = and i32 %i.ir, -3073
  %i.it = or disjoint i32 %i.is, 2048             ; 2 uses
  store i32 %i.it, ptr %i.bn, align 8
  %i.iu = load i32, ptr %i.cd, align 4
  %i.iv = xor i32 %i.iu, -1
  %i.iw = and i32 %i.it, %i.iv
  %i.ix = icmp ne i32 %i.iw, 0
  %i.iy = load ptr, ptr %i.ce, align 16
  %i.iz = zext i1 %i.ix to i32
  tail call void @qemu_set_irq(ptr noundef %i.iy, i32 noundef %i.iz) #5
  br label %zdma_process_descr.exit.i

bb.bd:                                            ; preds = %zdma_set_state.exit.i.i
  %i.ja = load i64, ptr %i.bl, align 16
  %i.jb = add i64 %i.ja, 16                       ; 2 uses
  br i1 %.not111.i.i, label %zdma_update_descr_addr.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jc = load i64, ptr %i.bp, align 16
  %i.jd = tail call i64 @address_space_ldq_le(ptr noundef nonnull %i.bo, i64 noundef %i.jb, i64 %i.jc, ptr noundef null) #5
  br label %zdma_update_descr_addr.exit.i.i

zdma_update_descr_addr.exit.i.i:                  ; preds = %bb.be, %bb.bd
  %.0.i99.i.i = phi i64 [ %i.jd, %bb.be ], [ %i.jb, %bb.bd ]
  store i64 %.0.i99.i.i, ptr %i.bl, align 16
  br label %zdma_process_descr.exit.i

zdma_process_descr.exit.i:                        ; preds = %zdma_update_descr_addr.exit.i.i, %zdma_set_state.exit98.i.i
  %.pr.i = load i32, ptr %i.bi, align 4
  %i.je = icmp eq i32 %.pr.i, 1
  br i1 %i.je, label %bb.p, label %zdma_run.exit, !llvm.loop !13

zdma_run.exit:                                    ; preds = %bb.p, %zdma_process_descr.exit.i, %bb.m, %bb.n, %bb.o, %bb.c, %zdma_set_state.exit, %zdma_process_descr.exit.thread.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 1576
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 1580
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = xor i32 %i.ji, -1
  %i.jk = and i32 %i.jg, %i.jj
  %i.jl = icmp ne i32 %i.jk, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.jn = load ptr, ptr %i.jm, align 16
  %i.jo = zext i1 %i.jl to i32
  tail call void @qemu_set_irq(ptr noundef %i.jn, i32 noundef %i.jo) #5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zdma_load_dst_descriptor(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 64
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.g = load i64, ptr %i.f, align 8
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.j = load <2 x i32>, ptr %i.h, align 8
  store <2 x i32> %i.j, ptr %i.i, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  %i.n = and i64 %i.l, 15
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %zdma_load_descriptor.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 2048
  %.not16.i = icmp eq i32 %i.p, 0
  br i1 %.not16.i, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i64 noundef %i.l) #5
  br label %bb.f

zdma_load_descriptor.exit.thread:                 ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.s = load i64, ptr %i.r, align 16
  %i.t = tail call i64 @address_space_ldq_le(ptr noundef nonnull %i.q, i64 noundef %i.l, i64 %i.s, ptr noundef null) #5
  store i64 %i.t, ptr %i.m, align 8
  %i.u = or disjoint i64 %i.l, 8
  %i.v = load i64, ptr %i.r, align 16
  %i.w = tail call i32 @address_space_ldl_le(ptr noundef nonnull %i.q, i64 noundef %i.u, i64 %i.v, ptr noundef null) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i32 %i.w, ptr %i.x, align 16
  %i.y = or disjoint i64 %i.l, 12
  %i.z = load i64, ptr %i.r, align 16
  %i.aa = tail call i32 @address_space_ldl_le(ptr noundef nonnull %i.q, i64 noundef %i.y, i64 %i.z, ptr noundef null) #5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1316
  store i32 %i.aa, ptr %i.ab, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 noundef 0, i64 noundef 16, i1 noundef false) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i8 1, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = or i32 %i.ae, 128
  store i32 %i.af, ptr %i.ad, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.g

bb.g:                                             ; preds = %zdma_load_descriptor.exit.thread, %bb.f
  %i.ag = phi i32 [ %i.aa, %zdma_load_descriptor.exit.thread ], [ %.pre, %bb.f ]
  %i.ah = and i32 %i.ag, 2
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = load i64, ptr %i.k, align 8
  %i.aj = add i64 %i.ai, 16                       ; 2 uses
  br i1 %.not, label %zdma_update_descr_addr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.am = load i64, ptr %i.al, align 16
  %i.an = tail call i64 @address_space_ldq_le(ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 %i.am, ptr noundef null) #5
  br label %zdma_update_descr_addr.exit

zdma_update_descr_addr.exit:                      ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.an, %bb.h ], [ %i.aj, %bb.g ]
  store i64 %.0.i, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %zdma_update_descr_addr.exit, %bb.b
  ret void
}

declare i64 @address_space_ldq_le(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #1

declare i32 @address_space_ldl_le(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #1

declare i32 @address_space_read_full(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #1

end_hunk_0
