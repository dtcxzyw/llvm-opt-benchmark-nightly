Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/af_packet?download=true
inline.NumInlined: 737
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@packet_sendmsg:bb.a
  %.0140.i = phi i32 [ 0, %sock_sndtimeo.exit.i ], [ %.1141.i, %bb.cv ] ; 6 uses
  %.0135.i = phi i32 [ 0, %sock_sndtimeo.exit.i ], [ %.3138.i, %bb.cv ] ; 9 uses
  %.0133.i = phi i64 [ %i.ch, %sock_sndtimeo.exit.i ], [ %.1134.i, %bb.cv ] ; 3 uses
  %.0129.i = phi i1 [ false, %sock_sndtimeo.exit.i ], [ %.3.i, %bb.cv ] ; 9 uses
  %i.df = load i32, ptr %i.cj, align 16           ; 2 uses
  %i.dg = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.dh = udiv i32 %i.df, %i.dg
  %i.di = urem i32 %i.df, %i.dg
  %i.dj = load ptr, ptr %i.e, align 8
  %i.dk = zext i32 %i.dh to i64
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = mul i32 %i.di, %i.de
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %i.dm, i64 %i.do  ; 19 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !61
  %i.dq = load i32, ptr %i.cl, align 8            ; 4 uses
  switch i32 %i.dq, label %bb.y [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.dr = load volatile i64, ptr %i.dp, align 8
  %i.ds = trunc i64 %i.dr to i32
  br label %packet_current_frame.exit.i

bb.w:                                             ; preds = %bb.u
  %i.dt = load volatile i32, ptr %i.dp, align 4
  br label %packet_current_frame.exit.i

bb.x:                                             ; preds = %bb.u
  %i.du = getelementptr i8, ptr %i.dp, i64 20
  %i.dv = load volatile i32, ptr %i.du, align 4
  br label %packet_current_frame.exit.i

bb.y:                                             ; preds = %bb.u
  %i.dw = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.15, ptr nonnull @.str.3, i32 448, i32 2321, i64 16) #21, !srcloc !62
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dw) #20
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !63
  call void asm sideeffect "1109: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1109b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1109) #21, !srcloc !64
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.3, i32 449, i32 0, i64 16) #21, !srcloc !65
  unreachable

packet_current_frame.exit.i:                      ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.ds, %bb.v ], [ %i.dt, %bb.w ], [ %i.dv, %bb.x ]
  %.not.i.i.i = icmp ne i32 %.0.i.i.i.i, 1
  %i.dx = icmp eq ptr %i.dp, null
  %i.dy = select i1 %.not.i.i.i, i1 true, i1 %i.dx
  br i1 %i.dy, label %bb.z, label %bb.ad, !prof !23

bb.z:                                             ; preds = %packet_current_frame.exit.i
  br i1 %.not168.i, label %bb.aa, label %bb.cw

bb.aa:                                            ; preds = %bb.z
  %.val179.i = load ptr, ptr %i.dc, align 16
  %i.dz = call fastcc i32 @packet_read_pending(ptr %.val179.i) #22
  %.not173.i = icmp eq i32 %i.dz, 0
  br i1 %.not173.i, label %bb.cw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = call i64 @wait_for_completion_interruptible_timeout(ptr noundef %i.ci, i64 noundef %.0133.i) #20 ; 3 uses
  %i.eb = icmp slt i64 %i.ea, 1
  br i1 %i.eb, label %bb.ac, label %bb.cv

bb.ac:                                            ; preds = %bb.ab
  %.not174.i = icmp eq i64 %i.ea, 0
  %i.ec = select i1 %.not174.i, i32 -110, i32 -512
  store i32 %i.ec, ptr %i.b, align 4
  br label %dev_put.exit.i

bb.ad:                                            ; preds = %packet_current_frame.exit.i
  switch i32 %i.dq, label %bb.ah [
    i32 2, label %bb.ae
    i32 1, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load i32, ptr %i.dp, align 4
  %.not.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.b.i.i = load i1, ptr @tpacket_parse_header.__already_done, align 1
  br i1 %.b.i.i, label %packet_sock_flag.exit.i, label %bb.ag, !prof !26

bb.ag:                                            ; preds = %bb.af
  store i1 true, ptr @tpacket_parse_header.__already_done, align 1
  %i.ee = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #24 ; 0 uses
  br label %packet_sock_flag.exit.i

bb.ah:                                            ; preds = %bb.ad
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %.sink.i.i = phi i64 [ 8, %bb.ah ], [ 16, %bb.ae ], [ 4, %bb.ad ]
  %i.ef = getelementptr i8, ptr %i.dp, i64 %.sink.i.i
  %.038.i.i = load i32, ptr %i.ef, align 4        ; 7 uses
  %i.eg = icmp sgt i32 %.038.i.i, %spec.select.i
  br i1 %i.eg, label %bb.aj, label %packet_sock_flag.exit.i.i, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %i.eh = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %.038.i.i, i32 noundef %spec.select.i) #24 ; 0 uses
  br label %packet_sock_flag.exit.i

packet_sock_flag.exit.i.i:                        ; preds = %bb.ai
  %i.ei = load volatile i64, ptr %i.cm, align 16
  %i.ej = and i64 %i.ei, 4
  %.not45.i.i = icmp eq i64 %i.ej, 0
  %i.ek = load i32, ptr %i.bu, align 4
  %i.el = add i32 %i.ek, -20                      ; 2 uses
  br i1 %.not45.i.i, label %tpacket_parse_header.exit.i, label %bb.ak, !prof !26

bb.ak:                                            ; preds = %packet_sock_flag.exit.i.i
  %i.em = load i32, ptr %i.bs, align 8
  %i.en = sub i32 %i.em, %.038.i.i
  %i.eo = load i16, ptr %i.cn, align 2
  %i.ep = icmp eq i16 %i.eo, 2
  %switch.selectcmp.i.i = icmp eq i32 %i.dq, 1    ; 2 uses
  %switch.selectcmp49.i.i = icmp eq i32 %i.dq, 2  ; 2 uses
  %switch.select52.i.i = select i1 %switch.selectcmp.i.i, i64 12, i64 16
  %switch.select54.i.i = select i1 %switch.selectcmp49.i.i, i64 24, i64 %switch.select52.i.i
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i64 14, i64 18
  %switch.select50.i.i = select i1 %switch.selectcmp49.i.i, i64 26, i64 %switch.select.i.i
  %.sink48.i.i = select i1 %i.ep, i64 %switch.select50.i.i, i64 %switch.select54.i.i
  %i.eq = getelementptr i8, ptr %i.dp, i64 %.sink48.i.i
  %.039.in.i.i = load i16, ptr %i.eq, align 2
  %.039.i.i = zext i16 %.039.in.i.i to i32        ; 3 uses
  %i.er = icmp sle i32 %i.el, %.039.i.i
  %i.es = icmp sge i32 %i.en, %.039.i.i
  %.not44.i.i = select i1 %i.er, i1 %i.es, i1 false, !prof !26
  br i1 %.not44.i.i, label %tpacket_parse_header.exit.i, label %packet_sock_flag.exit.i

tpacket_parse_header.exit.i:                      ; preds = %packet_sock_flag.exit.i.i, %bb.ak
  %.140.i.i = phi i32 [ %.039.i.i, %bb.ak ], [ %i.el, %packet_sock_flag.exit.i.i ]
  %i.et = sext i32 %.140.i.i to i64
  %i.eu = getelementptr i8, ptr %i.dp, i64 %i.et  ; 3 uses
  %i.ev = icmp slt i32 %.038.i.i, 0
  br i1 %i.ev, label %packet_sock_flag.exit.i, label %bb.al

bb.al:                                            ; preds = %tpacket_parse_header.exit.i
  %i.ew = load i16, ptr %i.co, align 4
  %i.ex = zext i16 %i.ew to i32                   ; 3 uses
  %i.ey = load volatile i16, ptr %i.cp, align 4
  %i.ez = zext i16 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.ez, %i.ex
  %i.fb = and i32 %i.fa, 131056
  %i.fc = add nuw nsw i32 %i.fb, 16               ; 3 uses
  %i.fd = load i16, ptr %i.cq, align 2
  %i.fe = zext i16 %i.fd to i32
  br i1 %i.cc, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.ff = getelementptr i8, ptr %i.eu, i64 %i.cr
  %i.fg = sub nsw i32 %.038.i.i, %i.m             ; 3 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %packet_sock_flag.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %5, ptr noundef align 1 dereferenceable(10) %i.eu, i64 10, i1 false)
  %i.fi = load i8, ptr %5, align 2
  %i.fj = and i8 %i.fi, 1
  %.not.i181.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i181.i, label %._crit_edge.i.i, label %bb.ao

._crit_edge.i.i:                                  ; preds = %bb.an
  %.pre.i.i = load i16, ptr %i.cu, align 2
  br label %__packet_snd_vnet_parse.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.fk = load i16, ptr %i.cs, align 2            ; 2 uses
  %i.fl = zext i16 %i.fk to i32
  %i.fm = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add nuw nsw i32 %i.fl, 2
  %i.fp = add nuw nsw i32 %i.fo, %i.fn
  %i.fq = load i16, ptr %i.cu, align 2            ; 2 uses
  %i.fr = zext i16 %i.fq to i32
  %i.fs = icmp samesign ugt i32 %i.fp, %i.fr
  br i1 %i.fs, label %bb.ap, label %__packet_snd_vnet_parse.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ft = add i16 %i.fk, 2
  %i.fu = add i16 %i.ft, %i.fm                    ; 2 uses
  store i16 %i.fu, ptr %i.cu, align 2
  br label %__packet_snd_vnet_parse.exit.i

__packet_snd_vnet_parse.exit.i:                   ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i
  %i.fv = phi i16 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.fu, %bb.ap ], [ %i.fq, %bb.ao ]
  %i.fw = zext i16 %i.fv to i32                   ; 2 uses
  %.not211.i = icmp samesign ult i32 %i.fg, %i.fw
  br i1 %.not211.i, label %packet_sock_flag.exit.i, label %bb.aq

