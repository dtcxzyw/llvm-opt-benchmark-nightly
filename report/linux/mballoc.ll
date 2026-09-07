Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mballoc?download=true
inline.NumInlined: 1079
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mb_free_blocks:bb.a

bb.t:                                             ; preds = %bb.n
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @discard_pa_seq, ptr nonnull elementtype(i64) @discard_pa_seq) #14, !srcloc !258
  %i.en = load ptr, ptr %i.r, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 20     ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = add i32 %i.ep, %3
  store i32 %i.eq, ptr %i.eo, align 4
  %i.er = load ptr, ptr %i.r, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 16     ; 2 uses
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = icmp slt i32 %2, %i.et
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %2, ptr %i.es, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %or.cond = select i1 %.082, i1 %.084, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %or.cond3 = select i1 %.082, i1 true, i1 %.084
  br i1 %or.cond3, label %bb.x, label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.v
  %.sink181 = phi i32 [ -1, %bb.v ], [ 1, %bb.w ]
  %i.ev = load ptr, ptr %i.r, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 24     ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = add i32 %i.ex, %.sink181
  store i32 %i.ey, ptr %i.ew, align 8
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w
  %i.ez = and i32 %2, 1
  %.not97 = icmp eq i32 %i.ez, 0
  br i1 %.not97, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = xor i1 %.082, true
  %i.fb = zext i1 %i.fa to i32
  %i.fc = add i32 %2, %i.fb
  %i.fd = select i1 %.082, i32 -1, i32 1
  %i.fe = load ptr, ptr %i.r, align 8
  %i.ff = getelementptr i8, ptr %i.fe, i64 88     ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = add i32 %i.fg, %i.fd
  store i32 %i.fh, ptr %i.ff, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi i32 [ %i.fc, %bb.y ], [ %2, %bb.x ]   ; 2 uses
  %i.fi = and i32 %i.b, 1
  %.not98 = icmp eq i32 %i.fi, 0
  br i1 %.not98, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fj = xor i1 %.084, true
  %.neg = sext i1 %i.fj to i32
  %i.fk = add i32 %i.b, %.neg
  %i.fl = select i1 %.084, i32 -1, i32 1
  %i.fm = load ptr, ptr %i.r, align 8
  %i.fn = getelementptr i8, ptr %i.fm, i64 88     ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = add i32 %i.fo, %i.fl
  store i32 %i.fp, ptr %i.fn, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.085 = phi i32 [ %i.b, %bb.z ], [ %i.fk, %bb.aa ] ; 2 uses
  %.not99 = icmp sgt i32 %.0, %.085
  br i1 %.not99, label %mb_buddy_mark_free.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.fu = icmp eq ptr %i.fr, %i.ft
  br i1 %i.fu, label %bb.ad, label %mb_find_buddy.exit.i, !prof !21

bb.ad:                                            ; preds = %bb.ac
  tail call void asm sideeffect "1510: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1510b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1510) #14, !srcloc !66
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 536, i32 0, i64 16) #14, !srcloc !67
  unreachable

mb_find_buddy.exit.i:                             ; preds = %bb.ac
  %i.fv = getelementptr i8, ptr %1, i64 48
  %i.fw = load ptr, ptr %i.c, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 864
  %.val20.i.i = load ptr, ptr %i.fx, align 32
  %i.fy = getelementptr i8, ptr %.val20.i.i, i64 736
  %i.fz = load ptr, ptr %i.fy, align 32
  %i.ga = getelementptr i8, ptr %i.fz, i64 2
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = zext i16 %i.gb to i64
  %i.gd = getelementptr i8, ptr %i.ft, i64 %i.gc  ; 2 uses
  %.not77.i = icmp eq ptr %i.gd, null
  br i1 %.not77.i, label %mb_buddy_mark_free.exit, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %mb_find_buddy.exit.i, %mb_find_buddy.exit38.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %mb_find_buddy.exit38.i ], [ 1, %mb_find_buddy.exit.i ] ; 5 uses
  %.01781.i = phi ptr [ %i.ik, %mb_find_buddy.exit38.i ], [ %i.gd, %mb_find_buddy.exit.i ] ; 4 uses
  %.05879.i.in = phi i32 [ %.159.i, %mb_find_buddy.exit38.i ], [ %.085, %mb_find_buddy.exit.i ] ; 2 uses
  %.06078.i.in = phi i32 [ %.161.i, %mb_find_buddy.exit38.i ], [ %.0, %mb_find_buddy.exit.i ] ; 2 uses
  %.06078.i = ashr i32 %.06078.i.in, 1            ; 4 uses
  %.05879.i = ashr i32 %.05879.i.in, 1            ; 5 uses
  %i.ge = and i32 %.06078.i.in, 2
  %.not21.i = icmp eq i32 %i.ge, 0
  br i1 %.not21.i, label %bb.af, label %.split15.i.i

