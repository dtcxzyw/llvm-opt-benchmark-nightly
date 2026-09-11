Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/compaction?download=true
inline.NumInlined: 576
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@compact_zone:bb.a

bb.ah:                                            ; preds = %bb.af
  %i.ha = load i32, ptr %i.ar, align 8            ; 4 uses
  %i.hb = icmp ne i32 %i.ha, -1
  %i.hc = and i64 %.val49.i.i, 511
  %i.hd = icmp eq i64 %i.hc, 0
  %or.cond.i.i = and i1 %i.hd, %i.hb
  br i1 %or.cond.i.i, label %bb.ai, label %__compact_finished.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.he = load i32, ptr @defrag_mode, align 4
  %.not.i.i163 = icmp eq i32 %i.he, 0
  br i1 %.not.i.i163, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hf = load i8, ptr %i.fh, align 1, !range !29, !noundef !30
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  %.val51.i.i = load i64, ptr %i.hi, align 8
  %i.hj = getelementptr i8, ptr %i.hh, i64 32
  %.val52.i.i = load i64, ptr %i.hj, align 32
  %i.hk = add i64 %.val52.i.i, %.val51.i.i
  %i.hl = load i32, ptr %i.fj, align 4
  %i.hm = load i32, ptr %i.fk, align 8
  %i.hn = getelementptr i8, ptr %i.hh, i64 1096
  %i.ho = load volatile i64, ptr %i.hn, align 8
  %spec.store.select.i.i.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ho, i64 0)
  %i.hp = call zeroext i1 @__zone_watermark_ok(ptr noundef %i.hh, i32 noundef %i.ha, i64 noundef %i.hk, i32 noundef %i.hl, i32 noundef %i.hm, i64 noundef %spec.store.select.i.i.i) #12
  %.45.i.i = select i1 %i.hp, i32 8, i32 4
  br label %__compact_finished.exit.i

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.hq = icmp ult i32 %i.ha, 11
  br i1 %i.hq, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.al
  %i.hr = sext i32 %i.fu to i64
  %i.hs = zext nneg i32 %i.ha to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.ao
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 11
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.an, !llvm.loop !116

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.hs, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.am ] ; 3 uses
  %i.ht = load ptr, ptr %i.b, align 8
  %i.hu = getelementptr i8, ptr %i.ht, i64 192
  %i.hv = getelementptr [72 x i8], ptr %i.hu, i64 %indvars.iv.i.i ; 2 uses
  %i.hw = getelementptr [16 x i8], ptr %i.hv, i64 %i.hr ; 2 uses
  %i.hx = load volatile ptr, ptr %i.hw, align 8
  %i.hy = icmp eq ptr %i.hx, %i.hw
  br i1 %i.hy, label %bb.ao, label %__compact_finished.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.hz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ia = call i32 @find_suitable_fallback(ptr noundef %i.hv, i32 noundef %i.hz, i32 noundef %i.fu, i1 noundef zeroext true, ptr noundef null) #12
  %.not57.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not57.i.i, label %__compact_finished.exit.i, label %bb.am

.loopexit.i.i:                                    ; preds = %bb.am, %bb.al, %kswapd_is_running.exit.thread.i.i
  %.2.i.i = phi i32 [ %.44.i.i, %kswapd_is_running.exit.thread.i.i ], [ 3, %bb.al ], [ 3, %bb.am ] ; 2 uses
  %i.ib = load i8, ptr %i.fl, align 2, !range !29, !noundef !30
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ap, label %task_sigpending.exit.i.i.i

task_sigpending.exit.i.i.i:                       ; preds = %.loopexit.i.i
  %i.id = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !33
  %i.ie = inttoptr i64 %i.id to ptr               ; 2 uses
  %i.if = load volatile i64, ptr %i.ie, align 8
  %i.ig = and i64 %i.if, 2
  %.not.i53.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i53.i.i, label %__compact_finished.exit.i, label %fatal_signal_pending.exit.i.i

fatal_signal_pending.exit.i.i:                    ; preds = %task_sigpending.exit.i.i.i
  %i.ih = getelementptr i8, ptr %i.ie, i64 2152
  %.val.i.i.i = load i64, ptr %i.ih, align 8
  %i.ii = and i64 %.val.i.i.i, 256
  %.not43.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not43.i.i, label %__compact_finished.exit.i, label %bb.ap

bb.ap:                                            ; preds = %fatal_signal_pending.exit.i.i, %.loopexit.i.i
  br label %__compact_finished.exit.i

