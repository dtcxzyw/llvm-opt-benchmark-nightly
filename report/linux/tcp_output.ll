Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_output?download=true
inline.NumInlined: 896
inline.NumDeleted: 350
begin_hunk_0_@tcp_make_synack:bb.a
  %i.cw = getelementptr i8, ptr %i.a, i64 32
  %.val.i.i = load i64, ptr %i.cw, align 8        ; 2 uses
  br i1 %i.cv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cx = udiv i64 %.val.i.i, 1000
  br label %tcp_skb_timestamp_ts.exit.i

bb.x:                                             ; preds = %bb.v
  %i.cy = udiv i64 %.val.i.i, 1000000
  br label %tcp_skb_timestamp_ts.exit.i

tcp_skb_timestamp_ts.exit.i:                      ; preds = %bb.x, %bb.w
  %.0.in.i.i = phi i64 [ %i.cx, %bb.w ], [ %i.cy, %bb.x ]
  %.0.i93.i = trunc i64 %.0.in.i.i to i32
  %i.cz = getelementptr i8, ptr %2, i64 288
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = add i32 %i.da, %.0.i93.i                ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %2, i64 292       ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4
  %.not87.i = icmp eq i32 %i.de, 0
  br i1 %.not87.i, label %bb.y, label %.thread

bb.y:                                             ; preds = %tcp_skb_timestamp_ts.exit.i
  %.not88.i = icmp eq i32 %i.db, 0
  br i1 %.not88.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 -1, ptr %i.dc, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre15.i = phi i32 [ -1, %bb.z ], [ %i.db, %bb.y ] ; 2 uses
  store i32 %.pre15.i, ptr %i.dd, align 4
  br label %.thread

bb.ab:                                            ; preds = %bb.u
  %i.df = and i16 %i.ch, 512
  %.not89.i = icmp eq i16 %i.df, 0
  br i1 %.not89.i, label %bb.ad, label %bb.ac, !prof !16

.thread:                                          ; preds = %tcp_skb_timestamp_ts.exit.i, %bb.aa
  %i.dg = phi i32 [ %i.db, %tcp_skb_timestamp_ts.exit.i ], [ %.pre15.i, %bb.aa ]
  %i.dh = getelementptr i8, ptr %2, i64 296
  store volatile i32 %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %2, i64 148
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.dj, ptr %i.dk, align 4
  %i.dl = add nsw i32 %.1.i, -12                  ; 2 uses
  %i.dm = and i16 %i.ch, 512
  %.not89.i136 = icmp eq i16 %i.dm, 0
  br i1 %.not89.i136, label %bb.ad, label %.thread138, !prof !16

.thread138:                                       ; preds = %.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.do = or i16 %i.cp, 3                         ; 2 uses
  store i16 %i.do, ptr %i.dn, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dq = or i16 %i.cp, 1                         ; 2 uses
  store i16 %i.dq, ptr %i.dp, align 4
  %i.dr = add nsw i32 %.1.i, -4
  br label %bb.ad

