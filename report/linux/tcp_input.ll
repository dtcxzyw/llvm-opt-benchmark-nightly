Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_input?download=true
inline.NumInlined: 1215
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tcp_sacktag_walk:bb.a
  %i.bn = getelementptr i8, ptr %.0152, i64 200
  %.val12.i.i = load ptr, ptr %i.bn, align 8
  %i.bo = zext i32 %.val9.i.i to i64
  %i.bp = getelementptr i8, ptr %.val10.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = zext i32 %.val11.i.i to i64
  %i.bs = getelementptr i8, ptr %.val12.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = xor i8 %i.bt, %i.bq
  %i.bv = and i8 %i.bu, 4
  %.not.i13.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i13.i.i, label %tcp_skb_can_collapse.exit.i, label %bb.bd, !prof !29

tcp_skb_can_collapse.exit.i:                      ; preds = %bb.x
  %i.bw = getelementptr i8, ptr %i.be, i64 129
  %.val7.i.i = load i32, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %.0152, i64 129
  %.val.i.i = load i32, ptr %i.bx, align 1
  %i.by = xor i32 %.val.i.i, %.val7.i.i
  %i.bz = and i32 %i.by, 4194304
  %.not.i124.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i124.i, label %bb.y, label %bb.bd

bb.y:                                             ; preds = %tcp_skb_can_collapse.exit.i
  %i.ca = load i32, ptr %i.i, align 8             ; 3 uses
  %i.cb = sub i32 %i.ca, %4
  %i.cc = icmp sgt i32 %i.cb, -1                  ; 2 uses
  %.pre.i = load i32, ptr %i.ba, align 4          ; 2 uses
  %i.cd = sub i32 %5, %.pre.i
  %i.ce = icmp sgt i32 %i.cd, -1
  %or.cond.i78 = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond.i78, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.cf = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.cg = getelementptr i8, ptr %.0152, i64 48
  %.val118.i = load i16, ptr %i.cg, align 8       ; 2 uses
  %i.ch = zext i16 %.val118.i to i32
  %i.ci = icmp eq i16 %.val118.i, 1
  br i1 %i.ci, label %tcp_skb_seglen.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr i8, ptr %.0152, i64 50
  %.val3.i.i = load i16, ptr %i.cj, align 2
  %i.ck = zext i16 %.val3.i.i to i32
  br label %tcp_skb_seglen.exit.i

tcp_skb_seglen.exit.i:                            ; preds = %bb.aa, %bb.z
  %i.cl = phi i32 [ %i.ck, %bb.aa ], [ %i.cf, %bb.z ] ; 2 uses
  %i.cm = getelementptr i8, ptr %i.be, i64 48
  %.val.i126.i = load i16, ptr %i.cm, align 8     ; 2 uses
  %i.cn = icmp eq i16 %.val.i126.i, 1
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %tcp_skb_seglen.exit.i
  %i.co = getelementptr i8, ptr %i.be, i64 112
  %i.cp = load i32, ptr %i.co, align 8
  br label %tcp_skb_seglen.exit128.i

bb.ac:                                            ; preds = %tcp_skb_seglen.exit.i
  %i.cq = getelementptr i8, ptr %i.be, i64 50
  %.val3.i127.i = load i16, ptr %i.cq, align 2
  %i.cr = zext i16 %.val3.i127.i to i32
  br label %tcp_skb_seglen.exit128.i

tcp_skb_seglen.exit128.i:                         ; preds = %bb.ac, %bb.ab
  %i.cs = phi i32 [ %i.cp, %bb.ab ], [ %i.cr, %bb.ac ]
  %.not108.i = icmp eq i32 %i.cl, %i.cs
  br i1 %.not108.i, label %bb.ap, label %bb.bd

.critedge.i:                                      ; preds = %bb.y
  %i.ct = sub i32 %4, %.pre.i
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ad, label %.thread129

