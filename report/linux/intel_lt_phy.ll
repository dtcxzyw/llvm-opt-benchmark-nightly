Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_lt_phy?download=true
inline.NumInlined: 179
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@intel_lt_phy_pll_enable:bb.a

intel_encoder_is_dig_port.exit.thread.fold.split.i.i236: ; preds = %bb.bn
  br label %enc_to_dig_port.exit.i232

enc_to_dig_port.exit.i232:                        ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i236, %bb.bo, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %.0.i.i233 = phi ptr [ %0, %bb.bn ], [ %i.qh, %bb.bo ], [ %0, %bb.bn ], [ %0, %bb.bn ], [ %0, %bb.bn ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i236 ] ; 3 uses
  %i.qi = getelementptr i8, ptr %.0.i.i233, i64 4176
  %i.qj = load i8, ptr %i.qi, align 8, !range !17, !noundef !18
  %i.qk = trunc nuw i8 %i.qj to i1                ; 3 uses
  %i.ql = load i32, ptr %i.z, align 4             ; 2 uses
  %i.qm = tail call zeroext i1 @intel_tc_port_in_dp_alt_mode(ptr noundef %.0.i.i233) #9 ; 3 uses
  %i.qn = tail call i32 @intel_tc_port_get_pin_assignment(ptr noundef %.0.i.i233) #9
  %trunc.i = trunc i32 %i.ql to i8
  switch i8 %trunc.i, label %bb.bt [
    i8 1, label %bb.bp
    i8 2, label %bb.br
    i8 3, label %bb.bs
    i8 4, label %.thread.i
  ]

bb.bp:                                            ; preds = %enc_to_dig_port.exit.i232
  %i.qo = select i1 %i.qk, i64 8, i64 1
  br i1 %i.qm, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.qp = icmp eq i32 %i.qn, 4
  %..i = select i1 %i.qp, i64 1, i64 2
  br label %bb.bu

bb.br:                                            ; preds = %enc_to_dig_port.exit.i232
  %i.qq = xor i1 %i.qk, true
  %i.qr = select i1 %i.qm, i1 true, i1 %i.qq
  %spec.store.select.i = select i1 %i.qr, i64 3, i64 12
  br label %bb.bu

bb.bs:                                            ; preds = %enc_to_dig_port.exit.i232
  %i.qs = xor i1 %i.qk, true
  %i.qt = select i1 %i.qm, i1 true, i1 %i.qs
  %spec.store.select1.i = select i1 %i.qt, i64 7, i64 14
  br label %bb.bu

bb.bt:                                            ; preds = %enc_to_dig_port.exit.i232
  %i.qu = and i32 %i.ql, 255
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, ptr @.str.3, i32 1865, i32 2321, i64 16) #8, !srcloc !36
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.qw, ptr noundef @.str.24, i64 noundef %i.qv) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !37
  br label %.thread.i

