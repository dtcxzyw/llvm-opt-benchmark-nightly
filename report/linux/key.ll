Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/key?download=true
inline.NumInlined: 127
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ieee80211_key_replace:bb.a
  %i.bm = tail call i32 @___ratelimit(ptr noundef @ieee80211_pairwise_rekey._rs, ptr noundef @__func__.ieee80211_pairwise_rekey) #9
  %.not23.i = icmp eq i32 %i.bm, 0
  br i1 %.not23.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr i8, ptr %i.aa, i64 2784
  %i.bo = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %i.bn) #12 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = getelementptr i8, ptr %4, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void @ieee80211_flush_queues(ptr noundef %i.y, ptr noundef %i.bq, i1 noundef zeroext false) #9
  br label %ieee80211_pairwise_rekey.exit.thread

ieee80211_pairwise_rekey.exit:                    ; preds = %.loopexit.loopexit.i, %_ieee80211_hw_check.exit.i, %bb.o, %.critedge220
  br i1 %.not205, label %ieee80211_pairwise_rekey.exit.thread, label %ieee80211_pairwise_rekey.exit.ieee80211_pairwise_rekey.exit.thread227_crit_edge

ieee80211_pairwise_rekey.exit.ieee80211_pairwise_rekey.exit.thread227_crit_edge: ; preds = %ieee80211_pairwise_rekey.exit
  %.pre = load ptr, ptr %5, align 8
  br label %ieee80211_pairwise_rekey.exit.thread227

ieee80211_pairwise_rekey.exit.thread:             ; preds = %bb.q, %bb.s, %bb.v, %ieee80211_pairwise_rekey.exit
  %i.br = getelementptr i8, ptr %4, i64 40
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 1
  %.not212 = icmp eq i32 %i.bt, 0
  br i1 %.not212, label %.thread, label %bb.w

bb.w:                                             ; preds = %ieee80211_pairwise_rekey.exit.thread
  tail call fastcc void @ieee80211_key_disable_hw_accel(ptr noundef nonnull %4) #10, !srcloc !59
  br i1 %i.d, label %bb.af, label %.thread.thread.thread

ieee80211_pairwise_rekey.exit.thread227:          ; preds = %ieee80211_pairwise_rekey.exit.ieee80211_pairwise_rekey.exit.thread227_crit_edge, %bb.p
  %i.bu = phi ptr [ %.pre, %ieee80211_pairwise_rekey.exit.ieee80211_pairwise_rekey.exit.thread227_crit_edge ], [ %i.y, %bb.p ]
  %i.bv = getelementptr i8, ptr %i.bu, i64 1488
  %i.bw = load i8, ptr %i.bv, align 8, !range !13, !noundef !14
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.x, label %bb.af

bb.x:                                             ; preds = %ieee80211_pairwise_rekey.exit.thread227
  %i.by = icmp slt i8 %.0183.in, 0
  br i1 %i.by, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr i8, ptr %0, i64 7162
  %i.ca = load i16, ptr %i.bz, align 2            ; 2 uses
  %.not209 = icmp eq i16 %i.ca, 0
  br i1 %.not209, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = zext nneg i32 %.0183 to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = zext i16 %i.ca to i64
  %i.ce = and i64 %i.cc, %i.cd
  %.not210 = icmp eq i64 %i.ce, 0
  br i1 %.not210, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cf = getelementptr i8, ptr %5, i64 40        ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = or i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr i8, ptr %5, i64 552
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = and i16 %i.cj, 388
  %.not211 = icmp eq i16 %i.ck, 0
  br i1 %.not211, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr i8, ptr %0, i64 1768      ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  tail call void asm sideeffect "2201: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2201b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2201) #8, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 114, i32 2307, i64 16) #8, !srcloc !33
  tail call void asm sideeffect "2202: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2202b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2202) #8, !srcloc !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.co = getelementptr i8, ptr %0, i64 5072
  %i.cp = load i32, ptr %i.co, align 8
  %.not.i.i = icmp eq i32 %i.cp, 3
  br i1 %.not.i.i, label %bb.ae, label %decrease_tailroom_need_count.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @__rcu_read_lock() #9
  %i.cq = getelementptr i8, ptr %0, i64 2504      ; 3 uses
  %i.cr = load volatile ptr, ptr %i.cq, align 8   ; 2 uses
  %.not1314.i.i = icmp eq ptr %i.cr, %i.cq
  br i1 %.not1314.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.i.i
  %.pn15.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.cr, %bb.ae ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.pn15.i.i, i64 -736 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add i32 %i.ct, -1
  store i32 %i.cu, ptr %i.cs, align 8
  %i.cv = load volatile ptr, ptr %.pn15.i.i, align 8 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.cv, %i.cq
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ae
  tail call void @__rcu_read_unlock() #9
  br label %decrease_tailroom_need_count.exit