.split15.i.i:                                     ; preds = %.lr.ph.i134
  %i.gf = ptrtoint ptr %.01781.i to i64           ; 2 uses
  %.tr.i.i.i.i = trunc i64 %i.gf to i32
  %i.gg = shl i32 %.tr.i.i.i.i, 3
  %i.gh = and i32 %i.gg, 56                       ; 2 uses
  %i.gi = add nsw i32 %.06078.i, -1               ; 2 uses
  %i.gj = add nsw i32 %i.gi, %i.gh                ; 2 uses
  %i.gk = and i64 %i.gf, -8
  %i.gl = inttoptr i64 %i.gk to ptr               ; 3 uses
  %i.gm = sext i32 %i.gj to i64
  %i.gn = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gl, i64 range(i64 -2147483648, 4294967296) %i.gm) #14, !srcloc !35 ; 2 uses
  %i.go = icmp ult i8 %i.gn, 2
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = trunc nuw i8 %i.gn to i1
  br i1 %i.gp, label %mb_clear_bit.exit.i.i, label %bb.ae

mb_clear_bit.exit.i.i:                            ; preds = %.split15.i.i
  %i.gq = add nsw i32 %i.gh, %.06078.i
  %i.gr = sext i32 %i.gq to i64
  tail call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gl, i64 range(i64 -2147483648, 2147483648) %i.gr) #14, !srcloc !36
  %i.gs = add nsw i32 %.06078.i, 1
  br label %mb_buddy_adjust_border.exit.i

bb.ae:                                            ; preds = %.split15.i.i
  %i.gt = sext i32 %i.gj to i64
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gl, i64 range(i64 -2147483648, 2147483648) %i.gt) #14, !srcloc !17
  br label %mb_buddy_adjust_border.exit.i

mb_buddy_adjust_border.exit.i:                    ; preds = %bb.ae, %mb_clear_bit.exit.i.i
  %.363.i = phi i32 [ %i.gs, %mb_clear_bit.exit.i.i ], [ %i.gi, %bb.ae ]
  %.0.i.i = phi i32 [ 1, %mb_clear_bit.exit.i.i ], [ -1, %bb.ae ]
  %i.gu = load ptr, ptr %i.r, align 8
  %i.gv = getelementptr i8, ptr %i.gu, i64 88
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv.i ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = add i32 %i.gx, %.0.i.i
  store i32 %i.gy, ptr %i.gw, align 4
  br label %bb.af

bb.af:                                            ; preds = %mb_buddy_adjust_border.exit.i, %.lr.ph.i134
  %.161.i = phi i32 [ %.06078.i, %.lr.ph.i134 ], [ %.363.i, %mb_buddy_adjust_border.exit.i ] ; 5 uses
  %i.gz = and i32 %.05879.i.in, 2
  %.not22.i = icmp eq i32 %i.gz, 0
  br i1 %.not22.i, label %.split15.i25.i, label %bb.ah

.split15.i25.i:                                   ; preds = %bb.af
  %i.ha = ptrtoint ptr %.01781.i to i64           ; 2 uses
  %.tr.i.i.i24.i = trunc i64 %i.ha to i32
  %i.hb = shl i32 %.tr.i.i.i24.i, 3
  %i.hc = and i32 %i.hb, 56                       ; 3 uses
  %i.hd = and i64 %i.ha, -8
  %i.he = inttoptr i64 %i.hd to ptr               ; 3 uses
  %i.hf = or disjoint i32 %i.hc, 1
  %i.hg = add nsw i32 %i.hf, %.05879.i
  %i.hh = sext i32 %i.hg to i64
  %i.hi = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.he, i64 range(i64 -2147483648, 4294967296) %i.hh) #14, !srcloc !35 ; 2 uses
  %i.hj = icmp ult i8 %i.hi, 2
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = trunc nuw i8 %i.hi to i1
  br i1 %i.hk, label %mb_clear_bit.exit.i28.i, label %bb.ag