bb.bu:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.0.i234 = phi i64 [ %spec.store.select.i, %bb.br ], [ %..i, %bb.bq ], [ %spec.store.select1.i, %bb.bs ], [ %i.qo, %bb.bp ] ; 2 uses
  %.not.i235 = trunc nuw nsw i64 %.0.i234 to i8
  %spec.select = and i8 %.not.i235, 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bu, %enc_to_dig_port.exit.i232, %bb.bt
  %.sink = phi i8 [ 1, %enc_to_dig_port.exit.i232 ], [ %spec.select, %bb.bu ], [ 1, %bb.bt ]
  %.045.i = phi i64 [ 15, %enc_to_dig_port.exit.i232 ], [ %.0.i234, %bb.bu ], [ 15, %bb.bt ] ; 3 uses
  tail call fastcc void @intel_lt_phy_p2p_write(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext 1034, i8 noundef zeroext %.sink) #10
  %i.qx = trunc nsw i64 %.045.i to i8
  %i.qy = lshr i8 %i.qx, 1
  %. = and i8 %i.qy, 1
  tail call fastcc void @intel_lt_phy_p2p_write(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext 1546, i8 noundef zeroext %.) #10
  %i.qz = trunc nsw i64 %.045.i to i8
  %i.ra = lshr i8 %i.qz, 2
  %.sink317 = and i8 %i.ra, 1
  tail call fastcc void @intel_lt_phy_p2p_write(ptr noundef %0, i8 noundef zeroext 2, i16 noundef zeroext 1034, i8 noundef zeroext %.sink317) #10
  %.not42.i = icmp samesign ugt i64 %.045.i, 7
  %.sink318 = zext i1 %.not42.i to i8
  tail call fastcc void @intel_lt_phy_p2p_write(ptr noundef %0, i8 noundef zeroext 2, i16 noundef zeroext 1546, i8 noundef zeroext %.sink318) #10
  %i.rb = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i237 = icmp eq ptr %i.rb, null
  br i1 %.not.i237, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.thread.i
  %i.rc = tail call ptr @__drm_to_display(ptr noundef nonnull %i.rb) #9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.thread.i
  %i.rd = phi ptr [ %i.rc, %bb.bv ], [ null, %.thread.i ]
  %.val.i.i.i238 = load i32, ptr %i.e, align 8
  switch i32 %.val.i.i.i238, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i240 [
    i32 10, label %intel_lt_phy_transaction_end.exit
    i32 7, label %intel_lt_phy_transaction_end.exit
    i32 8, label %intel_lt_phy_transaction_end.exit
    i32 6, label %intel_lt_phy_transaction_end.exit
    i32 11, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.re = getelementptr i8, ptr %0, i64 512
  %i.rf = load ptr, ptr %i.re, align 8
  br label %intel_lt_phy_transaction_end.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i240: ; preds = %bb.bw
  br label %intel_lt_phy_transaction_end.exit

intel_lt_phy_transaction_end.exit:                ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bx, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i240
  %.0.i.i.i239 = phi ptr [ %0, %bb.bw ], [ %i.rf, %bb.bx ], [ %0, %bb.bw ], [ %0, %bb.bw ], [ %0, %bb.bw ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i240 ]
  %i.rg = getelementptr i8, ptr %.0.i.i.i239, i64 504
  tail call void @intel_psr_resume(ptr noundef %i.rg) #9
  tail call void @intel_display_power_put_unchecked(ptr noundef %i.rd, i32 noundef 73) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_encoder_to_phy(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_lt_phy_p2p_write(ptr noundef %0, i8 noundef zeroext range(i8 1, 4) %1, i16 noundef zeroext range(i16 1034, 3269) %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #3 align 16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = zext nneg i8 %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.d = zext nneg i8 %3 to i32
  %i.e = shl nuw nsw i32 %i.d, 16
  %i.f = zext nneg i16 %2 to i32                  ; 2 uses
  %i.g = or disjoint i32 %i.e, %i.f
  %i.h = or disjoint i32 %i.g, 285212672
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %__intel_lt_phy_p2p_write.exit
  %i.i = phi i1 [ true, %bb.a ], [ false, %__intel_lt_phy_p2p_write.exit ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ 1, %__intel_lt_phy_p2p_write.exit ] ; 4 uses
  %i.j = shl nuw nsw i64 1, %indvars.iv
  %i.k = and i64 %i.j, %i.b
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %__intel_lt_phy_p2p_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @__drm_to_display(ptr noundef nonnull %i.l) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 5 uses
  %i.o = call i32 @intel_encoder_to_phy(ptr noundef %0) #9
  %i.p = call zeroext i1 @intel_display_power_is_enabled(ptr noundef %i.n, i32 noundef 73) #9
  br i1 %i.p, label %assert_dc_off.exit.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.g, %bb.f
  %i.t = phi ptr [ %i.s, %bb.g ], [ null, %bb.f ]
  %i.u = call ptr @dev_driver_string(ptr noundef %i.t) #9 ; 0 uses
  %i.v = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.3, i32 1005, i32 2321, i64 16) #8, !srcloc !45
  %i.w = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i14.i.i, label %__drm_to_dev.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit15.i.i

__drm_to_dev.exit15.i.i:                          ; preds = %bb.h, %__drm_to_dev.exit.i.i
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %__drm_to_dev.exit.i.i ]
  %i.aa = call ptr @dev_driver_string(ptr noundef %i.z) #9
  %i.ab = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i16.i.i, label %__drm_to_dev.exit17.i.i, label %bb.i

bb.i:                                             ; preds = %__drm_to_dev.exit15.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %__drm_to_dev.exit17.i.i

__drm_to_dev.exit17.i.i:                          ; preds = %bb.i, %__drm_to_dev.exit15.i.i
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ null, %__drm_to_dev.exit15.i.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i18.i.i, label %bb.j, label %dev_name.exit21.i.i

bb.j:                                             ; preds = %__drm_to_dev.exit17.i.i
  %.val.i20.i.i = load ptr, ptr %i.ae, align 8
  br label %dev_name.exit21.i.i

dev_name.exit21.i.i:                              ; preds = %bb.j, %__drm_to_dev.exit17.i.i
  %.0.i19.i.i = phi ptr [ %.val.i20.i.i, %bb.j ], [ %i.ag, %__drm_to_dev.exit17.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.v, ptr noundef %i.aa, ptr noundef %.0.i19.i.i, ptr noundef @.str.21) #9
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !46
  br label %assert_dc_off.exit.i

assert_dc_off.exit.i:                             ; preds = %dev_name.exit21.i.i, %bb.e
  %i.ah = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 3 uses
  %.pre = trunc nuw nsw i64 %indvars.iv to i32
  %invariant.op = or disjoint i32 %i.ai, 8
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %4 = trunc nuw nsw i64 %i.ah to i32
  %i.ak = or disjoint i32 %4, 96
  br label %bb.k

bb.k:                                             ; preds = %bb.x, %assert_dc_off.exit.i
  %.021.i = phi i32 [ 0, %assert_dc_off.exit.i ], [ %i.do, %bb.x ]
  %i.al = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = call ptr @__drm_to_display(ptr noundef nonnull %i.al) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.am, %bb.l ], [ null, %bb.k ] ; 10 uses
  %i.ao = load i32, ptr %i.c, align 4             ; 5 uses
  %i.ap = call i32 @intel_encoder_to_phy(ptr noundef %0) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !annotation !19
  %i.aq = getelementptr i8, ptr %i.an, i64 1168   ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = icmp ugt i16 %i.ar, 19
  %i.at = icmp slt i32 %i.ao, 3                   ; 3 uses
  %i.au = add i32 %i.ao, 7                        ; 3 uses
  %i.av = select i1 %i.as, i1 %i.at, i1 false
  %.sink.i.i = select i1 %i.av, i32 %i.au, i32 %i.ao ; 3 uses
  %i.aw = icmp slt i32 %.sink.i.i, 3
  %i.ax = shl i32 %.sink.i.i, 8
  %i.ay = add i32 %i.ax, 409664
  %i.az = shl i32 %.sink.i.i, 9
  %i.ba = add i32 %i.az, 1502272
  %i.bb = select i1 %i.aw, i32 %i.ay, i32 %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ai
  %i.bd = call i32 @intel_de_wait_for_clear_ms(ptr noundef %i.an, i32 %i.bc, i32 noundef 16777216, i32 noundef 1) #9
  %.not84.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not84.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i.i16.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i16.i, label %__drm_to_dev.exit.i17.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %__drm_to_dev.exit.i17.i