bb.ad:                                            ; preds = %.critedge.i
  %i.cv = getelementptr i8, ptr %.0152, i64 48
  %.val117.i = load i16, ptr %i.cv, align 8
  %i.cw = icmp ult i16 %.val117.i, 2
  br i1 %i.cw, label %.thread129, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.cc, label %bb.af, label %bb.bd

bb.af:                                            ; preds = %bb.ae
  %i.cx = sub i32 %5, %i.ca                       ; 7 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ag, label %bb.ah, !prof !23

bb.ag:                                            ; preds = %bb.af
  tail call void asm sideeffect "1456: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1456b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1456) #22, !srcloc !331
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2027, i32 0, i64 16) #22, !srcloc !332
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cz = load i32, ptr %i.aw, align 8
  %i.da = icmp ugt i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.ai, label %bb.aj, !prof !23

bb.ai:                                            ; preds = %bb.ah
  tail call void asm sideeffect "1457: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1457b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1457) #22, !srcloc !333
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2028, i32 0, i64 16) #22, !srcloc !334
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.db = getelementptr i8, ptr %.0152, i64 50
  %.val119.i = load i16, ptr %i.db, align 2
  %i.dc = zext i16 %.val119.i to i32              ; 6 uses
  %i.dd = getelementptr i8, ptr %i.be, i64 48
  %.val.i129.i = load i16, ptr %i.dd, align 8     ; 3 uses
  %i.de = icmp eq i16 %.val.i129.i, 1
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr i8, ptr %i.be, i64 112
  %i.dg = load i32, ptr %i.df, align 8
  br label %tcp_skb_seglen.exit131.i

bb.al:                                            ; preds = %bb.aj
  %i.dh = getelementptr i8, ptr %i.be, i64 50
  %.val3.i130.i = load i16, ptr %i.dh, align 2
  %i.di = zext i16 %.val3.i130.i to i32
  br label %tcp_skb_seglen.exit131.i

tcp_skb_seglen.exit131.i:                         ; preds = %bb.al, %bb.ak
  %i.dj = phi i32 [ %i.dg, %bb.ak ], [ %i.di, %bb.al ]
  %.not107.i = icmp eq i32 %i.dj, %i.dc
  br i1 %.not107.i, label %bb.am, label %bb.bd

bb.am:                                            ; preds = %tcp_skb_seglen.exit131.i
  %i.dk = icmp eq i32 %i.cx, %i.dc
  br i1 %i.dk, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = icmp samesign ult i32 %i.cx, %i.dc
  br i1 %i.dl, label %.thread129, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = udiv i32 %i.cx, %i.dc                   ; 2 uses
  %i.dn = mul i32 %i.dm, %i.dc
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %tcp_skb_seglen.exit128.i
  %.val.i132.i = phi i16 [ %.val.i126.i, %tcp_skb_seglen.exit128.i ], [ %.val.i129.i, %bb.ao ], [ %.val.i129.i, %bb.am ]
  %.096.i = phi i32 [ %i.cf, %tcp_skb_seglen.exit128.i ], [ %i.dn, %bb.ao ], [ %i.cx, %bb.am ] ; 4 uses
  %.095.i = phi i32 [ %i.ch, %tcp_skb_seglen.exit128.i ], [ %i.dm, %bb.ao ], [ 1, %bb.am ] ; 2 uses
  %.094.i = phi i32 [ %i.cl, %tcp_skb_seglen.exit128.i ], [ %i.dc, %bb.ao ], [ %i.cx, %bb.am ] ; 3 uses
  %i.do = load i32, ptr %i.b, align 16
  %i.dp = add i32 %.096.i, %i.ca
  %i.dq = sub i32 %i.do, %i.dp
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  %i.ds = getelementptr i8, ptr %i.be, i64 112    ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = add i32 %i.dt, %.096.i
  %i.dv = icmp ugt i32 %i.du, 524279
  br i1 %i.dv, label %bb.bd, label %bb.ar, !prof !23

