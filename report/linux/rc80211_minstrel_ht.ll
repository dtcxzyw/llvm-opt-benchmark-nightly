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
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.4, i32 1288, i32 2305, i64 16) #14, !srcloc !27
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
  %.pre6.a = load i32, ptr %i.j, align 8          ; 3 uses
  br i1 %i.ad, label %rate_lowest_index.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ae = getelementptr i8, ptr %2, i64 212
  %i.af = zext i32 %.pre6.a to i64
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %wide.trip.count.i = zext nneg i32 %i.ab to i64
  br label %rate_supported.exit.i

rate_supported.exit.i:                            ; preds = %bb.d, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.aj = shl nuw i64 1, %indvars.iv.i
  %i.ak = and i64 %i.aj, %i.ai
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.d, label %rate_supported.exit.thread.split.loopexit.i

rate_supported.exit.thread.split.loopexit.i:      ; preds = %rate_supported.exit.i
  %i.al = shl i64 %indvars.iv.i, 56
  %i.am = ashr exact i64 %i.al, 56
  br label %rate_lowest_index.exit

bb.d:                                             ; preds = %rate_supported.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %rate_supported.exit.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "775: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 775b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 775) #14, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.4, i32 7374, i32 2307, i64 16) #14, !srcloc !32
  tail call void asm sideeffect "776: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 776b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 776) #14, !srcloc !33
  %.pre = load i32, ptr %i.j, align 8
  br label %rate_lowest_index.exit

rate_lowest_index.exit:                           ; preds = %.lr.ph.i, %rate_supported.exit.thread.split.loopexit.i, %._crit_edge.i
  %i.an = phi i32 [ %.pre, %._crit_edge.i ], [ %.pre6.a, %.lr.ph.i ], [ %.pre6.a, %rate_supported.exit.thread.split.loopexit.i ]
  %.0.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %.lr.ph.i ], [ %i.am, %rate_supported.exit.thread.split.loopexit.i ]
  %i.ao = getelementptr [12 x i8], ptr %i.z, i64 %.0.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %i.ao, i64 4
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = zext i16 %i.ar to i32
  %i.at = lshr i32 %i.ap, 4
  %.lobit = and i32 %i.at, 1
  %i.au = tail call i32 @ieee80211_frame_duration(i32 noundef %i.an, i64 noundef 10, i32 noundef %i.as, i32 noundef %.lobit, i32 noundef 1) #13 ; 2 uses
  %i.av = getelementptr i8, ptr %3, i64 48
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = mul i32 %i.au, 3
  %i.ax = getelementptr i8, ptr %3, i64 52
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %3, i64 16
  store i32 4096, ptr %i.ay, align 8
  br i1 %.0108, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rate_lowest_index.exit
  %i.az = lshr i16 %i.b, 8
  %i.ba = and i16 %i.az, 3
  %i.bb = zext nneg i16 %i.ba to i32
  %i.bc = trunc i16 %i.b to i8
  br label %bb.g

bb.f:                                             ; preds = %rate_lowest_index.exit
  %i.bd = getelementptr i8, ptr %2, i64 264
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = lshr i32 %i.be, 8
  %i.bg = and i32 %i.bf, 7
  %i.bh = trunc i32 %i.be to i8
  %i.bi = lshr i8 %i.bh, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0109.in = phi i8 [ %i.bi, %bb.f ], [ %i.bc, %bb.e ]
  %.0107 = phi i32 [ %i.bg, %bb.f ], [ %i.bb, %bb.e ]
  %i.bj = shl nuw nsw i32 %.0107, 23
  %i.bk = getelementptr i8, ptr %3, i64 64        ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bj                     ; 2 uses
  %i.bn = trunc i8 %.0109.in to i1
  %i.bo = or i32 %i.bm, 4194304
  %spec.select = select i1 %i.bn, i32 %i.bo, i32 %i.bm
  store i32 %spec.select, ptr %i.bk, align 8
  %i.bp = getelementptr i8, ptr %3, i64 154
  %i.bq = and i16 %i.b, 64
  %.not115 = icmp eq i16 %i.bq, 0
  %i.br = and i16 %i.b, 32
  %.not114 = icmp eq i16 %i.br, 0
  %i.bs = getelementptr i8, ptr %2, i64 452       ; 2 uses
  %i.bt = getelementptr i8, ptr %2, i64 208
  %i.bu = getelementptr i8, ptr %2, i64 264
  %i.bv = getelementptr i8, ptr %2, i64 272
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.ae
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.ae ] ; 4 uses
  %i.bw = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %indvars.iv ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i32                   ; 6 uses
  %i.bz = getelementptr [2 x i8], ptr %i.bp, i64 %indvars.iv ; 3 uses
  store i16 0, ptr %i.bz, align 2
  %i.ca = and i64 %indvars.iv, 62
  %i.cb = icmp eq i64 %i.ca, 16
  br i1 %i.cb, label %bb.ae, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = and i32 %i.by, 128
  %.not112 = icmp eq i32 %i.cc, 0                 ; 2 uses
  %.pre7 = and i32 %i.by, 32
  %i.cd = icmp eq i32 %.pre7, 0                   ; 2 uses
  br i1 %.not112, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.cd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not115, label %bb.ae, label %.thread27