__compact_finished.exit.i:                        ; preds = %bb.ao, %bb.an, %bb.ap, %fatal_signal_pending.exit.i.i, %task_sigpending.exit.i.i.i, %bb.ak, %bb.ah, %kswapd_is_running.exit.i.i, %bb.ae
  %.342.i.i = phi i32 [ %..i.i, %bb.ae ], [ 4, %bb.ah ], [ 6, %kswapd_is_running.exit.i.i ], [ %.2.i.i, %task_sigpending.exit.i.i.i ], [ %.2.i.i, %fatal_signal_pending.exit.i.i ], [ 7, %bb.ap ], [ %.45.i.i, %bb.ak ], [ 8, %bb.an ], [ 8, %bb.ao ] ; 3 uses
  %i.ij = load ptr, ptr %i.b, align 8
  %i.ik = load i32, ptr %i.ar, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_finished, i64 8), i1 false) #13
          to label %compact_finished.exit [label %arch_test_bit.exit.i.i.i], !srcloc !22

arch_test_bit.exit.i.i.i:                         ; preds = %__compact_finished.exit.i
  %i.il = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !123
  %i.im = zext i32 %i.il to i64
  %i.in = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.im) #13, !srcloc !24 ; 2 uses
  %i.io = icmp ult i8 %i.in, 2
  call void @llvm.assume(i1 %i.io)
  %i.ip = trunc nuw i8 %i.in to i1
  br i1 %i.ip, label %bb.aq, label %compact_finished.exit

bb.aq:                                            ; preds = %arch_test_bit.exit.i.i.i
  %i.iq = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iq, ptr elementtype(i64) %i.iq) #13, !srcloc !25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.ir = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_finished, i64 56), align 8 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i5.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = call i32 @__SCT__tp_func_mm_compaction_finished(ptr noundef %i.it, ptr noundef %i.ij, i32 noundef %i.ik, i32 noundef %.342.i.i) #12 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !27
  %i.iv = getelementptr i8, ptr %i.iq, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iv, ptr elementtype(i64) %i.iv) #13, !srcloc !28
  br label %compact_finished.exit

compact_finished.exit:                            ; preds = %__compact_finished.exit.i, %arch_test_bit.exit.i.i.i, %bb.as
  %i.iw = icmp eq i32 %.342.i.i, 3
  %spec.store.select.i = select i1 %i.iw, i32 4, i32 %.342.i.i ; 2 uses
  %i.ix = icmp eq i32 %spec.store.select.i, 4
  br i1 %i.ix, label %bb.at, label %.thread

bb.at:                                            ; preds = %compact_finished.exit
  %i.iy = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.iz = xor i64 %i.iy, %.0132
  %i.ja = icmp ult i64 %i.iz, 512                 ; 2 uses
  %spec.select = zext i1 %i.ja to i8
  store i8 %spec.select, ptr %i.fm, align 1
  %.pre249 = load i32, ptr %i.g, align 8
  %.pre250 = load i8, ptr %i.fo, align 4, !range !29
  %i.jb = icmp eq i32 %.pre249, 2
  %i.jc = select i1 %i.jb, i32 0, i32 4
  %i.jd = trunc nuw i8 %.pre250 to i1
  %i.je = select i1 %i.jd, i1 true, i1 %i.ja
  br label %bb.au

bb.au:                                            ; preds = %bb.db, %bb.at
  %brmerge = phi i1 [ %i.je, %bb.at ], [ true, %bb.db ]
  %i.jf = phi i64 [ %i.iy, %bb.at ], [ %.pre251, %bb.db ] ; 9 uses
  %.not56.i = phi i32 [ %i.jc, %bb.at ], [ 4, %bb.db ]
  %.1133 = phi i64 [ %.0132, %bb.at ], [ %spec.select155, %bb.db ] ; 2 uses
  %.1131 = phi i1 [ %.0130, %bb.at ], [ false, %bb.db ]
  %i.jg = load i32, ptr @sysctl_compact_unevictable_allowed, align 4
  %.not.i164 = icmp eq i32 %i.jg, 0
  %i.jh = select i1 %.not.i164, i32 0, i32 8
  %i.ji = or disjoint i32 %.not56.i, %i.jh
  %.val.i.i165 = load i16, ptr %i.fn, align 8
  %i.jj = call i16 @llvm.umin.i16(i16 %.val.i.i165, i16 63)
  %i.jk = zext nneg i16 %i.jj to i64
  %i.jl = lshr i64 32, %i.jk
  %i.jm = trunc nuw nsw i64 %i.jl to i32          ; 4 uses
  br i1 %brmerge, label %fast_find_migrateblock.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jn = load ptr, ptr %i.b, align 8
  %i.jo = getelementptr i8, ptr %i.jn, i64 136
  %i.jp = load i64, ptr %i.jo, align 8
  %.not.i.i166 = icmp eq i64 %i.jf, %i.jp         ; 2 uses
  %i.jq = and i64 %i.jf, 511
  %.not88.i.i = icmp eq i64 %i.jq, 0
  %or.cond96.i.i = or i1 %.not88.i.i, %.not.i.i166
  br i1 %or.cond96.i.i, label %bb.aw, label %fast_find_migrateblock.exit.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.jr = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.js = icmp slt i32 %i.jr, 4
  br i1 %i.js, label %fast_find_migrateblock.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jt = load i8, ptr %i.fh, align 1, !range !29, !noundef !30
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ay, label %.lr.ph134.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.jv = load i32, ptr %i.aq, align 4
  %.not89.i.i = icmp eq i32 %i.jv, 1
  br i1 %.not89.i.i, label %.lr.ph134.i.i, label %fast_find_migrateblock.exit.thread.i

