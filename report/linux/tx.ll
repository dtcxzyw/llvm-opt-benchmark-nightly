Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tx?download=true
inline.NumInlined: 938
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@__ieee80211_tx_skb_tid_band:bb.a
  %i.ev = zext i16 %i.et to i32
  %i.ew = xor i32 %i.eu, %i.ev
  %i.ex = or i32 %i.ep, %i.ew
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fb = getelementptr i8, ptr %0, i64 7096
  %i.fc = load volatile ptr, ptr %i.fb, align 8   ; 2 uses
  %.not.7 = icmp eq ptr %i.fc, null
  br i1 %.not.7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fd = getelementptr i8, ptr %i.fc, i64 28     ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = load i32, ptr %i.x, align 1
  %i.fg = xor i32 %i.fe, %i.ff
  %i.fh = getelementptr i8, ptr %i.fd, i64 4
  %i.fi = getelementptr i8, ptr %i.x, i64 4
  %i.fj = load i16, ptr %i.fh, align 1
  %i.fk = load i16, ptr %i.fi, align 1
  %i.fl = zext i16 %i.fj to i32
  %i.fm = zext i16 %i.fk to i32
  %i.fn = xor i32 %i.fl, %i.fm
  %i.fo = or i32 %i.fg, %i.fn
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fs = getelementptr i8, ptr %0, i64 7104
  %i.ft = load volatile ptr, ptr %i.fs, align 8   ; 2 uses
  %.not.8 = icmp eq ptr %i.ft, null
  br i1 %.not.8, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fu = getelementptr i8, ptr %i.ft, i64 28     ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = load i32, ptr %i.x, align 1
  %i.fx = xor i32 %i.fv, %i.fw
  %i.fy = getelementptr i8, ptr %i.fu, i64 4
  %i.fz = getelementptr i8, ptr %i.x, i64 4
  %i.ga = load i16, ptr %i.fy, align 1
  %i.gb = load i16, ptr %i.fz, align 1
  %i.gc = zext i16 %i.ga to i32
  %i.gd = zext i16 %i.gb to i32
  %i.ge = xor i32 %i.gc, %i.gd
  %i.gf = or i32 %i.fx, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gj = getelementptr i8, ptr %0, i64 7112
  %i.gk = load volatile ptr, ptr %i.gj, align 8   ; 2 uses
  %.not.9 = icmp eq ptr %i.gk, null
  br i1 %.not.9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gl = getelementptr i8, ptr %i.gk, i64 28     ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 1
  %i.gn = load i32, ptr %i.x, align 1
  %i.go = xor i32 %i.gm, %i.gn
  %i.gp = getelementptr i8, ptr %i.gl, i64 4
  %i.gq = getelementptr i8, ptr %i.x, i64 4
  %i.gr = load i16, ptr %i.gp, align 1
  %i.gs = load i16, ptr %i.gq, align 1
  %i.gt = zext i16 %i.gr to i32
  %i.gu = zext i16 %i.gs to i32
  %i.gv = xor i32 %i.gt, %i.gu
  %i.gw = or i32 %i.go, %i.gv
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ha = getelementptr i8, ptr %0, i64 7120
  %i.hb = load volatile ptr, ptr %i.ha, align 8   ; 2 uses
  %.not.10 = icmp eq ptr %i.hb, null
  br i1 %.not.10, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hc = getelementptr i8, ptr %i.hb, i64 28     ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 1
  %i.he = load i32, ptr %i.x, align 1
  %i.hf = xor i32 %i.hd, %i.he
  %i.hg = getelementptr i8, ptr %i.hc, i64 4
  %i.hh = getelementptr i8, ptr %i.x, i64 4
  %i.hi = load i16, ptr %i.hg, align 1
  %i.hj = load i16, ptr %i.hh, align 1
  %i.hk = zext i16 %i.hi to i32
  %i.hl = zext i16 %i.hj to i32
  %i.hm = xor i32 %i.hk, %i.hl
  %i.hn = or i32 %i.hf, %i.hm
  %i.ho = icmp ne i32 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hr = getelementptr i8, ptr %0, i64 7128
  %i.hs = load volatile ptr, ptr %i.hr, align 8   ; 2 uses
  %.not.11 = icmp eq ptr %i.hs, null
  br i1 %.not.11, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = getelementptr i8, ptr %i.hs, i64 28     ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 1
  %i.hv = load i32, ptr %i.x, align 1
  %i.hw = xor i32 %i.hu, %i.hv
  %i.hx = getelementptr i8, ptr %i.ht, i64 4
  %i.hy = getelementptr i8, ptr %i.x, i64 4
  %i.hz = load i16, ptr %i.hx, align 1
  %i.ia = load i16, ptr %i.hy, align 1
  %i.ib = zext i16 %i.hz to i32
  %i.ic = zext i16 %i.ia to i32
  %i.id = xor i32 %i.ib, %i.ic
  %i.ie = or i32 %i.hw, %i.id
  %i.if = icmp ne i32 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ii = getelementptr i8, ptr %0, i64 7136
  %i.ij = load volatile ptr, ptr %i.ii, align 8   ; 2 uses
  %.not.12 = icmp eq ptr %i.ij, null
  br i1 %.not.12, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ik = getelementptr i8, ptr %i.ij, i64 28     ; 2 uses
  %i.il = load i32, ptr %i.ik, align 1
  %i.im = load i32, ptr %i.x, align 1
  %i.in = xor i32 %i.il, %i.im
  %i.io = getelementptr i8, ptr %i.ik, i64 4
  %i.ip = getelementptr i8, ptr %i.x, i64 4
  %i.iq = load i16, ptr %i.io, align 1
  %i.ir = load i16, ptr %i.ip, align 1
  %i.is = zext i16 %i.iq to i32
  %i.it = zext i16 %i.ir to i32
  %i.iu = xor i32 %i.is, %i.it
  %i.iv = or i32 %i.in, %i.iu
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = zext i1 %i.iw to i32
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.iz = getelementptr i8, ptr %0, i64 7144
  %i.ja = load volatile ptr, ptr %i.iz, align 8   ; 2 uses
  %.not.13 = icmp eq ptr %i.ja, null
  br i1 %.not.13, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jb = getelementptr i8, ptr %i.ja, i64 28     ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 1
  %i.jd = load i32, ptr %i.x, align 1
  %i.je = xor i32 %i.jc, %i.jd
  %i.jf = getelementptr i8, ptr %i.jb, i64 4
  %i.jg = getelementptr i8, ptr %i.x, i64 4
  %i.jh = load i16, ptr %i.jf, align 1
  %i.ji = load i16, ptr %i.jg, align 1
  %i.jj = zext i16 %i.jh to i32
  %i.jk = zext i16 %i.ji to i32
  %i.jl = xor i32 %i.jj, %i.jk
  %i.jm = or i32 %i.je, %i.jl
  %i.jn = icmp ne i32 %i.jm, 0
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jq = getelementptr i8, ptr %0, i64 7152
  %i.jr = load volatile ptr, ptr %i.jq, align 8   ; 2 uses
  %.not.14 = icmp eq ptr %i.jr, null
  br i1 %.not.14, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.js = getelementptr i8, ptr %i.jr, i64 28     ; 2 uses
  %i.jt = load i32, ptr %i.js, align 1
  %i.ju = load i32, ptr %i.x, align 1
  %i.jv = xor i32 %i.jt, %i.ju
  %i.jw = getelementptr i8, ptr %i.js, i64 4
  %i.jx = getelementptr i8, ptr %i.x, i64 4
  %i.jy = load i16, ptr %i.jw, align 1
  %i.jz = load i16, ptr %i.jx, align 1
  %i.ka = zext i16 %i.jy to i32
  %i.kb = zext i16 %i.jz to i32
  %i.kc = xor i32 %i.ka, %i.kb
  %i.kd = or i32 %i.jv, %i.kc
  %i.ke = icmp ne i32 %i.kd, 0
  %i.kf = zext i1 %i.ke to i32
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  tail call void @__rcu_read_unlock() #16
  tail call void asm sideeffect "2708: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2708b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2708) #17, !srcloc !266
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 6450, i32 2307, i64 16) #17, !srcloc !267
  tail call void asm sideeffect "2709: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2709b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2709) #17, !srcloc !268
  %i.kh = getelementptr i8, ptr %0, i64 7162
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = zext i16 %i.ki to i32
  %i.kk = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 65536) %i.kj, i32 -1) #21, !srcloc !269
  br label %u32_encode_bits.exit

