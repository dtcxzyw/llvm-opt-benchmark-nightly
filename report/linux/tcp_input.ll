inline.NumInlined: 1215
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tcp_data_queue:bb.a
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 %i.cq, ptr %i.ce, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dt = sub i32 %i.dl, %spec.select.i
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %tcp_dsack_extend.exit.sink.split.i, label %tcp_dsack_extend.exit.i

tcp_dsack_extend.exit.sink.split.i:               ; preds = %bb.ag, %bb.ab
  store i32 %spec.select.i, ptr %i.cf, align 4
  br label %tcp_dsack_extend.exit.i

tcp_dsack_extend.exit.i:                          ; preds = %tcp_dsack_extend.exit.sink.split.i, %bb.ag, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.x
  %i.dv = call ptr @rb_next(ptr noundef nonnull %.04352.i) #23 ; 2 uses
  call void @rb_erase(ptr noundef nonnull %.04352.i, ptr noundef %i.by) #23
  %i.dw = load i32, ptr %i.am, align 8            ; 2 uses
  %i.dx = getelementptr i8, ptr %.04352.i, i64 44 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.dz = sub i32 %i.dw, %i.dy
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !42

bb.ah:                                            ; preds = %tcp_dsack_extend.exit.i
  call fastcc void @tcp_drop_reason(ptr noundef %0, ptr noundef nonnull %.04352.i, i32 noundef 53) #24, !srcloc !176
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ar, %bb.ah
  %.not.i = icmp eq ptr %i.dv, null
  br i1 %.not.i, label %tcp_ofo_queue.exit, label %bb.w, !llvm.loop !177

bb.ai:                                            ; preds = %tcp_dsack_extend.exit.i
  %i.eb = load volatile ptr, ptr %i.ci, align 8   ; 10 uses
  %i.ec = icmp eq ptr %i.eb, %i.ch
  %.not4550.i = icmp eq ptr %i.eb, null
  %.not45.i = or i1 %i.ec, %.not4550.i
  br i1 %.not45.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i8 0, ptr %i.c, align 1
  %i.ed = load i32, ptr %i.cp, align 8
  %i.ee = getelementptr i8, ptr %i.eb, i64 44     ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %.not.i48.i = icmp eq i32 %i.ed, %i.ef
  br i1 %.not.i48.i, label %bb.ak, label %tcp_try_coalesce.exit.i

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.b, align 4, !annotation !56
  %i.eg = call zeroext i1 @skb_try_coalesce(ptr noundef nonnull %i.eb, ptr noundef nonnull %.04352.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #23
  br i1 %i.eg, label %bb.al, label %tcp_try_coalesce.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.eh = load i32, ptr %i.b, align 4
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cj, i32 %i.eh, ptr elementtype(i32) %i.cj) #22, !srcloc !73
  %.val.i.i.i100 = load ptr, ptr %i.ck, align 8
  %i.ei = getelementptr i8, ptr %.val.i.i.i100, i64 248
  %.val.val.i.i.i = load ptr, ptr %i.ei, align 8
  %.not.i.i.i101 = icmp eq ptr %.val.val.i.i.i, null
  br i1 %.not.i.i.i101, label %sk_mem_charge.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = load i32, ptr %i.b, align 4
  %i.ek = load i32, ptr %i.cl, align 4
  %i.el = sub i32 %i.ek, %i.ej
  store volatile i32 %i.el, ptr %i.cl, align 4
  br label %sk_mem_charge.exit.i.i

sk_mem_charge.exit.i.i:                           ; preds = %bb.am, %bb.al
  %.val.i.i = load ptr, ptr %i.cg, align 8
  %i.em = getelementptr i8, ptr %.val.i.i, i64 744
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 648    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.eo, ptr elementtype(i64) %i.eo) #22, !srcloc !74
  %i.ep = load i32, ptr %i.dx, align 4
  store i32 %i.ep, ptr %i.ee, align 4
  %i.eq = getelementptr i8, ptr %.04352.i, i64 60
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = getelementptr i8, ptr %i.eb, i64 60
  store i32 %i.er, ptr %i.es, align 4
  %i.et = getelementptr i8, ptr %.04352.i, i64 52
  %i.eu = load i16, ptr %i.et, align 4
  %i.ev = getelementptr i8, ptr %i.eb, i64 52     ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 4
  %i.ex = or i16 %i.ew, %i.eu
  store i16 %i.ex, ptr %i.ev, align 4
  %i.ey = getelementptr i8, ptr %.04352.i, i64 56
  %i.ez = load i8, ptr %i.ey, align 8
  %i.fa = and i8 %i.ez, 8
  %.not24.i.i = icmp eq i8 %i.fa, 0
  br i1 %.not24.i.i, label %tcp_try_coalesce.exit.i, label %bb.an