.lr.ph134.i.i:                                    ; preds = %bb.ay, %bb.ax
  %i.jw = load i64, ptr %i.ff, align 8
  %i.jx = sub i64 %i.jw, %i.jf
  %spec.select.v.i.i = select i1 %.not.i.i166, i64 1, i64 3
  %spec.select.i.i = lshr i64 %i.jx, %spec.select.v.i.i
  %i.jy = add i64 %spec.select.i.i, %i.jf
  %i.jz = and i64 %i.jy, -512
  %.076130.i.i = add nsw i32 %i.jr, -1
  %i.ka = add nuw nsw i32 %i.jm, 1
  %i.kb = zext nneg i32 %.076130.i.i to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bm, %.lr.ph134.i.i
  %indvars.iv.i.i170 = phi i64 [ %i.kb, %.lr.ph134.i.i ], [ %indvars.iv.next.i.i173, %bb.bm ] ; 3 uses
  %.070132.i.i = phi i32 [ 0, %.lr.ph134.i.i ], [ %.3.i.i, %bb.bm ] ; 5 uses
  %.072131.i.i = phi i64 [ %i.jf, %.lr.ph134.i.i ], [ %.5.i.i, %bb.bm ] ; 4 uses
  %i.kc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 192
  %i.ke = getelementptr [72 x i8], ptr %i.kd, i64 %indvars.iv.i.i170 ; 6 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 64
  %i.kg = load i64, ptr %i.kf, align 8
  %.not93.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not93.i.i, label %bb.bm, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kh = getelementptr i8, ptr %i.kc, i64 992
  %i.ki = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.kh) #12
  %i.kj = getelementptr i8, ptr %i.ke, i64 16     ; 19 uses
  %.pn124.i.i = load ptr, ptr %i.kj, align 8      ; 3 uses
  %.not115126.i.i = icmp eq ptr %.pn124.i.i, %i.kj
  br i1 %.not115126.i.i, label %.thread.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ba
  %umax.i.i = call i32 @llvm.umax.i32(i32 %.070132.i.i, i32 %i.ka)
  %i.kk = add nuw nsw i32 %umax.i.i, 1
  %.not95.not.i.i337 = icmp ugt i32 %.070132.i.i, %i.jm
  br i1 %.not95.not.i.i337, label %.lr.ph.i.i171._crit_edge, label %.lr.ph

.lr.ph.i.i171:                                    ; preds = %bb.bl
  %.not95.not.i.i = icmp ugt i32 %i.kv, %i.jm
  br i1 %.not95.not.i.i, label %.lr.ph.i.i171._crit_edge, label %.lr.ph, !llvm.loop !117