mb_clear_bit.exit.i28.i:                          ; preds = %.split15.i25.i
  %i.hl = add nsw i32 %i.hc, %.05879.i
  %i.hm = sext i32 %i.hl to i64
  tail call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.he, i64 range(i64 -2147483648, 2147483648) %i.hm) #14, !srcloc !36
  %i.hn = add nsw i32 %.05879.i, -1
  br label %mb_buddy_adjust_border.exit35.i

bb.ag:                                            ; preds = %.split15.i25.i
  %i.ho = or disjoint i32 %.05879.i, 1            ; 2 uses
  %i.hp = add nsw i32 %i.hc, %i.ho
  %i.hq = sext i32 %i.hp to i64
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.he, i64 range(i64 -2147483648, 2147483648) %i.hq) #14, !srcloc !17
  br label %mb_buddy_adjust_border.exit35.i

mb_buddy_adjust_border.exit35.i:                  ; preds = %bb.ag, %mb_clear_bit.exit.i28.i
  %.3.i = phi i32 [ %i.hn, %mb_clear_bit.exit.i28.i ], [ %i.ho, %bb.ag ]
  %.0.i26.i = phi i32 [ 1, %mb_clear_bit.exit.i28.i ], [ -1, %bb.ag ]
  %i.hr = load ptr, ptr %i.r, align 8
  %i.hs = getelementptr i8, ptr %i.hr, i64 88
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %indvars.iv.i ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = add i32 %i.hu, %.0.i26.i
  store i32 %i.hv, ptr %i.ht, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %mb_buddy_adjust_border.exit35.i, %bb.af
  %.159.i = phi i32 [ %.3.i, %mb_buddy_adjust_border.exit35.i ], [ %.05879.i, %bb.af ] ; 6 uses
  %i.hw = icmp sgt i32 %.161.i, %.159.i
  br i1 %i.hw, label %mb_buddy_mark_free.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hx = load ptr, ptr %i.fq, align 8
  %i.hy = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %bb.aj, label %bb.ak, !prof !21

bb.aj:                                            ; preds = %bb.ai
  tail call void asm sideeffect "1510: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1510b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1510) #14, !srcloc !66
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 536, i32 0, i64 16) #14, !srcloc !67
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ia = load i16, ptr %i.fv, align 8
  %i.ib = zext i16 %i.ia to i64
  %i.ic = icmp samesign ugt i64 %indvars.iv.i, %i.ib
  br i1 %i.ic, label %mb_find_buddy.exit38.thread.i, label %mb_find_buddy.exit38.i

mb_find_buddy.exit38.i:                           ; preds = %bb.ak
  %i.id = load ptr, ptr %i.c, align 8
  %i.ie = getelementptr i8, ptr %i.id, i64 864
  %.val20.i36.i = load ptr, ptr %i.ie, align 32
  %i.if = getelementptr i8, ptr %.val20.i36.i, i64 736
  %i.ig = load ptr, ptr %i.if, align 32
  %i.ih = getelementptr [2 x i8], ptr %i.ig, i64 %indvars.iv.next.i
  %i.ii = load i16, ptr %i.ih, align 2
  %i.ij = zext i16 %i.ii to i64
  %i.ik = getelementptr i8, ptr %i.hy, i64 %i.ij  ; 2 uses
  %.not23.i = icmp eq ptr %i.ik, null
  br i1 %.not23.i, label %mb_find_buddy.exit38.thread.i, label %.lr.ph.i134

mb_find_buddy.exit38.thread.i:                    ; preds = %mb_find_buddy.exit38.i, %bb.ak
  %i.il = add nsw i32 %.159.i, 1
  %.not183 = icmp sgt i32 %.161.i, %.159.i
  br i1 %.not183, label %mb_clear_bits.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %mb_find_buddy.exit38.thread.i
  %i.im = ptrtoint ptr %.01781.i to i64           ; 2 uses
  %.tr.i.i.i39.i = trunc i64 %i.im to i32
  %i.in = shl i32 %.tr.i.i.i39.i, 3
  %i.io = and i32 %i.in, 56
  %i.ip = and i64 %i.im, -8
  %i.iq = inttoptr i64 %i.ip to ptr
  br label %bb.al

