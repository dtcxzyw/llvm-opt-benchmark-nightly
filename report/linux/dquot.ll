Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dquot?download=true
inline.NumInlined: 479
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@__dquot_transfer:bb.a
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call i32 %i.ic(ptr noundef nonnull %i.hw) #12, !inline_history !5
  br label %mark_all_dquot_dirty.exit181

mark_all_dquot_dirty.exit181:                     ; preds = %bb.au, %bb.av
  %.1.2.i175 = phi i32 [ %i.id, %bb.av ], [ %.1.1.i173, %bb.au ] ; 2 uses
  %i.ie = icmp sgt i32 %.1.i171, -1
  %i.if = icmp slt i32 %.1.1.i173, 0
  %or.cond.1.i176 = select i1 %i.ie, i1 %i.if, i1 false
  %spec.select.i177 = call i32 @llvm.smin.i32(i32 %.1.i171, i32 0)
  %spec.select.1.i178 = select i1 %or.cond.1.i176, i32 %.1.1.i173, i32 %spec.select.i177 ; 2 uses
  %i.ig = icmp eq i32 %spec.select.1.i178, 0
  %i.ih = icmp slt i32 %.1.2.i175, 0
  %or.cond.2.i179 = select i1 %i.ig, i1 %i.ih, i1 false
  %spec.select.2.i180 = select i1 %or.cond.2.i179, i32 %.1.2.i175, i32 %spec.select.1.i178 ; 2 uses
  %i.ii = icmp slt i32 %spec.select.2.i180, 0
  %.4113 = select i1 %i.ii, i32 %spec.select.2.i180, i32 %spec.select ; 2 uses
  %.not.i182 = icmp ult i32 %i.gb, 2
  br i1 %.not.i182, label %srcu_read_unlock.exit, label %bb.aw, !prof !26

bb.aw:                                            ; preds = %mark_all_dquot_dirty.exit181
  call void asm sideeffect "168: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 168b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #13, !srcloc !36
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.10, i32 484, i32 2307, i64 16) #13, !srcloc !37
  call void asm sideeffect "169: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 169b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #13, !srcloc !38
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %mark_all_dquot_dirty.exit181, %bb.aw
  call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %i.gb) #12
  %i.ij = load i16, ptr %i.n, align 16            ; 2 uses
  %i.ik = icmp eq i16 %i.ij, 0
  br i1 %i.ik, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %srcu_read_unlock.exit
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.im = load ptr, ptr %2, align 16
  %i.in = getelementptr i8, ptr %i.im, i64 16
  %i.io = load i32, ptr %i.in, align 16
  %i.ip = trunc i16 %i.ij to i8
  %i.iq = load i64, ptr %i.il, align 8
  call void @quota_send_warning(i64 %i.iq, i32 noundef %i.io, i8 noundef zeroext %i.ip) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %srcu_read_unlock.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.is = load i16, ptr %i.ir, align 8            ; 2 uses
  %i.it = icmp eq i16 %i.is, 0
  br i1 %i.it, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.iv = load ptr, ptr %i.q, align 8
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  %i.ix = load i32, ptr %i.iw, align 16
  %i.iy = trunc i16 %i.is to i8
  %i.iz = load i64, ptr %i.iu, align 16
  call void @quota_send_warning(i64 %i.iz, i32 noundef %i.ix, i8 noundef zeroext %i.iy) #12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jb = load i16, ptr %i.ja, align 16           ; 2 uses
  %i.jc = icmp eq i16 %i.jb, 0
  br i1 %i.jc, label %flush_warnings.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.je = load ptr, ptr %i.w, align 16
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %i.jg = load i32, ptr %i.jf, align 16
  %i.jh = trunc i16 %i.jb to i8
  %i.ji = load i64, ptr %i.jd, align 8
  call void @quota_send_warning(i64 %i.ji, i32 noundef %i.jg, i8 noundef zeroext %i.jh) #12
  br label %flush_warnings.exit

