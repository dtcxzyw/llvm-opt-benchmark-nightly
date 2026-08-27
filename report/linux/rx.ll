Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rx?download=true
inline.NumInlined: 710
inline.NumDeleted: 226
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ieee80211_make_monitor_skb:bb.a
  br i1 %i.ar, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ieee80211_hw_check.exit.i
  %i.as = and i32 %.val109.i, 67108864
  %.not83.i = icmp eq i32 %i.as, 0
  %i.at = add i32 %.7.i, 1
  %i.au = and i32 %i.at, -2
  %i.av = add i32 %i.au, 12
  %.8.ph.i = select i1 %.not83.i, i32 %.7.i, i32 %i.av ; 2 uses
  %i.aw = and i32 %.val109.i, 134217728
  %.not84.i = icmp eq i32 %i.aw, 0
  br i1 %.not84.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = add i32 %.8.ph.i, 1
  %i.ay = and i32 %i.ax, -2
  %i.az = add i32 %i.ay, 12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ieee80211_hw_check.exit.i
  %.9.i = phi i32 [ %i.az, %bb.d ], [ %.8.ph.i, %bb.c ], [ %.7.i, %_ieee80211_hw_check.exit.i ]
  %i.ba = lshr i32 %.val109.i, 29
  %i.bb = and i32 %i.ba, 1
  %spec.select.i = add i32 %.9.i, %i.bb           ; 2 uses
  %i.bc = and i32 %.val109.i, 268435456
  %.not86.i = icmp eq i32 %i.bc, 0
  %i.bd = add i32 %spec.select.i, 1
  %i.be = and i32 %i.bd, -2
  %i.bf = add i32 %i.be, 4
  %.11.i = select i1 %.not86.i, i32 %spec.select.i, i32 %i.bf ; 2 uses
  br i1 %.not81.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = zext i8 %i.u to i32
  %i.bh = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.bi = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 256) %i.bg, i64 %i.bh) #20, !srcloc !164 ; 2 uses
  %i.bj = extractvalue { i32, i64 } %i.bi, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.bj)
  %.pre.pre.i = load i32, ptr %i.k, align 8
  %i.bk = extractvalue { i32, i64 } %i.bi, 0
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add i32 %i.bl, %.11.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bn = phi i32 [ %.pre.pre.i, %bb.f ], [ %.val109.i, %bb.e ] ; 5 uses
  %.12.i = phi i32 [ %i.bm, %bb.f ], [ %.11.i, %bb.e ] ; 2 uses
  %i.bo = and i32 %i.bn, 1048576
  %.not101.i = icmp eq i32 %i.bo, 0
  br i1 %.not101.i, label %ieee80211_rx_radiotap_hdrlen.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not102.inv.i = icmp slt i32 %i.bn, 0
  %spec.select107.i = select i1 %.not102.inv.i, i32 12, i32 0 ; 2 uses
  %i.bp = and i32 %i.bn, 67108864
  %.not103.i = icmp eq i32 %i.bp, 0
  %narrow104.i = add nuw nsw i32 %spec.select107.i, 12
  %.1.i = select i1 %.not103.i, i32 %spec.select107.i, i32 %narrow104.i ; 2 uses
  %i.bq = and i32 %i.bn, 134217728
  %.not105.i = icmp eq i32 %i.bq, 0
  %i.br = add nuw nsw i32 %.1.i, 12
  %.2.i = select i1 %.not105.i, i32 %.1.i, i32 %i.br
  %i.bs = lshr i32 %i.bn, 26
  %i.bt = and i32 %i.bs, 4
  %.3.i = add nuw nsw i32 %.2.i, %i.bt
  %i.bu = add i32 %.12.i, 3
  %i.bv = and i32 %i.bu, -4
  %i.bw = getelementptr i8, ptr %i.a, i64 186
  %.val.i = load i16, ptr %i.bw, align 2
  %i.bx = getelementptr i8, ptr %i.a, i64 200
  %.val108.i = load ptr, ptr %i.bx, align 8
  %i.by = zext i16 %.val.i to i64
  %i.bz = getelementptr i8, ptr %.val108.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.a, i64 208
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = zext nneg i32 %.3.i to i64
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.cc
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %i.bv, %i.ch
  br label %ieee80211_rx_radiotap_hdrlen.exit