bb.ar:                                            ; preds = %bb.aq
  %i.dw = getelementptr i8, ptr %i.be, i64 48
  %i.dx = zext i16 %.val.i132.i to i32
  %i.dy = add nuw i32 %.095.i, %i.dx
  %i.dz = icmp sgt i32 %i.dy, 65535
  br i1 %i.dz, label %bb.bd, label %tcp_skb_shift.exit.i, !prof !23

tcp_skb_shift.exit.i:                             ; preds = %bb.ar
  %i.ea = tail call i32 @skb_shift(ptr noundef nonnull %i.be, ptr noundef nonnull %.0152, i32 noundef %.096.i) #23
  %.not109.i = icmp eq i32 %i.ea, 0
  br i1 %.not109.i, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %tcp_skb_shift.exit.i
  %i.eb = tail call fastcc zeroext i1 @tcp_shifted_skb(ptr noundef %1, ptr noundef %i.be, ptr noundef nonnull %.0152, ptr noundef %3, i32 noundef %.095.i, i32 noundef %.096.i, i32 noundef %.094.i, i1 noundef zeroext %.059.shrunk101114) #24, !srcloc !335
  br i1 %i.eb, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.ec = tail call ptr @rb_next(ptr noundef nonnull %i.be) #23 ; 9 uses
  %.not110.i = icmp eq ptr %i.ec, null
  br i1 %.not110.i, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = getelementptr i8, ptr %i.ec, i64 112
  %spec.select116.val120.i = load i32, ptr %i.ed, align 8 ; 5 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 116
  %spec.select116.val121.i = load i32, ptr %i.ee, align 4 ; 2 uses
  %.not.i133.i = icmp ne i32 %spec.select116.val120.i, %spec.select116.val121.i
  %i.ef = icmp eq i32 %spec.select116.val121.i, 0
  %narrow.i134.not.i = or i1 %.not.i133.i, %i.ef
  br i1 %narrow.i134.not.i, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = getelementptr i8, ptr %i.ec, i64 54
  %i.eh = load i8, ptr %i.eg, align 2
  %i.ei = and i8 %i.eh, 7
  %.not113.i = icmp eq i8 %i.ei, 1
  br i1 %.not113.i, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ej = getelementptr i8, ptr %i.ec, i64 48
  %.val.i135.i = load i16, ptr %i.ej, align 8     ; 2 uses
  %i.ek = icmp eq i16 %.val.i135.i, 1
  br i1 %i.ek, label %tcp_skb_seglen.exit137.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.el = getelementptr i8, ptr %i.ec, i64 50
  %.val3.i136.i = load i16, ptr %i.el, align 2
  %i.em = zext i16 %.val3.i136.i to i32
  br label %tcp_skb_seglen.exit137.i

tcp_skb_seglen.exit137.i:                         ; preds = %bb.ax, %bb.aw
  %i.en = phi i32 [ %i.em, %bb.ax ], [ %spec.select116.val120.i, %bb.aw ]
  %.not114.i = icmp eq i32 %.094.i, %i.en
  br i1 %.not114.i, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %tcp_skb_seglen.exit137.i
  %i.eo = tail call fastcc zeroext i1 @tcp_skb_can_collapse(ptr noundef %i.be, ptr noundef %i.ec) #24, !srcloc !336
  br i1 %i.eo, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ep = zext i16 %.val.i135.i to i32            ; 2 uses
  %i.eq = load i32, ptr %i.ds, align 8
  %i.er = add i32 %i.eq, %spec.select116.val120.i
  %i.es = icmp ugt i32 %i.er, 524279
  br i1 %i.es, label %bb.bc, label %bb.ba, !prof !23

bb.ba:                                            ; preds = %bb.az
  %.val.i138.i = load i16, ptr %i.dw, align 8
  %7 = zext i16 %.val.i138.i to i32
  %8 = add nuw nsw i32 %7, %i.ep
  %i.et = icmp samesign ugt i32 %8, 65535
  br i1 %i.et, label %bb.bc, label %tcp_skb_shift.exit140.i, !prof !23