.lr.ph.i.i171._crit_edge:                         ; preds = %.lr.ph.i.i171, %.lr.ph.preheader.i.i
  %.pn128.i.i.lcssa = phi ptr [ %.pn124.i.i, %.lr.ph.preheader.i.i ], [ %.pn.i.i, %.lr.ph.i.i171 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %i.fq, align 8
  %.val.i.i.i175 = load ptr, ptr %.pn128.i.i.lcssa, align 8 ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %.val.i.i.i175, %i.kj
  br i1 %.not.i.i.i176, label %move_freelist_tail.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i171._crit_edge
  %i.kl = load volatile ptr, ptr %i.kj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.kl, %i.kj
  br i1 %.not.i.i.i.i, label %list_cut_position.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.km = load volatile ptr, ptr %i.kj, align 8   ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.km, %i.kj
  br i1 %.not.i.i.i.i.i, label %list_is_singular.exit.thread.i.i.i.i, label %list_is_singular.exit.i.i.i.i

list_is_singular.exit.i.i.i.i:                    ; preds = %bb.bc
  %i.kn = getelementptr i8, ptr %i.ke, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  %.not17.i.i.i.i = icmp ne ptr %i.km, %i.ko
  %.not14.i.i.i.i = icmp eq ptr %.pn128.i.i.lcssa, %i.km
  %or.cond116.i.i = or i1 %.not14.i.i.i.i, %.not17.i.i.i.i
  br i1 %or.cond116.i.i, label %list_is_singular.exit.thread.i.i.i.i, label %list_cut_position.exit.i.i.i

list_is_singular.exit.thread.i.i.i.i:             ; preds = %list_is_singular.exit.i.i.i.i, %bb.bc
  store ptr %i.km, ptr %3, align 8
  %i.kp = getelementptr i8, ptr %i.km, i64 8
  store ptr %3, ptr %i.kp, align 8
  store ptr %.pn128.i.i.lcssa, ptr %i.fq, align 8
  store ptr %3, ptr %.pn128.i.i.lcssa, align 8
  store ptr %.val.i.i.i175, ptr %i.kj, align 8
  %i.kq = getelementptr i8, ptr %.val.i.i.i175, i64 8
  store ptr %i.kj, ptr %i.kq, align 8
  br label %list_cut_position.exit.i.i.i

list_cut_position.exit.i.i.i:                     ; preds = %list_is_singular.exit.thread.i.i.i.i, %list_is_singular.exit.i.i.i.i, %bb.bb
  %i.kr = load volatile ptr, ptr %3, align 8      ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.kr, %3
  br i1 %.not.i5.i.i.i, label %move_freelist_tail.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %list_cut_position.exit.i.i.i
  %i.ks = getelementptr i8, ptr %i.ke, i64 24     ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8            ; 2 uses
  %.val4.i.i.i.i = load ptr, ptr %i.fq, align 8   ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kr, i64 8
  store ptr %i.kt, ptr %i.ku, align 8
  store ptr %i.kr, ptr %i.kt, align 8
  store ptr %i.kj, ptr %.val4.i.i.i.i, align 8
  store ptr %.val4.i.i.i.i, ptr %i.ks, align 8
  br label %move_freelist_tail.exit.i.i

move_freelist_tail.exit.i.i:                      ; preds = %bb.bd, %list_cut_position.exit.i.i.i, %.lr.ph.i.i171._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.thread.i.i

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i171
  %.in = phi i32 [ %i.kv, %.lr.ph.i.i171 ], [ %.070132.i.i, %.lr.ph.preheader.i.i ]
  %.pn128.i.i338 = phi ptr [ %.pn.i.i, %.lr.ph.i.i171 ], [ %.pn124.i.i, %.lr.ph.preheader.i.i ] ; 6 uses
  %.077129.i.i339 = getelementptr i8, ptr %.pn128.i.i338, i64 -8 ; 2 uses
  %i.kv = add i32 %.in, 1                         ; 4 uses
  %i.kw = load i64, ptr @vmemmap_base, align 8
  %i.kx = ptrtoint ptr %.077129.i.i339 to i64
  %i.ky = sub i64 %i.kx, %i.kw
  %i.kz = ashr exact i64 %i.ky, 6                 ; 5 uses
  %i.la = icmp ult i64 %i.kz, %i.jz
  br i1 %i.la, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %.lr.ph
  %i.lb = call zeroext i1 @get_pfnblock_bit(ptr noundef %.077129.i.i339, i64 noundef %i.kz, i32 noundef 3) #12
  br i1 %i.lb, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %i.fp, align 8
  %.val.i98.i.i = load ptr, ptr %.pn128.i.i338, align 8 ; 3 uses
  %.not.i99.i.i = icmp eq ptr %.val.i98.i.i, %i.kj
  br i1 %.not.i99.i.i, label %move_freelist_tail.exit111.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lc = load volatile ptr, ptr %i.kj, align 8
  %.not.i.i100.i.i = icmp eq ptr %i.lc, %i.kj
  br i1 %.not.i.i100.i.i, label %list_cut_position.exit.i106.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ld = load volatile ptr, ptr %i.kj, align 8   ; 5 uses
  %.not.i.i.i101.i.i = icmp eq ptr %i.ld, %i.kj
  br i1 %.not.i.i.i101.i.i, label %list_is_singular.exit.thread.i.i104.i.i, label %list_is_singular.exit.i.i102.i.i

list_is_singular.exit.i.i102.i.i:                 ; preds = %bb.bh
  %i.le = getelementptr i8, ptr %i.ke, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  %.not17.i.i103.i.i = icmp ne ptr %i.ld, %i.lf
  %.not14.i.i109.i.i = icmp eq ptr %.pn128.i.i338, %i.ld
  %or.cond117.i.i = or i1 %.not14.i.i109.i.i, %.not17.i.i103.i.i
  br i1 %or.cond117.i.i, label %list_is_singular.exit.thread.i.i104.i.i, label %list_cut_position.exit.i106.i.i

list_is_singular.exit.thread.i.i104.i.i:          ; preds = %list_is_singular.exit.i.i102.i.i, %bb.bh
  store ptr %i.ld, ptr %2, align 8
  %i.lg = getelementptr i8, ptr %i.ld, i64 8
  store ptr %2, ptr %i.lg, align 8
  store ptr %.pn128.i.i338, ptr %i.fp, align 8
  store ptr %2, ptr %.pn128.i.i338, align 8
  store ptr %.val.i98.i.i, ptr %i.kj, align 8
  %i.lh = getelementptr i8, ptr %.val.i98.i.i, i64 8
  store ptr %i.kj, ptr %i.lh, align 8
  br label %list_cut_position.exit.i106.i.i

list_cut_position.exit.i106.i.i:                  ; preds = %list_is_singular.exit.thread.i.i104.i.i, %list_is_singular.exit.i.i102.i.i, %bb.bg
  %i.li = load volatile ptr, ptr %2, align 8      ; 3 uses
  %.not.i5.i107.i.i = icmp eq ptr %i.li, %2
  br i1 %.not.i5.i107.i.i, label %move_freelist_tail.exit111.i.i, label %bb.bi

bb.bi:                                            ; preds = %list_cut_position.exit.i106.i.i
  %i.lj = getelementptr i8, ptr %i.ke, i64 24     ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8            ; 2 uses
  %.val4.i.i108.i.i = load ptr, ptr %i.fp, align 8 ; 2 uses
  %i.ll = getelementptr i8, ptr %i.li, i64 8
  store ptr %i.lk, ptr %i.ll, align 8
  store ptr %i.li, ptr %i.lk, align 8
  store ptr %i.kj, ptr %.val4.i.i108.i.i, align 8
  store ptr %.val4.i.i108.i.i, ptr %i.lj, align 8
  br label %move_freelist_tail.exit111.i.i

move_freelist_tail.exit111.i.i:                   ; preds = %bb.bi, %list_cut_position.exit.i106.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.lm = load i64, ptr %i.dj, align 8            ; 2 uses
  switch i64 %i.lm, label %bb.bk [
    i64 -1, label %update_fast_start_pfn.exit.i.i
    i64 0, label %bb.bj
  ]

bb.bj:                                            ; preds = %move_freelist_tail.exit111.i.i
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %move_freelist_tail.exit111.i.i
  %i.ln = phi i64 [ %i.lm, %move_freelist_tail.exit111.i.i ], [ %i.kz, %bb.bj ]
  %i.lo = call i64 @llvm.umin.i64(i64 %i.ln, i64 range(i64 -144115188075855872, 144115188075855872) %i.kz)
  store i64 %i.lo, ptr %i.dj, align 8
  br label %update_fast_start_pfn.exit.i.i

update_fast_start_pfn.exit.i.i:                   ; preds = %bb.bk, %move_freelist_tail.exit111.i.i
  %i.lp = and i64 %i.kz, -512
  %i.lq = load ptr, ptr %i.b, align 8
  %i.lr = getelementptr i8, ptr %i.lq, i64 136
  %i.ls = load i64, ptr %i.lr, align 8
  %spec.select97.i.i = call i64 @llvm.umax.i64(i64 %i.lp, i64 %i.ls)
  store i16 0, ptr %i.fn, align 8
  br label %.thread.i.i

bb.bl:                                            ; preds = %bb.be, %.lr.ph
  %.pn.i.i = load ptr, ptr %.pn128.i.i338, align 8 ; 3 uses
  %.not115.i.i = icmp eq ptr %.pn.i.i, %i.kj
  br i1 %.not115.i.i, label %.thread.i.i, label %.lr.ph.i.i171, !llvm.loop !117

.thread.i.i:                                      ; preds = %bb.bl, %update_fast_start_pfn.exit.i.i, %move_freelist_tail.exit.i.i, %bb.ba
  %.382.i.i = phi i1 [ false, %move_freelist_tail.exit.i.i ], [ true, %update_fast_start_pfn.exit.i.i ], [ false, %bb.ba ], [ false, %bb.bl ]
  %.4.i.i = phi i64 [ %.072131.i.i, %move_freelist_tail.exit.i.i ], [ %spec.select97.i.i, %update_fast_start_pfn.exit.i.i ], [ %.072131.i.i, %bb.ba ], [ %.072131.i.i, %bb.bl ]
  %.2.i.i172 = phi i32 [ %i.kk, %move_freelist_tail.exit.i.i ], [ %i.kv, %update_fast_start_pfn.exit.i.i ], [ %.070132.i.i, %bb.ba ], [ %i.kv, %bb.bl ]
  %i.lt = load ptr, ptr %i.b, align 8
  %i.lu = getelementptr i8, ptr %i.lt, i64 992
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.lu, i64 noundef %i.ki) #12
  br label %bb.bm