ieee80211_rx_radiotap_hdrlen.exit:                ; preds = %bb.g, %bb.h
  %.13.i = phi i32 [ %i.ci, %bb.h ], [ %.12.i, %bb.g ] ; 3 uses
  %i.cj = sub i32 %.13.i, %3                      ; 3 uses
  %i.ck = load ptr, ptr %1, align 8               ; 7 uses
  br i1 %4, label %bb.i, label %bb.l

bb.i:                                             ; preds = %ieee80211_rx_radiotap_hdrlen.exit
  store ptr null, ptr %1, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 200
  %.val = load ptr, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.ck, i64 208
  %.val39 = load ptr, ptr %i.cm, align 8
  %i.cn = ptrtoint ptr %.val39 to i64
  %i.co = ptrtoint ptr %.val to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp ugt i32 %i.cj, %i.cq
  br i1 %i.cr, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cs = tail call i32 @pskb_expand_head(ptr noundef %i.ck, i32 noundef %i.cj, i32 noundef 0, i32 noundef 2080) #19
  %.not38 = icmp eq i32 %i.cs, 0
  br i1 %.not38, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @consume_skb(ptr noundef %i.ck) #19
  br label %bb.ch

bb.l:                                             ; preds = %ieee80211_rx_radiotap_hdrlen.exit
  %i.ct = add i32 %i.cj, 64
  %i.cu = tail call ptr @skb_copy_expand(ptr noundef %i.ck, i32 noundef %i.ct, i32 noundef 0, i32 noundef 2080) #19 ; 2 uses
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.ch, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.j
  %.035 = phi ptr [ %i.ck, %bb.j ], [ %i.ck, %bb.i ], [ %i.cu, %bb.l ] ; 41 uses
  %i.cv = getelementptr i8, ptr %.035, i64 40     ; 2 uses
  %i.cw = getelementptr i8, ptr %.035, i64 79     ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.i, i8 0, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.20.i, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %i.cy = getelementptr i8, ptr %.035, i64 64     ; 17 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %.not.i40 = icmp sgt i32 %i.cz, -1
  br i1 %.not.i40, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr i8, ptr %.035, i64 208
  %i.db = load ptr, ptr %i.da, align 8            ; 7 uses
  %.sroa.060.0.copyload.i = load i16, ptr %i.db, align 1 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %.sroa.12.0.copyload.i = load i8, ptr %.sroa.12.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.sroa.16.0.copyload.i = load i8, ptr %.sroa.16.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx.i, i64 3, i1 false)
  %.sroa.1871.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.1871.0.copyload.i = load i8, ptr %.sroa.1871.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.20.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.20.0..sroa_idx.i, i64 3, i1 false)
  %i.dc = tail call ptr @skb_pull(ptr noundef %.035, i32 noundef 12) #19 ; 0 uses
  %i.dd = getelementptr i8, ptr %.035, i64 71
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = and i8 %i.de, 7
  %.not344.i = icmp eq i8 %i.df, 2
  br i1 %.not344.i, label %bb.p, label %bb.o, !prof !56

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "2203: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2203b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2203) #17, !srcloc !165
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 336, i32 2307, i64 16) #17, !srcloc !166
  tail call void asm sideeffect "2204: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2204b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2204) #17, !srcloc !167
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.8.0.i = phi i8 [ 0, %bb.m ], [ %.sroa.8.0.copyload.i, %bb.o ], [ %.sroa.8.0.copyload.i, %bb.n ] ; 2 uses
  %.sroa.12.0.i = phi i8 [ 0, %bb.m ], [ %.sroa.12.0.copyload.i, %bb.o ], [ %.sroa.12.0.copyload.i, %bb.n ]
  %.sroa.16.0.i = phi i8 [ 0, %bb.m ], [ %.sroa.16.0.copyload.i, %bb.o ], [ %.sroa.16.0.copyload.i, %bb.n ] ; 2 uses
  %.sroa.1871.0.i = phi i8 [ 0, %bb.m ], [ %.sroa.1871.0.copyload.i, %bb.o ], [ %.sroa.1871.0.copyload.i, %bb.n ] ; 2 uses
  %.sroa.060.0.i = phi i16 [ 0, %bb.m ], [ %.sroa.060.0.copyload.i, %bb.o ], [ %.sroa.060.0.copyload.i, %bb.n ] ; 2 uses
  %i.dg = load i32, ptr %i.cy, align 8
  %i.dh = and i32 %i.dg, 67108864
  %.not345.i = icmp eq i32 %i.dh, 0
  br i1 %.not345.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr i8, ptr %.035, i64 208
  %i.dj = load ptr, ptr %i.di, align 8            ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 2            ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.5.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %.sroa.13.0.copyload.i = load i16, ptr %.sroa.13.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.1339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.1339.0.copyload.i = load i16, ptr %.sroa.1339.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 10
  %.sroa.25.0.copyload.i = load i16, ptr %.sroa.25.0..sroa_idx.i, align 2 ; 2 uses
  %i.dl = tail call ptr @skb_pull(ptr noundef %.035, i32 noundef 12) #19 ; 0 uses
  %i.dm = getelementptr i8, ptr %.035, i64 71
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = and i8 %i.dn, 7
  %.not346.i = icmp eq i8 %i.do, 3
  br i1 %.not346.i, label %bb.s, label %bb.r, !prof !56

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "2205: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2205b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2205) #17, !srcloc !168
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 342, i32 2307, i64 16) #17, !srcloc !169
  tail call void asm sideeffect "2206: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2206b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2206) #17, !srcloc !170
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.0.sroa.0.0.i = phi i32 [ 0, %bb.p ], [ %i.dk, %bb.q ], [ %i.dk, %bb.r ]
  %.sroa.5.0.i = phi i16 [ 0, %bb.p ], [ %.sroa.5.0.copyload.i, %bb.q ], [ %.sroa.5.0.copyload.i, %bb.r ] ; 2 uses
  %.sroa.13.0.i = phi i16 [ 0, %bb.p ], [ %.sroa.13.0.copyload.i, %bb.q ], [ %.sroa.13.0.copyload.i, %bb.r ]
  %.sroa.1339.0.i = phi i16 [ 0, %bb.p ], [ %.sroa.1339.0.copyload.i, %bb.q ], [ %.sroa.1339.0.copyload.i, %bb.r ]
  %.sroa.25.0.i = phi i16 [ 0, %bb.p ], [ %.sroa.25.0.copyload.i, %bb.q ], [ %.sroa.25.0.copyload.i, %bb.r ]
  %i.dp = load i32, ptr %i.cy, align 8            ; 2 uses
  %i.dq = and i32 %i.dp, 134217728
  %.not347.i = icmp eq i32 %i.dq, 0
  br i1 %.not347.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr i8, ptr %.035, i64 208
  %i.ds = load ptr, ptr %i.dr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %5, ptr noundef align 2 dereferenceable(12) %i.ds, i64 12, i1 false)
  %i.dt = tail call ptr @skb_pull(ptr noundef %.035, i32 noundef 12) #19 ; 0 uses
  %.pre.i41 = load i32, ptr %i.cy, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.du = phi i32 [ %.pre.i41, %bb.t ], [ %i.dp, %bb.s ] ; 2 uses
  %i.dv = and i32 %i.du, 268435456
  %.not348.i = icmp eq i32 %i.dv, 0
  br i1 %.not348.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr i8, ptr %.035, i64 208
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load i32, ptr %i.dx, align 2
  %i.dz = tail call ptr @skb_pull(ptr noundef %.035, i32 noundef 4) #19 ; 0 uses
  %.pre481.i = load i32, ptr %i.cy, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ea = phi i32 [ %i.du, %bb.u ], [ %.pre481.i, %bb.v ]
  %.sroa.0444.0.i = phi i32 [ 0, %bb.u ], [ %i.dy, %bb.v ]
  %i.eb = and i32 %i.ea, 1048576
  %.not349.i = icmp eq i32 %i.eb, 0
  br i1 %.not349.i, label %_ieee80211_hw_check.exit.i44, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr i8, ptr %.035, i64 186
  %.val.i42 = load i16, ptr %i.ec, align 2
  %i.ed = getelementptr i8, ptr %.035, i64 200
  %.val436.i = load ptr, ptr %i.ed, align 8
  %i.ee = zext i16 %.val.i42 to i64
  %i.ef = getelementptr i8, ptr %.val436.i, i64 %i.ee
  %i.eg = getelementptr i8, ptr %.035, i64 208
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %.neg.i = sub i64 %i.ej, %i.ei
  %.neg350.i = trunc i64 %.neg.i to i32
  br label %_ieee80211_hw_check.exit.i44