__drm_to_dev.exit.i17.i:                          ; preds = %bb.o, %bb.n
  %i.bh = phi ptr [ %i.bg, %bb.o ], [ null, %bb.n ]
  %i.bi = add i32 %i.ap, 65
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bh, i32 noundef 2, ptr noundef @.str.22, i32 noundef %i.bi) #9
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.m
  %i.bj = load i16, ptr %i.aq, align 8
  %i.bk = icmp ugt i16 %i.bj, 19
  %i.bl = select i1 %i.bk, i1 %i.at, i1 false
  %.sink108.i.i = select i1 %i.bl, i32 %i.au, i32 %i.ao ; 3 uses
  %i.bm = icmp slt i32 %.sink108.i.i, 3
  %i.bn = shl i32 %.sink108.i.i, 8
  %i.bo = add i32 %i.bn, 409664
  %i.bp = shl i32 %.sink108.i.i, 9
  %i.bq = add i32 %i.bp, 1502272
  %i.br = select i1 %i.bm, i32 %i.bo, i32 %i.bq
  %.sroa.01.0.i.reass.i.reass = or disjoint i32 %i.br, %invariant.op ; 4 uses
  call void @intel_dmc_wl_get(ptr noundef %i.an, i32 %.sroa.01.0.i.reass.i.reass) #9
  %.val.i.i.i = load ptr, ptr %i.an, align 8
  %i.bs = call ptr @to_intel_uncore(ptr noundef %.val.i.i.i) #9 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i32 %i.bu(ptr noundef %i.bs, i32 %.sroa.01.0.i.reass.i.reass, i1 noundef zeroext true) #9, !inline_history !38
  %i.bw = getelementptr i8, ptr %i.bs, i64 176
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef %i.bs, i32 %.sroa.01.0.i.reass.i.reass, i32 noundef %i.bv, i1 noundef zeroext true) #9, !inline_history !39
  call void @intel_dmc_wl_put(ptr noundef %i.an, i32 %.sroa.01.0.i.reass.i.reass) #9
  %i.by = load i16, ptr %i.aq, align 8
  %i.bz = icmp ugt i16 %i.by, 19
  %i.ca = select i1 %i.bz, i1 %i.at, i1 false
  %.sink118.i.i = select i1 %i.ca, i32 %i.au, i32 %i.ao ; 3 uses
  %i.cb = icmp slt i32 %.sink118.i.i, 3
  %i.cc = shl i32 %.sink118.i.i, 8
  %i.cd = add i32 %i.cc, 409664
  %i.ce = shl i32 %.sink118.i.i, 9
  %i.cf = add i32 %i.ce, 1502272
  %i.cg = select i1 %i.cb, i32 %i.cd, i32 %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.ai            ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.an, i32 %i.ch) #9
  %.val.i86.i.i = load ptr, ptr %i.an, align 8
  %i.ci = call ptr @to_intel_uncore(ptr noundef %.val.i86.i.i) #9 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 176
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef %i.ci, i32 %i.ch, i32 noundef range(i32 0, 285343744) %i.h, i1 noundef zeroext true) #9, !inline_history !40
  call void @intel_dmc_wl_put(ptr noundef %i.an, i32 %i.ch) #9
  %i.cl = call i32 @intel_cx0_wait_for_ack(ptr noundef %0, i32 noundef 5, i32 noundef range(i32 0, 2) %i.aj, ptr noundef nonnull %i.a) #9
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load i32, ptr %i.a, align 4             ; 2 uses
  %i.co = and i32 %i.cn, 32768
  %.not85.i.i = icmp eq i32 %i.co, 0
  br i1 %.not85.i.i, label %__intel_lt_phy_p2p_write_once.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i87.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i87.i.i, label %__drm_to_dev.exit88.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  br label %__drm_to_dev.exit88.i.i