bb.an:                                            ; preds = %sk_mem_charge.exit.i.i
  %i.fb = getelementptr i8, ptr %i.eb, i64 56     ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8
  %i.fd = or i8 %i.fc, 8
  store i8 %i.fd, ptr %i.fb, align 8
  %i.fe = getelementptr i8, ptr %.04352.i, i64 32
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr i8, ptr %i.eb, i64 32
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %.04352.i, i64 192
  %.val27.i.i = load i32, ptr %i.fh, align 8
  %i.fi = getelementptr i8, ptr %.04352.i, i64 200
  %.val28.i.i = load ptr, ptr %i.fi, align 8
  %i.fj = zext i32 %.val27.i.i to i64
  %i.fk = getelementptr i8, ptr %.val28.i.i, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %i.eb, i64 192
  %.val25.i.i = load i32, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %i.eb, i64 200
  %.val26.i.i = load ptr, ptr %i.fo, align 8
  %i.fp = zext i32 %.val25.i.i to i64
  %i.fq = getelementptr i8, ptr %.val26.i.i, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store i64 %i.fm, ptr %i.fr, align 8
  br label %tcp_try_coalesce.exit.i

tcp_try_coalesce.exit.i:                          ; preds = %bb.an, %sk_mem_charge.exit.i.i, %bb.ak, %bb.aj
  %.0.i49.i = phi i1 [ false, %bb.aj ], [ false, %bb.ak ], [ true, %bb.an ], [ true, %sk_mem_charge.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %.pre.i = load i32, ptr %i.dx, align 4
  %.pre54.i = load i32, ptr %i.am, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %tcp_try_coalesce.exit.i, %bb.ai
  %i.fs = phi i32 [ %i.dw, %bb.ai ], [ %.pre54.i, %tcp_try_coalesce.exit.i ]
  %i.ft = phi i32 [ %i.dy, %bb.ai ], [ %.pre.i, %tcp_try_coalesce.exit.i ] ; 2 uses
  %i.fu = phi i1 [ false, %bb.ai ], [ %.0.i49.i, %tcp_try_coalesce.exit.i ]
  %i.fv = sub i32 %i.ft, %i.fs
  %i.fw = zext i32 %i.fv to i64
  %i.fx = load i64, ptr %i.cm, align 8
  %i.fy = add i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.cm, align 8
  store volatile i32 %i.ft, ptr %i.am, align 8
  %i.fz = getelementptr i8, ptr %.04352.i, i64 52
  %i.ga = load i16, ptr %i.fz, align 4
  %i.gb = and i16 %i.ga, 1
  %.not46.i = icmp eq i16 %i.gb, 0
  br i1 %i.fu, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = load ptr, ptr %i.ci, align 8            ; 2 uses
  store volatile ptr %i.ch, ptr %.04352.i, align 8
  %i.gd = getelementptr i8, ptr %.04352.i, i64 8
  store volatile ptr %i.gc, ptr %i.gd, align 8
  store volatile ptr %.04352.i, ptr %i.ci, align 8
  store volatile ptr %.04352.i, ptr %i.gc, align 8
  %i.ge = load i32, ptr %i.cn, align 8
  %i.gf = add i32 %i.ge, 1
  store volatile i32 %i.gf, ptr %i.cn, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.gg = load i8, ptr %i.c, align 1, !range !60, !noundef !61
  %i.gh = trunc nuw i8 %i.gg to i1
  call void @kfree_skb_partial(ptr noundef nonnull %.04352.i, i1 noundef zeroext %i.gh) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %.not46.i, label %.backedge.i, label %bb.as, !prof !42

bb.as:                                            ; preds = %bb.ar
  call void @tcp_fin(ptr noundef %0) #24
  br label %tcp_ofo_queue.exit

tcp_ofo_queue.exit:                               ; preds = %bb.w, %.backedge.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.gi = load volatile ptr, ptr %i.by, align 8
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %tcp_ofo_queue.exit
  %i.gk = getelementptr i8, ptr %0, i64 1264      ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 8
  %i.gm = or i8 %i.gl, 16
  store i8 %i.gm, ptr %i.gk, align 8
  br label %bb.au

bb.au:                                            ; preds = %tcp_ofo_queue.exit, %bb.at, %bb.u
  %i.gn = getelementptr i8, ptr %0, i64 1783      ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1             ; 2 uses
  %.not90 = icmp eq i8 %i.go, 0
  br i1 %.not90, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gp = load volatile ptr, ptr %i.by, align 8
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %tcp_sack_remove.exit, label %.lr.ph34.lr.ph.i

.lr.ph34.lr.ph.i:                                 ; preds = %bb.av
  %i.gr = getelementptr i8, ptr %0, i64 2144
  %i.gs = zext i8 %i.go to i32
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.outer.i, %.lr.ph34.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %.outer.i ], [ 0, %.lr.ph34.lr.ph.i ] ; 4 uses
  %.0.ph39.i = phi ptr [ %i.hg, %.outer.i ], [ %i.gr, %.lr.ph34.lr.ph.i ] ; 4 uses
  %.026.ph38.i = phi i32 [ %.02633.i, %.outer.i ], [ %i.gs, %.lr.ph34.lr.ph.i ] ; 2 uses
  %indvars193 = trunc i64 %indvar to i32          ; 2 uses
  %i.gt = shl i64 %indvar, 3
  %i.gu = getelementptr i8, ptr %0, i64 %i.gt
  %scevgep = getelementptr i8, ptr %i.gu, i64 2152
  %2 = xor i64 %indvar, -1
  %i.gv = getelementptr i8, ptr %.0.ph39.i, i64 4
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %indvars = trunc i64 %indvar.next to i32        ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i, %.lr.ph34.i
  %.02633.i = phi i32 [ %.026.ph38.i, %.lr.ph34.i ], [ %i.he, %._crit_edge.i ] ; 6 uses
  %i.gw = zext i32 %.02633.i to i64
  %3 = add nsw i64 %2, %i.gw
  %4 = shl nuw i64 %3, 3
  %i.gx = load i32, ptr %i.am, align 8            ; 2 uses
  %i.gy = load i32, ptr %.0.ph39.i, align 4
  %i.gz = sub i32 %i.gx, %i.gy
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %.outer.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = load i32, ptr %i.gv, align 4
  %i.hc = sub i32 %i.gx, %i.hb
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %bb.ay, label %bb.az, !prof !17