bb.ad:                                            ; preds = %.thread138, %.thread, %bb.ac, %bb.ab
  %i.ds = phi i16 [ %i.cp, %bb.ab ], [ %i.dq, %bb.ac ], [ %i.do, %.thread138 ], [ %i.cs, %.thread ] ; 4 uses
  %.3.i = phi i32 [ %.1.i, %bb.ab ], [ %i.dr, %bb.ac ], [ %i.dl, %.thread138 ], [ %i.dl, %.thread ] ; 5 uses
  %.not91.i = icmp eq ptr %3, null
  br i1 %.not91.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = getelementptr i8, ptr %3, i64 16
  %i.du = load i8, ptr %i.dt, align 8             ; 2 uses
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr i8, ptr %3, i64 17
  %i.dx = load i8, ptr %i.dw, align 1, !range !42, !noundef !43
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = select i1 %i.dy, i32 4, i32 2
  %narrow.i = add nuw i8 %i.du, 3
  %i.ea = zext i8 %narrow.i to i32
  %i.eb = add nuw nsw i32 %i.dz, %i.ea
  %i.ec = and i32 %i.eb, 508                      ; 2 uses
  %.not92.i = icmp samesign ult i32 %.3.i, %i.ec
  br i1 %.not92.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ee = or i16 %i.ds, 256                       ; 2 uses
  store i16 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.ef, align 8
  %i.eg = sub nuw nsw i32 %.3.i, %i.ec
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.val.i94.i = phi i16 [ %i.ds, %bb.ad ], [ %i.ds, %bb.af ], [ %i.ee, %bb.ag ], [ %i.ds, %bb.ae ] ; 3 uses
  %.4.i = phi i32 [ %.3.i, %bb.ad ], [ %.3.i, %bb.af ], [ %i.eg, %bb.ag ], [ %.3.i, %bb.ae ] ; 6 uses
  %i.eh = getelementptr i8, ptr %2, i64 309       ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !range !42, !noundef !43
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ai, label %tcp_synack_options.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ek = getelementptr i8, ptr %0, i64 48
  %.val.i115 = load ptr, ptr %i.ek, align 8
  %i.el = getelementptr i8, ptr %.val.i115, i64 1445
  %i.em = load volatile i8, ptr %i.el, align 1
  %i.en = icmp ne i8 %i.em, 0
  %i.eo = icmp ne i32 %4, 3
  %or.cond.i = and i1 %i.eo, %i.en
  %i.ep = icmp samesign ugt i32 %.4.i, 1
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ep, i1 false
  br i1 %or.cond3.i, label %.lr.ph.lr.ph.i.i, label %tcp_synack_options.exit

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 7 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.es = and i16 %.val.i94.i, 3
  %i.et = icmp eq i16 %i.es, 1
  %i.eu = lshr i16 %.val.i94.i, 3
  %i.ev = and i16 %i.eu, 1
  %narrow.i.i.i = select i1 %i.et, i16 2, i16 %i.ev
  %.0.i.i.i = zext nneg i16 %narrow.i.i.i to i32
  store i8 -125, ptr %i.eq, align 1
  %.not44.us.i12.i = icmp samesign ult i32 %.4.i, 12
  br i1 %.not44.us.i12.i, label %.lr.ph.split.us.i.i, label %tcp_options_fit_accecn.exit.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.lr.ph.i.i, %.lr.ph.split.us.i.i
  %i.ew = phi i8 [ %i.fa, %.lr.ph.split.us.i.i ], [ -125, %.lr.ph.lr.ph.i.i ] ; 2 uses
  %.03961.us.i13.i = phi i32 [ %i.fb, %.lr.ph.split.us.i.i ], [ 11, %.lr.ph.lr.ph.i.i ] ; 2 uses
  %i.ex = add i8 %i.ew, 127
  %i.ey = and i8 %i.ex, 127
  %i.ez = and i8 %i.ew, -128
  %i.fa = or disjoint i8 %i.ey, %i.ez             ; 2 uses
  %i.fb = add i32 %.03961.us.i13.i, -3            ; 3 uses
  %i.fc = and i32 %i.fb, 3
  %i.fd = icmp samesign ugt i32 %i.fc, %.0.i.i.i
  %.0.in.us.i.i = select i1 %i.fd, i32 %.03961.us.i13.i, i32 %i.fb
  %.0.us.i.i = and i32 %.0.in.us.i.i, -4          ; 2 uses
  %.not44.us.i.i = icmp slt i32 %.4.i, %.0.us.i.i
  br i1 %.not44.us.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.us.i.tcp_options_fit_accecn.exit_crit_edge.i

.lr.ph.split.us.i.tcp_options_fit_accecn.exit_crit_edge.i: ; preds = %.lr.ph.split.us.i.i
  store i8 %i.fa, ptr %i.eq, align 1
  br label %tcp_options_fit_accecn.exit.i

tcp_options_fit_accecn.exit.i:                    ; preds = %.lr.ph.split.us.i.tcp_options_fit_accecn.exit_crit_edge.i, %.lr.ph.lr.ph.i.i
  %.0.us.i.lcssa.i = phi i32 [ %.0.us.i.i, %.lr.ph.split.us.i.tcp_options_fit_accecn.exit_crit_edge.i ], [ 12, %.lr.ph.lr.ph.i.i ]
  %i.fe = or i16 %.val.i94.i, 4096
  store i16 %i.fe, ptr %i.er, align 4
  %i.ff = sub i32 %.4.i, %.0.us.i.lcssa.i
  br label %tcp_synack_options.exit

tcp_synack_options.exit:                          ; preds = %bb.ah, %bb.ai, %tcp_options_fit_accecn.exit.i
  %.5.i = phi i32 [ %i.ff, %tcp_options_fit_accecn.exit.i ], [ %.4.i, %bb.ai ], [ %.4.i, %bb.ah ]
  %i.fg = sub i32 60, %.5.i                       ; 2 uses
  %i.fh = tail call ptr @skb_push(ptr noundef nonnull %i.a, i32 noundef %i.fg) #18 ; 0 uses
  %i.fi = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.fj = getelementptr i8, ptr %i.a, i64 200
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = trunc i64 %i.fn to i16
  %i.fp = getelementptr i8, ptr %i.a, i64 182
  store i16 %i.fo, ptr %i.fp, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %i.fi, i8 0, i64 20, i1 false)
  %i.fq = getelementptr i8, ptr %i.fi, i64 12     ; 4 uses
  store i16 4608, ptr %i.fq, align 4
  %i.fr = getelementptr i8, ptr %2, i64 147
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = icmp ult i8 %i.fs, 2
  %i.fu = icmp ne i32 %4, 3
  %or.cond.i117 = or i1 %i.fu, %i.ft
  br i1 %or.cond.i117, label %bb.aj, label %tcp_ecn_make_synack.exit