bb.al:                                            ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.015.i.i = phi i32 [ %.161.i, %.lr.ph.i.i ], [ %i.iy, %.backedge.i.i ] ; 5 uses
  %i.ir = and i32 %.015.i.i, 31
  %i.is = icmp eq i32 %i.ir, 0
  %i.it = sub i32 %i.il, %.015.i.i
  %i.iu = icmp sgt i32 %i.it, 31
  %or.cond.i.i135 = and i1 %i.is, %i.iu
  br i1 %or.cond.i.i135, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iv = ashr exact i32 %.015.i.i, 3
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr i8, ptr %.01781.i, i64 %i.iw
  store i32 0, ptr %i.ix, align 4
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.an, %bb.am
  %.sink.i.i = phi i32 [ 32, %bb.am ], [ 1, %bb.an ]
  %i.iy = add i32 %.sink.i.i, %.015.i.i           ; 2 uses
  %.not184 = icmp sgt i32 %i.iy, %.159.i
  br i1 %.not184, label %mb_clear_bits.exit.i, label %bb.al, !llvm.loop !3

bb.an:                                            ; preds = %bb.al
  %i.iz = add i32 %.015.i.i, %i.io
  %i.ja = sext i32 %i.iz to i64
  tail call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iq, i64 range(i64 -2147483648, 2147483648) %i.ja) #14, !srcloc !36
  br label %.backedge.i.i

mb_clear_bits.exit.i:                             ; preds = %.backedge.i.i, %mb_find_buddy.exit38.thread.i
  %i.jb = load ptr, ptr %i.r, align 8
  %i.jc = getelementptr i8, ptr %i.jb, i64 88
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %indvars.iv.i ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %reass.sub = sub i32 %.159.i, %.161.i
  %i.jf = add i32 %reass.sub, 1
  %i.jg = add i32 %i.jf, %i.je
  store i32 %i.jg, ptr %i.jd, align 4
  br label %mb_buddy_mark_free.exit

mb_buddy_mark_free.exit:                          ; preds = %bb.ah, %mb_clear_bits.exit.i, %mb_find_buddy.exit.i, %bb.ab
  %i.jh = load ptr, ptr %i.r, align 8
  tail call fastcc void @mb_set_largest_free_order(ptr noundef %i.d, ptr noundef %i.jh) #16, !srcloc !259
  %i.ji = load ptr, ptr %i.r, align 8
  tail call fastcc void @mb_update_avg_fragment_size(ptr noundef %i.d, ptr noundef %i.ji) #16, !srcloc !260
  br label %bb.ao