bb.bm:                                            ; preds = %.thread.i.i, %bb.az
  %.483.i.i = phi i1 [ %.382.i.i, %.thread.i.i ], [ false, %bb.az ] ; 2 uses
  %.5.i.i = phi i64 [ %.4.i.i, %.thread.i.i ], [ %.072131.i.i, %bb.az ] ; 5 uses
  %.3.i.i = phi i32 [ %.2.i.i172, %.thread.i.i ], [ %.070132.i.i, %bb.az ] ; 3 uses
  %indvars.iv.next.i.i173 = add nsw i64 %indvars.iv.i.i170, -1
  %i.lv = icmp slt i64 %indvars.iv.i.i170, 4
  %or.cond.i.i174 = or i1 %i.lv, %.483.i.i
  %i.lw = icmp ugt i32 %.3.i.i, %i.jm
  %.not92.i.i = select i1 %or.cond.i.i174, i1 true, i1 %i.lw
  br i1 %.not92.i.i, label %._crit_edge.i.i, label %bb.az, !llvm.loop !118

._crit_edge.i.i:                                  ; preds = %bb.bm
  %i.lx = zext i32 %.3.i.i to i64
  %i.ly = load i64, ptr %i.i, align 8
  %i.lz = add i64 %i.ly, %i.lx
  store i64 %i.lz, ptr %i.i, align 8
  br i1 %.483.i.i, label %fast_find_migrateblock.exit.i, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i
  %i.ma = load i16, ptr %i.fn, align 8
  %i.mb = add i16 %i.ma, 1
  store i16 %i.mb, ptr %i.fn, align 8
  %i.mc = load i64, ptr %i.dj, align 8            ; 3 uses
  %.off.i.i.i = add i64 %i.mc, -1
  %switch.i.i.i = icmp ult i64 %.off.i.i.i, -2
  br i1 %switch.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.md = load i64, ptr %i.fg, align 8
  br label %fast_find_migrateblock.exit.thread.i