__drm_to_dev.exit88.i.i:                          ; preds = %bb.s, %bb.r
  %i.cs = phi ptr [ %i.cr, %bb.s ], [ null, %bb.r ]
  %i.ct = add i32 %i.ap, 65
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cs, i32 noundef 2, ptr noundef @.str.23, i32 noundef %i.ct, i32 noundef %i.cn) #9
  %i.cu = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i8 = icmp eq ptr %i.cu, null
  br i1 %.not.i8, label %bb.u, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit88.i.i
  %i.cv = call ptr @__drm_to_display(ptr noundef nonnull %i.cu) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %__drm_to_dev.exit88.i.i
  %i.cw = phi ptr [ %i.cv, %bb.t ], [ null, %__drm_to_dev.exit88.i.i ] ; 3 uses
  %i.cx = load i32, ptr %i.c, align 4             ; 4 uses
  %i.cy = icmp slt i32 %i.cx, -4
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = shl i32 %i.cx, 8
  %i.da = add i32 %i.cz, 411456
  br label %intel_lt_phy_clear_status_p2p.exit

bb.w:                                             ; preds = %bb.u
  %i.db = icmp slt i32 %i.cx, 3
  %i.dc = shl i32 %i.cx, 9
  %i.dd = select i1 %i.db, i32 1505856, i32 1502272
  %i.de = add i32 %i.dd, %i.dc
  br label %intel_lt_phy_clear_status_p2p.exit