bb.ao:                                            ; preds = %bb.p, %bb.s, %bb.b, %mb_buddy_mark_free.exit, %bb.f
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ext4_trim_fs(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ext4_buddy, align 8         ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 64
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val116 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val116, i64 224
  %.val116.val = load i32, ptr %i.h, align 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !annotation !19
  %i.i = getelementptr i8, ptr %0, i64 864        ; 9 uses
  %.val115 = load ptr, ptr %i.i, align 32         ; 4 uses
  %i.j = getelementptr i8, ptr %.val115, i64 104
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 96
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 128
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %ext4_blocks_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %i.k, i64 336
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw i64 %i.t, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %bb.a, %bb.b
  %i.v = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr i8, ptr %i.k, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = load i64, ptr %1, align 8
  %i.ab = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %i.ad = zext i8 %i.ac to i64                    ; 3 uses
  %i.ae = lshr i64 %i.aa, %i.ad                   ; 3 uses
  %i.af = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = lshr i64 %i.ag, %i.ad
  %i.ai = add i64 %i.ah, -1
  %i.aj = add i64 %i.ai, %i.ae
  %i.ak = getelementptr i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = lshr i64 %i.al, %i.ad
  %i.an = getelementptr i8, ptr %.val115, i64 80
  %i.ao = load i32, ptr %i.an, align 16           ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add i64 %i.am, -1
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = getelementptr i8, ptr %.val115, i64 84
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.ar, %i.au                   ; 2 uses
  %i.aw = getelementptr i8, ptr %.val115, i64 24
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp ule i64 %i.av, %i.ax
  %.not = icmp ult i64 %i.ae, %i.z
  %or.cond = select i1 %i.ay, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %ext4_blocks_count.exit
  %i.az = getelementptr i8, ptr %0, i64 24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = icmp ult i64 %i.ag, %i.ba
  br i1 %i.bb, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = zext i32 %.val116.val to i64
  %i.bd = icmp ult i64 %i.al, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = zext nneg i8 %i.ac to i32
  %i.bf = lshr i32 %.val116.val, %i.be
  %i.bg = add i32 %i.bf, -1
  %i.bh = add i32 %i.bg, %i.ao
  %i.bi = lshr i32 %i.bh, %i.at
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = icmp ult i64 %i.ax, %i.bj
  br i1 %i.bk, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.078 = phi i64 [ %i.bj, %bb.e ], [ %i.av, %bb.d ] ; 4 uses
  %i.bl = add i64 %i.z, -1
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.bl) ; 2 uses
  %.not99 = icmp ugt i64 %spec.select, %i.n
  br i1 %.not99, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %spec.select105 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.n)
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %spec.select105, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #15
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %spec.select, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #15
  %i.bm = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bn = load i32, ptr %i.b, align 4
  %.not100127 = icmp ugt i32 %i.bm, %i.bn
  %.val106.pre137 = load ptr, ptr %i.i, align 32  ; 2 uses
  br i1 %.not100127, label %ext4_trim_interrupted.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bo = getelementptr i8, ptr %.val106.pre137, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, -1
  %i.br = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !68
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 2152
  %i.bu = trunc i64 %.078 to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %sext = shl i64 %.078, 32
  %i.bw = ashr exact i64 %sext, 32
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %task_sigpending.exit.i.i

task_sigpending.exit.i.i:                         ; preds = %bb.aa, %.lr.ph
  %.074133 = phi i64 [ 0, %.lr.ph ], [ %.276, %bb.aa ] ; 7 uses
  %.180132 = phi i64 [ %i.bq, %.lr.ph ], [ %.382, %bb.aa ] ; 2 uses
  %.084128 = phi i32 [ %i.bm, %.lr.ph ], [ %i.eu, %bb.aa ] ; 8 uses
  %i.by = load volatile i64, ptr %i.bs, align 8
  %i.bz = and i64 %i.by, 2
  %.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %.val.i.i = load i64, ptr %i.bt, align 8
  %i.ca = and i64 %.val.i.i, 256
  %.not.i117 = icmp eq i64 %i.ca, 0
  br i1 %.not.i117, label %fatal_signal_pending.exit.thread.i, label %ext4_trim_interrupted.exit.thread.loopexit

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @freezer_active, i1 false) #14
          to label %ext4_trim_interrupted.exit.thread121 [label %ext4_trim_interrupted.exit], !srcloc !38

ext4_trim_interrupted.exit:                       ; preds = %fatal_signal_pending.exit.thread.i
  %i.cb = call zeroext i1 @freezing_slow_path(ptr noundef %i.bs) #15
  br i1 %i.cb, label %ext4_trim_interrupted.exit.thread.loopexit, label %ext4_trim_interrupted.exit.thread121

ext4_trim_interrupted.exit.thread121:             ; preds = %fatal_signal_pending.exit.thread.i, %ext4_trim_interrupted.exit
  %i.cc = call ptr @ext4_get_group_info(ptr noundef %0, i32 noundef %.084128) #15 ; 3 uses
  %.not101 = icmp eq ptr %i.cc, null
  br i1 %.not101, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %ext4_trim_interrupted.exit.thread121
  %i.cd = load volatile i64, ptr %i.cc, align 8
  %i.ce = and i64 %i.cd, 1
  %.not124 = icmp eq i64 %i.ce, 0
  br i1 %.not124, label %bb.j, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.cf = call fastcc i32 @ext4_mb_init_group(ptr noundef %0, i32 noundef %.084128, i32 noundef 3136) #16, !srcloc !262 ; 2 uses
  %.not102 = icmp eq i32 %i.cf, 0
  br i1 %.not102, label %bb.j, label %.loopexit

end_hunk_0