bb.bp:                                            ; preds = %bb.bn
  store i64 %i.mc, ptr %i.fg, align 8
  store i64 -1, ptr %i.dj, align 8
  br label %fast_find_migrateblock.exit.thread.i

fast_find_migrateblock.exit.thread.i:             ; preds = %bb.au, %bb.bp, %bb.bo, %bb.ay, %bb.aw, %bb.av
  %.0.i.ph.i = phi i64 [ %i.mc, %bb.bp ], [ %i.md, %bb.bo ], [ %i.jf, %bb.aw ], [ %i.jf, %bb.av ], [ %i.jf, %bb.ay ], [ %i.jf, %bb.au ] ; 2 uses
  %i.me = and i64 %.0.i.ph.i, -512                ; 2 uses
  %i.mf = load ptr, ptr %i.b, align 8
  %i.mg = getelementptr i8, ptr %i.mf, i64 136
  %i.mh = load i64, ptr %i.mg, align 8
  %spec.select130.i = call i64 @llvm.umax.i64(i64 %i.me, i64 %i.mh)
  br label %bb.br

fast_find_migrateblock.exit.i:                    ; preds = %._crit_edge.i.i
  %.pre.i = load i64, ptr %i.fg, align 8
  %i.mi = icmp eq i64 %.5.i.i, %.pre.i
  %i.mj = and i64 %.5.i.i, -512                   ; 3 uses
  %i.mk = load ptr, ptr %i.b, align 8
  %i.ml = getelementptr i8, ptr %i.mk, i64 136
  %i.mm = load i64, ptr %i.ml, align 8
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.mj, i64 %i.mm) ; 2 uses
  br i1 %i.mi, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %fast_find_migrateblock.exit.i
  %i.mn = load i16, ptr %i.fn, align 8
  %.not58.i = icmp eq i16 %i.mn, 0
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %fast_find_migrateblock.exit.i, %fast_find_migrateblock.exit.thread.i
  %spec.select132.i = phi i64 [ %spec.select.i, %fast_find_migrateblock.exit.i ], [ %spec.select.i, %bb.bq ], [ %spec.select130.i, %fast_find_migrateblock.exit.thread.i ]
  %i.mo = phi i64 [ %i.mj, %fast_find_migrateblock.exit.i ], [ %i.mj, %bb.bq ], [ %i.me, %fast_find_migrateblock.exit.thread.i ]
  %.0.i131.i = phi i64 [ %.5.i.i, %fast_find_migrateblock.exit.i ], [ %.5.i.i, %bb.bq ], [ %.0.i.ph.i, %fast_find_migrateblock.exit.thread.i ]
  %i.mp = phi i1 [ false, %fast_find_migrateblock.exit.i ], [ %.not58.i, %bb.bq ], [ false, %fast_find_migrateblock.exit.thread.i ]
  %.04892.i = add i64 %i.mo, 512                  ; 2 uses
  %i.mq = load i64, ptr %i.ff, align 8
  %.not5993.i = icmp ugt i64 %.04892.i, %i.mq
  br i1 %.not5993.i, label %.loopexit.i, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.br, %update_cached_migrate.exit.i
  %.04897.i = phi i64 [ %.048.i, %update_cached_migrate.exit.i ], [ %.04892.i, %bb.br ] ; 12 uses
  %.196.i = phi i64 [ %.2.i, %update_cached_migrate.exit.i ], [ %spec.select132.i, %bb.br ] ; 4 uses
  %.05095.i = phi i64 [ %.2.i, %update_cached_migrate.exit.i ], [ %.0.i131.i, %bb.br ] ; 4 uses
  %.05194.i = phi i1 [ false, %update_cached_migrate.exit.i ], [ %i.mp, %bb.br ] ; 2 uses
  %i.mr = and i64 %.05095.i, 16383
  %.not60.i = icmp eq i64 %i.mr, 0
  br i1 %.not60.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i167
  %i.ms = call i32 @__SCT__cond_resched() #12     ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.i167
  %i.mt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 1085
  %i.mv = load i8, ptr %i.mu, align 1, !range !29, !noundef !30
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.mx = load i64, ptr @vmemmap_base, align 8
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = getelementptr [64 x i8], ptr %i.my, i64 %.196.i
  br label %pageblock_pfn_to_page.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.na = call ptr @__pageblock_pfn_to_page(i64 noundef %.196.i, i64 noundef %.04897.i, ptr noundef %i.mt) #12
  br label %pageblock_pfn_to_page.exit.i