tcp_skb_shift.exit140.i:                          ; preds = %bb.ba
  %i.eu = tail call i32 @skb_shift(ptr noundef nonnull %i.be, ptr noundef nonnull %i.ec, i32 noundef %spec.select116.val120.i) #23
  %.not115.i = icmp eq i32 %i.eu, 0
  br i1 %.not115.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %tcp_skb_shift.exit140.i
  %i.ev = tail call fastcc zeroext i1 @tcp_shifted_skb(ptr noundef %1, ptr noundef %i.be, ptr noundef %i.ec, ptr noundef %3, i32 noundef %i.ep, i32 noundef %spec.select116.val120.i, i32 noundef %.094.i, i1 noundef zeroext false) #24, !srcloc !337 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.as, %tcp_skb_shift.exit140.i, %bb.bb, %bb.ay, %bb.au, %bb.av, %tcp_skb_seglen.exit137.i, %bb.at, %bb.az, %bb.ba
  %.not69 = icmp eq ptr %i.be, %.0152
  br i1 %.not69, label %.thread129, label %.thread138

bb.bd:                                            ; preds = %tcp_skb_shift.exit.i, %bb.ar, %bb.aq, %bb.ap, %tcp_skb_seglen.exit131.i, %bb.ae, %tcp_skb_seglen.exit128.i, %tcp_skb_can_collapse.exit.i, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.059.shrunk101112 = phi i1 [ %.059.shrunk101114, %tcp_skb_shift.exit.i ], [ %.059.shrunk101114, %bb.ar ], [ %.059.shrunk101114, %bb.aq ], [ %.059.shrunk101114, %bb.ap ], [ %.059.shrunk101114, %tcp_skb_seglen.exit131.i ], [ %.059.shrunk101114, %bb.ae ], [ %.059.shrunk101114, %tcp_skb_seglen.exit128.i ], [ %.059.shrunk101114, %tcp_skb_can_collapse.exit.i ], [ %.059.shrunk101114, %bb.x ], [ %.059.shrunk101114, %bb.w ], [ %.059.shrunk101114, %bb.v ], [ %.059.shrunk101114, %bb.u ], [ %.059.shrunk101114, %bb.t ], [ %.059.shrunk101114, %bb.s ], [ false, %bb.r ]
  %.val.i76 = load ptr, ptr %i.c, align 8
  %i.ew = getelementptr i8, ptr %.val.i76, i64 744
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr i8, ptr %i.ex, i64 568    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ey, ptr elementtype(i64) %i.ey) #22, !srcloc !338
  %i.ez = load i32, ptr %i.i, align 8             ; 3 uses
  %i.fa = sub i32 %i.ez, %4
  %i.fb = icmp slt i32 %i.fa, 0                   ; 5 uses
  br i1 %i.fb, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fc = getelementptr i8, ptr %.0152, i64 44
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sub i32 %5, %i.fd
  %i.ff = icmp sgt i32 %i.fe, -1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fg = phi i1 [ false, %bb.bd ], [ %i.ff, %bb.be ] ; 2 uses
  %i.fh = getelementptr i8, ptr %.0152, i64 48
  %.val.i79 = load i16, ptr %i.fh, align 8
  %i.fi = icmp ult i16 %.val.i79, 2
  %or.cond.i80 = select i1 %i.fi, i1 true, i1 %i.fg
  br i1 %or.cond.i80, label %bb.bo, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fj = getelementptr i8, ptr %.0152, i64 44
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = sub i32 %4, %i.fk
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.bh, label %.thread138