flush_warnings.exit:                              ; preds = %bb.ba, %bb.bb
  %i.jj = load i16, ptr %i.o, align 16            ; 2 uses
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %flush_warnings.exit
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jm = load ptr, ptr %3, align 16
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %i.jo = load i32, ptr %i.jn, align 16
  %i.jp = trunc i16 %i.jj to i8
  %i.jq = load i64, ptr %i.jl, align 8
  call void @quota_send_warning(i64 %i.jq, i32 noundef %i.jo, i8 noundef zeroext %i.jp) #12
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %flush_warnings.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.js = load i16, ptr %i.jr, align 8            ; 2 uses
  %i.jt = icmp eq i16 %i.js, 0
  br i1 %i.jt, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jv = load ptr, ptr %i.s, align 8
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  %i.jx = load i32, ptr %i.jw, align 16
  %i.jy = trunc i16 %i.js to i8
  %i.jz = load i64, ptr %i.ju, align 16
  call void @quota_send_warning(i64 %i.jz, i32 noundef %i.jx, i8 noundef zeroext %i.jy) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.kb = load i16, ptr %i.ka, align 16           ; 2 uses
  %i.kc = icmp eq i16 %i.kb, 0
  br i1 %i.kc, label %flush_warnings.exit183, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ke = load ptr, ptr %i.y, align 16
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  %i.kg = load i32, ptr %i.kf, align 16
  %i.kh = trunc i16 %i.kb to i8
  %i.ki = load i64, ptr %i.kd, align 8
  call void @quota_send_warning(i64 %i.ki, i32 noundef %i.kg, i8 noundef zeroext %i.kh) #12
  br label %flush_warnings.exit183

flush_warnings.exit183:                           ; preds = %bb.bf, %bb.bg
  %i.kj = load i16, ptr %i.p, align 16            ; 2 uses
  %i.kk = icmp eq i16 %i.kj, 0
  br i1 %i.kk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %flush_warnings.exit183
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.km = load ptr, ptr %4, align 16
  %i.kn = getelementptr i8, ptr %i.km, i64 16
  %i.ko = load i32, ptr %i.kn, align 16
  %i.kp = trunc i16 %i.kj to i8
  %i.kq = load i64, ptr %i.kl, align 8
  call void @quota_send_warning(i64 %i.kq, i32 noundef %i.ko, i8 noundef zeroext %i.kp) #12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %flush_warnings.exit183
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ks = load i16, ptr %i.kr, align 8            ; 2 uses
  %i.kt = icmp eq i16 %i.ks, 0
  br i1 %i.kt, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kv = load ptr, ptr %i.u, align 8
  %i.kw = getelementptr i8, ptr %i.kv, i64 16
  %i.kx = load i32, ptr %i.kw, align 16
  %i.ky = trunc i16 %i.ks to i8
  %i.kz = load i64, ptr %i.ku, align 16
  call void @quota_send_warning(i64 %i.kz, i32 noundef %i.kx, i8 noundef zeroext %i.ky) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.lb = load i16, ptr %i.la, align 16           ; 2 uses
  %i.lc = icmp eq i16 %i.lb, 0
  br i1 %i.lc, label %flush_warnings.exit184, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.le = load ptr, ptr %i.aa, align 16
  %i.lf = getelementptr i8, ptr %i.le, i64 16
  %i.lg = load i32, ptr %i.lf, align 16
  %i.lh = trunc i16 %i.lb to i8
  %i.li = load i64, ptr %i.ld, align 8
  call void @quota_send_warning(i64 %i.li, i32 noundef %i.lg, i8 noundef zeroext %i.lh) #12
  br label %flush_warnings.exit184

flush_warnings.exit184:                           ; preds = %bb.bk, %bb.bl
  br i1 %.not128, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %flush_warnings.exit184
  store ptr %i.gc, ptr %1, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %flush_warnings.exit184, %bb.bm
  br i1 %.not128.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.gl, ptr %i.bw, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %.not128.2, label %flush_warnings.exit201, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.gu, ptr %i.ck, align 8
  br label %flush_warnings.exit201

