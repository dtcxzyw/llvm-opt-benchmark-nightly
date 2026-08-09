inline.NumInlined: 896
inline.NumDeleted: 350
begin_hunk_0_@tcp_write_xmit:bb.a
  %i.abh = and i8 %.val120, 31
  %i.abi = zext nneg i8 %i.abh to i32
  %i.abj = shl nuw i32 1, %i.abi
  %i.abk = and i32 %i.abj, 12
  %.not256 = icmp eq i32 %i.abk, 0
  br i1 %.not256, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.abl = getelementptr i8, ptr %0, i64 1456     ; 2 uses
  %i.abm = load i32, ptr %i.abl, align 16
  %i.abn = add i32 %i.abm, %.3249
  store i32 %i.abn, ptr %i.abl, align 16
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  br i1 %i.if, label %tcp_mtu_probe.exit.thread211, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.abo = tail call zeroext i1 @tcp_schedule_loss_probe(ptr noundef %0, i1 noundef zeroext false) #21 ; 0 uses
  br label %tcp_mtu_probe.exit.thread211

tcp_cwnd_validate.exit.thread:                    ; preds = %tcp_cwnd_validate.exit.tcp_cwnd_validate.exit.thread_crit_edge, %tcp_chrono_start.exit
  %i.abp = phi i32 [ %.pre, %tcp_cwnd_validate.exit.tcp_cwnd_validate.exit.thread_crit_edge ], [ %i.xd, %tcp_chrono_start.exit ]
  %.not118 = icmp eq i32 %i.abp, 0
  br i1 %.not118, label %bb.ea, label %tcp_mtu_probe.exit.thread211

bb.ea:                                            ; preds = %tcp_cwnd_validate.exit.thread
  %i.abq = getelementptr i8, ptr %0, i64 1604
  %.val126 = load i32, ptr %i.abq, align 4
  %.val127 = load i32, ptr %i.is, align 4
  %i.abr = icmp ne i32 %.val126, %.val127
  br label %tcp_mtu_probe.exit.thread211

tcp_mtu_probe.exit.thread211:                     ; preds = %bb.n, %tcp_cwnd_validate.exit.thread, %bb.ea, %bb.dy, %bb.dz, %tcp_mtu_probe.exit
  %.0 = phi i1 [ false, %tcp_mtu_probe.exit ], [ false, %bb.dy ], [ false, %bb.dz ], [ false, %tcp_cwnd_validate.exit.thread ], [ %i.abr, %bb.ea ], [ false, %bb.n ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcp_warn_once(ptr nofree noundef captures(address) %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  br i1 %1, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 1452
  %i.b = getelementptr i8, ptr %0, i64 1724
  %i.c = getelementptr i8, ptr %0, i64 1464
  %i.d = getelementptr i8, ptr %0, i64 1460
  %i.e = getelementptr i8, ptr %0, i64 1488
  %i.f = getelementptr i8, ptr %0, i64 1480
  %i.g = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.h = load volatile i8, ptr %i.g, align 2      ; 0 uses
  %i.i = getelementptr i8, ptr %0, i64 1256
  %i.j = getelementptr i8, ptr %0, i64 1492
  %i.k = getelementptr i8, ptr %0, i64 1448
  %i.l = getelementptr i8, ptr %0, i64 1208
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.9, ptr nonnull @.str.5, i32 2685, i32 2323, i64 16) #19, !srcloc !102
  %.val = load i32, ptr %i.a, align 4
  %i.n = load i32, ptr %i.b, align 4
  %i.o = load i32, ptr %i.c, align 8
  %i.p = load i32, ptr %i.d, align 4
  %i.q = load i32, ptr %i.e, align 16
  %i.r = load i32, ptr %i.f, align 8
  %i.s = load volatile i8, ptr %i.g, align 2
  %i.t = zext i8 %i.s to i32
  %i.u = load i8, ptr %i.i, align 8
  %i.v = and i8 %i.u, 31
  %i.w = zext nneg i8 %i.v to i32
  %i.x = load i16, ptr %i.j, align 4
  %i.y = zext i16 %i.x to i32
  %i.z = load i32, ptr %i.k, align 8
  %i.aa = load i32, ptr %i.l, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef %2, i32 noundef %.val, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa) #18
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__tcp_retransmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1288       ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 2147483647
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, -2147483648
  store i32 %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %1, i64 126        ; 3 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, 12
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.d, label %skb_still_in_host_queue.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 464        ; 2 uses
  %i.j = load volatile i32, ptr %i.i, align 4
  %i.k = icmp ugt i32 %i.j, 1
  br i1 %i.k, label %skb_fclone_busy.exit.i, label %skb_still_in_host_queue.exit