bb.bh:                                            ; preds = %bb.bg
  %i.fn = getelementptr i8, ptr %.0152, i64 50
  %.val58.i83 = load i16, ptr %i.fn, align 2
  %i.fo = zext i16 %.val58.i83 to i32             ; 6 uses
  %i.fp = xor i1 %i.fb, true
  br i1 %i.fb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fq = sub i32 %4, %i.ez
  %spec.select.i91 = tail call i32 @llvm.umax.i32(i32 %i.fq, i32 %i.fo)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fr = sub i32 %5, %i.ez                       ; 2 uses
  %i.fs = icmp ult i32 %i.fr, %i.fo
  br i1 %i.fs, label %tcp_match_skb_to_sack.exit92, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.045.i84 = phi i32 [ %i.fr, %bb.bj ], [ %spec.select.i91, %bb.bi ]
  %.045.fr.i85 = freeze i32 %.045.i84             ; 4 uses
  %i.ft = icmp ugt i32 %.045.fr.i85, %i.fo
  br i1 %i.ft, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fu = urem i32 %.045.fr.i85, %i.fo            ; 2 uses
  %i.fv = sub nuw i32 %.045.fr.i85, %i.fu
  %.not.i88 = icmp ne i32 %i.fu, 0
  %or.cond57.not.i89 = select i1 %i.fb, i1 %.not.i88, i1 false
  %i.fw = select i1 %or.cond57.not.i89, i32 %i.fo, i32 0
  %.0.i90 = add i32 %i.fv, %i.fw
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.1.i86 = phi i32 [ %.0.i90, %bb.bl ], [ %.045.fr.i85, %bb.bk ] ; 2 uses
  %i.fx = getelementptr i8, ptr %.0152, i64 112
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = icmp uge i32 %.1.i86, %i.fy
  %or.cond3.not.i87 = and i1 %i.fb, %i.fz
  br i1 %or.cond3.not.i87, label %.thread129, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ga = tail call i32 @tcp_fragment(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %.0152, i32 noundef %.1.i86, i32 noundef %i.fo, i32 noundef 2080) #23
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %tcp_match_skb_to_sack.exit92, label %bb.bo

.thread129:                                       ; preds = %bb.bm, %bb.bc, %.critedge.i, %bb.ad, %bb.an
  br label %.thread138

bb.bo:                                            ; preds = %bb.bf, %bb.bn
  %.046.in.i81 = phi i1 [ %i.fg, %bb.bf ], [ %i.fp, %bb.bn ]
  br i1 %.046.in.i81, label %.thread133, label %.thread138

.thread133:                                       ; preds = %bb.p, %bb.bo
  %.059.shrunk100.ph137 = phi i1 [ %.059.shrunk101112, %bb.bo ], [ true, %bb.p ]
  %i.gc = getelementptr i8, ptr %.0152, i64 54    ; 4 uses
  %i.gd = load i8, ptr %i.gc, align 2
  %i.ge = load i32, ptr %i.i, align 8
  %i.gf = getelementptr i8, ptr %.0152, i64 44    ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = zext i1 %.059.shrunk100.ph137 to i32
  %i.gi = getelementptr i8, ptr %.0152, i64 48
  %.0.val = load i16, ptr %i.gi, align 8
  %i.gj = zext i16 %.0.val to i32
  %i.gk = getelementptr i8, ptr %.0152, i64 112
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = getelementptr i8, ptr %.0152, i64 32    ; 2 uses
  %.0.val75 = load i64, ptr %i.gm, align 8
  %i.gn = udiv i64 %.0.val75, 1000
  %i.go = tail call fastcc zeroext i8 @tcp_sacktag_one(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %i.gd, i32 noundef %i.ge, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef %i.gn) #24, !srcloc !339 ; 3 uses
  store i8 %i.go, ptr %i.gc, align 2
  %i.gp = load ptr, ptr %i.d, align 8             ; 8 uses
  %i.gq = getelementptr i8, ptr %.0152, i64 64    ; 2 uses
  %i.gr = getelementptr i8, ptr %.0152, i64 80    ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8
  %.not.i93 = icmp eq i64 %i.gs, 0
  br i1 %.not.i93, label %tcp_rate_skb_delivered.exit, label %bb.bp