bb.aq:                                            ; preds = %__packet_snd_vnet_parse.exit.i, %bb.al
  %.1199.i = phi ptr [ %i.eu, %bb.al ], [ %i.ff, %__packet_snd_vnet_parse.exit.i ] ; 6 uses
  %.0143.i = phi i32 [ %.038.i.i, %bb.al ], [ %i.fg, %__packet_snd_vnet_parse.exit.i ] ; 8 uses
  %.1136.i = phi i32 [ %.0135.i, %bb.al ], [ %i.fw, %__packet_snd_vnet_parse.exit.i ]
  %.1130.i = phi i1 [ %.0129.i, %bb.al ], [ true, %__packet_snd_vnet_parse.exit.i ] ; 11 uses
  %i.fx = call i32 @llvm.smax.i32(i32 %.1136.i, i32 %i.ex) ; 15 uses
  %reass.sub = sub nsw i32 %i.fe, %i.ex
  %narrow.i.a = add nsw i32 %reass.sub, 20
  %narrow.i = add nsw i32 %narrow.i.a, %i.fc
  %narrow240.i = add nsw i32 %narrow.i, %i.fx
  %i.fy = zext nneg i32 %narrow240.i to i64
  %i.fz = call ptr @sock_alloc_send_pskb(ptr noundef %i.d, i64 noundef range(i64 -65499, 262163) %i.fy, i64 noundef 0, i32 noundef range(i32 0, 2) %.lobit.i, ptr noundef nonnull %i.b, i32 noundef 0) #20 ; 38 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.ar, label %bb.as, !prof !23

bb.ar:                                            ; preds = %bb.aq
  %i.gb = icmp sgt i32 %.0140.i, 0
  br i1 %i.gb, label %.loopexit.sink.split.i, label %.loopexit.i, !prof !26

bb.as:                                            ; preds = %bb.aq
  %i.gc = load ptr, ptr %i.bk, align 32           ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fz, i64 180    ; 3 uses
  store i16 %.0131.i, ptr %i.gd, align 4
  %i.ge = getelementptr i8, ptr %i.fz, i64 16
  store ptr %.0127.i, ptr %i.ge, align 8
  %i.gf = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.gg = getelementptr i8, ptr %i.fz, i64 144
  store i32 %i.gf, ptr %i.gg, align 8
  %i.gh = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.gi = getelementptr i8, ptr %i.fz, i64 168
  store i32 %i.gh, ptr %i.gi, align 8
  %i.gj = load i64, ptr %6, align 8               ; 2 uses
  %i.gk = load i8, ptr %i.cv, align 1
  switch i8 %i.gk, label %.thread.i.i.i [
    i8 0, label %bb.av
    i8 1, label %bb.at
    i8 11, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  br label %bb.av

.thread.i.i.i:                                    ; preds = %bb.as
  call void asm sideeffect "585: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 585b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 585) #21, !srcloc !78
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.16, i32 4484, i32 2307, i64 16) #21, !srcloc !79
  call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #21, !srcloc !80
  %i.gl = getelementptr i8, ptr %i.fz, i64 32
  store i64 0, ptr %i.gl, align 8
  %i.gm = getelementptr i8, ptr %i.fz, i64 129
  br label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.06.i.i.i = phi i32 [ 2, %bb.au ], [ 0, %bb.as ], [ 1, %bb.at ]
  %i.gn = getelementptr i8, ptr %i.fz, i64 32
  store i64 %i.gj, ptr %i.gn, align 8
  %.not.i.i.i182.i = icmp eq i64 %i.gj, 0
  %i.go = getelementptr i8, ptr %i.fz, i64 129    ; 3 uses
  br i1 %.not.i.i.i182.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = and i32 %i.gp, -4
  %i.gr = or disjoint i32 %i.gq, %.06.i.i.i
  br label %skb_set_delivery_type_by_clockid.exit.i.i

bb.ax:                                            ; preds = %bb.av, %.thread.i.i.i
  %i.gs = phi ptr [ %i.gm, %.thread.i.i.i ], [ %i.go, %bb.av ] ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = and i32 %i.gt, -4
  br label %skb_set_delivery_type_by_clockid.exit.i.i

skb_set_delivery_type_by_clockid.exit.i.i:        ; preds = %bb.ax, %bb.aw
  %i.gv = phi ptr [ %i.gs, %bb.ax ], [ %i.go, %bb.aw ]
  %.sink.i.i.i.i = phi i32 [ %i.gu, %bb.ax ], [ %i.gr, %bb.aw ]
  store i32 %.sink.i.i.i.i, ptr %i.gv, align 1
  %i.gw = getelementptr i8, ptr %i.fz, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = getelementptr i8, ptr %i.fz, i64 192    ; 9 uses
  %.val5.i.i.i = load i32, ptr %i.gy, align 8
  %i.gz = getelementptr i8, ptr %i.fz, i64 200    ; 11 uses
  %.val6.i.i.i = load ptr, ptr %i.gz, align 8
  %i.ha = zext i32 %.val5.i.i.i to i64
  %i.hb = getelementptr i8, ptr %.val6.i.i.i, i64 %i.ha ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 28     ; 2 uses
  %i.hd = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4 ; 5 uses
  %.not.i.i108.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i108.i.i, label %skb_setup_tx_timestamp.exit.i.i, label %bb.ay, !prof !26

bb.ay:                                            ; preds = %skb_set_delivery_type_by_clockid.exit.i.i
  %i.he = getelementptr i8, ptr %i.hb, i64 3
  call void @__sock_tx_timestamp(i32 noundef %i.hd, ptr noundef %i.he) #20
  %i.hf = and i32 %i.hd, 128
  %i.hg = icmp eq i32 %i.hf, 0
  %i.hh = icmp eq ptr %i.hc, null
  %or.cond.not18.i.i.i.i = or i1 %i.hh, %i.hg
  %i.hi = and i32 %i.hd, 262915
  %.not13.i.i.i.i = icmp eq i32 %i.hi, 0
  %or.cond15.i.i.i.i = or i1 %.not13.i.i.i.i, %or.cond.not18.i.i.i.i
  br i1 %or.cond15.i.i.i.i, label %skb_setup_tx_timestamp.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not14.i.i.i.i = icmp sgt i32 %i.hd, -1
  br i1 %.not14.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hj = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br label %.sink.split.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hk = getelementptr i8, ptr %i.gx, i64 484    ; 2 uses
  %i.hl = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hk, i32 1, ptr elementtype(i32) %i.hk) #21, !srcloc !81
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.bb, %bb.ba
  %.sink.i.i109.i.i = phi i32 [ %i.hl, %bb.bb ], [ %i.hj, %bb.ba ]
  store i32 %.sink.i.i109.i.i, ptr %i.hc, align 4
  br label %skb_setup_tx_timestamp.exit.i.i

skb_setup_tx_timestamp.exit.i.i:                  ; preds = %.sink.split.i.i.i.i, %bb.ay, %skb_set_delivery_type_by_clockid.exit.i.i
  %i.hm = ptrtoint ptr %i.dp to i64
  %i.hn = or i64 %i.hm, 1
  %i.ho = inttoptr i64 %i.hn to ptr
  %.val4.i.i.i = load i32, ptr %i.gy, align 8
  %.val5.i110.i.i = load ptr, ptr %i.gz, align 8
  %i.hp = zext i32 %.val4.i.i.i to i64
  %i.hq = getelementptr i8, ptr %.val5.i110.i.i, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 40
  store ptr %i.ho, ptr %i.hr, align 8
  %.val.i.i.i = load i32, ptr %i.gy, align 8
  %.val3.i.i.i = load ptr, ptr %i.gz, align 8
  %i.hs = zext i32 %.val.i.i.i to i64
  %i.ht = getelementptr i8, ptr %.val3.i.i.i, i64 %i.hs ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8
  %i.hv = or i8 %i.hu, 3
  store i8 %i.hv, ptr %i.ht, align 8
  %i.hw = getelementptr i8, ptr %i.fz, i64 208    ; 4 uses
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = zext nneg i32 %i.fc to i64
  %i.hz = getelementptr i8, ptr %i.hx, i64 %i.hy  ; 2 uses
  store ptr %i.hz, ptr %i.hw, align 8
  %i.ia = getelementptr i8, ptr %i.fz, i64 188    ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = add i32 %i.ib, %i.fc
  store i32 %i.ic, ptr %i.ia, align 4
  %i.id = load ptr, ptr %i.gz, align 8
  %i.ie = ptrtoint ptr %i.hz to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = trunc i64 %i.ig to i16
  %i.ii = getelementptr i8, ptr %i.fz, i64 184
  store i16 %i.ih, ptr %i.ii, align 8
  %i.ij = getelementptr i8, ptr %i.gc, i64 4
  %i.ik = load i16, ptr %i.ij, align 4
  %i.il = icmp eq i16 %i.ik, 2
  br i1 %i.il, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %skb_setup_tx_timestamp.exit.i.i
  %i.im = load ptr, ptr %i.cx, align 16           ; 2 uses
  %.not.i.i186.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i186.i, label %dev_hard_header.exit.thread.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not11.i.i.i, label %dev_hard_header.exit.thread.i.i, label %dev_hard_header.exit.i.i

dev_hard_header.exit.i.i:                         ; preds = %bb.bd
  %i.io = call i32 %i.in(ptr noundef nonnull %i.fz, ptr noundef nonnull %.0127.i, i16 noundef zeroext %i.cy, ptr noundef %.0146.i, ptr noundef null, i32 noundef range(i32 0, -2147483648) %.0143.i) #20, !inline_history !82
  %i.ip = icmp slt i32 %i.io, 0
  br i1 %i.ip, label %packet_sock_flag.exit.i, label %dev_hard_header.exit.thread.i.i, !prof !83

bb.be:                                            ; preds = %skb_setup_tx_timestamp.exit.i.i
  %.not.i183.i = icmp eq i32 %i.fx, 0
  br i1 %.not.i183.i, label %dev_hard_header.exit.thread.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iq = call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.fx, i32 range(i32 0, -2147483648) %.0143.i) ; 8 uses
  %i.ir = load i16, ptr %i.co, align 4
  %i.is = zext i16 %i.ir to i32
  %i.it = call ptr @skb_push(ptr noundef nonnull %i.fz, i32 noundef %i.is) #20 ; 0 uses
  %i.iu = load i16, ptr %i.co, align 4
  %i.iv = zext i16 %i.iu to i32
  %i.iw = sub nsw i32 %i.fx, %i.iv
  %i.ix = call ptr @skb_put(ptr noundef nonnull %i.fz, i32 noundef %i.iw) #20 ; 0 uses
  %i.iy = call i32 @skb_store_bits(ptr noundef nonnull %i.fz, i32 noundef 0, ptr noundef %.1199.i, i32 noundef %i.iq) #20 ; 2 uses
  %.not100.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not100.i.i, label %bb.bg, label %tpacket_fill_skb.exit.i, !prof !26