u32_encode_bits.exit:                             ; preds = %bb.a, %bb.b, %bb.c, %.thread, %bb.ah
  %.1 = phi i32 [ 0, %bb.a ], [ %3, %bb.b ], [ %.03951.lcssa.wide, %.thread ], [ %i.kk, %bb.ah ], [ 15, %bb.c ]
  %i.kl = shl i32 %.1, 28
  %i.km = getelementptr i8, ptr %1, i64 40
  %i.kn = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8
  %i.kp = or i32 %i.ko, %i.kl
  store i32 %i.kp, ptr %i.kn, align 8
  %i.kq = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !46
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #17, !srcloc !47
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !48
  %i.kr = getelementptr i8, ptr %1, i64 44        ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = and i32 %4, 7
  %i.ku = and i32 %i.ks, -8
  %i.kv = or disjoint i32 %i.ku, %i.kt
  store i32 %i.kv, ptr %i.kr, align 4
  %i.kw = getelementptr i8, ptr %0, i64 1856
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %i.ky = load i32, ptr %i.km, align 8
  %i.kz = and i32 %i.ky, 65536
  %.not.not.i = icmp eq i32 %i.kz, 0              ; 2 uses
  %i.la = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not.not.i, label %bb.ai, label %._crit_edge.i

bb.ai:                                            ; preds = %u32_encode_bits.exit
  %i.lb = load i16, ptr %i.la, align 2
  %i.lc = and i16 %i.lb, 12
  %i.ld = icmp eq i16 %i.lc, 0
  %..i = select i1 %i.ld, i32 1, i32 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ai, %u32_encode_bits.exit
  %.0.i = phi i32 [ %..i, %bb.ai ], [ 0, %u32_encode_bits.exit ]
  %i.le = getelementptr i8, ptr %i.kx, i64 1524
  %i.lf = load i32, ptr %i.le, align 4            ; 2 uses
  %i.lg = add i32 %i.lf, 8
  %spec.select.i = select i1 %.not.not.i, i32 %i.lg, i32 %i.lf
  %.val.i = load ptr, ptr %i.g, align 8
  %i.lh = ptrtoint ptr %i.la to i64
  %i.li = ptrtoint ptr %.val.i to i64
  %.neg.i = sub i64 %i.li, %i.lh
  %.neg39.i = trunc i64 %.neg.i to i32
  %i.lj = add i32 %spec.select.i, %.neg39.i
  %i.lk = tail call i32 @llvm.smax.i32(i32 %i.lj, i32 0)
  %i.ll = tail call fastcc i32 @ieee80211_skb_resize(ptr noundef %0, ptr noundef %1, i32 noundef %i.lk, i32 noundef %.0.i) #18, !srcloc !28
  %.not.i45 = icmp eq i32 %i.ll, 0
  br i1 %.not.i45, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  tail call void @ieee80211_free_txskb(ptr noundef %i.kx, ptr noundef %1) #16
  br label %ieee80211_xmit.exit