bb.l:                                             ; preds = %bb.j
  br i1 %.not114, label %bb.ae, label %.thread

bb.m:                                             ; preds = %bb.i
  br i1 %i.cd, label %.thread, label %.thread27

.thread27:                                        ; preds = %bb.k, %bb.m
  %i.ce = load i32, ptr %i.bs, align 4
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ae, label %.thread

.thread:                                          ; preds = %bb.l, %.thread27, %bb.m
  %.pre-phi26 = phi i1 [ true, %bb.m ], [ false, %.thread27 ], [ true, %bb.l ]
  %i.cg = getelementptr i8, ptr %i.bw, i64 2
  %i.ch = load i8, ptr %i.cg, align 2             ; 6 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = load i32, ptr %i.bt, align 8
  %i.ck = icmp eq i32 %i.cj, 2
  %4 = icmp ugt i8 %i.ch, 1
  %or.cond = select i1 %i.ck, i1 %4, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.cl = and i32 %i.by, 8
  %.not117 = icmp eq i32 %i.cl, 0
  br i1 %.not117, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = load i8, ptr @minstrel_vht_only, align 1, !range !12
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond3 = select i1 %.0108, i1 %i.cn, i1 false
  br i1 %or.cond3, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = zext i8 %i.ch to i64
  %i.cp = getelementptr i8, ptr %2, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 240
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i16
  store i16 %i.cs, ptr %i.bz, align 2
  br label %bb.ae

bb.q:                                             ; preds = %bb.n
  %i.ct = load i8, ptr %i.c, align 4, !range !12, !noundef !13
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.cv = and i32 %i.by, 256
  %.not118 = icmp eq i32 %i.cv, 0
  br i1 %.not118, label %bb.s, label %.critedge, !prof !14

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "2495: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2495b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2495) #14, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.3, i32 1797, i32 2305, i64 16) #14, !srcloc !35
  tail call void asm sideeffect "2496: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2496b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2496) #14, !srcloc !36
  br label %bb.ae

.critedge:                                        ; preds = %bb.r
  %i.cw = and i32 %i.by, 1024
  %.not119 = icmp eq i32 %i.cw, 0
  br i1 %.not119, label %.critedge123, label %bb.t, !prof !15

bb.t:                                             ; preds = %.critedge
  tail call void asm sideeffect "2497: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2497b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2497) #14, !srcloc !37
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.3, i32 1798, i32 2305, i64 16) #14, !srcloc !38
  tail call void asm sideeffect "2498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2498b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2498) #14, !srcloc !39
  br label %bb.ae

.critedge123:                                     ; preds = %.critedge
  %i.cx = and i32 %i.by, 512                      ; 2 uses
  %.not120 = icmp eq i32 %i.cx, 0
  br i1 %.not120, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.critedge123
  %i.cy = load i32, ptr %i.bs, align 4
  %i.cz = icmp ult i32 %i.cy, 2
  br i1 %i.cz, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not112, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = load i32, ptr %i.bu, align 8
  %i.db = and i32 %i.da, 32
  %.not121 = icmp eq i32 %i.db, 0
  br i1 %.not121, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.critedge123
  %. = lshr exact i32 %i.cx, 8
  %.0 = select i1 %.pre-phi26, i32 %., i32 1
  %i.dc = load i16, ptr %i.bv, align 8
  switch i32 %.0, label %bb.aa [
    i32 0, label %bb.y
    i32 2, label %5
  ]

bb.y:                                             ; preds = %bb.x
  %switch.selectcmp.case1.i = icmp eq i8 %i.ch, 6
  %switch.selectcmp.case2.i = icmp eq i8 %i.ch, 3
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.dd = select i1 %switch.selectcmp.i, i16 0, i16 512
  br label %bb.aa