bb.bg:                                            ; preds = %bb.bf
  %i.iz = load ptr, ptr %i.hw, align 8            ; 2 uses
  %i.ja = load i16, ptr %i.co, align 4
  %i.jb = zext i16 %i.ja to i32
  %.not.i111.i.i = icmp samesign ult i32 %i.iq, %i.jb
  br i1 %.not.i111.i.i, label %bb.bh, label %dev_validate_header.exit.thread121.i.i, !prof !23

bb.bh:                                            ; preds = %bb.bg
  %i.jc = load i8, ptr %i.cw, align 2
  %i.jd = zext i8 %i.jc to i32
  %i.je = icmp samesign ult i32 %i.iq, %i.jd
  br i1 %i.je, label %packet_sock_flag.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jf = call zeroext i1 @capable(i32 noundef 17) #20
  br i1 %i.jf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jg = zext nneg i32 %i.iq to i64
  %i.jh = getelementptr i8, ptr %i.iz, i64 %i.jg
  %i.ji = load i16, ptr %i.co, align 4
  %i.jj = zext i16 %i.ji to i32
  %i.jk = sub nsw i32 %i.jj, %i.iq
  %i.jl = sext i32 %i.jk to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jh, i8 0, i64 %i.jl, i1 false)
  br label %dev_validate_header.exit.thread121.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jm = load ptr, ptr %i.cx, align 16           ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not16.i.i.i, label %packet_sock_flag.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jn = getelementptr i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not17.i.i.i, label %packet_sock_flag.exit.i, label %dev_validate_header.exit.i.i

dev_validate_header.exit.i.i:                     ; preds = %bb.bl
  %i.jp = call zeroext i1 %i.jo(ptr noundef %i.iz, i32 noundef %i.iq) #20, !inline_history !84
  br i1 %i.jp, label %dev_validate_header.exit.thread121.i.i, label %packet_sock_flag.exit.i

dev_validate_header.exit.thread121.i.i:           ; preds = %dev_validate_header.exit.i.i, %bb.bj, %bb.bg
  %i.jq = zext nneg i32 %i.iq to i64
  %i.jr = getelementptr i8, ptr %.1199.i, i64 %i.jq
  %i.js = sub nuw nsw i32 %.0143.i, %i.iq
  br label %dev_hard_header.exit.thread.i.i

dev_hard_header.exit.thread.i.i:                  ; preds = %dev_validate_header.exit.thread121.i.i, %bb.be, %dev_hard_header.exit.i.i, %bb.bd, %bb.bc
  %.192.i.i = phi i32 [ %.0143.i, %dev_hard_header.exit.i.i ], [ %i.js, %dev_validate_header.exit.thread121.i.i ], [ %.0143.i, %bb.be ], [ %.0143.i, %bb.bd ], [ %.0143.i, %bb.bc ] ; 8 uses
  %.190.i.i = phi ptr [ %.1199.i, %dev_hard_header.exit.i.i ], [ %i.jr, %dev_validate_header.exit.thread121.i.i ], [ %.1199.i, %bb.be ], [ %.1199.i, %bb.bd ], [ %.1199.i, %bb.bc ] ; 5 uses
  %i.jt = ptrtoint ptr %.190.i.i to i64           ; 2 uses
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = and i32 %i.ju, 4095                     ; 2 uses
  %i.jw = sub nuw nsw i32 4096, %i.jv
  %i.jx = call i32 @llvm.umin.i32(i32 %.192.i.i, i32 %i.jw) ; 3 uses
  %i.jy = getelementptr i8, ptr %i.fz, i64 116
  store i32 %.192.i.i, ptr %i.jy, align 4
  %i.jz = getelementptr i8, ptr %i.fz, i64 112    ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8
  %i.kb = add i32 %i.ka, %.192.i.i
  store i32 %i.kb, ptr %i.jz, align 8
  %i.kc = getelementptr i8, ptr %i.fz, i64 216    ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 8
  %i.ke = add i32 %i.kd, %.192.i.i
  store i32 %i.ke, ptr %i.kc, align 8
  %i.kf = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cz, i32 range(i32 -2147483647, -2147483648) %.192.i.i, ptr elementtype(i32) %i.cz) #21, !srcloc !22 ; 3 uses
  %.not.i.i113.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not.i.i113.i.i, label %.sink.split.i.i114.i.i, label %bb.bm, !prof !23

bb.bm:                                            ; preds = %dev_hard_header.exit.thread.i.i
  %i.kg = add i32 %i.kf, %.192.i.i
  %i.kh = or i32 %i.kg, %i.kf
  %.not10.i.i.i.i = icmp sgt i32 %i.kh, -1
  br i1 %.not10.i.i.i.i, label %refcount_add.exit.i.i, label %.sink.split.i.i114.i.i, !prof !26

.sink.split.i.i114.i.i:                           ; preds = %bb.bm, %dev_hard_header.exit.thread.i.i
  %.sink.i.i115.i.i = phi i32 [ 2, %dev_hard_header.exit.thread.i.i ], [ 1, %bb.bm ]
  call void @refcount_warn_saturate(ptr noundef %i.cz, i32 noundef %.sink.i.i115.i.i) #20
  br label %refcount_add.exit.i.i

refcount_add.exit.i.i:                            ; preds = %.sink.split.i.i114.i.i, %bb.bm
  %.not101128.i.i = icmp eq i32 %.192.i.i, 0
  br i1 %.not101128.i.i, label %._crit_edge.i185.i, label %.lr.ph.i.i, !prof !85

.lr.ph.i.i:                                       ; preds = %refcount_add.exit.i.i
  %i.ki = getelementptr i8, ptr %i.fz, i64 126    ; 4 uses
  %.val105.peel.i.i = load i32, ptr %i.gy, align 8
  %.val106.peel.i.i = load ptr, ptr %i.gz, align 8
  %i.kj = zext i32 %.val105.peel.i.i to i64
  %i.kk = getelementptr i8, ptr %.val106.peel.i.i, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 2
  %i.km = load i8, ptr %i.kl, align 2             ; 3 uses
  %i.kn = icmp ugt i8 %i.km, 16
  br i1 %i.kn, label %.loopexit.i.i, label %bb.bn, !prof !23

bb.bn:                                            ; preds = %.lr.ph.i.i
  %i.ko = call zeroext i1 @is_vmalloc_addr(ptr noundef %.190.i.i) #20
  br i1 %i.ko, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kp = load i64, ptr @vmemmap_base, align 8
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = add i64 %i.jt, 2147483648
  %i.ks = icmp ugt ptr %.190.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.kt = load i64, ptr @phys_base, align 8
  %i.ku = load i64, ptr @page_offset_base, align 8
  %i.kv = sub i64 -2147483648, %i.ku
  %i.kw = select i1 %i.ks, i64 %i.kt, i64 %i.kv
  %i.kx = add i64 %i.kr, %i.kw
  %i.ky = lshr i64 %i.kx, 12
  %i.kz = getelementptr [64 x i8], ptr %i.kq, i64 %i.ky
  br label %pgv_to_page.exit.peel.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.la = call ptr @vmalloc_to_page(ptr noundef %.190.i.i) #20
  br label %pgv_to_page.exit.peel.i.i

pgv_to_page.exit.peel.i.i:                        ; preds = %bb.bp, %bb.bo
  %.0.i116.peel.i.i = phi ptr [ %i.la, %bb.bp ], [ %i.kz, %bb.bo ] ; 2 uses
  %7 = zext nneg i32 %i.jx to i64
  %i.lb = getelementptr i8, ptr %.190.i.i, i64 %7
  %i.lc = getelementptr i8, ptr %.0.i116.peel.i.i, i64 8 ; 2 uses
  %i.ld = load volatile i64, ptr %i.lc, align 8   ; 2 uses
  %i.le = and i64 %i.ld, 1
  %i.lf = add nsw i64 %i.le, -1
  %i.lg = or i64 %i.lf, %i.ld
  %i.lh = ptrtoint ptr %.0.i116.peel.i.i to i64   ; 3 uses
  %i.li = and i64 %i.lg, %i.lh
  %i.lj = inttoptr i64 %i.li to ptr               ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 48
  %i.ll = load i32, ptr %i.lk, align 16
  %.mask.i.i.peel.i.i = and i32 %i.ll, -16777216
  switch i32 %.mask.i.i.peel.i.i, label %.critedge12.i.peel.i.i [
    i32 -184549376, label %bb.br
    i32 -134217728, label %bb.bq
  ], !prof !86

bb.bq:                                            ; preds = %pgv_to_page.exit.peel.i.i
  call void asm sideeffect "452: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 452b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 452) #21, !srcloc !87
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.23, i32 2094, i32 2307, i64 16) #21, !srcloc !88
  call void asm sideeffect "453: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 453b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 453) #21, !srcloc !89
  br label %get_page.exit.peel.i.i

bb.br:                                            ; preds = %pgv_to_page.exit.peel.i.i
  call void asm sideeffect "450: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 450b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 450) #21, !srcloc !90
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.23, i32 2092, i32 2307, i64 16) #21, !srcloc !91
  call void asm sideeffect "451: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 451b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 451) #21, !srcloc !92
  br label %get_page.exit.peel.i.i

.critedge12.i.peel.i.i:                           ; preds = %pgv_to_page.exit.peel.i.i
  %i.lm = getelementptr i8, ptr %i.lj, i64 52     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.lm, ptr elementtype(i32) %i.lm) #21, !srcloc !50
  br label %get_page.exit.peel.i.i

get_page.exit.peel.i.i:                           ; preds = %.critedge12.i.peel.i.i, %bb.br, %bb.bq
  %.val.peel.i.i = load i32, ptr %i.gy, align 8
  %.val102.peel.i.i = load ptr, ptr %i.gz, align 8
  %i.ln = zext i32 %.val.peel.i.i to i64
  %i.lo = getelementptr i8, ptr %.val102.peel.i.i, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 48
  %i.lq = zext nneg i8 %i.km to i64
  %i.lr = getelementptr [16 x i8], ptr %i.lp, i64 %i.lq ; 3 uses
  store i64 %i.lh, ptr %i.lr, align 8
  %i.ls = getelementptr i8, ptr %i.lr, i64 12
  store i32 %i.jv, ptr %i.ls, align 4
  %i.lt = getelementptr i8, ptr %i.lr, i64 8
  store i32 %i.jx, ptr %i.lt, align 8
  %i.lu = load volatile i64, ptr %i.lc, align 8   ; 2 uses
  %i.lv = and i64 %i.lu, 1
  %i.lw = add nsw i64 %i.lv, -1
  %i.lx = or i64 %i.lw, %i.lu
  %i.ly = and i64 %i.lx, %i.lh
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  %.val107.peel.i.i = load ptr, ptr %i.ma, align 8
  %i.mb = ptrtoint ptr %.val107.peel.i.i to i64
  %i.mc = and i64 %i.mb, 2
  %.not127.peel.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not127.peel.i.i, label %__skb_fill_netmem_desc.exit.peel.i.i, label %bb.bs