bb.ay:                                            ; preds = %bb.ax
  call void asm sideeffect "1577: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1577b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1577) #22, !srcloc !178
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 5217, i32 2305, i64 16) #22, !srcloc !179
  call void asm sideeffect "1578: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1578b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1578) #22, !srcloc !180
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %5 = icmp sgt i32 %.02633.i, %indvars
  br i1 %5, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.az
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.ph39.i, ptr align 8 %scevgep, i64 %4, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.az
  %i.he = add nsw i32 %.02633.i, -1               ; 2 uses
  %i.hf = icmp sgt i32 %i.he, %indvars193
  br i1 %i.hf, label %bb.aw, label %.outer._crit_edge.loopexit.i

.outer.i:                                         ; preds = %bb.aw
  %i.hg = getelementptr i8, ptr %.0.ph39.i, i64 8
  %i.hh = icmp sgt i32 %.02633.i, %indvars
  br i1 %i.hh, label %.lr.ph34.i, label %.outer._crit_edge.i, !llvm.loop !181

.outer._crit_edge.loopexit.i:                     ; preds = %._crit_edge.i
  %i.hi = add nsw i32 %.026.ph38.i, -1
  %smin.le.i = call i32 @llvm.smin.i32(i32 %indvars193, i32 %i.hi)
  br label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %.outer._crit_edge.loopexit.i
  %.026.lcssa.i = phi i32 [ %smin.le.i, %.outer._crit_edge.loopexit.i ], [ %.02633.i, %.outer.i ]
  %i.hj = trunc i32 %.026.lcssa.i to i8
  br label %tcp_sack_remove.exit

tcp_sack_remove.exit:                             ; preds = %bb.av, %.outer._crit_edge.i
  %storemerge.i = phi i8 [ %i.hj, %.outer._crit_edge.i ], [ 0, %bb.av ]
  store i8 %storemerge.i, ptr %i.gn, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %tcp_sack_remove.exit, %bb.au
  %i.hk = load volatile ptr, ptr %i.by, align 8
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.bb, label %tcp_fast_path_check.exit

bb.bb:                                            ; preds = %bb.ba
  %i.hm = getelementptr i8, ptr %0, i64 1752
  %i.hn = load i32, ptr %i.hm, align 8
  %.not.i104 = icmp eq i32 %i.hn, 0
  br i1 %.not.i104, label %tcp_fast_path_check.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ho = getelementptr i8, ptr %0, i64 192
  %i.hp = load volatile i32, ptr %i.ho, align 8
  %i.hq = getelementptr i8, ptr %0, i64 244
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = icmp slt i32 %i.hp, %i.hr
  br i1 %i.hs, label %bb.bd, label %tcp_fast_path_check.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ht = getelementptr i8, ptr %0, i64 1494
  %i.hu = load i16, ptr %i.ht, align 2
  %.not10.i = icmp eq i16 %i.hu, 0
  br i1 %.not10.i, label %bb.be, label %tcp_fast_path_check.exit