_ieee80211_hw_check.exit.i44:                     ; preds = %bb.x, %bb.w
  %.0331.neg.i = phi i32 [ %.neg350.i, %bb.x ], [ 0, %bb.w ]
  %i.ek = getelementptr i8, ptr %.035, i64 112
  %i.el = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.em = load volatile i64, ptr %i.p, align 8
  %.in.i.in.i = and i64 %i.em, 2
  %.in.i.not.i = icmp eq i64 %.in.i.in.i, 0
  %i.en = add i32 %i.el, 4
  %.0332.i = select i1 %.in.i.not.i, i32 %i.en, i32 %i.el
  %i.eo = add i32 %.0331.neg.i, %.13.i            ; 2 uses
  %i.ep = tail call ptr @skb_push(ptr noundef %.035, i32 noundef %i.eo) #19 ; 8 uses
  %i.eq = zext i32 %i.eo to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ep, i8 0, i64 %i.eq, i1 false)
  %i.er = getelementptr i8, ptr %i.ep, i64 4      ; 25 uses
  %i.es = trunc i32 %.13.i to i16
  %i.et = getelementptr i8, ptr %i.ep, i64 2
  store i16 %i.es, ptr %i.et, align 1
  %i.eu = load i8, ptr %i.cw, align 1
  %.not351.i = icmp eq i8 %i.eu, 0
  %.0315.i = select i1 %.not351.i, i32 18442, i32 16394 ; 3 uses
  %i.ev = and i8 %i.cx, 15                        ; 2 uses
  %i.ew = zext nneg i8 %i.ev to i64               ; 3 uses
  %.not.i411.peel.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i411.peel.i, label %find_next_bit.exit413.thread.i, label %find_next_bit.exit413.peel.i