bb.bs:                                            ; preds = %get_page.exit.peel.i.i
  %i.md = load i8, ptr %i.ki, align 2
  %i.me = or i8 %i.md, 64
  store i8 %i.me, ptr %i.ki, align 2
  br label %__skb_fill_netmem_desc.exit.peel.i.i

__skb_fill_netmem_desc.exit.peel.i.i:             ; preds = %bb.bs, %get_page.exit.peel.i.i
  %i.mf = add nuw nsw i8 %i.km, 1
  %.val103.peel.i.i = load i32, ptr %i.gy, align 8
  %.val104.peel.i.i = load ptr, ptr %i.gz, align 8
  %i.mg = zext i32 %.val103.peel.i.i to i64
  %i.mh = getelementptr i8, ptr %.val104.peel.i.i, i64 %i.mg
  %i.mi = getelementptr i8, ptr %i.mh, i64 2
  store i8 %i.mf, ptr %i.mi, align 2
  %i.mj = sub nsw i32 %.192.i.i, %i.jx            ; 3 uses
  %.not101.peel.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not101.peel.i.i, label %._crit_edge.i185.i, label %.peel.next.i.i, !prof !93

.peel.next.i.i:                                   ; preds = %__skb_fill_netmem_desc.exit.peel.i.i
  %i.mk = call i32 @llvm.smin.i32(i32 %i.mj, i32 4096)
  br label %bb.bt

bb.bt:                                            ; preds = %__skb_fill_netmem_desc.exit.i.i, %.peel.next.i.i
  %.2132.i.i = phi ptr [ %i.lb, %.peel.next.i.i ], [ %i.ng, %__skb_fill_netmem_desc.exit.i.i ] ; 5 uses
  %.293131.i.i = phi i32 [ %i.mj, %.peel.next.i.i ], [ %i.oo, %__skb_fill_netmem_desc.exit.i.i ]
  %.095130.i.i = phi i32 [ %i.mk, %.peel.next.i.i ], [ %i.op, %__skb_fill_netmem_desc.exit.i.i ] ; 3 uses
  %.val105.i.i = load i32, ptr %i.gy, align 8
  %.val106.i.i = load ptr, ptr %i.gz, align 8
  %i.ml = zext i32 %.val105.i.i to i64
  %i.mm = getelementptr i8, ptr %.val106.i.i, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 2
  %i.mo = load i8, ptr %i.mn, align 2             ; 3 uses
  %i.mp = icmp ugt i8 %i.mo, 16
  br i1 %i.mp, label %.loopexit.i.i, label %bb.bu, !prof !23

.loopexit.i.i:                                    ; preds = %bb.bt, %.lr.ph.i.i
  %i.mq = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 17) #24 ; 0 uses
  br label %packet_sock_flag.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.mr = call zeroext i1 @is_vmalloc_addr(ptr noundef %.2132.i.i) #20
  br i1 %i.mr, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ms = call ptr @vmalloc_to_page(ptr noundef %.2132.i.i) #20
  br label %pgv_to_page.exit.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.mt = load i64, ptr @vmemmap_base, align 8
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = ptrtoint ptr %.2132.i.i to i64
  %i.mw = add i64 %i.mv, 2147483648
  %i.mx = icmp ugt ptr %.2132.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.my = load i64, ptr @phys_base, align 8
  %i.mz = load i64, ptr @page_offset_base, align 8
  %i.na = sub i64 -2147483648, %i.mz
  %i.nb = select i1 %i.mx, i64 %i.my, i64 %i.na
  %i.nc = add i64 %i.mw, %i.nb
  %i.nd = lshr i64 %i.nc, 12
  %i.ne = getelementptr [64 x i8], ptr %i.mu, i64 %i.nd
  br label %pgv_to_page.exit.i.i

pgv_to_page.exit.i.i:                             ; preds = %bb.bw, %bb.bv
  %.0.i116.i.i = phi ptr [ %i.ms, %bb.bv ], [ %i.ne, %bb.bw ] ; 2 uses
  %i.nf = sext i32 %.095130.i.i to i64
  %i.ng = getelementptr i8, ptr %.2132.i.i, i64 %i.nf
  %i.nh = getelementptr i8, ptr %.0.i116.i.i, i64 8 ; 2 uses
  %i.ni = load volatile i64, ptr %i.nh, align 8   ; 2 uses
  %i.nj = and i64 %i.ni, 1
  %i.nk = add nsw i64 %i.nj, -1
  %i.nl = or i64 %i.nk, %i.ni
  %i.nm = ptrtoint ptr %.0.i116.i.i to i64        ; 3 uses
  %i.nn = and i64 %i.nl, %i.nm
  %i.no = inttoptr i64 %i.nn to ptr               ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 48
  %i.nq = load i32, ptr %i.np, align 16
  %.mask.i.i.i.i = and i32 %i.nq, -16777216
  switch i32 %.mask.i.i.i.i, label %.critedge12.i.i.i [
    i32 -184549376, label %bb.bx
    i32 -134217728, label %bb.by
  ], !prof !86

bb.bx:                                            ; preds = %pgv_to_page.exit.i.i
  call void asm sideeffect "450: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 450b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 450) #21, !srcloc !90
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.23, i32 2092, i32 2307, i64 16) #21, !srcloc !91
  call void asm sideeffect "451: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 451b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 451) #21, !srcloc !92
  br label %get_page.exit.i.i

bb.by:                                            ; preds = %pgv_to_page.exit.i.i
  call void asm sideeffect "452: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 452b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 452) #21, !srcloc !87
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.23, i32 2094, i32 2307, i64 16) #21, !srcloc !88
  call void asm sideeffect "453: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 453b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 453) #21, !srcloc !89
  br label %get_page.exit.i.i

.critedge12.i.i.i:                                ; preds = %pgv_to_page.exit.i.i
  %i.nr = getelementptr i8, ptr %i.no, i64 52     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.nr, ptr elementtype(i32) %i.nr) #21, !srcloc !50
  br label %get_page.exit.i.i

get_page.exit.i.i:                                ; preds = %.critedge12.i.i.i, %bb.by, %bb.bx
  %.val.i.i = load i32, ptr %i.gy, align 8
  %.val102.i.i = load ptr, ptr %i.gz, align 8
  %i.ns = zext i32 %.val.i.i to i64
  %i.nt = getelementptr i8, ptr %.val102.i.i, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 48
  %i.nv = zext nneg i8 %i.mo to i64
  %i.nw = getelementptr [16 x i8], ptr %i.nu, i64 %i.nv ; 3 uses
  store i64 %i.nm, ptr %i.nw, align 8
  %i.nx = getelementptr i8, ptr %i.nw, i64 12
  store i32 0, ptr %i.nx, align 4
  %i.ny = getelementptr i8, ptr %i.nw, i64 8
  store i32 %.095130.i.i, ptr %i.ny, align 8
  %i.nz = load volatile i64, ptr %i.nh, align 8   ; 2 uses
  %i.oa = and i64 %i.nz, 1
  %i.ob = add nsw i64 %i.oa, -1
  %i.oc = or i64 %i.ob, %i.nz
  %i.od = and i64 %i.oc, %i.nm
  %i.oe = inttoptr i64 %i.od to ptr
  %i.of = getelementptr i8, ptr %i.oe, i64 8
  %.val107.i.i = load ptr, ptr %i.of, align 8
  %i.og = ptrtoint ptr %.val107.i.i to i64
  %i.oh = and i64 %i.og, 2
  %.not127.i.i = icmp eq i64 %i.oh, 0
  br i1 %.not127.i.i, label %__skb_fill_netmem_desc.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %get_page.exit.i.i
  %i.oi = load i8, ptr %i.ki, align 2
  %i.oj = or i8 %i.oi, 64
  store i8 %i.oj, ptr %i.ki, align 2
  br label %__skb_fill_netmem_desc.exit.i.i

__skb_fill_netmem_desc.exit.i.i:                  ; preds = %bb.bz, %get_page.exit.i.i
  %i.ok = add nuw nsw i8 %i.mo, 1
  %.val103.i.i = load i32, ptr %i.gy, align 8
  %.val104.i.i = load ptr, ptr %i.gz, align 8
  %i.ol = zext i32 %.val103.i.i to i64
  %i.om = getelementptr i8, ptr %.val104.i.i, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 2
  store i8 %i.ok, ptr %i.on, align 2
  %i.oo = sub i32 %.293131.i.i, %.095130.i.i      ; 3 uses
  %i.op = call i32 @llvm.smin.i32(i32 %i.oo, i32 4096)
  %.not101.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not101.i.i, label %._crit_edge.i185.i, label %bb.bt, !prof !93, !llvm.loop !94

._crit_edge.i185.i:                               ; preds = %__skb_fill_netmem_desc.exit.i.i, %__skb_fill_netmem_desc.exit.peel.i.i, %refcount_add.exit.i.i
  call fastcc void @packet_parse_headers(ptr noundef nonnull %i.fz, ptr noundef %i.gc) #22, !srcloc !97
  br label %tpacket_fill_skb.exit.i

tpacket_fill_skb.exit.i:                          ; preds = %._crit_edge.i185.i, %bb.bf
  %.1.i184.i = phi i32 [ %.0143.i, %._crit_edge.i185.i ], [ %i.iy, %bb.bf ] ; 4 uses
  %i.oq = icmp sgt i32 %.1.i184.i, -1
  br i1 %i.oq, label %bb.ca, label %packet_sock_flag.exit.i, !prof !98

bb.ca:                                            ; preds = %tpacket_fill_skb.exit.i
  %i.or = load i32, ptr %i.bx, align 8
  %i.os = add i32 %i.or, %.0132.i
  %i.ot = icmp ule i32 %.1.i184.i, %i.os
  %or.cond3.i = select i1 %i.ot, i1 true, i1 %i.cc
  br i1 %or.cond3.i, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.0127.val.i = load i16, ptr %i.da, align 32
  %.not.i187.i = icmp eq i16 %.0127.val.i, 1
  br i1 %.not.i187.i, label %packet_extra_vlan_len_allowed.exit.i, label %packet_sock_flag.exit.i, !prof !26