intel_lt_phy_clear_status_p2p.exit:               ; preds = %bb.v, %bb.w
  %i.df = phi i32 [ %i.da, %bb.v ], [ %i.de, %bb.w ]
  %i.dg = add i32 %i.df, %i.ak                    ; 4 uses
  call void @intel_dmc_wl_get(ptr noundef %i.cw, i32 %i.dg) #9
  %.val.i.i = load ptr, ptr %i.cw, align 8
  %i.dh = call ptr @to_intel_uncore(ptr noundef %.val.i.i) #9 ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 144
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call i32 %i.dj(ptr noundef %i.dh, i32 %i.dg, i1 noundef zeroext true) #9, !inline_history !41
  %i.dl = and i32 %i.dk, 2147483647
  %i.dm = getelementptr i8, ptr %i.dh, i64 176
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef %i.dh, i32 %i.dg, i32 noundef %i.dl, i1 noundef zeroext true) #9, !inline_history !42
  call void @intel_dmc_wl_put(ptr noundef %i.cw, i32 %i.dg) #9
  br label %.sink.split.i

__intel_lt_phy_p2p_write_once.exit.i:             ; preds = %bb.q
  call void @__const_udelay(i64 noundef 644250) #9
  call void @intel_cx0_clear_response_ready_flag(ptr noundef %0, i32 noundef range(i32 0, 2) %i.aj) #9
  call fastcc void @intel_lt_phy_clear_status_p2p(ptr noundef %0, i32 noundef range(i32 0, 2) %i.aj) #10, !srcloc !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %__intel_lt_phy_p2p_write.exit

.sink.split.i:                                    ; preds = %intel_lt_phy_clear_status_p2p.exit, %__drm_to_dev.exit.i17.i
  %.pre-phi = phi i32 [ %i.aj, %intel_lt_phy_clear_status_p2p.exit ], [ %.pre, %__drm_to_dev.exit.i17.i ]
  call void @intel_cx0_bus_reset(ptr noundef %0, i32 noundef range(i32 0, 2) %.pre-phi) #9
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.do = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.do, 3
  br i1 %exitcond.not.i, label %bb.y, label %bb.k, !llvm.loop !43

bb.y:                                             ; preds = %bb.x
  %.b.i = load i1, ptr @__intel_lt_phy_p2p_write.__print_once, align 1
  br i1 %.b.i, label %__intel_lt_phy_p2p_write.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i1 true, ptr @__intel_lt_phy_p2p_write.__print_once, align 1
  %i.dp = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i18.i = icmp eq ptr %i.dp, null
  br i1 %.not.i18.i, label %__drm_to_dev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.aa, %bb.z
  %i.ds = phi ptr [ %i.dr, %bb.aa ], [ null, %bb.z ]
  %i.dt = add i32 %i.o, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ds, ptr noundef @.str.20, i32 noundef %i.dt, i32 noundef %i.f, i32 noundef 3) #11
  br label %__intel_lt_phy_p2p_write.exit

__intel_lt_phy_p2p_write.exit:                    ; preds = %__drm_to_dev.exit.i, %bb.y, %__intel_lt_phy_p2p_write_once.exit.i, %bb.b
  br i1 %i.i, label %bb.b, label %bb.ab, !llvm.loop !44