find_next_bit.exit413.peel.i:                     ; preds = %_ieee80211_hw_check.exit.i44
  %i.ex = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 16) %i.ew) #20, !srcloc !171 ; 2 uses
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = icmp slt i32 %i.ey, 4
  br i1 %i.ez, label %bb.y, label %find_next_bit.exit413.thread.i

bb.y:                                             ; preds = %find_next_bit.exit413.peel.i
  %i.fa = or disjoint i32 %.0315.i, -1610612736
  store i32 %i.fa, ptr %i.er, align 1
  %i.fb = getelementptr i8, ptr %i.ep, i64 8      ; 2 uses
  %i.fc = shl i64 %i.ex, 32
  %sext.peel.i = add i64 %i.fc, 4294967296
  %i.fd = ashr exact i64 %sext.peel.i, 32         ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 3
  br i1 %i.fe, label %find_next_bit.exit413.thread.i, label %.peel.next.i, !prof !172

.peel.next.i:                                     ; preds = %bb.y, %bb.z
  %i.ff = phi i64 [ %i.fn, %bb.z ], [ %i.fd, %bb.y ]
  %.0314463.i = phi ptr [ %i.fl, %bb.z ], [ %i.fb, %bb.y ] ; 4 uses
  %i.fg = shl nsw i64 -1, %i.ff
  %i.fh = and i64 %i.fg, %i.ew                    ; 2 uses
  %.not.i411.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i411.i, label %find_next_bit.exit413.thread.i, label %find_next_bit.exit413.i