bb.be:                                            ; preds = %bb.bd
  %i.hv = getelementptr i8, ptr %0, i64 1444
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = load i16, ptr %i.ai, align 4
  %i.hy = getelementptr i8, ptr %0, i64 1680
  %.val.i.i.i105 = load i8, ptr %i.hy, align 16
  %i.hz = and i8 %.val.i.i.i105, 17
  %i.ia = icmp eq i8 %i.hz, 16
  br i1 %i.ia, label %bb.bf, label %tcp_fast_path_on.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ib = getelementptr i8, ptr %0, i64 1540
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = shl i32 %i.ic, 22
  %i.ie = add i32 %i.id, 20971520
  %i.if = and i32 %i.ie, 29360128
  br label %tcp_fast_path_on.exit.i

tcp_fast_path_on.exit.i:                          ; preds = %bb.bf, %bb.be
  %i.ig = phi i32 [ %i.if, %bb.bf ], [ 0, %bb.be ]
  %i.ih = lshr i16 %i.hx, 8
  %i.ii = and i16 %i.ih, 15
  %i.ij = zext nneg i16 %i.ii to i32
  %i.ik = lshr i32 %i.hw, %i.ij
  %i.il = getelementptr i8, ptr %0, i64 1468
  %i.im = load i16, ptr %i.il, align 4
  %i.in = zext i16 %i.im to i32
  %i.io = shl i32 %i.in, 26
  %i.ip = or disjoint i32 %i.io, %i.ig
  %i.iq = or i32 %i.ik, %i.ip
  %i.ir = or i32 %i.iq, 1048576
  %i.is = call i32 @llvm.bswap.i32(i32 %i.ir)
  %i.it = getelementptr i8, ptr %0, i64 1684
  store i32 %i.is, ptr %i.it, align 4
  br label %tcp_fast_path_check.exit

tcp_fast_path_check.exit:                         ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.bd, %tcp_fast_path_on.exit.i
  %.not91 = icmp eq i32 %i.bt, 0
  br i1 %.not91, label %sock_flag.exit, label %bb.bg

bb.bg:                                            ; preds = %tcp_fast_path_check.exit
  %i.iu = load i8, ptr %i.d, align 1, !range !60, !noundef !61
  %i.iv = trunc nuw i8 %i.iu to i1
  call void @kfree_skb_partial(ptr noundef %1, i1 noundef zeroext %i.iv) #23
  br label %sock_flag.exit

sock_flag.exit:                                   ; preds = %bb.bg, %tcp_fast_path_check.exit
  %i.iw = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ix = load volatile i64, ptr %i.iw, align 8
  %i.iy = and i64 %i.ix, 1
  %.not138 = icmp eq i64 %i.iy, 0
  br i1 %.not138, label %bb.bh, label %tcp_data_ready.exit

bb.bh:                                            ; preds = %sock_flag.exit
  %i.iz = getelementptr i8, ptr %0, i64 280
  %i.ja = load i32, ptr %i.iz, align 8
  %i.jb = load volatile i32, ptr %i.am, align 8   ; 2 uses
  %i.jc = getelementptr i8, ptr %0, i64 1472
  %i.jd = load volatile i32, ptr %i.jc, align 64
  %i.je = sub i32 %i.jb, %i.jd                    ; 2 uses
  %i.jf = icmp slt i32 %i.je, 1
  br i1 %i.jf, label %sock_flag.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not.i.i106 = icmp slt i32 %i.je, %i.ja
  br i1 %.not.i.i106, label %bb.bj, label %tcp_epollin_ready.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.jg = getelementptr i8, ptr %0, i64 19
  %.val.i.i.i107 = load i8, ptr %i.jg, align 1
  %.not.i.i.i.i = icmp sgt i8 %.val.i.i.i107, -1
  br i1 %.not.i.i.i.i, label %tcp_under_memory_pressure.exit.i.i.i, label %tcp_rmem_pressure.exit.i.i

tcp_under_memory_pressure.exit.i.i.i:             ; preds = %bb.bj
  %i.jh = load volatile i64, ptr @tcp_memory_pressure, align 8
  %.not.i.i.i110 = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i.i110, label %tcp_rmem_pressure.exit.i.i, label %tcp_epollin_ready.exit.thread.i