pageblock_pfn_to_page.exit.i:                     ; preds = %bb.bv, %bb.bu
  %.0.i65.i = phi ptr [ %i.mz, %bb.bu ], [ %i.na, %bb.bv ] ; 9 uses
  %.not61.i = icmp eq ptr %.0.i65.i, null
  br i1 %.not61.i, label %bb.bw, label %bb.ce

bb.bw:                                            ; preds = %pageblock_pfn_to_page.exit.i
  %i.nb = lshr i64 %.196.i, 15                    ; 4 uses
  %i.nc = lshr i64 %.196.i, 23                    ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #13
          to label %bb.bx [label %bb.bx, label %_static_cpu_has.exit.i.i.i.i], !srcloc !43

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  br label %_static_cpu_has.exit.i.i.i.i

_static_cpu_has.exit.i.i.i.i:                     ; preds = %bb.bx, %bb.bw
  %i.nd = phi i64 [ 131072, %bb.bx ], [ 2048, %bb.bw ]
  %.not.i.i.i66.i = icmp samesign ult i64 %i.nc, %i.nd
  br i1 %.not.i.i.i66.i, label %bb.by, label %.preheader.i.i, !prof !16

bb.by:                                            ; preds = %_static_cpu_has.exit.i.i.i.i
  %i.ne = load ptr, ptr @mem_section, align 8     ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not8.i.i.i.i, label %.preheader.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nf = getelementptr [8 x i8], ptr %i.ne, i64 %i.nc
  %i.ng = load ptr, ptr %i.nf, align 8            ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not9.i.i.i.i, label %.preheader.i.i, label %__nr_to_section.exit.i.i.i

__nr_to_section.exit.i.i.i:                       ; preds = %bb.bz
  %i.nh = and i64 %i.nb, 255
  %i.ni = getelementptr [16 x i8], ptr %i.ng, i64 %i.nh ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i1.i.i.i, label %.preheader.i.i, label %online_section_nr.exit.i.i