find_next_bit.exit413.i:                          ; preds = %.peel.next.i
  %i.fi = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 16) %i.fh) #20, !srcloc !171 ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = icmp slt i32 %i.fj, 4
  br i1 %i.fk, label %bb.z, label %find_next_bit.exit413.thread.i

bb.z:                                             ; preds = %find_next_bit.exit413.i
  store i32 -1610610656, ptr %.0314463.i, align 1
  %i.fl = getelementptr i8, ptr %.0314463.i, i64 4 ; 2 uses
  %i.fm = shl i64 %i.fi, 32
  %sext.i = add i64 %i.fm, 4294967296
  %i.fn = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, 3
  br i1 %i.fo, label %find_next_bit.exit413.thread.i, label %.peel.next.i, !prof !172, !llvm.loop !173

find_next_bit.exit413.thread.i:                   ; preds = %bb.z, %find_next_bit.exit413.i, %.peel.next.i, %bb.y, %find_next_bit.exit413.peel.i, %_ieee80211_hw_check.exit.i44
  %.1316.lcssa.i = phi i32 [ %.0315.i, %_ieee80211_hw_check.exit.i44 ], [ %.0315.i, %find_next_bit.exit413.peel.i ], [ 2080, %bb.y ], [ 2080, %.peel.next.i ], [ 2080, %find_next_bit.exit413.i ], [ 2080, %bb.z ]
  %.0314.lcssa.i = phi ptr [ %i.er, %_ieee80211_hw_check.exit.i44 ], [ %i.er, %find_next_bit.exit413.peel.i ], [ %i.fb, %bb.y ], [ %i.fl, %bb.z ], [ %.0314463.i, %find_next_bit.exit413.i ], [ %.0314463.i, %.peel.next.i ] ; 3 uses
  %.0314.lcssa468.i = ptrtoaddr ptr %.0314.lcssa.i to i64 ; 2 uses
  %i.fp = load i32, ptr %i.cy, align 8
  %i.fq = shl i32 %i.fp, 8
  %i.fr = and i32 %i.fq, 268435456
  %spec.select.i46 = or disjoint i32 %i.fr, %.1316.lcssa.i
  store i32 %spec.select.i46, ptr %.0314.lcssa.i, align 1
  %i.fs = getelementptr i8, ptr %i.ep, i64 8      ; 2 uses
  %i.ft = getelementptr i8, ptr %.0314.lcssa.i, i64 4
  %i.fu = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = getelementptr i8, ptr %i.fs, i64 %i.fw  ; 3 uses
  %.val437.i = load i32, ptr %i.cy, align 8
  %i.fy = and i32 %.val437.i, 196608
  %.not450.i = icmp eq i32 %i.fy, 0
  br i1 %.not450.i, label %_ieee80211_hw_check.exit440.i, label %.preheader461.i