bb.aj:                                            ; preds = %tcp_synack_options.exit
  %i.fv = load i8, ptr %i.eh, align 1, !range !42, !noundef !43
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr i8, ptr %2, i64 310
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = trunc i16 %i.fy to i8
  %i.ga = lshr i8 %i.fz, 2
  %i.gb = and i8 %i.ga, 3                         ; 3 uses
  %i.gc = icmp samesign ugt i8 %i.gb, 1
  %i.gd = zext i1 %i.gc to i16
  %.not.i.i119 = icmp eq i8 %i.gb, 2
  %i.ge = select i1 %.not.i.i119, i16 0, i16 -32768
  %i.gf = icmp eq i8 %i.gb, 1
  %i.gg = select i1 %i.gf, i16 -16384, i16 %i.ge
  %i.gh = or disjoint i16 %i.gg, %i.gd
  %i.gi = or disjoint i16 %i.gh, 4608
  br label %tcp_ecn_make_synack.exit.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.gj = load i16, ptr %i.cg, align 8
  %i.gk = and i16 %i.gj, 2048
  %.not.i118 = icmp eq i16 %i.gk, 0
  br i1 %.not.i118, label %tcp_ecn_make_synack.exit, label %tcp_ecn_make_synack.exit.sink.split

tcp_ecn_make_synack.exit.sink.split:              ; preds = %bb.al, %bb.ak
  %.sink = phi i16 [ %i.gi, %bb.ak ], [ 20992, %bb.al ]
  store i16 %.sink, ptr %i.fq, align 4
  br label %tcp_ecn_make_synack.exit

tcp_ecn_make_synack.exit:                         ; preds = %tcp_synack_options.exit, %tcp_ecn_make_synack.exit.sink.split, %bb.al
  %i.gl = getelementptr i8, ptr %2, i64 12
  %i.gm = getelementptr i8, ptr %2, i64 14
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = tail call i16 @llvm.bswap.i16(i16 %i.gn)
  store i16 %i.go, ptr %i.fi, align 4
  %i.gp = load i16, ptr %i.gl, align 4
  %i.gq = getelementptr i8, ptr %i.fi, i64 2
  store i16 %i.gp, ptr %i.gq, align 2
  %i.gr = getelementptr i8, ptr %2, i64 236
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = getelementptr i8, ptr %i.a, i64 128     ; 2 uses
  %i.gu = getelementptr i8, ptr %i.a, i64 168
  store i32 %i.gs, ptr %i.gu, align 8
  %i.gv = load i8, ptr %i.gt, align 8
  %i.gw = or i8 %i.gv, 96
  store i8 %i.gw, ptr %i.gt, align 8
  %i.gx = getelementptr i8, ptr %2, i64 284
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = getelementptr i8, ptr %i.fi, i64 4
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = getelementptr i8, ptr %2, i64 304
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = tail call i32 @llvm.bswap.i32(i32 %i.hc)
  %i.he = getelementptr i8, ptr %i.fi, i64 8
  store i32 %i.hd, ptr %i.he, align 4
  %i.hf = getelementptr i8, ptr %2, i64 124
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = tail call i32 @llvm.umin.i32(i32 %i.hg, i32 65535)
  %i.hi = trunc nuw i32 %i.hh to i16
  %i.hj = tail call i16 @llvm.bswap.i16(i16 %i.hi)
  %i.hk = getelementptr i8, ptr %i.fi, i64 14
  store i16 %i.hj, ptr %i.hk, align 2
  call fastcc void @tcp_options_write(ptr noundef %i.fi, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %i.hl = trunc i32 %i.fg to i16
  %i.hm = load i16, ptr %i.fq, align 4
  %i.hn = shl i16 %i.hl, 2
  %i.ho = and i16 %i.hn, 240
  %i.hp = and i16 %i.hm, -241
  %i.hq = or disjoint i16 %i.hp, %i.ho
  store i16 %i.hq, ptr %i.fq, align 4
  %i.hr = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.hr, align 8
  %i.hs = getelementptr i8, ptr %.val, i64 736
  %i.ht = load ptr, ptr %i.hs, align 16
  %i.hu = getelementptr i8, ptr %i.ht, i64 88     ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hu, ptr elementtype(i64) %i.hu) #19, !srcloc !148
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tcp_md5_needed, i1 false) #19
          to label %tcp_key_is_md5.exit.thread [label %tcp_key_is_md5.exit], !srcloc !35