.loopexit:                                        ; preds = %bb.k, %bb.j
  %i.lj = getelementptr i8, ptr %i.bj, i64 120    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.lj, i32 -5, ptr elementtype(i8) %i.lj) #13, !srcloc !19
  %i.lk = load ptr, ptr %.lcssa229, align 8
  %i.ll = getelementptr i8, ptr %i.lk, i64 88
  call void @_raw_spin_unlock(ptr noundef %i.ll) #12
  br i1 %.not225, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r, %bb.n, %.loopexit
  %.5289 = phi i32 [ %.lcssa227, %.loopexit ], [ %i.cv, %bb.r ], [ %i.ch, %bb.n ]
  %.1220233288 = phi i64 [ %.1220.lcssa231.wide, %.loopexit ], [ 2, %bb.r ], [ 1, %bb.n ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.by
  %indvars.iv = phi i64 [ %.1220233288, %.lr.ph.preheader ], [ %i.lm, %bb.by ] ; 2 uses
  %i.lm = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ln = getelementptr i8, ptr %i.c, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1
  %.not136 = icmp eq i8 %i.lo, 0
  br i1 %.not136, label %bb.by, label %bb.br

bb.br:                                            ; preds = %.lr.ph
  %i.lp = getelementptr [8 x i8], ptr %1, i64 %i.lm ; 5 uses
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = getelementptr i8, ptr %i.lq, i64 88
  call void @_raw_spin_lock(ptr noundef %i.lr) #12
  %i.ls = load ptr, ptr %i.lp, align 8            ; 5 uses
  %i.lt = load i64, ptr %i.a, align 8             ; 2 uses
  %i.lu = getelementptr i8, ptr %i.ls, i64 96
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = getelementptr i8, ptr %i.lv, i64 248
  %i.lx = load i32, ptr %i.lw, align 8
  %i.ly = and i32 %i.lx, 1024
  %.not.i185 = icmp eq i32 %i.ly, 0
  %i.lz = getelementptr i8, ptr %i.ls, i64 176    ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8            ; 2 uses
  %.not9.i186 = icmp slt i64 %i.ma, %i.lt
  %or.cond.i187 = select i1 %.not.i185, i1 %.not9.i186, i1 false
  %i.mb = sub i64 %i.ma, %i.lt
  %storemerge209 = select i1 %or.cond.i187, i64 0, i64 %i.mb ; 2 uses
  store i64 %storemerge209, ptr %i.lz, align 8
  %i.mc = getelementptr i8, ptr %i.ls, i64 168
  %i.md = load i64, ptr %i.mc, align 8
  %.not10.i189 = icmp sgt i64 %storemerge209, %i.md
  br i1 %.not10.i189, label %dquot_decr_inodes.exit190, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.me = getelementptr i8, ptr %i.ls, i64 192
  store i64 0, ptr %i.me, align 8
  br label %dquot_decr_inodes.exit190

dquot_decr_inodes.exit190:                        ; preds = %bb.br, %bb.bs
  %i.mf = getelementptr i8, ptr %i.ls, i64 120    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.mf, i32 -5, ptr elementtype(i8) %i.mf) #13, !srcloc !19
  %i.mg = load ptr, ptr %i.lp, align 8            ; 6 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 96
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = getelementptr i8, ptr %i.mi, i64 248
  %i.mk = load i32, ptr %i.mj, align 8
  %i.ml = and i32 %i.mk, 1024
  %.not.i191 = icmp eq i32 %i.ml, 0
  %i.mm = getelementptr i8, ptr %i.mg, i64 144    ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8            ; 2 uses
  %.not10.i192 = icmp slt i64 %i.mn, %i.aj
  %or.cond.i193 = select i1 %.not.i191, i1 %.not10.i192, i1 false
  %i.mo = sub i64 %i.mn, %i.aj
  %storemerge210 = select i1 %or.cond.i193, i64 0, i64 %i.mo ; 2 uses
  store i64 %storemerge210, ptr %i.mm, align 8
  %i.mp = getelementptr i8, ptr %i.mg, i64 152
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = add i64 %storemerge210, %i.mq
  %i.ms = getelementptr i8, ptr %i.mg, i64 136
  %i.mt = load i64, ptr %i.ms, align 8
  %.not11.i195 = icmp sgt i64 %i.mr, %i.mt
  br i1 %.not11.i195, label %dquot_decr_space.exit196, label %bb.bt

bb.bt:                                            ; preds = %dquot_decr_inodes.exit190
  %i.mu = getelementptr i8, ptr %i.mg, i64 184
  store i64 0, ptr %i.mu, align 8
  br label %dquot_decr_space.exit196

dquot_decr_space.exit196:                         ; preds = %dquot_decr_inodes.exit190, %bb.bt
  %i.mv = getelementptr i8, ptr %i.mg, i64 120    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.mv, i32 -3, ptr elementtype(i8) %i.mv) #13, !srcloc !19
  %i.mw = load ptr, ptr %i.lp, align 8            ; 5 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 152    ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8            ; 2 uses
  %.not.i197 = icmp slt i64 %i.my, %.0.i
  br i1 %.not.i197, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %dquot_decr_space.exit196
  %i.mz = sub i64 %i.my, %.0.i
  br label %bb.bw