skb_fclone_busy.exit.i:                           ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 256        ; 2 uses
  %i.m = load volatile ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.e, label %skb_still_in_host_queue.exit, !prof !71

bb.e:                                             ; preds = %skb_fclone_busy.exit.i
  %i.o = getelementptr i8, ptr %0, i64 376        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.o, i32 1, ptr elementtype(i8) %i.o) #19, !srcloc !72
  %i.p = load i8, ptr %i.e, align 2
  %i.q = and i8 %i.p, 12
  %i.r = icmp eq i8 %i.q, 4
  br i1 %i.r, label %bb.f, label %skb_still_in_host_queue.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load volatile i32, ptr %i.i, align 8
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %skb_fclone_busy.exit7.i, label %skb_still_in_host_queue.exit

skb_fclone_busy.exit7.i:                          ; preds = %bb.f
  %i.u = load volatile ptr, ptr %i.l, align 8
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %skb_still_in_host_queue.exit.thread, label %skb_still_in_host_queue.exit

skb_still_in_host_queue.exit.thread:              ; preds = %skb_fclone_busy.exit7.i
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val.i, i64 744
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 760      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, ptr elementtype(i64) %i.z) #19, !srcloc !73
  br label %bb.aj

skb_still_in_host_queue.exit:                     ; preds = %bb.c, %bb.d, %skb_fclone_busy.exit.i, %bb.e, %bb.f, %skb_fclone_busy.exit7.i
  %i.aa = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 1712      ; 3 uses
  %i.ac = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ad = load i32, ptr %i.ab, align 16           ; 2 uses
  %i.ae = sub i32 %i.ac, %i.ad
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %skb_still_in_host_queue.exit
  %i.ag = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %.pre = load i16, ptr %i.ag, align 4            ; 2 uses
  %i.ah = and i16 %.pre, 2
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %._crit_edge, label %.lr.ph222, !prof !104

.lr.ph222:                                        ; preds = %.lr.ph
  %i.aj = and i16 %.pre, -3
  store i16 %i.aj, ptr %i.ag, align 4
  %i.ak = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.ak, ptr %i.aa, align 8
  %i.al = load i32, ptr %i.ab, align 16           ; 2 uses
  %i.am = sub i32 %i.ak, %i.al
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph222, %.lr.ph
  %.lcssa220 = phi i32 [ %i.ad, %.lr.ph ], [ %i.al, %.lr.ph222 ] ; 2 uses
  %.lcssa = phi i32 [ %i.ac, %.lr.ph ], [ %i.ak, %.lr.ph222 ]
  %i.ao = getelementptr i8, ptr %1, i64 44
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub i32 %i.ap, %.lcssa220
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "1493: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1493b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1493) #19, !srcloc !105
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3575, i32 2307, i64 16) #19, !srcloc !106
  tail call void asm sideeffect "1494: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1494b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1494) #19, !srcloc !107
  br label %bb.aj

bb.h:                                             ; preds = %._crit_edge
  %i.as = sub i32 %.lcssa220, %.lcssa
  %i.at = tail call i32 @tcp_trim_head(ptr noundef %0, ptr noundef %1, i32 noundef %i.as) #21
  %.not154 = icmp eq i32 %i.at, 0
  br i1 %.not154, label %.loopexit, label %bb.aj

.loopexit:                                        ; preds = %.lr.ph222, %skb_still_in_host_queue.exit, %bb.h
  %i.au = getelementptr i8, ptr %0, i64 1224
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 %i.ax(ptr noundef %0) #18
  %.not155 = icmp eq i32 %i.ay, 0
  br i1 %.not155, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %.loopexit
  %i.az = tail call i32 @tcp_current_mss(ptr noundef %0) #21 ; 10 uses
  %i.ba = getelementptr i8, ptr %0, i64 1444
  %.val178 = load i32, ptr %i.ba, align 4
  %.val179 = load i32, ptr %i.ab, align 16        ; 2 uses
  %i.bb = add i32 %.val179, %.val178
  %i.bc = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.bd = sub i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not156 = icmp eq i32 %i.bc, %.val179
  br i1 %.not156, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0144 = phi i32 [ %i.bd, %bb.i ], [ %i.az, %bb.j ] ; 5 uses
  %i.bf = mul i32 %i.az, %2                       ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %.0144
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = urem i32 %.0144, %i.az
  %.not157 = icmp ult i32 %.0144, %i.az
  %i.bi = select i1 %.not157, i32 0, i32 %i.bh
  %spec.select = sub i32 %.0144, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %spec.select, %bb.l ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 112       ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp ugt i32 %i.bk, %.0
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call i32 @tcp_fragment(ptr noundef %0, i32 noundef 1, ptr noundef %1, i32 noundef %.0, i32 noundef %i.az, i32 noundef 2080) #21
  %.not160 = icmp eq i32 %i.bm, 0
  br i1 %.not160, label %bb.t, label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.bn = load i8, ptr %i.e, align 2
  %i.bo = and i8 %i.bn, 1
  %.not.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i, label %skb_unclone_keeptruesize.exit.thread, label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %1, i64 192
  %.val.i.i = load i32, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %1, i64 200
  %.val2.i.i = load ptr, ptr %i.bq, align 8
  %i.br = zext i32 %.val.i.i to i64
  %i.bs = getelementptr i8, ptr %.val2.i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = load volatile i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 65535
  %.not6.i = icmp eq i32 %i.bv, 1
  br i1 %.not6.i, label %skb_unclone_keeptruesize.exit.thread, label %skb_unclone_keeptruesize.exit