bb.ab:                                            ; preds = %__intel_lt_phy_p2p_write.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_clear_us(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_set_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_lt_phy_transaction_end(ptr noundef %0) unnamed_addr #3 align 16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 152
  %.val.i.i = load i32, ptr %i.d, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.c
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  %i.g = getelementptr i8, ptr %.0.i.i, i64 504
  tail call void @intel_psr_resume(ptr noundef %i.g) #9
  tail call void @intel_display_power_put_unchecked(ptr noundef %i.c, i32 noundef 73) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_lt_phy_pll_disable(ptr noundef %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 26 uses
  %i.d = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #9 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 27 uses
  %i.g = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %.val.i.i = load i32, ptr %i.g, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_dig_port.exit.i
    i32 7, label %enc_to_dig_port.exit.i
    i32 8, label %enc_to_dig_port.exit.i
    i32 6, label %enc_to_dig_port.exit.i
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 512
  %i.i = load ptr, ptr %i.h, align 8
  br label %enc_to_dig_port.exit.i

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.c
  br label %enc_to_dig_port.exit.i

enc_to_dig_port.exit.i:                           ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c
  %.0.i.i = phi ptr [ %0, %bb.c ], [ %i.i, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ] ; 2 uses
  %i.j = tail call zeroext i1 @intel_tc_port_in_dp_alt_mode(ptr noundef %.0.i.i) #9
  br i1 %i.j, label %intel_lt_phy_get_owned_lane_mask.exit, label %.split203.thread

intel_lt_phy_get_owned_lane_mask.exit:            ; preds = %enc_to_dig_port.exit.i
  %i.k = tail call i32 @intel_tc_port_max_lane_count(ptr noundef %.0.i.i) #9
  %.fr = freeze i32 %i.k
  %i.l = icmp sgt i32 %.fr, 2                     ; 3 uses
  %. = select i1 %i.l, i32 805306368, i32 536870912
  %.250 = select i1 %i.l, i32 -1073741824, i32 -2147483648
  %.251 = select i1 %i.l, i32 201326592, i32 134217728
  br label %.split203.thread

.split203.thread:                                 ; preds = %intel_lt_phy_get_owned_lane_mask.exit, %enc_to_dig_port.exit.i
  %i.m = phi i32 [ %., %intel_lt_phy_get_owned_lane_mask.exit ], [ 805306368, %enc_to_dig_port.exit.i ]
  %i.n = phi i32 [ %.250, %intel_lt_phy_get_owned_lane_mask.exit ], [ -1073741824, %enc_to_dig_port.exit.i ]
  %i.o = phi i32 [ %.251, %intel_lt_phy_get_owned_lane_mask.exit ], [ 201326592, %enc_to_dig_port.exit.i ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split203.thread
  %i.q = tail call ptr @__drm_to_display(ptr noundef nonnull %i.p) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split203.thread
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %.split203.thread ]
  %.val.i.i.i = load i32, ptr %i.g, align 8
  switch i32 %.val.i.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i [
    i32 10, label %intel_lt_phy_transaction_begin.exit
    i32 7, label %intel_lt_phy_transaction_begin.exit
    i32 8, label %intel_lt_phy_transaction_begin.exit
    i32 6, label %intel_lt_phy_transaction_begin.exit
    i32 11, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 512
  %i.t = load ptr, ptr %i.s, align 8
  br label %intel_lt_phy_transaction_begin.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i: ; preds = %bb.f
  br label %intel_lt_phy_transaction_begin.exit

intel_lt_phy_transaction_begin.exit:              ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.g, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i
  %.0.i.i.i = phi ptr [ %0, %bb.f ], [ %i.t, %bb.g ], [ %0, %bb.f ], [ %0, %bb.f ], [ %0, %bb.f ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i ]
  %i.u = getelementptr i8, ptr %.0.i.i.i, i64 504
  tail call void @intel_psr_pause(ptr noundef %i.u) #9
  %i.v = tail call ptr @intel_display_power_get(ptr noundef %i.r, i32 noundef 73) #9 ; 0 uses
  %i.w = getelementptr i8, ptr %i.c, i64 1168     ; 7 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = icmp ugt i16 %i.x, 19
  %i.z = icmp slt i32 %i.f, 3
  %i.aa = add i32 %i.f, 7
  %i.ab = select i1 %i.y, i1 %i.z, i1 false
  %.sink214 = select i1 %i.ab, i32 %i.aa, i32 %i.f ; 3 uses
  %i.ac = icmp slt i32 %.sink214, 3
  %i.ad = shl i32 %.sink214, 8
  %i.ae = add i32 %i.ad, 409604
  %i.af = shl i32 %.sink214, 9
  %i.ag = add i32 %i.af, 1502208
  %i.ah = select i1 %i.ac, i32 %i.ae, i32 %i.ag
  %.sroa.08.0 = add nuw nsw i32 %i.ah, 4          ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %.sroa.08.0) #9
  %.val.i = load ptr, ptr %i.c, align 8
  %i.ai = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ak(ptr noundef %i.ai, i32 %.sroa.08.0, i1 noundef zeroext true) #9, !inline_history !0
  %i.am = or i32 %i.al, %i.o
  %i.an = getelementptr i8, ptr %i.ai, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef %i.ai, i32 %.sroa.08.0, i32 noundef %i.am, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sroa.08.0) #9
  %i.ap = load i16, ptr %i.w, align 8
  %i.aq = icmp ugt i16 %i.ap, 19
  %i.ar = icmp slt i32 %i.f, 3
  %i.as = add i32 %i.f, 7
  %i.at = select i1 %i.aq, i1 %i.ar, i1 false
  %.sink221 = select i1 %i.at, i32 %i.as, i32 %i.f ; 3 uses
end_hunk_0