bb.ak:                                            ; preds = %._crit_edge.i
  %i.lm = getelementptr i8, ptr %1, i64 64
  store ptr %i.t, ptr %i.lm, align 8
  tail call void @ieee80211_set_qos_hdr(ptr noundef %0, ptr noundef %1) #16
  %i.ln = tail call fastcc zeroext i1 @ieee80211_tx(ptr noundef %0, ptr noundef null, ptr noundef %1, i1 noundef zeroext false) #18, !srcloc !29 ; 0 uses
  br label %ieee80211_xmit.exit

ieee80211_xmit.exit:                              ; preds = %bb.aj, %bb.ak
  tail call void @__local_bh_enable_ip(i64 noundef %i.kq, i32 noundef 512) #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_tx_skb_tid(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #16
  %i.a = getelementptr i8, ptr %0, i64 5072
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, -2
  %switch = icmp eq i32 %i.c, 12
  br i1 %switch, label %.critedge32, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 7160
  %.val = load i16, ptr %i.d, align 8
  %.not33 = icmp eq i16 %.val, 0
  %i.e = icmp sgt i32 %3, -1                      ; 2 uses
  br i1 %.not33, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "2710: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2710b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2710) #17, !srcloc !270
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 6479, i32 2305, i64 16) #17, !srcloc !271
  tail call void asm sideeffect "2711: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2711b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2711) #17, !srcloc !272
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 7000
  %i.g = load volatile ptr, ptr %i.f, align 8     ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %.critedge, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "2714: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2714b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2714) #17, !srcloc !273
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 6482, i32 2305, i64 16) #17, !srcloc !274
  tail call void asm sideeffect "2715: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2715b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2715) #17, !srcloc !275
  tail call void @__rcu_read_unlock() #16
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 2) #16
  br label %bb.j