online_section_nr.exit.i.i:                       ; preds = %__nr_to_section.exit.i.i.i
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = and i64 %i.nj, 4
  %i.nl = icmp eq i64 %i.nk, 0
  %i.nm = load i64, ptr @__highest_present_section_nr, align 8
  %.not819.not.i.i = icmp ult i64 %i.nb, %i.nm
  %or.cond.i69.i = select i1 %i.nl, i1 %.not819.not.i.i, i1 false
  br i1 %or.cond.i69.i, label %.lr.ph.preheader.i67.i, label %update_cached_migrate.exit.i

.preheader.i.i:                                   ; preds = %__nr_to_section.exit.i.i.i, %bb.bz, %bb.by, %_static_cpu_has.exit.i.i.i.i
  %.old.i.i = load i64, ptr @__highest_present_section_nr, align 8
  %.not819.not.old.i.i = icmp ult i64 %i.nb, %.old.i.i
  br i1 %.not819.not.old.i.i, label %.lr.ph.preheader.i67.i, label %update_cached_migrate.exit.i

.lr.ph.preheader.i67.i:                           ; preds = %.preheader.i.i, %online_section_nr.exit.i.i
  %i.nn = add nuw nsw i64 %i.nb, 1
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %.backedge.i.i, %.lr.ph.preheader.i67.i
  %i.no = phi i64 [ %i.nz, %.backedge.i.i ], [ %i.nn, %.lr.ph.preheader.i67.i ] ; 4 uses
  %i.np = lshr i64 %i.no, 8                       ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #13
          to label %bb.ca [label %bb.ca, label %_static_cpu_has.exit.i.i10.i.i], !srcloc !43

bb.ca:                                            ; preds = %.lr.ph.i68.i, %.lr.ph.i68.i
  br label %_static_cpu_has.exit.i.i10.i.i

_static_cpu_has.exit.i.i10.i.i:                   ; preds = %bb.ca, %.lr.ph.i68.i
  %i.nq = phi i64 [ 131072, %bb.ca ], [ 2048, %.lr.ph.i68.i ]
  %.not.i.i11.i.i = icmp samesign ult i64 %i.np, %i.nq
  br i1 %.not.i.i11.i.i, label %bb.cb, label %.backedge.i.i, !prof !16

bb.cb:                                            ; preds = %_static_cpu_has.exit.i.i10.i.i
  %i.nr = load ptr, ptr @mem_section, align 8     ; 2 uses
  %.not8.i.i12.i.i = icmp eq ptr %i.nr, null
  br i1 %.not8.i.i12.i.i, label %.backedge.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ns = getelementptr [8 x i8], ptr %i.nr, i64 %i.np
  %i.nt = load ptr, ptr %i.ns, align 8            ; 2 uses
  %.not9.i.i13.i.i = icmp eq ptr %i.nt, null
  br i1 %.not9.i.i13.i.i, label %.backedge.i.i, label %__nr_to_section.exit.i14.i.i

__nr_to_section.exit.i14.i.i:                     ; preds = %bb.cc
  %i.nu = and i64 %i.no, 255
  %i.nv = getelementptr [16 x i8], ptr %i.nt, i64 %i.nu ; 2 uses
  %.not.i1.i15.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i1.i15.i.i, label %.backedge.i.i, label %online_section_nr.exit16.i.i

online_section_nr.exit16.i.i:                     ; preds = %__nr_to_section.exit.i14.i.i
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = and i64 %i.nw, 4
  %i.ny = icmp eq i64 %i.nx, 0
  br i1 %i.ny, label %.backedge.i.i, label %skip_offline_sections.exit.i

.backedge.i.i:                                    ; preds = %online_section_nr.exit16.i.i, %__nr_to_section.exit.i14.i.i, %bb.cc, %bb.cb, %_static_cpu_has.exit.i.i10.i.i
  %i.nz = add i64 %i.no, 1                        ; 2 uses
  %i.oa = load i64, ptr @__highest_present_section_nr, align 8
  %.not8.i.i = icmp ugt i64 %i.nz, %i.oa
  br i1 %.not8.i.i, label %update_cached_migrate.exit.i, label %.lr.ph.i68.i, !llvm.loop !119

skip_offline_sections.exit.i:                     ; preds = %online_section_nr.exit16.i.i
  %i.ob = shl i64 %i.no, 15                       ; 2 uses
  %.not62.i = icmp eq i64 %i.ob, 0
  br i1 %.not62.i, label %update_cached_migrate.exit.i, label %bb.cd

bb.cd:                                            ; preds = %skip_offline_sections.exit.i
  %i.oc = load i64, ptr %i.ff, align 8
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 %i.oc)
  br label %update_cached_migrate.exit.i
end_hunk_0