bb.bv:                                            ; preds = %dquot_decr_space.exit196
  call void asm sideeffect "676: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 676b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 676) #13, !srcloc !33
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 1159, i32 2307, i64 16) #13, !srcloc !34
  call void asm sideeffect "677: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 677b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 677) #13, !srcloc !35
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %storemerge.i198 = phi i64 [ 0, %bb.bv ], [ %i.mz, %bb.bu ] ; 2 uses
  store i64 %storemerge.i198, ptr %i.mx, align 8
  %i.na = getelementptr i8, ptr %i.mw, i64 144
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = add i64 %i.nb, %storemerge.i198
  %i.nd = getelementptr i8, ptr %i.mw, i64 136
  %i.ne = load i64, ptr %i.nd, align 8
  %.not13.i199 = icmp sgt i64 %i.nc, %i.ne
  br i1 %.not13.i199, label %dquot_free_reserved_space.exit200, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nf = getelementptr i8, ptr %i.mw, i64 184
  store i64 0, ptr %i.nf, align 8
  br label %dquot_free_reserved_space.exit200

dquot_free_reserved_space.exit200:                ; preds = %bb.bw, %bb.bx
  %i.ng = getelementptr i8, ptr %i.mw, i64 120    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ng, i32 -3, ptr elementtype(i8) %i.ng) #13, !srcloc !19
  %i.nh = load ptr, ptr %i.lp, align 8
  %i.ni = getelementptr i8, ptr %i.nh, i64 88
  call void @_raw_spin_unlock(ptr noundef %i.ni) #12
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph, %dquot_free_reserved_space.exit200
  %i.nj = trunc nuw i64 %indvars.iv to i32
  %i.nk = icmp sgt i32 %i.nj, 1
  br i1 %i.nk, label %.lr.ph, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.by, %bb.h, %.loopexit
  %.5290 = phi i32 [ %i.be, %bb.h ], [ %.lcssa227, %.loopexit ], [ %.5289, %bb.by ] ; 2 uses
  call void @_raw_spin_unlock(ptr noundef %i.ac) #12
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #12
  %i.nl = load i16, ptr %i.n, align 16            ; 2 uses
  %i.nm = icmp eq i16 %i.nl, 0
  br i1 %i.nm, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.no = load ptr, ptr %2, align 16
  %i.np = getelementptr i8, ptr %i.no, i64 16
  %i.nq = load i32, ptr %i.np, align 16
  %i.nr = trunc i16 %i.nl to i8
  %i.ns = load i64, ptr %i.nn, align 8
  call void @quota_send_warning(i64 %i.ns, i32 noundef %i.nq, i8 noundef zeroext %i.nr) #12
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.nu = load i16, ptr %i.nt, align 8            ; 2 uses
  %i.nv = icmp eq i16 %i.nu, 0
  br i1 %i.nv, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.nx = load ptr, ptr %i.q, align 8
  %i.ny = getelementptr i8, ptr %i.nx, i64 16
  %i.nz = load i32, ptr %i.ny, align 16
  %i.oa = trunc i16 %i.nu to i8
  %i.ob = load i64, ptr %i.nw, align 16
  call void @quota_send_warning(i64 %i.ob, i32 noundef %i.nz, i8 noundef zeroext %i.oa) #12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.od = load i16, ptr %i.oc, align 16           ; 2 uses
  %i.oe = icmp eq i16 %i.od, 0
  br i1 %i.oe, label %flush_warnings.exit201, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.og = load ptr, ptr %i.w, align 16
  %i.oh = getelementptr i8, ptr %i.og, i64 16
  %i.oi = load i32, ptr %i.oh, align 16
  %i.oj = trunc i16 %i.od to i8
  %i.ok = load i64, ptr %i.of, align 8
  call void @quota_send_warning(i64 %i.ok, i32 noundef %i.oi, i8 noundef zeroext %i.oj) #12
  br label %flush_warnings.exit201

flush_warnings.exit201:                           ; preds = %bb.bp, %bb.bq, %bb.cd, %bb.cc, %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ %.5290, %bb.cd ], [ %.5290, %bb.cc ], [ %.4113, %bb.bq ], [ %.4113, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @dquot_transfer(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %inode_quota_active.exit, label %inode_quota_active.exit.thread

inode_quota_active.exit:                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 248
  %.val.i = load i32, ptr %i.g, align 8           ; 2 uses
  %i.h = and i32 %.val.i, 7
  %i.i = lshr i32 %.val.i, 6
  %i.j = xor i32 %i.i, -1
  %i.k = and i32 %i.h, %i.j
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %inode_quota_active.exit.thread, label %bb.b

bb.b:                                             ; preds = %inode_quota_active.exit
end_hunk_0