decrease_tailroom_need_count.exit:                ; preds = %bb.ad, %._crit_edge.i.i
  %i.cw = load i32, ptr %i.cl, align 8
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cl, align 8
  br label %.thread

bb.af:                                            ; preds = %ieee80211_pairwise_rekey.exit.thread227, %bb.w
  %i.cy = tail call fastcc i32 @ieee80211_key_enable_hw_accel(ptr noundef %5) #10 ; 2 uses
  %.not213 = icmp eq i32 %i.cy, 0
  br i1 %.not213, label %.thread, label %bb.bh

.thread:                                          ; preds = %bb.z, %decrease_tailroom_need_count.exit, %bb.aa, %ieee80211_pairwise_rekey.exit.thread, %bb.af
  br i1 %i.d, label %bb.ag, label %.thread.thread

bb.ag:                                            ; preds = %.thread
  %i.cz = getelementptr i8, ptr %5, i64 24        ; 3 uses
  %i.da = getelementptr i8, ptr %0, i64 1752
  %i.db = getelementptr i8, ptr %0, i64 1760      ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8
  %i.dd = getelementptr i8, ptr %5, i64 32
  store ptr %i.dc, ptr %i.dd, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !60
  store volatile ptr %i.cz, ptr %i.dc, align 8
  store ptr %i.cz, ptr %i.db, align 8
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.ag, %.thread
  br i1 %i.a, label %bb.ah, label %bb.an

.thread.thread.thread:                            ; preds = %bb.w
  br i1 %i.a, label %.thread273, label %.thread272

bb.ah:                                            ; preds = %.thread.thread
  br i1 %3, label %bb.ai, label %bb.al

.thread273:                                       ; preds = %.thread.thread.thread
  br i1 %3, label %.thread230.thread, label %bb.al

.thread230.thread:                                ; preds = %.thread273
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !61
  %i.de = getelementptr i8, ptr %2, i64 88
  %i.df = sext i8 %.0184.in to i64
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %i.df
  store volatile ptr %5, ptr %i.dg, align 8
  br label %bb.bg

bb.ai:                                            ; preds = %bb.ah
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !61
  %i.dh = getelementptr i8, ptr %2, i64 88
  %i.di = sext i8 %.0184.in to i64
  %i.dj = getelementptr [8 x i8], ptr %i.dh, i64 %i.di
  store volatile ptr %5, ptr %i.dj, align 8
  br i1 %i.d, label %bb.aj, label %.thread230

bb.aj:                                            ; preds = %bb.ai
  %i.dk = getelementptr i8, ptr %5, i64 552
  %i.dl = load i16, ptr %i.dk, align 8
  %i.dm = and i16 %i.dl, 512
  %.not214 = icmp eq i16 %i.dm, 0
  br i1 %.not214, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @_ieee80211_set_tx_key(ptr noundef nonnull %5, i1 noundef zeroext true) #10
  br label %bb.am

bb.al:                                            ; preds = %.thread273, %bb.ah
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !62
  %i.dn = getelementptr i8, ptr %.0182, i64 40
  %i.do = sext i8 %.0184.in to i64
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %i.do
  store volatile ptr %5, ptr %i.dp, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al
  %.not252 = xor i1 %i.d, true
  %or.cond11 = or i1 %.not205, %.not252
  br i1 %or.cond11, label %.thread230, label %.thread247

.thread247:                                       ; preds = %bb.am
  tail call void @ieee80211_check_fast_rx(ptr noundef nonnull %2) #9
  br label %bb.bh

bb.an:                                            ; preds = %.thread.thread
  br i1 %.not205, label %.thread272, label %.thread244

.thread272:                                       ; preds = %.thread.thread.thread, %bb.an
  %i.dq = getelementptr i8, ptr %0, i64 2168
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = icmp eq ptr %4, %i.dr                   ; 3 uses
  %i.dt = getelementptr i8, ptr %.1, i64 80       ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = icmp eq ptr %4, %i.du                   ; 3 uses
  %i.dw = getelementptr i8, ptr %.1, i64 88       ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = icmp eq ptr %4, %i.dx                   ; 3 uses
  %i.dz = getelementptr i8, ptr %.1, i64 96       ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = icmp eq ptr %4, %i.ea                   ; 2 uses
  %.not = xor i1 %i.ds, true
  %or.cond13 = or i1 %i.d, %.not
  br i1 %or.cond13, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread272
  tail call fastcc void @__ieee80211_set_default_key(ptr noundef %.1, i32 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false) #10, !srcloc !63
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread272
  %.not14 = xor i1 %i.dv, true
  %or.cond16 = or i1 %i.d, %.not14
  br i1 %or.cond16, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  store volatile ptr null, ptr %i.dt, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.not17 = xor i1 %i.dy, true
  %or.cond19 = or i1 %i.d, %.not17
  br i1 %or.cond19, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !23
  store volatile ptr null, ptr %i.dw, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not20 = xor i1 %i.eb, true
  %or.cond22 = or i1 %i.d, %.not20
  br i1 %or.cond22, label %.thread244, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !24
  store volatile ptr null, ptr %i.dz, align 8
  br label %.thread244