skb_unclone_keeptruesize.exit:                    ; preds = %skb_cloned.exit.i
  %i.bw = tail call i32 @__skb_unclone_keeptruesize(ptr noundef %1, i32 noundef 2080) #18
  %.not158 = icmp eq i32 %i.bw, 0
  br i1 %.not158, label %skb_unclone_keeptruesize.exit.skb_unclone_keeptruesize.exit.thread_crit_edge, label %bb.aj

skb_unclone_keeptruesize.exit.skb_unclone_keeptruesize.exit.thread_crit_edge: ; preds = %skb_unclone_keeptruesize.exit
  %.pre204 = load i32, ptr %i.bj, align 8
  br label %skb_unclone_keeptruesize.exit.thread

skb_unclone_keeptruesize.exit.thread:             ; preds = %skb_unclone_keeptruesize.exit.skb_unclone_keeptruesize.exit.thread_crit_edge, %bb.o, %skb_cloned.exit.i
  %i.bx = phi i32 [ %.pre204, %skb_unclone_keeptruesize.exit.skb_unclone_keeptruesize.exit.thread_crit_edge ], [ %i.bk, %bb.o ], [ %i.bk, %skb_cloned.exit.i ] ; 3 uses
  %i.by = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %.val177 = load i16, ptr %i.by, align 8         ; 2 uses
  %i.bz = zext i16 %.val177 to i32
  %.not.i = icmp ugt i32 %i.bx, %i.az
  br i1 %.not.i, label %bb.p, label %tcp_set_skb_tso_segs.exit

bb.p:                                             ; preds = %skb_unclone_keeptruesize.exit.thread
  %i.ca = trunc i32 %i.az to i16
  %i.cb = add i32 %i.az, -1
  %i.cc = add i32 %i.cb, %i.bx
  %i.cd = udiv i32 %i.cc, %i.az
  %i.ce = trunc i32 %i.cd to i16
  br label %tcp_set_skb_tso_segs.exit

tcp_set_skb_tso_segs.exit:                        ; preds = %skb_unclone_keeptruesize.exit.thread, %bb.p
  %.sink13.i = phi i16 [ %i.ca, %bb.p ], [ 0, %skb_unclone_keeptruesize.exit.thread ]
  %.sink.i = phi i16 [ %i.ce, %bb.p ], [ 1, %skb_unclone_keeptruesize.exit.thread ] ; 3 uses
  %i.cf = getelementptr i8, ptr %1, i64 50
  store i16 %.sink13.i, ptr %i.cf, align 2
  store i16 %.sink.i, ptr %i.by, align 8
  %.not159 = icmp eq i16 %.val177, %.sink.i
  br i1 %.not159, label %bb.r, label %bb.q

bb.q:                                             ; preds = %tcp_set_skb_tso_segs.exit
  %i.cg = zext i16 %.sink.i to i32
  %i.ch = sub nsw i32 %i.bz, %i.cg
  tail call fastcc void @tcp_adjust_pcount(ptr noundef %0, ptr noundef %1, i32 noundef %i.ch) #21, !srcloc !108
  %.pre205 = load i32, ptr %i.bj, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %tcp_set_skb_tso_segs.exit
  %i.ci = phi i32 [ %.pre205, %bb.q ], [ %i.bx, %tcp_set_skb_tso_segs.exit ]
  %i.cj = tail call i32 @llvm.smin.i32(i32 %.0144, i32 %i.az) ; 2 uses
  %i.ck = icmp ult i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @tcp_retrans_try_collapse(ptr noundef %0, ptr noundef %1, i32 noundef %i.cj) #21, !srcloc !109
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.n
  %i.cl = getelementptr i8, ptr %0, i64 1680
  %.val180 = load i8, ptr %i.cl, align 16
  %i.cm = and i8 %.val180, 17
  %i.cn = icmp eq i8 %i.cm, 17
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr i8, ptr %0, i64 1257
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = icmp ugt i8 %i.cp, 1
  br i1 %i.cq, label %bb.v, label %tcp_ecn_clear_syn.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cr = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 4            ; 2 uses
  %i.ct = and i16 %i.cs, 194
  %i.cu = icmp eq i16 %i.ct, 194
  br i1 %i.cu, label %bb.w, label %tcp_ecn_clear_syn.exit

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr i8, ptr %0, i64 48
  %.val.i185 = load ptr, ptr %i.cv, align 16
  %i.cw = getelementptr i8, ptr %.val.i185, i64 1447
  %i.cx = load volatile i8, ptr %i.cw, align 1
  %.not.i186 = icmp eq i8 %i.cx, 0
  br i1 %.not.i186, label %tcp_ecn_clear_syn.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = and i16 %i.cs, -449
  store i16 %i.cy, ptr %i.cr, align 4
  br label %tcp_ecn_clear_syn.exit

