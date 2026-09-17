Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rc80211_minstrel_ht?download=true
inline.NumInlined: 93
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@minstrel_ht_tx_status:bb.a
  %i.vt = getelementptr i8, ptr %i.vs, i64 2
  %i.vu = load i8, ptr %i.vt, align 2
  %i.vv = load i8, ptr %i.vo, align 2
  %i.vw = icmp ugt i8 %i.vu, %i.vv
  br i1 %i.vw, label %.backedge.i, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.ct
  %i.vx = getelementptr [252 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.vy = getelementptr i8, ptr %i.vx, i64 242
  %i.vz = load i16, ptr %i.vy, align 2
  store i16 %i.vz, ptr %i.uw, align 4
  br label %minstrel_downgrade_rate.exit

minstrel_downgrade_rate.exit:                     ; preds = %.backedge.i, %.loopexit.sink.split.i, %bb.cr, %bb.cq, %bb.cp
  %.090 = phi i1 [ false, %bb.cp ], [ false, %bb.cq ], [ true, %bb.cr ], [ true, %.loopexit.sink.split.i ], [ true, %.backedge.i ] ; 2 uses
  %i.wa = getelementptr i8, ptr %2, i64 22        ; 2 uses
  %i.wb = load i16, ptr %i.wa, align 2            ; 2 uses
  %i.wc = zext i16 %i.wb to i64                   ; 2 uses
  %i.wd = lshr i64 %i.wc, 4
  %i.we = getelementptr [252 x i8], ptr %2, i64 %i.wd
  %i.wf = getelementptr i8, ptr %i.we, i64 252
  %i.wg = and i64 %i.wc, 15
  %i.wh = getelementptr [24 x i8], ptr %i.wf, i64 %i.wg ; 2 uses
  %i.wi = load i16, ptr %i.wh, align 4            ; 2 uses
  %i.wj = icmp ugt i16 %i.wi, 30
  br i1 %i.wj, label %bb.cu, label %minstrel_downgrade_rate.exit138

bb.cu:                                            ; preds = %minstrel_downgrade_rate.exit
  %i.wk = getelementptr i8, ptr %i.wh, i64 4
  %i.wl = load i16, ptr %i.wk, align 4
  %i.wm = lshr i16 %i.wi, 2
  %i.wn = icmp ult i16 %i.wl, %i.wm
  br i1 %i.wn, label %bb.cv, label %minstrel_downgrade_rate.exit138

bb.cv:                                            ; preds = %bb.cu
  %i.wo = lshr i16 %i.wb, 4                       ; 2 uses
  %.not16.i131 = icmp eq i16 %i.wo, 0
  br i1 %.not16.i131, label %minstrel_downgrade_rate.exit138, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.cv
  %i.wp = getelementptr i8, ptr %2, i64 154
  %i.wq = zext nneg i16 %i.wo to i64              ; 2 uses
  %i.wr = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.wq
  %i.ws = getelementptr i8, ptr %i.wr, i64 2
  br label %bb.cw

bb.cw:                                            ; preds = %.backedge.i137, %.lr.ph.i132
  %indvars.iv.i133 = phi i64 [ %i.wq, %.lr.ph.i132 ], [ %indvars.iv.next.i134, %.backedge.i137 ] ; 2 uses
  %indvars.iv.next.i134 = add nsw i64 %indvars.iv.i133, -1 ; 4 uses
  %i.wt = getelementptr [2 x i8], ptr %i.wp, i64 %indvars.iv.next.i134
  %i.wu = load i16, ptr %i.wt, align 2
  %.not.i135 = icmp eq i16 %i.wu, 0
  br i1 %.not.i135, label %.backedge.i137, label %bb.cx

.backedge.i137:                                   ; preds = %bb.cx, %bb.cw
  %i.wv = icmp samesign ugt i64 %indvars.iv.i133, 1
  br i1 %i.wv, label %bb.cw, label %minstrel_downgrade_rate.exit138, !llvm.loop !23

bb.cx:                                            ; preds = %bb.cw
  %i.ww = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %indvars.iv.next.i134
  %i.wx = getelementptr i8, ptr %i.ww, i64 2
  %i.wy = load i8, ptr %i.wx, align 2
  %i.wz = load i8, ptr %i.ws, align 2
  %i.xa = icmp ugt i8 %i.wy, %i.wz
  br i1 %i.xa, label %.backedge.i137, label %.loopexit.sink.split.i136

.loopexit.sink.split.i136:                        ; preds = %bb.cx
  %i.xb = getelementptr [252 x i8], ptr %2, i64 %indvars.iv.next.i134
  %i.xc = getelementptr i8, ptr %i.xb, i64 244
  %i.xd = load i16, ptr %i.xc, align 2
  store i16 %i.xd, ptr %i.wa, align 2
  br label %minstrel_downgrade_rate.exit138

minstrel_downgrade_rate.exit138:                  ; preds = %.backedge.i137, %.loopexit.sink.split.i136, %bb.cv, %minstrel_downgrade_rate.exit, %bb.cu
  %.191 = phi i1 [ true, %.loopexit.sink.split.i136 ], [ %.090, %bb.cu ], [ %.090, %minstrel_downgrade_rate.exit ], [ true, %bb.cv ], [ true, %.backedge.i137 ]
  %i.xe = getelementptr i8, ptr %2, i64 32
  %i.xf = load i64, ptr %i.xe, align 8
  %i.xg = zext i32 %i.e to i64
  %i.xh = add i64 %i.xf, %i.xg
  %i.xi = load volatile i64, ptr @jiffies, align 64
  %i.xj = sub i64 %i.xh, %i.xi
  %i.xk = icmp slt i64 %i.xj, 0
  br i1 %i.xk, label %.critedge, label %bb.cy

minstrel_downgrade_rate.exit138.thread:           ; preds = %.loopexit
  %i.xl = getelementptr i8, ptr %2, i64 32
  %i.xm = load i64, ptr %i.xl, align 8
  %i.xn = zext i32 %i.e to i64
  %i.xo = add i64 %i.xm, %i.xn
  %i.xp = load volatile i64, ptr @jiffies, align 64
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = icmp slt i64 %i.xq, 0
  br i1 %i.xr, label %.critedge, label %.thread

.critedge:                                        ; preds = %minstrel_downgrade_rate.exit138.thread, %minstrel_downgrade_rate.exit138
  tail call fastcc void @minstrel_ht_update_stats(ptr noundef %0, ptr noundef %2) #17, !srcloc !24
  br label %bb.cz

bb.cy:                                            ; preds = %minstrel_downgrade_rate.exit138
  br i1 %.191, label %bb.cz, label %.thread

bb.cz:                                            ; preds = %.critedge, %bb.cy
  tail call fastcc void @minstrel_ht_update_rates(ptr noundef %0, ptr noundef %2) #17, !srcloc !25
  br label %.thread

.thread:                                          ; preds = %minstrel_downgrade_rate.exit138.thread, %bb.cy, %bb.cz, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @minstrel_ht_get_rate(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40       ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 48
  %i.e = getelementptr i8, ptr %2, i64 64
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr %i.c, align 8
  %i.h = or i32 %i.g, %i.f
  store i32 %i.h, ptr %i.c, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 141
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.b, i64 80
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 1
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %minstrel_ht_get_sample_rate.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load volatile i64, ptr @jiffies, align 64
  %i.q = getelementptr i8, ptr %2, i64 80         ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.p, %i.r
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %minstrel_ht_get_sample_rate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load volatile i64, ptr @jiffies, align 64
  %i.v = add i64 %i.u, 20
  store i64 %i.v, ptr %i.q, align 8
  %.val = load ptr, ptr %0, align 8
  %i.w = getelementptr i8, ptr %.val, i64 141
  %.val.val = load i8, ptr %i.w, align 1
  %i.x = icmp ugt i8 %.val.val, 1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %2, i64 70         ; 2 uses
  %i.z = load i8, ptr %i.y, align 2               ; 2 uses
  %i.aa = zext i8 %i.z to i16
  %i.ab = add nuw nsw i16 %i.aa, 1
  %i.ac = urem i16 %i.ab, 6
  %i.ad = trunc nuw nsw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.y, align 2
  %i.ae = zext i8 %i.z to i64
  %i.af = getelementptr i8, ptr @minstrel_sample_seq, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ]
  %i.ai = getelementptr [22 x i8], ptr %2, i64 %.0.i ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 90     ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %.not.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.ai, i64 92
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not.1.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.1.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.ai, i64 94
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %.not.2.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.2.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %i.ai, i64 96
  %i.aq = load i16, ptr %i.ap, align 2            ; 2 uses
  %.not.3.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.3.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.ai, i64 98
  %i.as = load i16, ptr %i.ar, align 2            ; 2 uses
  %.not.4.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.4.i.i, label %minstrel_ht_get_sample_rate.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa17.i.i = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ]
  %.lcssa.i.i = phi i16 [ %i.ak, %bb.f ], [ %i.am, %bb.g ], [ %i.ao, %bb.h ], [ %i.aq, %bb.i ], [ %i.as, %bb.j ] ; 4 uses
  %i.at = getelementptr [2 x i8], ptr %i.aj, i64 %.lcssa17.i.i
  store i16 0, ptr %i.at, align 2
  %i.au = lshr i16 %.lcssa.i.i, 4                 ; 3 uses
  %i.av = zext nneg i16 %i.au to i64
  %.idx = mul nuw nsw i64 %i.av, 26
  %i.aw = getelementptr i8, ptr @minstrel_mcs_groups, i64 %.idx ; 3 uses
  %i.ax = and i16 %.lcssa.i.i, 15                 ; 2 uses
  %i.ay = icmp eq i16 %i.au, 16                   ; 2 uses
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = icmp samesign ugt i16 %i.ax, 3
  %i.ba = getelementptr i8, ptr %3, i64 36
  %i.bb = load i8, ptr %i.ba, align 4, !range !12, !noundef !13
  %i.bc = zext i1 %i.az to i8
  %.not47 = icmp eq i8 %i.bb, %i.bc
  br i1 %.not47, label %bb.m, label %minstrel_ht_get_sample_rate.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = load i32, ptr %i.c, align 8
  %i.be = or i32 %i.bd, 4096
  store i32 %i.be, ptr %i.c, align 8
  %i.bf = getelementptr i8, ptr %i.b, i64 49      ; 4 uses
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = and i16 %i.bg, -32
  %i.bi = or disjoint i16 %i.bh, 1
  store i16 %i.bi, ptr %i.bf, align 1
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = and i16 %.lcssa.i.i, 3
  %i.bk = getelementptr i8, ptr %0, i64 28
  %i.bl = zext nneg i16 %i.bj to i64
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bo = icmp eq i16 %i.au, 17
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = and i16 %.lcssa.i.i, 7
  %i.bq = getelementptr i8, ptr %0, i64 32
  %i.br = getelementptr i8, ptr %2, i64 69
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr [8 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = zext nneg i16 %i.bp to i64
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %4 = load i16, ptr %i.aw, align 2
  %5 = and i16 %4, 256
  %.not48 = icmp eq i16 %5, 0
  %i.by = trunc nuw nsw i16 %i.ax to i8           ; 2 uses
  %i.bz = getelementptr i8, ptr %i.aw, i64 2
  %i.ca = load i8, ptr %i.bz, align 2             ; 2 uses
  br i1 %.not48, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 7
  br i1 %i.cd, label %bb.s, label %ieee80211_rate_set_vht.exit, !prof !14

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "762: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 762b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 762) #14, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.4, i32 1288, i32 2305, i64 16) #14, !srcloc !27
  tail call void asm sideeffect "763: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 763b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 763) #14, !srcloc !28
  %.pre.pre = load i16, ptr %i.bf, align 1
  %i.ce = and i16 %.pre.pre, 31
  br label %ieee80211_rate_set_vht.exit

ieee80211_rate_set_vht.exit:                      ; preds = %bb.r, %bb.s
  %.pre = phi i16 [ 1, %bb.r ], [ %i.ce, %bb.s ]
  %.tr.i = trunc i32 %i.cc to i8
  %i.cf = shl i8 %.tr.i, 4
  %i.cg = or disjoint i8 %i.cf, %i.by
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ch = shl i8 %i.ca, 3
  %i.ci = add nsw i8 %i.by, -8
  %i.cj = add i8 %i.ci, %i.ch
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t, %ieee80211_rate_set_vht.exit, %bb.n
  %.sink = phi i8 [ %i.bx, %bb.p ], [ %i.cj, %bb.t ], [ %i.cg, %ieee80211_rate_set_vht.exit ], [ %i.bn, %bb.n ]
  %i.ck = phi i16 [ 1, %bb.p ], [ 1, %bb.t ], [ %.pre, %ieee80211_rate_set_vht.exit ], [ 1, %bb.n ]
  store i8 %.sink, ptr %i.d, align 8
  %i.cl = load i16, ptr %i.aw, align 2
  %i.cm = shl i16 %i.cl, 5
  %i.cn = or disjoint i16 %i.ck, %i.cm
  store i16 %i.cn, ptr %i.bf, align 1
  br label %minstrel_ht_get_sample_rate.exit.thread

minstrel_ht_get_sample_rate.exit.thread:          ; preds = %bb.j, %bb.l, %bb.c, %bb.b, %bb.u
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -2097152, 2097152) i32 @minstrel_ht_get_expected_throughput(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4              ; 4 uses
  %i.c = lshr i16 %i.b, 4
  %i.d = and i16 %i.b, 15
  %i.e = zext nneg i16 %i.c to i64                ; 2 uses
  %i.f = getelementptr [252 x i8], ptr %0, i64 %i.e
  %i.g = zext nneg i16 %i.d to i64                ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 268
  %i.j = load i16, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp ult i16 %i.j, 409
  br i1 %i.m, label %minstrel_ht_get_tp_avg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = and i16 %i.b, -32
  %i.o = icmp eq i16 %i.n, 256
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8
  br label %minstrel_ht_avg_ampdu_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = lshr i32 %i.s, 12
  br label %minstrel_ht_avg_ampdu_len.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = zext i16 %i.b to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 6
  %i.y = and i64 %i.u, 15
  %i.z = getelementptr [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = zext i16 %i.aa to i32
  %i.ac = getelementptr i8, ptr %i.w, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl i32 %i.ab, %i.ae                    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 400000
  br i1 %i.ag, label %minstrel_ht_avg_ampdu_len.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp sgt i32 %i.af, 250000
  br i1 %i.ah, label %minstrel_ht_avg_ampdu_len.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp sgt i32 %i.af, 150000
  %..i.i = select i1 %i.ai, i32 8, i32 16
  br label %minstrel_ht_avg_ampdu_len.exit.i

minstrel_ht_avg_ampdu_len.exit.i:                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.014.i = phi i32 [ %i.q, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.h ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  %.0.i = phi i32 [ 1, %bb.c ], [ %i.t, %bb.e ], [ %..i.i, %bb.h ], [ 2, %bb.f ], [ 4, %bb.g ]
  %i.aj = mul i32 %.014.i, 1000
  %i.ak = udiv i32 %i.aj, %.0.i
  %i.al = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.e ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 6
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.g
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.al, i64 3
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl i32 %i.ap, %i.as
  %i.au = add i32 %i.at, %i.ak
  %i.av = tail call i16 @llvm.umin.i16(i16 %i.j, i16 3686)
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = mul nuw i32 %i.aw, 1000000
  %i.ay = udiv i32 %i.ax, %i.au
  %i.az = mul i32 %i.ay, 100
  %i.ba = lshr i32 %i.az, 12
  %i.bb = mul i32 %i.ba, 96000
  %i.bc = sdiv i32 %i.bb, 1024
  br label %minstrel_ht_get_tp_avg.exit

minstrel_ht_get_tp_avg.exit:                      ; preds = %bb.a, %minstrel_ht_avg_ampdu_len.exit.i
  %.015.i = phi i32 [ %i.bc, %minstrel_ht_avg_ampdu_len.exit.i ], [ 0, %bb.a ]
  ret i32 %.015.i
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_large_noprof(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @minstrel_ht_update_caps(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef initializes((0, 10824)) %3) unnamed_addr #4 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 236
  %i.b = load i16, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 260        ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 272
  %i.g = load i16, ptr %i.f, align 4
  %i.h = icmp ne i16 %i.g, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0108 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10816) %i.i, i8 0, i64 10816, i1 false)
  store ptr %2, ptr %3, align 8
  %i.j = getelementptr i8, ptr %1, i64 16         ; 17 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr i8, ptr %3, i64 69
  store i8 %i.l, ptr %i.m, align 1
  %i.n = load volatile i64, ptr @jiffies, align 64
  %i.o = getelementptr i8, ptr %3, i64 32
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %i.j, align 8
  %i.q = tail call i32 @ieee80211_frame_duration(i32 noundef %i.p, i64 noundef 10, i32 noundef 60, i32 noundef 1, i32 noundef 1) #13 ; 2 uses
  %i.r = load i32, ptr %i.j, align 8
  %i.s = tail call i32 @ieee80211_frame_duration(i32 noundef %i.r, i64 noundef 0, i32 noundef 60, i32 noundef 1, i32 noundef 1) #13
  %i.t = getelementptr i8, ptr %3, i64 40
  %i.u = add i32 %i.s, %i.q                       ; 2 uses
  store i32 %i.u, ptr %i.t, align 8
  %i.v = shl i32 %i.q, 1
  %i.w = add i32 %i.u, %i.v
  %i.x = getelementptr i8, ptr %3, i64 44
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %1, i64 8          ; 9 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ad = icmp eq ptr %2, null
  %.pre6 = load i32, ptr %i.j, align 8            ; 3 uses
  br i1 %i.ad, label %rate_lowest_index.exit, label %.lr.ph.split.i

end_hunk_0