.preheader461.i:                                  ; preds = %find_next_bit.exit413.thread.i
  %i.fz = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.ga = sub i64 %i.fu, %i.fz
  %i.gb = and i64 %i.ga, 7
  %.not353464.i = icmp eq i64 %i.gb, 0
  br i1 %.not353464.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader461.i
  %i.gc = add i64 %i.fz, 3
  %i.gd = sub i64 %i.gc, %.0314.lcssa468.i
  %i.ge = and i64 %i.gd, 7                        ; 2 uses
  %i.gf = add nuw nsw i64 %i.ge, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.fx, i8 0, i64 %i.gf, i1 false)
  %reass.sub = sub i64 %.0314.lcssa468.i, %i.fz
  %i.gg = getelementptr i8, ptr %i.ep, i64 %reass.sub
  %i.gh = getelementptr i8, ptr %i.gg, i64 5
  %scevgep.i = getelementptr i8, ptr %i.gh, i64 %i.ge
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.preheader461.i
  %.0.lcssa.i = phi ptr [ %i.fx, %.preheader461.i ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.gi = tail call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %0, ptr noundef %i.cv, i32 noundef %.0332.i, i32 noundef 0) #19
  store i64 %i.gi, ptr %.0.lcssa.i, align 1
  %i.gj = load i32, ptr %i.er, align 1
  %i.gk = or i32 %i.gj, 1
  store i32 %i.gk, ptr %i.er, align 1
  %i.gl = getelementptr i8, ptr %.0.lcssa.i, i64 8
  br label %_ieee80211_hw_check.exit440.i

_ieee80211_hw_check.exit440.i:                    ; preds = %find_next_bit.exit413.thread.i, %._crit_edge.i
  %.1.i47 = phi ptr [ %i.gl, %._crit_edge.i ], [ %i.fx, %find_next_bit.exit413.thread.i ] ; 11 uses
  %i.gm = load volatile i64, ptr %i.p, align 8
  %i.gn = and i64 %i.gm, 2
  %.not451.i = icmp eq i64 %i.gn, 0
  br i1 %.not451.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ieee80211_hw_check.exit440.i
  %i.go = load i8, ptr %.1.i47, align 1
  %i.gp = or i8 %i.go, 16
  store i8 %i.gp, ptr %.1.i47, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ieee80211_hw_check.exit440.i
  %i.gq = load i32, ptr %i.cy, align 8
  %i.gr = and i32 %i.gq, 96
  %.not354.i = icmp eq i32 %i.gr, 0
  br i1 %.not354.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = load i8, ptr %.1.i47, align 1
  %i.gt = or i8 %i.gs, 64
  store i8 %i.gt, ptr %.1.i47, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gu = getelementptr i8, ptr %.035, i64 70     ; 13 uses
  %i.gv = load i8, ptr %i.gu, align 2
  %i.gw = and i8 %i.gv, 1
  %.not355.i = icmp eq i8 %i.gw, 0
  br i1 %.not355.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gx = load i8, ptr %.1.i47, align 1
  %i.gy = or i8 %i.gx, 2
  store i8 %i.gy, ptr %.1.i47, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gz = getelementptr i8, ptr %.1.i47, i64 1
  %.not356.i = icmp eq ptr %2, null               ; 2 uses
  br i1 %.not356.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = getelementptr i8, ptr %.035, i64 71     ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = and i8 %i.hb, 7
  %.not357.i = icmp eq i8 %i.hc, 0
  br i1 %.not357.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hd = load i32, ptr %i.er, align 1
  %i.he = or i32 %i.hd, 4
  store i32 %i.he, ptr %i.er, align 1
  %i.hf = load i8, ptr %i.ha, align 1
  %i.hg = lshr i8 %i.hf, 3
  %i.hh = and i8 %i.hg, 15                        ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.hh, 1
  %switch.selectcmp405.i = icmp eq i8 %i.hh, 2
  %i.hi = getelementptr i8, ptr %2, i64 4
  %i.hj = load i16, ptr %i.hi, align 4
  %i.hk = zext i16 %i.hj to i32
  %i.hl = select i1 %switch.selectcmp.i, i32 20, i32 5
  %i.hm = select i1 %switch.selectcmp405.i, i32 10, i32 %i.hl ; 2 uses
  %i.hn = add nsw i32 %i.hk, -1
  %i.ho = add nsw i32 %i.hn, %i.hm
  %i.hp = udiv i32 %i.ho, %i.hm
  %i.hq = trunc i32 %i.hp to i8
end_hunk_0