tcp_ecn_clear_syn.exit:                           ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.cz = getelementptr i8, ptr %1, i64 48
  %.val175 = load i16, ptr %i.cz, align 8         ; 3 uses
  %i.da = zext i16 %.val175 to i32
  %i.db = zext i16 %.val175 to i64
  %i.dc = getelementptr i8, ptr %0, i64 48
  %.val173 = load ptr, ptr %i.dc, align 16
  %i.dd = getelementptr i8, ptr %.val173, i64 736
  %i.de = load ptr, ptr %i.dd, align 16
  %i.df = getelementptr i8, ptr %i.de, i64 96     ; 2 uses
  tail call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.df, i64 %i.db, ptr elementtype(i64) %i.df) #19, !srcloc !110
  %i.dg = getelementptr i8, ptr %1, i64 52
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = and i16 %i.dh, 2
  %.not162 = icmp eq i16 %i.di, 0
  br i1 %.not162, label %bb.z, label %bb.y

bb.y:                                             ; preds = %tcp_ecn_clear_syn.exit
  %i.dj = getelementptr i8, ptr %0, i64 48
  %.val172 = load ptr, ptr %i.dj, align 16
  %i.dk = getelementptr i8, ptr %.val172, i64 744
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 808    ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dm, ptr elementtype(i64) %i.dm) #19, !srcloc !111
  br label %bb.z

bb.z:                                             ; preds = %tcp_ecn_clear_syn.exit, %bb.y
  %i.dn = getelementptr i8, ptr %0, i64 2240      ; 2 uses
  %i.do = load i32, ptr %i.dn, align 64
  %i.dp = add i32 %i.do, %i.da
  store volatile i32 %i.dp, ptr %i.dn, align 64
  %i.dq = getelementptr i8, ptr %0, i64 2232      ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = load i32, ptr %i.bj, align 8
  %i.dt = zext i32 %i.ds to i64
  %i.du = add i64 %i.dr, %i.dt
  store volatile i64 %i.du, ptr %i.dq, align 8
  %i.dv = getelementptr i8, ptr %1, i64 200
  %.val181 = load ptr, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %1, i64 208
  %.val182 = load ptr, ptr %i.dw, align 8
  %i.dx = ptrtoint ptr %.val182 to i64
  %i.dy = ptrtoint ptr %.val181 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp ugt i32 %i.ea, 65534
  br i1 %i.eb, label %bb.aa, label %bb.ad, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr i8, ptr %1, i64 88        ; 4 uses
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  store i64 0, ptr %i.ec, align 8
  %i.ee = tail call ptr @__pskb_copy_fclone(ptr noundef %1, i32 noundef 320, i32 noundef 2080, i1 noundef zeroext false) #18 ; 3 uses
  %.not163 = icmp eq ptr %i.ee, null
  br i1 %.not163, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  store i64 %i.ed, ptr %i.ec, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  store ptr null, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %0, i64 1704
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %i.ee, i32 noundef 0, i32 noundef 2080, i32 noundef %i.eh) #21, !srcloc !90 ; 2 uses
  store i64 %i.ed, ptr %i.ec, align 8
  %.not164 = icmp eq i32 %i.ei, 0
  br i1 %.not164, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ej = getelementptr i8, ptr %0, i64 1640
  %i.ek = load i64, ptr %i.ej, align 8
  tail call fastcc void @tcp_update_skb_after_send(ptr noundef %0, ptr noundef %1, i64 noundef %i.ek) #21, !srcloc !112
  tail call fastcc void @tcp_rate_skb_sent(ptr noundef %0, ptr noundef %1) #21, !srcloc !113
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.el = getelementptr i8, ptr %0, i64 1704
  %i.em = load i32, ptr %i.el, align 8
  %i.en = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 2080, i32 noundef %i.em) #21, !srcloc !90
end_hunk_0