.thread244:                                       ; preds = %bb.an, %bb.au, %bb.at
  %i.ec = phi i1 [ %i.dy, %bb.at ], [ %i.dy, %bb.au ], [ false, %bb.an ]
  %i.ed = phi i1 [ %i.ds, %bb.at ], [ %i.ds, %bb.au ], [ false, %bb.an ]
  %i.ee = phi i1 [ %i.dv, %bb.at ], [ %i.dv, %bb.au ], [ false, %bb.an ]
  %i.ef = phi i1 [ %i.eb, %bb.at ], [ true, %bb.au ], [ false, %bb.an ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8
  %i.eg = sext i8 %.0184.in to i64
  %i.eh = getelementptr i8, ptr %.1, i64 16
  %i.ei = getelementptr i8, ptr %0, i64 2136
  %.sink275 = select i1 %or.cond, ptr %i.ei, ptr %i.eh
  %i.ej = getelementptr [8 x i8], ptr %.sink275, i64 %i.eg
  store volatile ptr %5, ptr %i.ej, align 8
  %or.cond26 = and i1 %i.d, %i.ed
  br i1 %or.cond26, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread244
  %i.ek = getelementptr i8, ptr %5, i64 551
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = sext i8 %i.el to i32
  tail call fastcc void @__ieee80211_set_default_key(ptr noundef %.1, i32 noundef %i.em, i1 noundef zeroext true, i1 noundef zeroext false) #10, !srcloc !64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread244
  %or.cond28 = and i1 %i.d, %i.ee
  br i1 %or.cond28, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.en = getelementptr i8, ptr %5, i64 551
  %i.eo = load i8, ptr %i.en, align 1             ; 2 uses
  %or.cond.i = icmp ult i8 %i.eo, 4
  br i1 %or.cond.i, label %bb.ay, label %__ieee80211_set_default_key.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ep = zext nneg i8 %i.eo to i64               ; 2 uses
  %i.eq = load ptr, ptr %.1, align 8
  %i.er = getelementptr i8, ptr %i.eq, i64 2136
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %i.ep
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not.i222 = icmp eq ptr %i.et, null
  br i1 %.not.i222, label %bb.az, label %__ieee80211_set_default_key.exit

bb.az:                                            ; preds = %bb.ay
  %i.eu = getelementptr i8, ptr %.1, i64 16
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %i.ep
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %__ieee80211_set_default_key.exit

__ieee80211_set_default_key.exit:                 ; preds = %bb.ax, %bb.ay, %bb.az
  %.0.i = phi ptr [ %i.et, %bb.ay ], [ %i.ew, %bb.az ], [ null, %bb.ax ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !22
  %i.ex = getelementptr i8, ptr %.1, i64 80
  store volatile ptr %.0.i, ptr %i.ex, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %__ieee80211_set_default_key.exit, %bb.aw
  %or.cond30 = and i1 %i.d, %i.ec
  br i1 %or.cond30, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ey = getelementptr i8, ptr %5, i64 551
  %i.ez = load i8, ptr %i.ey, align 1             ; 2 uses
  %i.fa = and i8 %i.ez, -2
  %or.cond.i223 = icmp eq i8 %i.fa, 4
  br i1 %or.cond.i223, label %bb.bc, label %__ieee80211_set_default_mgmt_key.exit

bb.bc:                                            ; preds = %bb.bb
  %i.fb = zext nneg i8 %i.ez to i64
  %i.fc = getelementptr i8, ptr %.1, i64 16
  %i.fd = getelementptr [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load ptr, ptr %i.fd, align 8
  br label %__ieee80211_set_default_mgmt_key.exit

__ieee80211_set_default_mgmt_key.exit:            ; preds = %bb.bb, %bb.bc
  %.0.i224 = phi ptr [ %i.fe, %bb.bc ], [ null, %bb.bb ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !23
  %i.ff = getelementptr i8, ptr %.1, i64 88
  store volatile ptr %.0.i224, ptr %i.ff, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %__ieee80211_set_default_mgmt_key.exit, %bb.ba
  %or.cond32 = and i1 %i.d, %i.ef
  br i1 %or.cond32, label %bb.be, label %.thread230

bb.be:                                            ; preds = %bb.bd
  %i.fg = getelementptr i8, ptr %5, i64 551
  %i.fh = load i8, ptr %i.fg, align 1             ; 2 uses
  %i.fi = and i8 %i.fh, -2
  %or.cond.i225 = icmp eq i8 %i.fi, 6
  br i1 %or.cond.i225, label %bb.bf, label %__ieee80211_set_default_beacon_key.exit

bb.bf:                                            ; preds = %bb.be
  %i.fj = zext nneg i8 %i.fh to i64
  %i.fk = getelementptr i8, ptr %.1, i64 16
  %i.fl = getelementptr [8 x i8], ptr %i.fk, i64 %i.fj
  %i.fm = load ptr, ptr %i.fl, align 8
  br label %__ieee80211_set_default_beacon_key.exit

__ieee80211_set_default_beacon_key.exit:          ; preds = %bb.be, %bb.bf
  %.0.i226 = phi ptr [ %i.fm, %bb.bf ], [ null, %bb.be ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !24
  %i.fn = getelementptr i8, ptr %.1, i64 96
  store volatile ptr %.0.i226, ptr %i.fn, align 8
  br label %.thread230

.thread230:                                       ; preds = %bb.ai, %bb.bd, %__ieee80211_set_default_beacon_key.exit, %bb.am
  br i1 %.not205, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.thread230.thread, %.thread230
  %i.fo = getelementptr i8, ptr %4, i64 24
  %i.fp = getelementptr i8, ptr %4, i64 32        ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fr = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  store ptr %i.fq, ptr %i.fs, align 8
  store volatile ptr %i.fr, ptr %i.fq, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.fp, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.thread247, %bb.d, %bb.b, %.thread230, %bb.bg, %bb.af, %bb.j, %bb.h, %bb.f
  %.0 = phi i32 [ -22, %bb.d ], [ 0, %bb.b ], [ -67, %bb.h ], [ -22, %bb.j ], [ %i.cy, %bb.af ], [ -67, %bb.f ], [ 0, %bb.bg ], [ 0, %.thread230 ], [ 0, %.thread247 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_key_free(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %ieee80211_key_destroy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 552
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 8
  %i.h = icmp ne i16 %i.g, 0
  %i.i = tail call fastcc i32 @ieee80211_key_replace(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %i.d, i1 noundef zeroext %i.h, ptr noundef nonnull %0, ptr noundef null) #10, !srcloc !31 ; 0 uses
  br label %ieee80211_key_destroy.exit

ieee80211_key_destroy.exit:                       ; preds = %bb.c, %bb.b
  tail call void @synchronize_net() #9
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %0, i1 noundef zeroext %1) #10, !srcloc !30
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ieee80211_key_destroy.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_reenable_keys(ptr nofree noundef captures(address) initializes((1768, 1776)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1768       ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 1772
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 5072       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.b, label %.loopexit30

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 2504       ; 3 uses
  %.pn31 = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not32 = icmp eq ptr %.pn31, %i.f
  br i1 %.not32, label %.loopexit30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.pn33 = phi ptr [ %.pn, %.lr.ph ], [ %.pn31, %bb.b ] ; 3 uses
  %i.g = getelementptr i8, ptr %.pn33, i64 -736
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.pn33, i64 -732
  store i32 0, ptr %i.h, align 4
  %.pn = load ptr, ptr %.pn33, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %i.f
  br i1 %.not, label %.loopexit30, label %.lr.ph, !llvm.loop !65

.loopexit30:                                      ; preds = %.lr.ph, %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 1872
  %i.j = load volatile i64, ptr %i.i, align 8
  %.in.i = trunc i64 %i.j to i1
  br i1 %.in.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit30
  %i.k = getelementptr i8, ptr %0, i64 1752       ; 3 uses
  %.pn2634 = load ptr, ptr %i.k, align 8          ; 2 uses
  %.not2936 = icmp eq ptr %.pn2634, %i.k
  br i1 %.not2936, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 2504       ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph39, %increment_tailroom_need_count.exit
  %.pn2637 = phi ptr [ %.pn2634, %.lr.ph39 ], [ %.pn26, %increment_tailroom_need_count.exit ] ; 3 uses
  %.038 = getelementptr i8, ptr %.pn2637, i64 -24
  %i.m = getelementptr i8, ptr %.pn2637, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 2
end_hunk_0