bb.bp:                                            ; preds = %.thread133
  %.val.i94 = load i64, ptr %i.gm, align 8
  %i.gt = udiv i64 %.val.i94, 1000                ; 4 uses
  %i.gu = getelementptr i8, ptr %i.gp, i64 8      ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8
  %.not29.i = icmp eq i32 %i.gv, 0
  br i1 %.not29.i, label %tcp_skb_sent_after.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gw = load i64, ptr %i.e, align 8             ; 2 uses
  %i.gx = icmp ugt i64 %i.gt, %i.gw
  br i1 %i.gx, label %tcp_skb_sent_after.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gy = getelementptr i8, ptr %i.gp, i64 60
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = load i32, ptr %i.gf, align 4
  %i.hb = icmp eq i64 %i.gt, %i.gw
  %i.hc = sub i32 %i.gz, %i.ha
  %i.hd = icmp slt i32 %i.hc, 0
  %or.cond.i95 = select i1 %i.hb, i1 %i.hd, i1 false
  br i1 %or.cond.i95, label %tcp_skb_sent_after.exit.thread.i, label %tcp_skb_sent_after.exit.thread31.i

tcp_skb_sent_after.exit.thread.i:                 ; preds = %bb.br, %bb.bq, %bb.bp
  %i.he = load i32, ptr %i.gq, align 8
  %i.hf = lshr i32 %i.he, 1
  %i.hg = and i32 %i.hf, 1048575
  %i.hh = getelementptr i8, ptr %i.gp, i64 12
  store i32 %i.hg, ptr %i.hh, align 4
  %i.hi = getelementptr i8, ptr %.0152, i64 68
  %i.hj = load i32, ptr %i.hi, align 4
  store i32 %i.hj, ptr %i.gu, align 8
  %i.hk = load i64, ptr %i.gr, align 8
  store i64 %i.hk, ptr %i.gp, align 8
  %i.hl = load i32, ptr %i.gq, align 8
  %i.hm = trunc i32 %i.hl to i8
  %i.hn = getelementptr i8, ptr %i.gp, i64 64
  %i.ho = and i8 %i.hm, 1
  store i8 %i.ho, ptr %i.hn, align 8
  %i.hp = load i8, ptr %i.gc, align 2
  %i.hq = and i8 %i.hp, -110
  %i.hr = icmp ne i8 %i.hq, 0
  %i.hs = getelementptr i8, ptr %i.gp, i64 65
  %i.ht = zext i1 %i.hr to i8
  store i8 %i.ht, ptr %i.hs, align 1
  %i.hu = load i32, ptr %i.gf, align 4
  %i.hv = getelementptr i8, ptr %i.gp, i64 60
  store i32 %i.hu, ptr %i.hv, align 4
  store i64 %i.gt, ptr %i.e, align 8
  %i.hw = getelementptr i8, ptr %.0152, i64 72
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = sub i64 %i.gt, %i.hx
  %i.hz = tail call i64 @llvm.smax.i64(i64 %i.hy, i64 0)
  %i.ia = and i64 %i.hz, 4294967295
  %i.ib = getelementptr i8, ptr %i.gp, i64 24
  store i64 %i.ia, ptr %i.ib, align 8
  %.pre = load i8, ptr %i.gc, align 2
  br label %tcp_skb_sent_after.exit.thread31.i

tcp_skb_sent_after.exit.thread31.i:               ; preds = %tcp_skb_sent_after.exit.thread.i, %bb.br
  %i.ic = phi i8 [ %.pre, %tcp_skb_sent_after.exit.thread.i ], [ %i.go, %bb.br ]
  %i.id = and i8 %i.ic, 1
  %.not30.i = icmp eq i8 %i.id, 0
  br i1 %.not30.i, label %tcp_rate_skb_delivered.exit.thread, label %tcp_rate_skb_delivered.exit.thread176

tcp_rate_skb_delivered.exit.thread176:            ; preds = %tcp_skb_sent_after.exit.thread31.i
  store i64 0, ptr %i.gr, align 8
  br label %bb.bs

tcp_rate_skb_delivered.exit:                      ; preds = %.thread133
  %.pre160 = and i8 %i.go, 1
  %i.ie = icmp eq i8 %.pre160, 0
  br i1 %i.ie, label %tcp_rate_skb_delivered.exit.thread, label %bb.bs

end_hunk_0