5:                                                ; preds = %bb.x
  %6 = and i32 %i.ci, 251
  %or.cond3.i = icmp eq i32 %6, 3
  br i1 %or.cond3.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %5
  %or.cond3.i.a = icmp eq i8 %i.ch, 6
  %spec.select1 = select i1 %or.cond3.i.a, i16 512, i16 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %5, %bb.y, %bb.x
  %.0.i124 = phi i16 [ %i.dd, %bb.y ], [ %spec.select1, %bb.z ], [ 0, %bb.x ], [ 64, %5 ] ; 3 uses
  %i.de = zext i16 %i.dc to i32
  %i.df = shl nuw nsw i32 %i.ci, 1
  %i.dg = add nsw i32 %i.df, -2
  %i.dh = lshr i32 %i.de, %i.dg
  %i.di = and i32 %i.dh, 3
  switch i32 %i.di, label %default.unreachable [
    i32 0, label %bb.ab
    i32 1, label %bb.ac
    i32 2, label %minstrel_get_valid_vht_rates.exit
    i32 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dj = or i16 %.0.i124, 768
  br label %minstrel_get_valid_vht_rates.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dk = or i16 %.0.i124, 512
  br label %minstrel_get_valid_vht_rates.exit

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.aa
  br label %minstrel_get_valid_vht_rates.exit

minstrel_get_valid_vht_rates.exit:                ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.1.i = phi i16 [ %i.dj, %bb.ab ], [ %i.dk, %bb.ac ], [ %.0.i124, %bb.aa ], [ 1023, %bb.ad ]
  %i.dl = xor i16 %.1.i, 1023
  store i16 %i.dl, ptr %i.bz, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.s, %bb.u, %bb.w, %bb.q, %bb.o, %.thread, %.thread27, %bb.l, %bb.k, %bb.h, %minstrel_get_valid_vht_rates.exit, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 42
  br i1 %exitcond.not, label %test_sta_flag.exit, label %bb.h, !llvm.loop !30

test_sta_flag.exit:                               ; preds = %bb.ae
  %i.dm = getelementptr i8, ptr %2, i64 -2568
  %i.dn = load volatile i64, ptr %i.dm, align 8
  %i.do = and i64 %i.dn, 16
  %.not = icmp eq i64 %i.do, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %test_sta_flag.exit
  %i.dp = getelementptr i8, ptr %2, i64 -2704
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 5910
  %i.ds = load i8, ptr %i.dr, align 2, !range !12, !noundef !13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %test_sta_flag.exit
  %i.dt = phi i8 [ 0, %test_sta_flag.exit ], [ %i.ds, %bb.af ]
  %i.du = getelementptr i8, ptr %3, i64 68
  store i8 %i.dt, ptr %i.du, align 4
  %i.dv = load i32, ptr %i.j, align 8
  %.not.i125 = icmp eq i32 %i.dv, 0
  br i1 %.not.i125, label %bb.ah, label %minstrel_ht_update_cck.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr i8, ptr %2, i64 238
  %i.dx = load i8, ptr %i.dw, align 2, !range !12, !noundef !13
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %_ieee80211_hw_check.exit.i, label %bb.ai

_ieee80211_hw_check.exit.i:                       ; preds = %bb.ah
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = getelementptr i8, ptr %i.dz, i64 104
  %i.eb = load volatile i64, ptr %i.ea, align 8
  %i.ec = and i64 %i.eb, 67108864
  %.not20.i = icmp eq i64 %i.ec, 0
  br i1 %.not20.i, label %minstrel_ht_update_cck.exit, label %bb.ai

bb.ai:                                            ; preds = %_ieee80211_hw_check.exit.i, %bb.ah
  %i.ed = getelementptr i8, ptr %0, i64 28
  %i.ee = icmp eq ptr %2, null
  %i.ef = getelementptr i8, ptr %2, i64 212       ; 4 uses
  %i.eg = getelementptr i8, ptr %3, i64 186       ; 23 uses
  %i.eh = load i8, ptr %i.ed, align 1             ; 2 uses
  %i.ei = icmp eq i8 %i.eh, -1                    ; 2 uses
  br i1 %i.ee, label %.split23.us.preheader.i, label %.split23.preheader.i

.split23.preheader.i:                             ; preds = %bb.ai
  br i1 %i.ei, label %.split23.1.i, label %rate_supported.exit.i126

.split23.us.preheader.i:                          ; preds = %bb.ai
  br i1 %i.ei, label %.split23.us.1.i, label %rate_supported.exit.thread.us.i

rate_supported.exit.thread.us.i:                  ; preds = %.split23.us.preheader.i
  %i.ej = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.ek = or i16 %i.ej, 1
  store i16 %i.ek, ptr %i.eg, align 2
  %i.el = load ptr, ptr %i.y, align 8
  %i.em = load i32, ptr %i.el, align 4
  %i.en = and i32 %i.em, 1
  %.not18.us.i = icmp eq i32 %i.en, 0
  br i1 %.not18.us.i, label %.split23.us.1.i, label %bb.aj

bb.aj:                                            ; preds = %rate_supported.exit.thread.us.i
  %i.eo = or i16 %i.ej, 17
  store i16 %i.eo, ptr %i.eg, align 2
  br label %.split23.us.1.i

.split23.us.1.i:                                  ; preds = %bb.aj, %rate_supported.exit.thread.us.i, %.split23.us.preheader.i
  %i.ep = getelementptr i8, ptr %0, i64 29
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = icmp eq i8 %i.eq, -1
  br i1 %i.er, label %.split23.us.2.i, label %rate_supported.exit.thread.us.1.i

rate_supported.exit.thread.us.1.i:                ; preds = %.split23.us.1.i
  %i.es = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.et = or i16 %i.es, 2
  store i16 %i.et, ptr %i.eg, align 2
  %i.eu = load ptr, ptr %i.y, align 8
  %i.ev = getelementptr i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = and i32 %i.ew, 1
  %.not18.us.1.i = icmp eq i32 %i.ex, 0
  br i1 %.not18.us.1.i, label %.split23.us.2.i, label %bb.ak

bb.ak:                                            ; preds = %rate_supported.exit.thread.us.1.i
  %i.ey = or i16 %i.es, 34
  store i16 %i.ey, ptr %i.eg, align 2
  br label %.split23.us.2.i

.split23.us.2.i:                                  ; preds = %bb.ak, %rate_supported.exit.thread.us.1.i, %.split23.us.1.i
  %i.ez = getelementptr i8, ptr %0, i64 30
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp eq i8 %i.fa, -1
  br i1 %i.fb, label %.split23.us.3.i, label %rate_supported.exit.thread.us.2.i

rate_supported.exit.thread.us.2.i:                ; preds = %.split23.us.2.i
  %i.fc = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.fd = or i16 %i.fc, 4
  store i16 %i.fd, ptr %i.eg, align 2
  %i.fe = load ptr, ptr %i.y, align 8
  %i.ff = getelementptr i8, ptr %i.fe, i64 24
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = and i32 %i.fg, 1
  %.not18.us.2.i = icmp eq i32 %i.fh, 0
  br i1 %.not18.us.2.i, label %.split23.us.3.i, label %bb.al

bb.al:                                            ; preds = %rate_supported.exit.thread.us.2.i
  %i.fi = or i16 %i.fc, 68
  store i16 %i.fi, ptr %i.eg, align 2
  br label %.split23.us.3.i

.split23.us.3.i:                                  ; preds = %bb.al, %rate_supported.exit.thread.us.2.i, %.split23.us.2.i
  %i.fj = getelementptr i8, ptr %0, i64 31
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp eq i8 %i.fk, -1
  br i1 %i.fl, label %minstrel_ht_update_cck.exit, label %rate_supported.exit.thread.us.3.i

rate_supported.exit.thread.us.3.i:                ; preds = %.split23.us.3.i
  %i.fm = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.fn = or i16 %i.fm, 8
  store i16 %i.fn, ptr %i.eg, align 2
  %i.fo = load ptr, ptr %i.y, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 36
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = and i32 %i.fq, 1
  %.not18.us.3.i = icmp eq i32 %i.fr, 0
  br i1 %.not18.us.3.i, label %minstrel_ht_update_cck.exit, label %.loopexit.sink.split.i

rate_supported.exit.i126:                         ; preds = %.split23.preheader.i
  %i.fs = load i32, ptr %i.ef, align 4
  %i.ft = zext i32 %i.fs to i64
  %i.fu = zext nneg i8 %i.eh to i64
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  %.not17.i = icmp eq i64 %i.fw, 0
  br i1 %.not17.i, label %.split23.1.i, label %rate_supported.exit.thread.i

rate_supported.exit.thread.i:                     ; preds = %rate_supported.exit.i126
  %i.fx = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.fy = or i16 %i.fx, 1
  store i16 %i.fy, ptr %i.eg, align 2
  %i.fz = load ptr, ptr %i.y, align 8
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = and i32 %i.ga, 1
  %.not18.i = icmp eq i32 %i.gb, 0
  br i1 %.not18.i, label %.split23.1.i, label %bb.am

bb.am:                                            ; preds = %rate_supported.exit.thread.i
  %i.gc = or i16 %i.fx, 17
  store i16 %i.gc, ptr %i.eg, align 2
  br label %.split23.1.i

.split23.1.i:                                     ; preds = %bb.am, %rate_supported.exit.thread.i, %rate_supported.exit.i126, %.split23.preheader.i
  %i.gd = getelementptr i8, ptr %0, i64 29
  %i.ge = load i8, ptr %i.gd, align 1             ; 2 uses
  %i.gf = icmp eq i8 %i.ge, -1
  br i1 %i.gf, label %.split23.2.i, label %rate_supported.exit.1.i

rate_supported.exit.1.i:                          ; preds = %.split23.1.i
  %i.gg = load i32, ptr %i.j, align 8
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr [4 x i8], ptr %i.ef, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = zext i32 %i.gj to i64
end_hunk_0
begin_hunk_1_@llvm.memcpy.p0.p0.i64

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal fastcc range(i32 0, 5) i32 @minstrel_ht_move_sample_rates(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr [22 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 90       ; 6 uses
  %i.d = icmp eq i32 %1, 2                        ; 5 uses
  %i.e = load i16, ptr %i.c, align 2              ; 2 uses
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 6
  %i.j = and i64 %i.f, 15
  %i.k = getelementptr [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr i8, ptr %i.h, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl i32 %i.m, %i.p                       ; 3 uses
  %i.r = icmp ult i32 %i.q, %2
  %i.s = icmp ugt i32 %i.q, %2
  %i.t = icmp ult i32 %i.q, %3
  %i.u = and i1 %i.s, %i.t
  %.0.in = select i1 %i.d, i1 %i.u, i1 %i.r
  br i1 %.0.in, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.c, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 92       ; 2 uses
  %i.w = load i16, ptr %i.v, align 2              ; 3 uses
  %.not.1 = icmp eq i16 %i.w, 0
  br i1 %.not.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 4
  %i.z = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 6
  %i.ab = and i64 %i.x, 15
  %i.ac = getelementptr [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr i8, ptr %i.z, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl i32 %i.ae, %i.ah                    ; 3 uses
  %i.aj = icmp ult i32 %i.ai, %2
  %i.ak = icmp ugt i32 %i.ai, %2
  %i.al = icmp ult i32 %i.ai, %3
  %i.am = and i1 %i.ak, %i.al
  %.0.in.1 = select i1 %i.d, i1 %i.am, i1 %i.aj
  br i1 %.0.in.1, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  store i16 %i.w, ptr %i.c, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.1.1.ph = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  store i16 0, ptr %i.v, align 2
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d
  %.1.1 = phi i32 [ 0, %bb.d ], [ %.1.1.ph, %.sink.split ] ; 4 uses
  %i.an = getelementptr i8, ptr %i.b, i64 94      ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %.not.2 = icmp eq i16 %i.ao, 0
  br i1 %.not.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 4
  %i.ar = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 6
  %i.at = and i64 %i.ap, 15
  %i.au = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i32
  %i.ax = getelementptr i8, ptr %i.ar, i64 3
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = shl i32 %i.aw, %i.az                    ; 3 uses
  %i.bb = icmp ult i32 %i.ba, %2
  %i.bc = icmp ugt i32 %i.ba, %2
  %i.bd = icmp ult i32 %i.ba, %3
  %i.be = and i1 %i.bc, %i.bd
  %.0.in.2 = select i1 %i.d, i1 %i.be, i1 %i.bb
  br i1 %.0.in.2, label %bb.i, label %.sink.split35

bb.i:                                             ; preds = %bb.h
  %i.bf = add nuw nsw i32 %.1.1, 1
  %i.bg = zext nneg i32 %.1.1 to i64
  %i.bh = getelementptr [2 x i8], ptr %i.c, i64 %i.bg
  store i16 %i.ao, ptr %i.bh, align 2
  br label %.sink.split35

.sink.split35:                                    ; preds = %bb.h, %bb.i
  %.1.2.ph = phi i32 [ %i.bf, %bb.i ], [ %.1.1, %bb.h ]
  store i16 0, ptr %i.an, align 2
  br label %bb.j

bb.j:                                             ; preds = %.sink.split35, %bb.g
  %.1.2 = phi i32 [ %.1.1, %bb.g ], [ %.1.2.ph, %.sink.split35 ] ; 4 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 96      ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2            ; 3 uses
  %.not.3 = icmp eq i16 %i.bj, 0
  br i1 %.not.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 4
  %i.bm = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 6
  %i.bo = and i64 %i.bk, 15
  %i.bp = getelementptr [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr i8, ptr %i.bm, i64 3
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl i32 %i.br, %i.bu                    ; 3 uses
  %i.bw = icmp ult i32 %i.bv, %2
  %i.bx = icmp ugt i32 %i.bv, %2
  %i.by = icmp ult i32 %i.bv, %3
  %i.bz = and i1 %i.bx, %i.by
  %.0.in.3 = select i1 %i.d, i1 %i.bz, i1 %i.bw
  br i1 %.0.in.3, label %bb.l, label %.sink.split36

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw nsw i32 %.1.2, 1
  %i.cb = zext nneg i32 %.1.2 to i64
  %i.cc = getelementptr [2 x i8], ptr %i.c, i64 %i.cb
  store i16 %i.bj, ptr %i.cc, align 2
  br label %.sink.split36

.sink.split36:                                    ; preds = %bb.k, %bb.l
  %.1.3.ph = phi i32 [ %i.ca, %bb.l ], [ %.1.2, %bb.k ]
  store i16 0, ptr %i.bi, align 2
  br label %bb.m

bb.m:                                             ; preds = %.sink.split36, %bb.j
  %.1.3 = phi i32 [ %.1.2, %bb.j ], [ %.1.3.ph, %.sink.split36 ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.b, i64 98      ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2            ; 3 uses
  %.not.4 = icmp eq i16 %i.ce, 0
  br i1 %.not.4, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 4
  %i.ch = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 6
  %i.cj = and i64 %i.cf, 15
  %i.ck = getelementptr [2 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = zext i16 %i.cl to i32
  %i.cn = getelementptr i8, ptr %i.ch, i64 3
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = shl i32 %i.cm, %i.cp                    ; 3 uses
  %i.cr = icmp ult i32 %i.cq, %2
  %i.cs = icmp ugt i32 %i.cq, %2
  %i.ct = icmp ult i32 %i.cq, %3
  %i.cu = and i1 %i.cs, %i.ct
  %.0.in.4 = select i1 %i.d, i1 %i.cu, i1 %i.cr
  br i1 %.0.in.4, label %bb.o, label %.sink.split37

bb.o:                                             ; preds = %bb.n
  %i.cv = add nuw nsw i32 %.1.3, 1
  %i.cw = zext nneg i32 %.1.3 to i64
  %i.cx = getelementptr [2 x i8], ptr %i.c, i64 %i.cw
  store i16 %i.ce, ptr %i.cx, align 2
  br label %.sink.split37

.sink.split37:                                    ; preds = %bb.n, %bb.o
  %.1.4.ph = phi i32 [ %i.cv, %bb.o ], [ %.1.3, %bb.n ]
  store i16 0, ptr %i.cd, align 2
  br label %bb.p

bb.p:                                             ; preds = %.sink.split37, %bb.m
  %.1.4 = phi i32 [ %.1.3, %bb.m ], [ %.1.4.ph, %.sink.split37 ]
  ret i32 %.1.4
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @minstrel_ht_set_rate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 -2147483648, 255) %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i32 %4, 4                           ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.b ; 3 uses
  %i.d = load i16, ptr %i.c, align 2              ; 4 uses
  %i.e = zext nneg i32 %4 to i64                  ; 2 uses
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %i.g = getelementptr [252 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 252
  %i.i = and i64 %i.e, 15                         ; 2 uses
  %i.j = getelementptr [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr i8, ptr %i.j, i64 22       ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.minstrel_calc_retransmit.exit_crit_edge, label %bb.b

.minstrel_calc_retransmit.exit_crit_edge:         ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %i.j, i64 16
  %.pre = load i16, ptr %.phi.trans.insert, align 4
  br label %minstrel_calc_retransmit.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i32 %i.q, 12
  br label %minstrel_ht_avg_ampdu_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %1, i64 20
  %i.t = load i16, ptr %i.s, align 4              ; 2 uses
  %i.u = and i16 %i.t, -32
  %i.v = icmp eq i16 %i.u, 256
  br i1 %i.v, label %minstrel_ht_avg_ampdu_len.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i16 %i.t to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 6
  %i.aa = and i64 %i.w, 15
  %i.ab = getelementptr [2 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr i8, ptr %i.y, i64 3
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl i32 %i.ad, %i.ag                    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 400000
  br i1 %i.ai, label %minstrel_ht_avg_ampdu_len.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i32 %i.ah, 250000
  br i1 %i.aj, label %minstrel_ht_avg_ampdu_len.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp sgt i32 %i.ah, 150000
  %..i.i = select i1 %i.ak, i32 8, i32 16
  br label %minstrel_ht_avg_ampdu_len.exit.i

minstrel_ht_avg_ampdu_len.exit.i:                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.r, %bb.c ], [ 4, %bb.f ], [ 1, %bb.d ], [ 2, %bb.e ], [ %..i.i, %bb.g ]
  %i.al = getelementptr i8, ptr %i.j, i64 16
  %i.am = load i16, ptr %i.al, align 4            ; 3 uses
  %i.an = icmp ult i16 %i.am, 409
  %i.ao = getelementptr i8, ptr %i.j, i64 20      ; 3 uses
  %i.ap = getelementptr i8, ptr %i.j, i64 21      ; 3 uses
  br i1 %i.an, label %minstrel_calc_retransmit.exit.thread, label %bb.h

minstrel_calc_retransmit.exit.thread:             ; preds = %minstrel_ht_avg_ampdu_len.exit.i
  store i8 1, ptr %i.ao, align 4
  store i8 1, ptr %i.ap, align 1
  br label %bb.n

bb.h:                                             ; preds = %minstrel_ht_avg_ampdu_len.exit.i
  store i8 2, ptr %i.ao, align 4
  store i8 2, ptr %i.ap, align 1
  store i8 1, ptr %i.k, align 2
  %i.aq = getelementptr [26 x i8], ptr @minstrel_mcs_groups, i64 %i.f ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 6
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.i
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr i8, ptr %i.aq, i64 3
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl i32 %i.au, %i.ax
  %i.az = mul i32 %i.ay, %.0.i.i
  %i.ba = udiv i32 %i.az, 1000                    ; 2 uses
  %i.bb = mul i32 %i.o, 9
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = shl i32 %i.o, 1
  %i.be = or disjoint i32 %i.bd, 1
  %i.bf = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bg) ; 2 uses
  %i.bi = mul i32 %i.bh, 9
  %i.bj = lshr i32 %i.bi, 1
  %i.bk = add nuw i32 %i.bj, %i.bc                ; 2 uses
  %i.bl = shl i32 %i.bh, 1
  %i.bm = or disjoint i32 %i.bl, 1
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bg)
  %i.bo = and i32 %4, 65504
  %i.bp = icmp eq i32 %i.bo, 256                  ; 2 uses
  %.070.in.v.i = select i1 %i.bp, i64 52, i64 44
  %.070.in.i = getelementptr i8, ptr %1, i64 %.070.in.v.i
  %.069.in.v.i = select i1 %i.bp, i64 48, i64 40
  %.069.in.i = getelementptr i8, ptr %1, i64 %.069.in.v.i
  %.069.i = load i32, ptr %.069.in.i, align 8
  %.070.i = load i32, ptr %.070.in.i, align 4
  %i.bq = add i32 %i.ba, %.069.i                  ; 2 uses
  %i.br = shl i32 %i.bq, 1
  %i.bs = add i32 %i.br, %i.bk
  %i.bt = add i32 %i.ba, %.070.i                  ; 2 uses
  %i.bu = shl i32 %i.bt, 1
  %i.bv = add i32 %i.bu, %i.bk
  %i.bw = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.by = phi i8 [ 2, %bb.h ], [ %i.cq, %bb.l ]
  %i.bz = phi i8 [ 2, %bb.h ], [ %i.co, %bb.l ]   ; 2 uses
  %.068.i = phi i32 [ %i.bn, %bb.h ], [ %i.cf, %bb.l ] ; 2 uses
  %.067.i = phi i32 [ %i.bv, %bb.h ], [ %i.cj, %bb.l ]
  %.0.i = phi i32 [ %i.bs, %bb.h ], [ %i.ch, %bb.l ]
  %i.ca = mul i32 %.068.i, 9
  %i.cb = lshr i32 %i.ca, 1                       ; 2 uses
  %i.cc = shl i32 %.068.i, 1
  %i.cd = or disjoint i32 %i.cc, 1
  %i.ce = load i32, ptr %i.bf, align 4
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %i.ce)
  %i.cg = add i32 %i.cb, %i.bq
  %i.ch = add i32 %i.cg, %.0.i                    ; 2 uses
  %i.ci = add i32 %.067.i, %i.bt
  %i.cj = add i32 %i.ci, %i.cb                    ; 2 uses
  %i.ck = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = add i8 %i.bz, 1                         ; 2 uses
  store i8 %i.cm, ptr %i.ap, align 1
  %.pre.i = load i32, ptr %i.bw, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cn = phi i32 [ %i.ck, %bb.i ], [ %.pre.i, %bb.j ]
  %i.co = phi i8 [ %i.bz, %bb.i ], [ %i.cm, %bb.j ]
  %i.cp = icmp ult i32 %i.ch, %i.cn
  br i1 %i.cp, label %bb.l, label %minstrel_calc_retransmit.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = add i8 %i.by, 1                         ; 3 uses
  store i8 %i.cq, ptr %i.ao, align 4
  %i.cr = zext i8 %i.cq to i32
  %i.cs = load i32, ptr %i.bx, align 8
  %i.ct = icmp ugt i32 %i.cs, %i.cr
  br i1 %i.ct, label %bb.i, label %minstrel_calc_retransmit.exit, !llvm.loop !62

minstrel_calc_retransmit.exit:                    ; preds = %bb.l, %bb.k, %.minstrel_calc_retransmit.exit_crit_edge
  %i.cu = phi i16 [ %.pre, %.minstrel_calc_retransmit.exit_crit_edge ], [ %i.am, %bb.k ], [ %i.am, %bb.l ]
  %i.cv = icmp ult i16 %i.cu, 819
  br i1 %i.cv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %minstrel_calc_retransmit.exit
  %i.cw = getelementptr i8, ptr %i.j, i64 20      ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 4             ; 2 uses
  %.not = icmp eq i8 %i.cx, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %minstrel_calc_retransmit.exit.thread, %bb.m, %minstrel_calc_retransmit.exit
  %i.cy = getelementptr i8, ptr %2, i64 16
  %i.cz = sext i32 %3 to i64
  %i.da = getelementptr [6 x i8], ptr %i.cy, i64 %i.cz ; 3 uses
  %i.db = getelementptr i8, ptr %i.da, i64 1
  store i8 2, ptr %i.db, align 1
  %i.dc = getelementptr i8, ptr %i.da, i64 3
  store i8 2, ptr %i.dc, align 1
  %i.dd = getelementptr i8, ptr %i.da, i64 2
  store i8 2, ptr %i.dd, align 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr i8, ptr %2, i64 16
  %i.df = sext i32 %3 to i64
  %i.dg = getelementptr [6 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 1
  store i8 %i.cx, ptr %i.dh, align 1
  %i.di = load i8, ptr %i.cw, align 4
  %i.dj = getelementptr i8, ptr %i.dg, i64 2
  store i8 %i.di, ptr %i.dj, align 2
  %i.dk = getelementptr i8, ptr %i.j, i64 21
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dg, i64 3
  store i8 %i.dl, ptr %i.dm, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.dn = phi i8 [ 2, %bb.n ], [ %i.dl, %bb.o ]
  %i.do = and i32 %4, 15
  switch i32 %i.a, label %bb.s [
    i32 16, label %bb.q
    i32 17, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr i8, ptr %0, i64 28
  %i.dq = and i32 %4, 3
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr i8, ptr %i.dp, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.du = getelementptr i8, ptr %0, i64 32
  %i.dv = getelementptr i8, ptr %1, i64 69
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr [8 x i8], ptr %i.du, i64 %i.dx
  %i.dz = and i32 %4, 7
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %i.dy, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %5 = and i16 %i.d, 256
  %.not59 = icmp eq i16 %5, 0
  %i.ed = getelementptr i8, ptr %i.c, i64 2
  %i.ee = load i8, ptr %i.ed, align 2
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  br i1 %.not59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = shl nuw nsw i32 %i.ef, 4
  %i.eh = or i32 %4, 240
  %i.ei = add nuw nsw i32 %i.eg, %i.eh
  %i.ej = trunc i32 %i.ei to i8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ek = shl nuw nsw i32 %i.ef, 3
  %i.el = add nuw nsw i32 %i.do, 248
  %i.em = add nuw nsw i32 %i.el, %i.ek
  %i.en = trunc i32 %i.em to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t, %bb.q
  %.056 = phi i8 [ %i.dt, %bb.q ], [ %i.ec, %bb.r ], [ %i.ej, %bb.t ], [ %i.en, %bb.u ]
  %i.eo = icmp sgt i32 %3, 0
  br i1 %i.eo, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = load ptr, ptr %1, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 208
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp eq i32 %i.er, 3
  br i1 %i.es, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %6 = getelementptr i8, ptr %i.c, i64 2
  %7 = load i8, ptr %6, align 2
  %8 = icmp ugt i8 %7, 1
  br i1 %8, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.et = sext i32 %3 to i64
  %i.eu = getelementptr [6 x i8], ptr %2, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 17
  store i8 %i.dn, ptr %i.ev, align 1
  %i.ew = or i16 %i.d, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.0 = phi i16 [ %i.ew, %bb.y ], [ %i.d, %bb.x ], [ %i.d, %bb.w ]
  %i.ex = getelementptr i8, ptr %2, i64 16
  %i.ey = sext i32 %3 to i64
  %i.ez = getelementptr [6 x i8], ptr %i.ex, i64 %i.ey ; 2 uses
  store i8 %.056, ptr %i.ez, align 2
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  store i16 %.0, ptr %i.fa, align 2
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_sta_recalc_aggregates(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rate_control_set_rates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noredzone "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind }
attributes #15 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #16 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #17 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i64 53508}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{i64 35553}
!25 = !{i64 35606}
!26 = !{i64 2161549418, i64 2161549293}
!27 = !{i64 2161549941, i64 2161550995, i64 2161551028, i64 2161551063, i64 2161551079, i64 2161556067, i64 2161556125, i64 2161556174, i64 2161555984, i64 2161551138, i64 2161551170, i64 2161551253}
!28 = !{i64 2161556477, i64 2161556353}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = !{i64 2161594801, i64 2161594676}
!32 = !{i64 2161595324, i64 2161596363, i64 2161596396, i64 2161596431, i64 2161596447, i64 2161597374, i64 2161597432, i64 2161597481, i64 2161597291, i64 2161596506, i64 2161596538, i64 2161596621}
!33 = !{i64 2161597784, i64 2161597660}
!34 = !{i64 2175161912, i64 2175161782}
!35 = !{i64 2175162443, i64 2175163516, i64 2175163549, i64 2175163584, i64 2175163600, i64 2175168588, i64 2175168646, i64 2175168695, i64 2175168505, i64 2175163659, i64 2175163691, i64 2175163774}
!36 = !{i64 2175169015, i64 2175168886}
!37 = !{i64 2175170370, i64 2175170240}
!38 = !{i64 2175170901, i64 2175171977, i64 2175172010, i64 2175172045, i64 2175172061, i64 2175172988, i64 2175173046, i64 2175173095, i64 2175172905, i64 2175172120, i64 2175172152, i64 2175172235}
!39 = !{i64 2175173415, i64 2175173286}
!40 = !{i64 48509}
!41 = !{i64 48544}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = !{i64 29607}
!53 = !{i64 29716}
!54 = !{i64 18348}
!55 = !{i64 26079}
!56 = !{i64 26371}
!57 = !{i64 26475}
!58 = distinct !{!58, !11}
!59 = !{i64 41041}
!60 = !{i64 41200}
!61 = !{i64 41283}
!62 = distinct !{!62, !11}
end_hunk_1