tcp_key_is_md5.exit:                              ; preds = %tcp_ecn_make_synack.exit
  %i.hv = load i32, ptr %i.bx, align 8
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.am, label %tcp_key_is_md5.exit.thread

bb.am:                                            ; preds = %tcp_key_is_md5.exit
  %i.hx = load ptr, ptr %i.bk, align 8
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = load ptr, ptr %7, align 8
  tail call void %i.hz(ptr noundef %i.ib, ptr noundef %i.ic, ptr noundef %2, ptr noundef nonnull %i.a) #18
  br label %tcp_key_is_md5.exit.thread

tcp_key_is_md5.exit.thread:                       ; preds = %tcp_ecn_make_synack.exit, %tcp_key_is_md5.exit, %bb.am
  tail call void @__rcu_read_unlock() #18
  %i.id = getelementptr i8, ptr %i.a, i64 32      ; 3 uses
  store i64 %i.at, ptr %i.id, align 8
  %.not.i121 = icmp ne i64 %i.at, 0
  %i.ie = load i32, ptr %i.y, align 1
  %i.if = and i32 %i.ie, -4
  %i.ig = zext i1 %.not.i121 to i32
  %.sink.i122 = or disjoint i32 %i.if, %i.ig
  store i32 %.sink.i122, ptr %i.y, align 1
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tcp_tx_delay_enabled, i1 false) #19
          to label %tcp_add_tx_delay.exit [label %bb.an], !srcloc !35

bb.an:                                            ; preds = %tcp_key_is_md5.exit.thread
  %i.ih = getelementptr i8, ptr %0, i64 1928
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = zext i32 %i.ii to i64
  %i.ik = mul nuw nsw i64 %i.ij, 1000
  %i.il = load i64, ptr %i.id, align 8
  %i.im = add i64 %i.ik, %i.il
  store i64 %i.im, ptr %i.id, align 8
  br label %tcp_add_tx_delay.exit

tcp_add_tx_delay.exit:                            ; preds = %bb.an, %tcp_key_is_md5.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret ptr %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @cookie_init_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcp_options_write(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.b = getelementptr i8, ptr %2, i64 4
  %i.c = load i16, ptr %i.b, align 4              ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tcp_md5_needed, i1 false) #19
          to label %tcp_key_is_md5.exit.thread [label %tcp_key_is_md5.exit], !srcloc !35

tcp_key_is_md5.exit:                              ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %tcp_key_is_md5.exit.thread

bb.b:                                             ; preds = %tcp_key_is_md5.exit
  %i.g = getelementptr i8, ptr %0, i64 24
  store i32 303235329, ptr %i.a, align 4
  %i.h = getelementptr i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 40
  br label %tcp_key_is_md5.exit.thread

tcp_key_is_md5.exit.thread:                       ; preds = %bb.a, %tcp_key_is_md5.exit, %bb.b
  %.0121 = phi ptr [ %i.i, %bb.b ], [ %i.a, %tcp_key_is_md5.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.j = load i16, ptr %2, align 8                ; 2 uses
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %tcp_key_is_md5.exit.thread
  %i.k = zext i16 %i.j to i32
  %i.l = or disjoint i32 %i.k, 33816576
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = getelementptr i8, ptr %.0121, i64 4
  store i32 %i.m, ptr %.0121, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %tcp_key_is_md5.exit.thread
  %.1 = phi ptr [ %i.n, %bb.c ], [ %.0121, %tcp_key_is_md5.exit.thread ] ; 5 uses
  %i.o = zext i16 %i.c to i64                     ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not136 = icmp eq i64 %i.p, 0
  br i1 %.not136, label %bb.h, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.q = and i64 %i.o, 1
  %.not137 = icmp eq i64 %i.q, 0
  br i1 %.not137, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.r = and i16 %i.c, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ 168296964, %bb.f ], [ 168296705, %bb.e ]
  %.06 = phi i16 [ %i.r, %bb.f ], [ %i.c, %bb.e ]
  store i32 %.sink, ptr %.1, align 4
  %.2 = getelementptr i8, ptr %.1, i64 4
  %i.s = getelementptr i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  %i.v = getelementptr i8, ptr %.1, i64 8
  store i32 %i.u, ptr %.2, align 4
  %i.w = getelementptr i8, ptr %2, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr i8, ptr %.1, i64 12
  store i32 %i.y, ptr %i.v, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.17 = phi i16 [ %i.c, %bb.d ], [ %.06, %bb.g ] ; 4 uses
  %.3 = phi ptr [ %.1, %bb.d ], [ %i.z, %bb.g ]   ; 13 uses
end_hunk_0