.critedge:                                        ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.h, align 8
  br label %.critedge32

bb.g:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %.critedge32

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %0, i64 7162
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i64
  %i.m = zext nneg i32 %3 to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.l
  %.not30 = icmp eq i64 %i.o, 0
  br i1 %.not30, label %bb.i, label %.critedge32, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "2716: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2716b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2716) #17, !srcloc !276
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 6490, i32 2305, i64 16) #17, !srcloc !277
  tail call void asm sideeffect "2717: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2717b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2717) #17, !srcloc !278
  br label %.critedge32

.critedge32:                                      ; preds = %bb.a, %bb.h, %bb.i, %bb.g, %.critedge
  %.0 = phi i32 [ %i.i, %.critedge ], [ 0, %bb.h ], [ 6, %bb.a ], [ 0, %bb.g ], [ 0, %bb.i ]
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.0) #18
  tail call void @__rcu_read_unlock() #16
  br label %bb.j

bb.j:                                             ; preds = %.critedge32, %bb.f
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -67, 1) i32 @ieee80211_tx_control_port(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i16 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 2624       ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4480
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = getelementptr i8, ptr %1, i64 4804
  %i.f = load i16, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ne i16 %5, %i.f
  %i.h = icmp ne i16 %5, -14456
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i16 %5, %i.f
  %spec.select = select i1 %i.i, i32 33, i32 0
  %.068 = select i1 %6, i32 2162688, i32 2097152
  %.not = icmp ne ptr %8, null
  %i.j = zext i1 %.not to i32
  %.170 = or i32 %spec.select, %i.j
  %i.k = getelementptr i8, ptr %i.d, i64 112      ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = trunc i64 %3 to i32                      ; 2 uses
  %i.n = add i32 %i.m, 14
  %i.o = add i32 %i.n, %i.l
  %i.p = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %i.o, i32 noundef 2080) #16 ; 16 uses
  %.not75 = icmp eq ptr %i.p, null
  br i1 %.not75, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.k, align 8
  %i.r = add i32 %i.q, 14                         ; 2 uses
  %i.s = getelementptr i8, ptr %i.p, i64 208      ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %i.s, align 8
  %i.w = getelementptr i8, ptr %i.p, i64 188      ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, %i.r
  store i32 %i.y, ptr %i.w, align 4
  %i.z = tail call ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef %i.m) #16
  %i.aa = and i64 %3, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %2, i64 %i.aa, i1 false)
  %i.ab = tail call ptr @skb_push(ptr noundef nonnull %i.p, i32 noundef 14) #16 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.ab, ptr noundef align 1 dereferenceable(6) %4, i64 6, i1 false)
  %i.ac = icmp slt i32 %7, 0
  br i1 %i.ac, label %u32_encode_bits.exit80, label %u32_encode_bits.exit

end_hunk_0