packet_extra_vlan_len_allowed.exit.i:             ; preds = %bb.cb
  %i.ou = load ptr, ptr %i.hw, align 8
  %i.ov = load ptr, ptr %i.gz, align 8            ; 2 uses
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox                    ; 2 uses
  %i.oz = trunc i64 %i.oy to i16
  %i.pa = getelementptr i8, ptr %i.fz, i64 186
  store i16 %i.oz, ptr %i.pa, align 2
  %i.pb = and i64 %i.oy, 65535
  %i.pc = getelementptr i8, ptr %i.ov, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 12
  %i.pe = load i16, ptr %i.pd, align 1
  %.fr.i = freeze i16 %i.pe
  %i.pf = icmp eq i16 %.fr.i, 129
  br i1 %i.pf, label %bb.ch, label %packet_sock_flag.exit.i

packet_sock_flag.exit.i:                          ; preds = %bb.af, %bb.ag, %bb.aj, %bb.ak, %tpacket_parse_header.exit.i, %bb.am, %__packet_snd_vnet_parse.exit.i, %dev_hard_header.exit.i.i, %bb.bh, %bb.bk, %bb.bl, %dev_validate_header.exit.i.i, %.loopexit.i.i, %tpacket_fill_skb.exit.i, %bb.cb, %packet_extra_vlan_len_allowed.exit.i, %bb.ci
  %.2145.i = phi i32 [ %.038.i.i, %tpacket_parse_header.exit.i ], [ -22, %__packet_snd_vnet_parse.exit.i ], [ -22, %bb.am ], [ -90, %bb.aj ], [ -22, %bb.ci ], [ -22, %bb.ag ], [ -22, %bb.af ], [ -22, %bb.ak ], [ -22, %dev_hard_header.exit.i.i ], [ -90, %packet_extra_vlan_len_allowed.exit.i ], [ %.1.i184.i, %tpacket_fill_skb.exit.i ], [ -22, %bb.bk ], [ -22, %bb.bl ], [ -22, %bb.bh ], [ -22, %dev_validate_header.exit.i.i ], [ -14, %.loopexit.i.i ], [ -90, %bb.cb ]
  %.2137.i = phi i32 [ %.0135.i, %tpacket_parse_header.exit.i ], [ %.0135.i, %__packet_snd_vnet_parse.exit.i ], [ %.0135.i, %bb.am ], [ %.0135.i, %bb.aj ], [ %i.fx, %bb.ci ], [ %.0135.i, %bb.ag ], [ %.0135.i, %bb.af ], [ %.0135.i, %bb.ak ], [ %i.fx, %dev_hard_header.exit.i.i ], [ %i.fx, %packet_extra_vlan_len_allowed.exit.i ], [ %i.fx, %tpacket_fill_skb.exit.i ], [ %i.fx, %bb.bk ], [ %i.fx, %bb.bl ], [ %i.fx, %bb.bh ], [ %i.fx, %dev_validate_header.exit.i.i ], [ %i.fx, %.loopexit.i.i ], [ %i.fx, %bb.cb ]
  %.2.i = phi i1 [ %.0129.i, %tpacket_parse_header.exit.i ], [ %.0129.i, %__packet_snd_vnet_parse.exit.i ], [ %.0129.i, %bb.am ], [ %.0129.i, %bb.aj ], [ true, %bb.ci ], [ %.0129.i, %bb.ag ], [ %.0129.i, %bb.af ], [ %.0129.i, %bb.ak ], [ %.1130.i, %dev_hard_header.exit.i.i ], [ %.1130.i, %packet_extra_vlan_len_allowed.exit.i ], [ %.1130.i, %tpacket_fill_skb.exit.i ], [ %.1130.i, %bb.bk ], [ %.1130.i, %bb.bl ], [ %.1130.i, %bb.bh ], [ %.1130.i, %dev_validate_header.exit.i.i ], [ %.1130.i, %.loopexit.i.i ], [ %.1130.i, %bb.cb ]
  %.0.i = phi ptr [ null, %tpacket_parse_header.exit.i ], [ null, %__packet_snd_vnet_parse.exit.i ], [ null, %bb.am ], [ null, %bb.aj ], [ %i.fz, %bb.ci ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ak ], [ %i.fz, %dev_hard_header.exit.i.i ], [ %i.fz, %packet_extra_vlan_len_allowed.exit.i ], [ %i.fz, %tpacket_fill_skb.exit.i ], [ %i.fz, %bb.bk ], [ %i.fz, %bb.bl ], [ %i.fz, %bb.bh ], [ %i.fz, %dev_validate_header.exit.i.i ], [ %i.fz, %.loopexit.i.i ], [ %i.fz, %bb.cb ] ; 2 uses
  %i.pg = load volatile i64, ptr %i.cm, align 16
  %i.ph = and i64 %i.pg, 8
  %.not212.i = icmp eq i64 %i.ph, 0
  br i1 %.not212.i, label %.loopexit.sink.split.i, label %bb.cc

bb.cc:                                            ; preds = %packet_sock_flag.exit.i
  %.val178.i = load i32, ptr %i.cl, align 8
  switch i32 %.val178.i, label %bb.cg [
    i32 0, label %bb.cd
    i32 1, label %bb.ce
    i32 2, label %bb.cf
  ]

bb.cd:                                            ; preds = %bb.cc
  store volatile i64 0, ptr %i.dp, align 8
  br label %__packet_set_status.exit.i

bb.ce:                                            ; preds = %bb.cc
  store volatile i32 0, ptr %i.dp, align 4
  br label %__packet_set_status.exit.i

bb.cf:                                            ; preds = %bb.cc
  %i.pi = getelementptr i8, ptr %i.dp, i64 20
  store volatile i32 0, ptr %i.pi, align 4
  br label %__packet_set_status.exit.i

bb.cg:                                            ; preds = %bb.cc
  %i.pj = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.15, ptr nonnull @.str.3, i32 421, i32 2321, i64 16) #21, !srcloc !99
end_hunk_0
begin_hunk_1_@packet_rcv_fanout:bb.a

packet_rcv_has_room.exit62.thread63.i79:          ; preds = %bb.aa
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ev, i32 32, ptr elementtype(i8) %i.ev) #21, !srcloc !27
  br label %bb.ae

packet_rcv_has_room.exit62.thread.i78:            ; preds = %bb.aa
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ev, i32 -33, ptr elementtype(i8) %i.ev) #21, !srcloc !17
  br label %.loopexit.i76

packet_rcv_has_room.exit62.i75:                   ; preds = %packet_sock_flag.exit.i58.i71
  %i.fc = icmp eq i32 %i.ey, 2
  br i1 %i.fc, label %.loopexit.i76, label %bb.ae

.loopexit.i76:                                    ; preds = %packet_rcv_has_room.exit62.i75, %packet_rcv_has_room.exit62.thread.i78
  %.not54.i77 = icmp eq i32 %.050.i63, %i.er
  br i1 %.not54.i77, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i76
  %i.fd = load ptr, ptr %i.en, align 32
  store i32 %.050.i63, ptr %i.fd, align 64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit.i76
  %i.fe = load ptr, ptr %i.en, align 32
  %i.ff = getelementptr i8, ptr %i.fe, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ff, ptr elementtype(i64) %i.ff) #21, !srcloc !124
  br i1 %i.em, label %bb.ad, label %fanout_demux_rollover.exit82

bb.ad:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr %i.en, align 32
  %i.fh = getelementptr i8, ptr %i.fg, i64 16     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fh, ptr elementtype(i64) %i.fh) #21, !srcloc !124
  br label %fanout_demux_rollover.exit82

bb.ae:                                            ; preds = %packet_rcv_has_room.exit62.i75, %packet_rcv_has_room.exit62.thread63.i79, %packet_sock_flag.exit.i66, %bb.z
  %i.fi = add i32 %.050.i63, 1                    ; 2 uses
  %i.fj = icmp eq i32 %i.fi, %i.d
  %spec.store.select.i68 = select i1 %i.fj, i32 0, i32 %i.fi ; 2 uses
  %.not55.i69 = icmp eq i32 %spec.store.select.i68, %i.er
  br i1 %.not55.i69, label %bb.af, label %bb.z, !llvm.loop !194

bb.af:                                            ; preds = %bb.ae
  %i.fk = load ptr, ptr %i.en, align 32
  %i.fl = getelementptr i8, ptr %i.fk, i64 24     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fl, ptr elementtype(i64) %i.fl) #21, !srcloc !124
  br label %fanout_demux_rollover.exit82