tcp_rmem_pressure.exit.i.i:                       ; preds = %tcp_under_memory_pressure.exit.i.i.i, %bb.bj
  %i.ji = getelementptr i8, ptr %0, i64 244
  %i.jj = load volatile i32, ptr %i.ji, align 4   ; 2 uses
  %i.jk = ashr i32 %i.jj, 3
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = getelementptr i8, ptr %0, i64 192
  %i.jn = load volatile i32, ptr %i.jm, align 64
  %i.jo = icmp sgt i32 %i.jn, %i.jl
  br i1 %i.jo, label %tcp_epollin_ready.exit.thread.i, label %tcp_epollin_ready.exit.i

tcp_epollin_ready.exit.i:                         ; preds = %tcp_rmem_pressure.exit.i.i
  %i.jp = getelementptr i8, ptr %0, i64 1812
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = getelementptr i8, ptr %0, i64 1752
  %i.js = load i32, ptr %i.jr, align 8
  %i.jt = sub i32 %i.jq, %i.jb
  %i.ju = add i32 %i.jt, %i.js
  %i.jv = getelementptr i8, ptr %0, i64 1278
  %i.jw = load i16, ptr %i.jv, align 2
  %i.jx = zext i16 %i.jw to i32
  %.not.i108 = icmp sgt i32 %i.ju, %i.jx
  br i1 %.not.i108, label %sock_flag.exit.i, label %tcp_epollin_ready.exit.thread.i

sock_flag.exit.i:                                 ; preds = %bb.bh, %tcp_epollin_ready.exit.i
  %i.jy = load volatile i64, ptr %i.iw, align 32
  %i.jz = and i64 %i.jy, 2
  %.not9.i = icmp eq i64 %i.jz, 0
  br i1 %.not9.i, label %tcp_data_ready.exit, label %tcp_epollin_ready.exit.thread.i

tcp_epollin_ready.exit.thread.i:                  ; preds = %sock_flag.exit.i, %tcp_epollin_ready.exit.i, %tcp_rmem_pressure.exit.i.i, %tcp_under_memory_pressure.exit.i.i.i, %bb.bi
  %i.ka = getelementptr i8, ptr %0, i64 264
  %i.kb = load volatile ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef %0) #23, !inline_history !182
  br label %tcp_data_ready.exit

bb.bk:                                            ; preds = %__skb_pull.exit
  %i.kc = load i32, ptr %i.g, align 4
  %i.kd = sub i32 %i.an, %i.kc
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call fastcc void @tcp_rcv_spurious_retrans(ptr noundef %0, ptr noundef %1) #24, !srcloc !183
  %i.kf = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val93 = load ptr, ptr %i.kf, align 8
  %i.kg = getelementptr i8, ptr %.val93, i64 744
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = getelementptr i8, ptr %i.kh, i64 176    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ki, ptr elementtype(i64) %i.ki) #22, !srcloc !184
  %i.kj = load i32, ptr %i.e, align 8             ; 2 uses
  %i.kk = load i32, ptr %i.g, align 4
  %.val16.i = load i16, ptr %i.ai, align 4
  %i.kl = and i16 %.val16.i, 112
  %.not17.i = icmp eq i16 %i.kl, 0
  br i1 %.not17.i, label %tcp_dsack_set.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val15.i = load ptr, ptr %i.kf, align 8        ; 2 uses
  %i.km = getelementptr i8, ptr %.val15.i, i64 1540
  %i.kn = load volatile i8, ptr %i.km, align 4
  %.not14.i = icmp eq i8 %i.kn, 0
  br i1 %.not14.i, label %tcp_dsack_set.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ko = load i32, ptr %i.am, align 8
  %i.kp = sub i32 %i.kj, %i.ko
  %i.kq = icmp slt i32 %i.kp, 0
  %..i = select i1 %i.kq, i64 50, i64 51
  %i.kr = getelementptr i8, ptr %.val15.i, i64 744
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr [8 x i8], ptr %i.ks, i64 %..i ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.kt, ptr elementtype(i64) %i.kt) #22, !srcloc !175
  %i.ku = load i16, ptr %i.ai, align 4
  %i.kv = or i16 %i.ku, 4
  store i16 %i.kv, ptr %i.ai, align 4
  %i.kw = getelementptr i8, ptr %0, i64 2136
  store i32 %i.kj, ptr %i.kw, align 8
  %i.kx = getelementptr i8, ptr %0, i64 2140
  store i32 %i.kk, ptr %i.kx, align 4
  br label %tcp_dsack_set.exit
end_hunk_0