fanout_demux_rollover.exit82:                     ; preds = %fanout_demux_rnd.exit.fanout_demux_rollover.exit82_crit_edge, %bb.af, %bb.ad, %bb.ac, %fanout_flow_is_huge.exit.i, %packet_rcv_has_room.exit.i, %packet_rcv_has_room.exit.thread.i
  %.pre-phi = phi i64 [ %.pre, %fanout_demux_rnd.exit.fanout_demux_rollover.exit82_crit_edge ], [ %i.bg, %bb.af ], [ %i.es, %bb.ad ], [ %i.es, %bb.ac ], [ %i.bg, %fanout_flow_is_huge.exit.i ], [ %i.bg, %packet_rcv_has_room.exit.i ], [ %i.bg, %packet_rcv_has_room.exit.thread.i ]
  %i.fm = getelementptr i8, ptr %i.b, i64 136
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %.pre-phi
  %i.fo = load volatile ptr, ptr %i.fn, align 8   ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 1408
  %i.fq = getelementptr i8, ptr %i.fo, i64 1424
  %i.fr = load ptr, ptr %i.fq, align 16
  %i.fs = tail call i32 %i.fr(ptr noundef %.052, ptr noundef %1, ptr noundef %i.fp, ptr noundef %3) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.d, %fanout_demux_rollover.exit82, %bb.b
  %.0 = phi i32 [ %i.fs, %fanout_demux_rollover.exit82 ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal zeroext i1 @match_fanout_group(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %.not = icmp eq i16 %i.b, 17
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %1, i64 776
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ip_check_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__skb_get_hash_symmetric_net(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__get_random_u32_below(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @get_random_u8() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @copy_bpf_fprog_from_user(ptr noundef, ptr, i8, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bpf_prog_create_from_user(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_iter(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_iter(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sock_cmsg_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_for_completion_interruptible_timeout(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @virtio_net_hdr_to_skb(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 16 {
bb.a:
  %2 = alloca %struct.flow_keys_basic, align 4    ; 10 uses
  %i.a = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 4 uses
  %.not.i = icmp eq i8 %i.b, 0                    ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.b, 127
  switch i8 %i.c, label %__virtio_net_hdr_to_skb.exit [
    i8 1, label %bb.f
    i8 4, label %bb.c
    i8 3, label %bb.d
    i8 5, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0104.i = phi i32 [ 8, %bb.e ], [ 20, %bb.c ], [ 8, %bb.d ], [ 20, %bb.b ]
  %.099.i = phi i32 [ 17, %bb.e ], [ 6, %bb.c ], [ 17, %bb.d ], [ 6, %bb.b ]
  %.092.i = phi i32 [ 131072, %bb.e ], [ 16, %bb.c ], [ 65536, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.090.i = phi i32 [ 20, %bb.e ], [ 40, %bb.c ], [ 20, %bb.d ], [ 20, %bb.b ]
  %i.d = or disjoint i32 %.092.i, 4
  %.not109180.i = icmp slt i8 %i.b, 0
  %spec.select.i = select i1 %.not109180.i, i32 %i.d, i32 %.092.i
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %__virtio_net_hdr_to_skb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.1105.i = phi i32 [ %.0104.i, %bb.f ], [ 0, %bb.a ] ; 5 uses
  %.1100.i = phi i32 [ %.099.i, %bb.f ], [ 0, %bb.a ]
  %.294.i = phi i32 [ %spec.select.i, %bb.f ], [ 0, %bb.a ] ; 5 uses
  %.191.i = phi i32 [ %.090.i, %bb.f ], [ 20, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 208        ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i16
  %i.p = getelementptr i8, ptr %0, i64 186
  store i16 %i.o, ptr %i.p, align 2
  %i.q = load i8, ptr %1, align 2
  %i.r = and i8 %i.q, 1
  %.not110.i = icmp eq i8 %i.r, 0
  br i1 %.not110.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %1, i64 6
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load i16, ptr %i.v, align 2              ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 2
  %i.z = tail call i32 @llvm.umax.i32(i32 %.1105.i, i32 %i.y)
  %i.aa = add nuw nsw i32 %i.z, %i.u              ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %.val158.i = load i32, ptr %i.ab, align 8       ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 116       ; 2 uses
  %.val159.i = load i32, ptr %i.ac, align 4
  %i.ad = sub i32 %.val158.i, %.val159.i          ; 2 uses
  %.not.i.i = icmp ugt i32 %i.aa, %i.ad
  br i1 %.not.i.i, label %bb.i, label %bb.k, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ugt i32 %i.aa, %.val158.i
  br i1 %i.ae, label %__virtio_net_hdr_to_skb.exit, label %bb.j, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.af = sub nuw nsw i32 %i.aa, %i.ad
  %i.ag = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.af) #20
  %.not9.i.i = icmp eq ptr %i.ag, null
  br i1 %.not9.i.i, label %__virtio_net_hdr_to_skb.exit, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ah = tail call zeroext i1 @skb_partial_csum_set(ptr noundef nonnull %0, i16 noundef zeroext %i.t, i16 noundef zeroext %i.w) #20
  br i1 %i.ah, label %bb.l, label %__virtio_net_hdr_to_skb.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %0, i64 182
  %.val.i.i = load i16, ptr %i.ai, align 2
  %.val2.i.i = load ptr, ptr %i.j, align 8
  %i.aj = zext i16 %.val.i.i to i64
  %i.ak = getelementptr i8, ptr %.val2.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.h, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = icmp ugt i32 %.191.i, %i.ap
  br i1 %i.aq, label %__virtio_net_hdr_to_skb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add i32 %.1105.i, %i.ap                 ; 5 uses
  %.val154.i = load i32, ptr %i.ab, align 8       ; 2 uses
  %.val155.i = load i32, ptr %i.ac, align 4
  %i.as = sub i32 %.val154.i, %.val155.i          ; 2 uses
  %.not.i130.i = icmp ugt i32 %i.ar, %i.as
  br i1 %.not.i130.i, label %bb.n, label %.critedge125.i, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.at = icmp ugt i32 %i.ar, %.val154.i
  br i1 %i.at, label %__virtio_net_hdr_to_skb.exit, label %bb.o, !prof !23

bb.o:                                             ; preds = %bb.n
  %i.au = sub nuw i32 %i.ar, %i.as
  %i.av = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.au) #20
  %.not9.i132.i = icmp eq ptr %i.av, null
  br i1 %.not9.i132.i, label %__virtio_net_hdr_to_skb.exit, label %.critedge125.i, !prof !23

bb.p:                                             ; preds = %bb.g
  %.not111.i = icmp eq i32 %.294.i, 0
  br i1 %.not111.i, label %.critedge125.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %0, i64 184
  %i.ax = load i16, ptr %i.aw, align 8
  %.not112.i = icmp eq i16 %i.ax, 0
  br i1 %.not112.i, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ay = getelementptr i8, ptr %0, i64 180       ; 5 uses
  %i.az = load i16, ptr %i.ay, align 4
  %.not113.i = icmp eq i16 %i.az, 0
  br i1 %.not113.i, label %bb.s, label %virtio_net_hdr_set_proto.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 16           ; 2 uses
  %.not.i164.i = icmp eq ptr %i.bd, null
  br i1 %.not.i164.i, label %dev_parse_header_protocol.exit.thread.i.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not7.i.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i.i, label %dev_parse_header_protocol.exit.thread.i.thread, label %dev_parse_header_protocol.exit.i

dev_parse_header_protocol.exit.i:                 ; preds = %bb.t
  %i.bg = tail call zeroext i16 %i.bf(ptr noundef nonnull %0) #20, !inline_history !196 ; 8 uses
  %.not114.i = icmp eq i16 %i.bg, 0
  br i1 %.not114.i, label %dev_parse_header_protocol.exit.thread.i, label %bb.v

dev_parse_header_protocol.exit.thread.i:          ; preds = %dev_parse_header_protocol.exit.i
  %.pre = load i16, ptr %i.ay, align 4
  %i.bh = icmp eq i16 %.pre, 0
  br i1 %i.bh, label %dev_parse_header_protocol.exit.thread.i.thread, label %virtio_net_hdr_set_proto.exit

dev_parse_header_protocol.exit.thread.i.thread:   ; preds = %bb.s, %bb.t, %dev_parse_header_protocol.exit.thread.i
  %i.bi = load i8, ptr %i.a, align 1
  %i.bj = and i8 %i.bi, 127
  switch i8 %i.bj, label %virtio_net_hdr_set_proto.exit [
    i8 1, label %virtio_net_hdr_set_proto.exit.sink.split
    i8 3, label %virtio_net_hdr_set_proto.exit.sink.split
    i8 5, label %virtio_net_hdr_set_proto.exit.sink.split
    i8 4, label %bb.u
  ]

bb.u:                                             ; preds = %dev_parse_header_protocol.exit.thread.i.thread
  br label %virtio_net_hdr_set_proto.exit.sink.split

bb.v:                                             ; preds = %dev_parse_header_protocol.exit.i
  %i.bk = and i8 %i.b, 127
  switch i8 %i.bk, label %.critedge123.i [
    i8 1, label %virtio_net_hdr_match_proto.exit.i
    i8 4, label %.split174.i
    i8 3, label %.split173.i
    i8 5, label %.split173.i
  ]

.split174.i:                                      ; preds = %bb.v
  %i.bl = icmp eq i16 %i.bg, -8826
  br i1 %i.bl, label %virtio_net_hdr_set_proto.exit.sink.split, label %.critedge123.i

.split173.i:                                      ; preds = %bb.v, %bb.v
  switch i16 %i.bg, label %.critedge123.i [
    i16 -8826, label %virtio_net_hdr_set_proto.exit.sink.split
    i16 8, label %virtio_net_hdr_set_proto.exit.sink.split
  ]

virtio_net_hdr_match_proto.exit.i:                ; preds = %bb.v
  %i.bm = icmp eq i16 %i.bg, 8
  br i1 %i.bm, label %virtio_net_hdr_set_proto.exit.sink.split, label %.critedge123.i

virtio_net_hdr_set_proto.exit.sink.split:         ; preds = %.split174.i, %.split173.i, %.split173.i, %virtio_net_hdr_match_proto.exit.i, %dev_parse_header_protocol.exit.thread.i.thread, %dev_parse_header_protocol.exit.thread.i.thread, %dev_parse_header_protocol.exit.thread.i.thread, %bb.u
  %storemerge.i.sink = phi i16 [ 8, %dev_parse_header_protocol.exit.thread.i.thread ], [ -8826, %bb.u ], [ 8, %dev_parse_header_protocol.exit.thread.i.thread ], [ 8, %dev_parse_header_protocol.exit.thread.i.thread ], [ %i.bg, %virtio_net_hdr_match_proto.exit.i ], [ %i.bg, %.split173.i ], [ %i.bg, %.split173.i ], [ %i.bg, %.split174.i ]
  store i16 %storemerge.i.sink, ptr %i.ay, align 4
  br label %virtio_net_hdr_set_proto.exit

virtio_net_hdr_set_proto.exit:                    ; preds = %virtio_net_hdr_set_proto.exit.sink.split, %dev_parse_header_protocol.exit.thread.i.thread, %dev_parse_header_protocol.exit.thread.i, %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.bn = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br i1 %i.bn, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %virtio_net_hdr_set_proto.exit
  %i.bo = and i32 %.294.i, 65536
  %.not115.i = icmp eq i32 %i.bo, 0
  br i1 %.not115.i, label %.critedge123.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.w
  %i.bp = load i16, ptr %i.ay, align 4
  %i.bq = icmp eq i16 %i.bp, 8
  br i1 %i.bq, label %bb.w, label %.critedge123.i

bb.w:                                             ; preds = %.lr.ph.split.i
  store i16 -8826, ptr %i.ay, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.br = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br i1 %i.br, label %._crit_edge.i, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.w, %virtio_net_hdr_set_proto.exit
  %i.bs = load i16, ptr %2, align 4
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %.1105.i, %i.bt         ; 4 uses
  %i.bv = getelementptr i8, ptr %0, i64 112
  %.val150.i = load i32, ptr %i.bv, align 8       ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 116
  %.val151.i = load i32, ptr %i.bw, align 4
  %i.bx = sub i32 %.val150.i, %.val151.i          ; 2 uses
  %.not.i135.i = icmp ugt i32 %i.bu, %i.bx
  br i1 %.not.i135.i, label %bb.x, label %pskb_may_pull_reason.exit139.i, !prof !23

bb.x:                                             ; preds = %._crit_edge.i
  %i.by = icmp ugt i32 %i.bu, %.val150.i
  br i1 %i.by, label %.critedge123.i, label %bb.y, !prof !23

bb.y:                                             ; preds = %bb.x
  %i.bz = sub nuw nsw i32 %i.bu, %i.bx
  %i.ca = call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.bz) #20
  %.not9.i137.i = icmp ne ptr %i.ca, null
  br label %pskb_may_pull_reason.exit139.i

pskb_may_pull_reason.exit139.i:                   ; preds = %bb.y, %._crit_edge.i
  %.0.i136.i = phi i1 [ %.not9.i137.i, %bb.y ], [ true, %._crit_edge.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cc = load i8, ptr %i.cb, align 2
  %i.cd = zext i8 %i.cc to i32
  %.not116.i = icmp eq i32 %.1100.i, %i.cd
  %or.cond.i = select i1 %.0.i136.i, i1 %.not116.i, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %.critedge123.i

.critedge.i:                                      ; preds = %pskb_may_pull_reason.exit139.i
  %i.ce = load i16, ptr %2, align 4
  %i.cf = load ptr, ptr %i.h, align 8
  %i.cg = load ptr, ptr %i.j, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = getelementptr i8, ptr %0, i64 182
  %i.cm = add i16 %i.ce, %i.ck
  store i16 %i.cm, ptr %i.cl, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.critedge125.i

bb.z:                                             ; preds = %bb.q
  %i.cn = add nuw nsw i32 %.191.i, %.1105.i       ; 5 uses
  %i.co = getelementptr i8, ptr %0, i64 112
  %.val146.i = load i32, ptr %i.co, align 8       ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 116
  %.val147.i = load i32, ptr %i.cp, align 4
  %i.cq = sub i32 %.val146.i, %.val147.i          ; 2 uses
  %.not.i140.i = icmp ugt i32 %i.cn, %i.cq
  br i1 %.not.i140.i, label %bb.aa, label %.critedge125.i, !prof !23

bb.aa:                                            ; preds = %bb.z
  %i.cr = icmp ugt i32 %i.cn, %.val146.i
  br i1 %i.cr, label %__virtio_net_hdr_to_skb.exit, label %bb.ab, !prof !23

bb.ab:                                            ; preds = %bb.aa
  %i.cs = sub nuw nsw i32 %i.cn, %i.cq
  %i.ct = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.cs) #20
  %.not9.i142.i = icmp eq ptr %i.ct, null
  br i1 %.not9.i142.i, label %__virtio_net_hdr_to_skb.exit, label %.critedge125.i, !prof !23

.critedge125.i:                                   ; preds = %bb.ab, %bb.z, %.critedge.i, %bb.p, %bb.o, %bb.m
  %.2103.i = phi i32 [ 0, %bb.p ], [ %i.bu, %.critedge.i ], [ %i.ar, %bb.o ], [ %i.ar, %bb.m ], [ %i.cn, %bb.z ], [ %i.cn, %bb.ab ] ; 7 uses
  br i1 %.not.i, label %__virtio_net_hdr_to_skb.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge125.i
  %i.cu = getelementptr i8, ptr %1, i64 4
  %i.cv = load i16, ptr %i.cu, align 2            ; 4 uses
  %i.cw = getelementptr i8, ptr %0, i64 192
  %.val160.i = load i32, ptr %i.cw, align 8
  %.val161.i = load ptr, ptr %i.j, align 8
  %i.cx = zext i32 %.val160.i to i64
  %i.cy = getelementptr i8, ptr %.val161.i, i64 %i.cx ; 3 uses
  %i.cz = and i32 %.294.i, -5                     ; 2 uses
  %i.da = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.cz)
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %.split.i, label %bb.aj

.split.i:                                         ; preds = %bb.ac
  %i.dc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cz, i1 true)
  switch i32 %i.dc, label %bb.aj [
    i32 16, label %bb.ad
    i32 17, label %bb.ae
    i32 0, label %bb.ah
    i32 4, label %bb.ah
  ]

bb.ad:                                            ; preds = %.split.i
  %i.dd = sub i32 %.2103.i, %.1105.i
  br label %bb.aj

bb.ae:                                            ; preds = %.split.i
  %i.de = load i8, ptr %1, align 2
  %i.df = and i8 %i.de, 1
  %.not118.i = icmp eq i8 %i.df, 0
  br i1 %.not118.i, label %__virtio_net_hdr_to_skb.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr i8, ptr %0, i64 142
  %i.dh = load i16, ptr %i.dg, align 2
  %.not119.i = icmp eq i16 %i.dh, 6
  br i1 %.not119.i, label %bb.ag, label %__virtio_net_hdr_to_skb.exit

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr i8, ptr %0, i64 112
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = sub i32 %i.dj, %.2103.i
  %i.dl = zext i16 %i.cv to i32
  %i.dm = shl nuw nsw i32 %i.dl, 7
  %i.dn = icmp ule i32 %i.dk, %i.dm
  %.not120.i = icmp eq i32 %.294.i, 131072
  %or.cond129.i = select i1 %i.dn, i1 %.not120.i, i1 false
  br i1 %or.cond129.i, label %bb.aj, label %__virtio_net_hdr_to_skb.exit

bb.ah:                                            ; preds = %.split.i, %.split.i
  %i.do = getelementptr i8, ptr %0, i64 128
  %i.dp = load i8, ptr %i.do, align 8
  %i.dq = and i8 %i.dp, 96
  %i.dr = icmp eq i8 %i.dq, 96
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr i8, ptr %0, i64 142
  %i.dt = load i16, ptr %i.ds, align 2
  %.not117.i = icmp eq i16 %i.dt, 16
  br i1 %.not117.i, label %bb.aj, label %__virtio_net_hdr_to_skb.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ad, %.split.i, %bb.ac
  %.0.i = phi i32 [ %.2103.i, %.split.i ], [ %i.dd, %bb.ad ], [ %.2103.i, %bb.ag ], [ %.2103.i, %bb.ai ], [ %.2103.i, %bb.ah ], [ %.2103.i, %bb.ac ]
  %i.du = icmp eq i16 %i.cv, -1
  br i1 %i.du, label %__virtio_net_hdr_to_skb.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = zext i16 %i.cv to i32
  %i.dw = getelementptr i8, ptr %0, i64 112
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = sub i32 %i.dx, %.0.i
  %i.dz = icmp ugt i32 %i.dy, %i.dv
  br i1 %i.dz, label %bb.al, label %__virtio_net_hdr_to_skb.exit

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr i8, ptr %i.cy, i64 4
  store i16 %i.cv, ptr %i.ea, align 4
  %i.eb = getelementptr i8, ptr %i.cy, i64 24
  %i.ec = or i32 %.294.i, 2
  store i32 %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %i.cy, i64 6
  store i16 0, ptr %i.ed, align 2
  br label %__virtio_net_hdr_to_skb.exit

.critedge123.i:                                   ; preds = %.lr.ph.split.i, %pskb_may_pull_reason.exit139.i, %bb.x, %.lr.ph.i, %virtio_net_hdr_match_proto.exit.i, %.split173.i, %.split174.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %__virtio_net_hdr_to_skb.exit

__virtio_net_hdr_to_skb.exit:                     ; preds = %bb.b, %bb.f, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o, %bb.aa, %bb.ab, %.critedge125.i, %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %.critedge123.i
  %.6.i = phi i32 [ -22, %bb.f ], [ -22, %bb.b ], [ -22, %bb.j ], [ 0, %.critedge125.i ], [ -22, %bb.o ], [ -22, %.critedge123.i ], [ 0, %bb.al ], [ 0, %bb.ak ], [ -22, %bb.ai ], [ -22, %bb.ag ], [ -22, %bb.af ], [ -22, %bb.ae ], [ -22, %bb.aj ], [ -22, %bb.k ], [ -22, %bb.l ], [ -22, %bb.i ], [ -22, %bb.n ], [ -22, %bb.aa ], [ -22, %bb.ab ]
  ret i32 %.6.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tpacket_destruct_skb(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1032
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.o, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %.val13 = load i32, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val14 = load ptr, ptr %i.f, align 8
  %i.g = zext i32 %.val13 to i64
  %i.h = getelementptr i8, ptr %.val14, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr                 ; 9 uses
  %i.n = getelementptr i8, ptr %i.b, i64 1072
  %.val15 = load ptr, ptr %i.n, align 8           ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val15, ptr elementtype(i32) %.val15) #21, !srcloc !197
  %i.o = getelementptr i8, ptr %i.b, i64 1348
  %i.p = load volatile i32, ptr %i.o, align 4     ; 2 uses
  %.val.i.i = load i32, ptr %i.e, align 8
  %.val11.i.i = load ptr, ptr %i.f, align 8
  %i.q = zext i32 %.val.i.i to i64
  %i.r = getelementptr i8, ptr %.val11.i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = and i32 %i.p, 64
  %.not9.i.i = icmp eq i32 %i.t, 0
  %or.cond.i.i = or i1 %.not9.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %ktime_to_timespec64_cond.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8              ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.not.i.i, label %ktime_to_timespec64_cond.exit.i.i, label %bb.e

ktime_to_timespec64_cond.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.v = and i32 %i.p, 16
  %.not10.i.i = icmp eq i32 %i.v, 0
  br i1 %.not10.i.i, label %__packet_set_timestamp.exit, label %bb.d

bb.d:                                             ; preds = %ktime_to_timespec64_cond.exit.i.i
  %i.w = getelementptr i8, ptr %0, i64 129
  %i.x = load i32, ptr %i.w, align 1
  %i.y = and i32 %i.x, 3
  %.not.i12.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i12.i.i, label %skb_tstamp.exit.i.i, label %__packet_set_timestamp.exit

skb_tstamp.exit.i.i:                              ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not.i13.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i13.not.i.i, label %__packet_set_timestamp.exit, label %bb.e

bb.e:                                             ; preds = %skb_tstamp.exit.i.i, %bb.c
  %.sink25.i.i = phi i64 [ %i.u, %bb.c ], [ %i.aa, %skb_tstamp.exit.i.i ]
  %.0.ph.i.i = phi i32 [ -2147483648, %bb.c ], [ 536870912, %skb_tstamp.exit.i.i ]
  %i.ab = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %.sink25.i.i) #20 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 3 uses
  %i.ad = extractvalue { i64, i64 } %i.ab, 1      ; 3 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 1336
  %i.af = load i32, ptr %i.ae, align 8
  switch i32 %i.af, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc i64 %i.ac to i32
  %i.ah = getelementptr i8, ptr %i.m, i64 20
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = sdiv i64 %i.ad, 1000
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr i8, ptr %i.m, i64 24
  store i32 %i.aj, ptr %i.ak, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.al = trunc i64 %i.ac to i32
  %i.am = getelementptr i8, ptr %i.m, i64 16
  store i32 %i.al, ptr %i.am, align 4
  %i.an = trunc i64 %i.ad to i32
  %i.ao = getelementptr i8, ptr %i.m, i64 20
  store i32 %i.an, ptr %i.ao, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ap = trunc i64 %i.ac to i32
  %i.aq = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.ap, ptr %i.aq, align 4
end_hunk_1
begin_hunk_2_@packet_xmit:packet_sock_flag.exit

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_pskb(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @skb_set_delivery_type_by_clockid(ptr nofree noundef nonnull captures(none) initializes((32, 40)) %0, i64 noundef %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %trunc = trunc nuw i32 %2 to i8
  switch i8 %trunc, label %.thread [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

.thread:                                          ; preds = %bb.a
  tail call void asm sideeffect "585: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 585b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 585) #21, !srcloc !78
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.16, i32 4484, i32 2307, i64 16) #21, !srcloc !79
  tail call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #21, !srcloc !80
  %i.a = getelementptr i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 129
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.c = getelementptr i8, ptr %0, i64 32
  store i64 %1, ptr %i.c, align 8
  %.not.i = icmp eq i64 %1, 0
  %i.d = getelementptr i8, ptr %0, i64 129        ; 3 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %i.d, align 1
  %i.f = and i32 %i.e, -4
  %i.g = or disjoint i32 %i.f, %.06
  br label %skb_set_delivery_time.exit

bb.f:                                             ; preds = %.thread, %bb.d
  %i.h = phi ptr [ %i.b, %.thread ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = load i32, ptr %i.h, align 1
  %i.j = and i32 %i.i, -4
  br label %skb_set_delivery_time.exit

skb_set_delivery_time.exit:                       ; preds = %bb.e, %bb.f
  %i.k = phi ptr [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %.sink.i = phi i32 [ %i.j, %bb.f ], [ %i.g, %bb.e ]
  store i32 %.sink.i, ptr %i.k, align 1
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @skb_setup_tx_timestamp(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 192
  %.val5 = load i32, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 200
  %.val6 = load ptr, ptr %i.d, align 8
  %i.e = zext i32 %.val5 to i64
  %i.f = getelementptr i8, ptr %.val6, i64 %i.e   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 28       ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_sock_tx_timestamp.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.f, i64 3
  tail call void @__sock_tx_timestamp(i32 noundef %i.i, ptr noundef %i.j) #20
  %i.k = and i32 %i.i, 128
  %i.l = icmp eq i32 %i.k, 0
  %i.m = icmp eq ptr %i.g, null
  %or.cond.not18.i = or i1 %i.m, %i.l
  %i.n = and i32 %i.i, 262915
  %.not13.i = icmp eq i32 %i.n, 0
  %or.cond15.i = or i1 %.not13.i, %or.cond.not18.i
  br i1 %or.cond15.i, label %_sock_tx_timestamp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not14.i = icmp sgt i32 %i.i, -1
  br i1 %.not14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 484      ; 2 uses
  %i.r = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, i32 1, ptr elementtype(i32) %i.q) #21, !srcloc !81
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ %i.p, %bb.d ]
  store i32 %.sink.i, ptr %i.g, align 4
  br label %_sock_tx_timestamp.exit

_sock_tx_timestamp.exit:                          ; preds = %bb.a, %bb.b, %.sink.split.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @packet_parse_headers(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.flow_keys_basic, align 4    ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 180        ; 2 uses
  %i.b = load i16, ptr %i.a, align 4              ; 3 uses
  switch i16 %i.b, label %bb.f [
    i16 0, label %bb.b
    i16 768, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 4
  %i.e = icmp eq i16 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr i8, ptr %0, i64 186
  store i16 %i.m, ptr %i.n, align 2
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 16             ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %dev_parse_header_protocol.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.t, null
  br i1 %.not7.i, label %dev_parse_header_protocol.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call zeroext i16 %i.t(ptr noundef nonnull %0) #20, !inline_history !206
  br label %dev_parse_header_protocol.exit

dev_parse_header_protocol.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i16 [ %i.u, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  store i16 %.0.i, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %dev_parse_header_protocol.exit, %bb.b
  %i.v = phi i16 [ %i.b, %bb.a ], [ %.0.i, %dev_parse_header_protocol.exit ], [ %i.b, %bb.b ] ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 544
  %i.z = load i16, ptr %i.y, align 32
  %i.aa = icmp eq i16 %i.z, 1
  br i1 %i.aa, label %bb.g, label %vlan_get_protocol_and_depth.exit.thread, !prof !26

bb.g:                                             ; preds = %bb.f
  switch i16 %i.v, label %vlan_get_protocol_and_depth.exit.thread [
    i16 -22392, label %__vlan_get_protocol.exit.i
    i16 129, label %__vlan_get_protocol.exit.i
  ]

__vlan_get_protocol.exit.i:                       ; preds = %bb.g, %bb.g
  %i.ab = tail call i32 @__vlan_get_protocol_offset(ptr noundef nonnull %0, i16 noundef zeroext %i.v, i32 noundef 0) #20 ; 2 uses
  %i.ac = and i32 %i.ab, 65535
  %.not15.i = icmp eq i32 %i.ac, 0
  %.sroa.6.0.extract.shift.i.i.i = lshr i32 %i.ab, 16 ; 4 uses
  br i1 %.not15.i, label %vlan_get_protocol_and_depth.exit.thread, label %bb.h

bb.h:                                             ; preds = %__vlan_get_protocol.exit.i
  %i.ad = getelementptr i8, ptr %0, i64 112
  %.val10.i = load i32, ptr %i.ad, align 8        ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 116
  %.val11.i = load i32, ptr %i.ae, align 4
  %i.af = sub i32 %.val10.i, %.val11.i            ; 2 uses
  %.not.i.i = icmp ugt i32 %.sroa.6.0.extract.shift.i.i.i, %i.af
  br i1 %.not.i.i, label %bb.i, label %vlan_get_protocol_and_depth.exit, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ugt i32 %.sroa.6.0.extract.shift.i.i.i, %.val10.i
  br i1 %i.ag, label %vlan_get_protocol_and_depth.exit.thread, label %bb.j, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.ah = sub nuw nsw i32 %.sroa.6.0.extract.shift.i.i.i, %i.af
  %i.ai = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.ah) #20
  %.not9.i.i = icmp eq ptr %i.ai, null
  br i1 %.not9.i.i, label %vlan_get_protocol_and_depth.exit.thread, label %vlan_get_protocol_and_depth.exit, !prof !23

vlan_get_protocol_and_depth.exit:                 ; preds = %bb.j, %bb.h
  %i.aj = getelementptr i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %0, i64 200
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = getelementptr i8, ptr %0, i64 184
  %i.as = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i to i16
  %i.at = add i16 %i.aq, %i.as
  store i16 %i.at, ptr %i.ar, align 8
  br label %vlan_get_protocol_and_depth.exit.thread

vlan_get_protocol_and_depth.exit.thread:          ; preds = %bb.g, %bb.i, %__vlan_get_protocol.exit.i, %bb.j, %vlan_get_protocol_and_depth.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.au = getelementptr i8, ptr %0, i64 182       ; 2 uses
  %.val.i = load i16, ptr %i.au, align 2
  %.not.i15 = icmp eq i16 %.val.i, -1
  br i1 %.not.i15, label %bb.k, label %skb_probe_transport_header.exit

bb.k:                                             ; preds = %vlan_get_protocol_and_depth.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.av = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br i1 %i.av, label %bb.l, label %skb_probe_transport_header.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = load i16, ptr %2, align 4
  %i.ax = getelementptr i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %0, i64 200
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i16
  %i.bf = add i16 %i.aw, %i.be
  store i16 %i.bf, ptr %i.au, align 2
  br label %skb_probe_transport_header.exit

skb_probe_transport_header.exit:                  ; preds = %vlan_get_protocol_and_depth.exit.thread, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @skb_partial_csum_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @nf_hook_direct_egress(ptr noundef nonnull %0) unnamed_addr #17 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.nf_hook_state, align 8      ; 12 uses
  tail call void @__rcu_read_lock() #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %.021 = phi ptr [ null, %bb.a ], [ %.1, %bb.g ] ; 2 uses
  %.01220 = phi ptr [ null, %bb.a ], [ %.2, %bb.g ] ; 3 uses
  %.01419 = phi ptr [ %0, %bb.a ], [ %i.g, %bb.g ] ; 9 uses
  %i.g = load ptr, ptr %.01419, align 8           ; 2 uses
  store ptr null, ptr %.01419, align 8
  %i.h = getelementptr i8, ptr %.01419, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.j = getelementptr i8, ptr %.01419, i64 129
  %i.k = load i32, ptr %i.j, align 1
  %i.l = and i32 %i.k, 1048576
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.i, i64 144
  %i.n = load volatile ptr, ptr %i.m, align 16    ; 2 uses
  %.not19.i = icmp eq ptr %i.n, null
  br i1 %.not19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8, !annotation !55
  %i.o = getelementptr i8, ptr %i.i, i64 264
  %.val.i = load ptr, ptr %i.o, align 8
  store i8 1, ptr %1, align 8
  store i8 5, ptr %i.a, align 1
  store ptr null, ptr %i.b, align 8
  store ptr %i.i, ptr %i.c, align 8
  store ptr null, ptr %i.d, align 8
  store ptr %.val.i, ptr %i.e, align 8
  store ptr null, ptr %i.f, align 8
  call void @__rcu_read_lock() #20
  %i.p = call i32 @nf_hook_slow(ptr noundef nonnull %.01419, ptr noundef nonnull %1, ptr noundef nonnull %i.n, i32 noundef 0) #20
  call void @__rcu_read_unlock() #20
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %nf_hook_egress.exit

nf_hook_egress.exit:                              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.not16 = icmp eq ptr %.01220, null
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.01419, ptr %.021, align 8
  br label %bb.g

bb.g:                                             ; preds = %nf_hook_egress.exit, %bb.f, %bb.e
  %.2 = phi ptr [ %.01220, %nf_hook_egress.exit ], [ %.01220, %bb.f ], [ %.01419, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %.021, %nf_hook_egress.exit ], [ %.01419, %bb.f ], [ %.01419, %bb.e ]
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.b, !llvm.loop !207

bb.h:                                             ; preds = %bb.g
  call void @__rcu_read_unlock() #20
  ret ptr %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__dev_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__dev_direct_xmit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_from_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__sock_recv_cmsgs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @packet_mm_open(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
end_hunk_2
