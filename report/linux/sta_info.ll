inline.NumInlined: 653
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@sta_set_sinfo:bb.a
  %i.qp = load i8, ptr %i.qo, align 1
  %i.qq = getelementptr i8, ptr %1, i64 101
  store i8 %i.qp, ptr %i.qq, align 1
  %i.qr = getelementptr i8, ptr %i.b, i64 5914
  %i.qs = load i16, ptr %i.qr, align 2
  %i.qt = getelementptr i8, ptr %1, i64 102
  store i16 %i.qs, ptr %i.qt, align 2
  %i.qu = getelementptr i8, ptr %1, i64 104
  %i.qv = getelementptr i8, ptr %1, i64 108       ; 8 uses
  store i32 0, ptr %i.qv, align 4
  store i32 254, ptr %i.qu, align 8
  %i.qw = getelementptr i8, ptr %0, i64 216       ; 6 uses
  %i.qx = load volatile i64, ptr %i.qw, align 8
  %i.qy = and i64 %i.qx, 8
  %.not267 = icmp eq i64 %i.qy, 0
  br i1 %.not267, label %test_sta_flag.exit306, label %bb.bj

bb.bj:                                            ; preds = %test_sta_flag.exit
  store i32 2, ptr %i.qv, align 4
  br label %test_sta_flag.exit306

test_sta_flag.exit306:                            ; preds = %test_sta_flag.exit, %bb.bj
  %i.qz = phi i32 [ 2, %bb.bj ], [ 0, %test_sta_flag.exit ] ; 2 uses
  %i.ra = load volatile i64, ptr %i.qw, align 8
  %i.rb = and i64 %i.ra, 16
  %.not268 = icmp eq i64 %i.rb, 0
  br i1 %.not268, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %test_sta_flag.exit306
  %i.rc = or disjoint i32 %i.qz, 4                ; 2 uses
  store i32 %i.rc, ptr %i.qv, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %test_sta_flag.exit306
  %i.rd = phi i32 [ %i.rc, %bb.bk ], [ %i.qz, %test_sta_flag.exit306 ] ; 2 uses
  %i.re = getelementptr i8, ptr %0, i64 2794
  %i.rf = load i8, ptr %i.re, align 2, !range !80, !noundef !81
  %i.rg = trunc nuw i8 %i.rf to i1
  br i1 %i.rg, label %bb.bm, label %test_sta_flag.exit309

bb.bm:                                            ; preds = %bb.bl
  %i.rh = or i32 %i.rd, 8                         ; 2 uses
  store i32 %i.rh, ptr %i.qv, align 4
  br label %test_sta_flag.exit309

test_sta_flag.exit309:                            ; preds = %bb.bl, %bb.bm
  %i.ri = phi i32 [ %i.rh, %bb.bm ], [ %i.rd, %bb.bl ] ; 2 uses
  %i.rj = load volatile i64, ptr %i.qw, align 8
  %i.rk = and i64 %i.rj, 128
  %.not269 = icmp eq i64 %i.rk, 0
  br i1 %.not269, label %test_sta_flag.exit312, label %bb.bn

bb.bn:                                            ; preds = %test_sta_flag.exit309
  %i.rl = or i32 %i.ri, 16                        ; 2 uses
  store i32 %i.rl, ptr %i.qv, align 4
  br label %test_sta_flag.exit312

test_sta_flag.exit312:                            ; preds = %test_sta_flag.exit309, %bb.bn
  %i.rm = phi i32 [ %i.rl, %bb.bn ], [ %i.ri, %test_sta_flag.exit309 ] ; 2 uses
  %i.rn = load volatile i64, ptr %i.qw, align 8
  %i.ro = and i64 %i.rn, 1
  %.not270 = icmp eq i64 %i.ro, 0
  br i1 %.not270, label %test_sta_flag.exit315, label %bb.bo

bb.bo:                                            ; preds = %test_sta_flag.exit312
  %i.rp = or i32 %i.rm, 32                        ; 2 uses
  store i32 %i.rp, ptr %i.qv, align 4
  br label %test_sta_flag.exit315

test_sta_flag.exit315:                            ; preds = %test_sta_flag.exit312, %bb.bo
  %i.rq = phi i32 [ %i.rp, %bb.bo ], [ %i.rm, %test_sta_flag.exit312 ] ; 2 uses
  %i.rr = load volatile i64, ptr %i.qw, align 8
  %i.rs = and i64 %i.rr, 2
  %.not271 = icmp eq i64 %i.rs, 0
  br i1 %.not271, label %test_sta_flag.exit318, label %bb.bp

bb.bp:                                            ; preds = %test_sta_flag.exit315
  %i.rt = or i32 %i.rq, 128                       ; 2 uses
  store i32 %i.rt, ptr %i.qv, align 4
  br label %test_sta_flag.exit318

test_sta_flag.exit318:                            ; preds = %test_sta_flag.exit315, %bb.bp
  %i.ru = phi i32 [ %i.rt, %bb.bp ], [ %i.rq, %test_sta_flag.exit315 ]
  %i.rv = load volatile i64, ptr %i.qw, align 8
  %i.rw = and i64 %i.rv, 2048
  %.not272 = icmp eq i64 %i.rw, 0
  br i1 %.not272, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %test_sta_flag.exit318
  %i.rx = or i32 %i.ru, 64
  store i32 %i.rx, ptr %i.qv, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %test_sta_flag.exit318
  %i.ry = tail call i32 @sta_get_expected_throughput(ptr noundef %0) #19 ; 2 uses
  %.not273 = icmp eq i32 %i.ry, 0
  %.pre366 = load i64, ptr %1, align 8            ; 2 uses
  br i1 %.not273, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rz = or i64 %.pre366, 134217728              ; 2 uses
  store i64 %i.rz, ptr %1, align 8
  %i.sa = getelementptr i8, ptr %1, i64 168
  store i32 %i.ry, ptr %i.sa, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.sb = phi i64 [ %i.rz, %bb.bs ], [ %.pre366, %bb.br ] ; 4 uses
  %i.sc = and i64 %i.sb, 17179869184
  %.not274 = icmp eq i64 %i.sc, 0
  br i1 %.not274, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.sd = getelementptr i8, ptr %0, i64 2313
  %i.se = load i8, ptr %i.sd, align 1, !range !80, !noundef !81
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.sg = getelementptr i8, ptr %0, i64 2312
  %i.sh = load i8, ptr %i.sg, align 8
  %i.si = getelementptr i8, ptr %1, i64 174
  store i8 %i.sh, ptr %i.si, align 2
  %i.sj = or disjoint i64 %i.sb, 17179869184      ; 2 uses
  store i64 %i.sj, ptr %1, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.sk = phi i64 [ %i.sj, %bb.bv ], [ %i.sb, %bb.bu ], [ %i.sb, %bb.bt ] ; 2 uses
  %i.sl = and i64 %i.sk, 34359738368
  %.not275 = icmp eq i64 %i.sl, 0
  br i1 %.not275, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.sm = getelementptr i8, ptr %0, i64 2313
  %i.sn = load i8, ptr %i.sm, align 1, !range !80, !noundef !81
  %i.so = trunc nuw i8 %i.sn to i1
  br i1 %i.so, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sp = getelementptr i8, ptr %0, i64 2320
  %.val288 = load i64, ptr %i.sp, align 8
  %i.sq = lshr i64 %.val288, 10
  %i.sr = trunc i64 %i.sq to i8
  %i.ss = sub i8 0, %i.sr
  %i.st = getelementptr i8, ptr %1, i64 175
  store i8 %i.ss, ptr %i.st, align 1
  %i.su = or disjoint i64 %i.sk, 34359738368
  store i64 %i.su, ptr %1, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.sv = getelementptr i8, ptr %0, i64 2968      ; 2 uses
  %i.sw = load i16, ptr %i.sv, align 8
  %.not276 = icmp eq i16 %i.sw, 0
  br i1 %.not276, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sx = getelementptr i8, ptr %1, i64 220
  store i8 1, ptr %i.sx, align 4
  %i.sy = getelementptr i8, ptr %0, i64 1646
  %i.sz = load i8, ptr %i.sy, align 2
  %i.ta = getelementptr i8, ptr %1, i64 221
  store i8 %i.sz, ptr %i.ta, align 1
  %i.tb = getelementptr i8, ptr %0, i64 2811
  %i.tc = load i8, ptr %i.tb, align 1, !range !80, !noundef !81
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.te = getelementptr i8, ptr %1, i64 222
  %i.tf = getelementptr i8, ptr %0, i64 64
  %i.tg = load i32, ptr %i.tf, align 8
  store i32 %i.tg, ptr %i.te, align 4
  %i.th = getelementptr i8, ptr %0, i64 68
  %i.ti = load i16, ptr %i.th, align 4
  %i.tj = getelementptr i8, ptr %1, i64 226
  store i16 %i.ti, ptr %i.tj, align 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.tk = load i16, ptr %i.sv, align 8            ; 3 uses
  %i.tl = getelementptr i8, ptr %1, i64 248       ; 3 uses
  store i16 %i.tk, ptr %i.tl, align 8
  %.not277357 = icmp eq i16 %i.tk, 0
  %i.tm = getelementptr i8, ptr %0, i64 2584      ; 5 uses
  %i.tn = getelementptr i8, ptr %i.b, i64 4920
  %i.to = getelementptr i8, ptr %1, i64 256
  %i.tp = getelementptr i8, ptr %0, i64 528
  %i.tq = getelementptr i8, ptr %0, i64 568
  %i.tr = getelementptr i8, ptr %0, i64 608
  %i.ts = getelementptr i8, ptr %0, i64 648
  %i.tt = getelementptr i8, ptr %0, i64 536
  %i.tu = getelementptr i8, ptr %0, i64 576
  %i.tv = getelementptr i8, ptr %0, i64 616
  %i.tw = getelementptr i8, ptr %0, i64 656
  %i.tx = getelementptr i8, ptr %0, i64 688
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %sta_set_link_sinfo.exit
  %indvars.iv = phi i64 [ 0, %bb.cc ], [ %indvars.iv.next, %sta_set_link_sinfo.exit ] ; 6 uses
  %.not277359 = phi i1 [ %.not277357, %bb.cc ], [ %.not277, %sta_set_link_sinfo.exit ]
  %i.ty = phi i16 [ %i.tk, %bb.cc ], [ %.pr, %sta_set_link_sinfo.exit ] ; 2 uses
  br i1 %.not277359, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tz = zext i16 %i.ty to i64
  %i.ua = shl nuw i64 1, %indvars.iv
  %i.ub = and i64 %i.ua, %i.tz
  %.not279 = icmp eq i64 %i.ub, 0
  br i1 %.not279, label %sta_set_link_sinfo.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.uc = getelementptr [8 x i8], ptr %i.tm, i64 %indvars.iv
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = getelementptr [8 x i8], ptr %i.tn, i64 %indvars.iv
  %i.uf = load ptr, ptr %i.ue, align 8            ; 5 uses
  %.not280 = icmp eq ptr %i.ud, null
  br i1 %.not280, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ug = getelementptr [8 x i8], ptr %i.to, i64 %indvars.iv
  %i.uh = load ptr, ptr %i.ug, align 8            ; 66 uses
  %i.ui = icmp ne ptr %i.uh, null
  %i.uj = icmp ne ptr %i.uf, null
  %or.cond = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %or.cond, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.uk = shl nuw i64 1, %indvars.iv
  %i.ul = trunc i64 %i.uk to i16
  %i.um = xor i16 %i.ul, -1
  %i.un = and i16 %i.ty, %i.um
  store i16 %i.un, ptr %i.tl, align 8
  br label %sta_set_link_sinfo.exit

bb.ci:                                            ; preds = %bb.cg
  %i.uo = load ptr, ptr %i.a, align 8             ; 8 uses
  %i.up = getelementptr i8, ptr %i.uf, i64 8
  %i.uq = load i32, ptr %i.up, align 8            ; 23 uses
  %i.ur = icmp slt i32 %i.uq, 0                   ; 3 uses
  br i1 %i.ur, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.us = zext nneg i32 %i.uq to i64
  %i.ut = getelementptr [8 x i8], ptr %i.tm, i64 %i.us
  %i.uu = load ptr, ptr %i.ut, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %.019.i.i = phi ptr [ %i.uu, %bb.cj ], [ %i.e, %bb.ci ] ; 2 uses
  %i.uv = getelementptr i8, ptr %.019.i.i, i64 112 ; 2 uses
  %i.uw = getelementptr i8, ptr %.019.i.i, i64 104
  %i.ux = load ptr, ptr %i.uw, align 8            ; 2 uses
  %.not.i223.i = icmp eq ptr %i.ux, null
  br i1 %.not.i223.i, label %sta_get_last_rx_stats.exit.i, label %.preheader.i.i319

.preheader.i.i319:                                ; preds = %bb.ck
  %i.uy = load i64, ptr @__cpu_possible_mask, align 8
  %i.uz = ptrtoint ptr %i.ux to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.preheader.i.i319
  %i.va = phi i64 [ 0, %.preheader.i.i319 ], [ %i.vs, %bb.cm ]
  %.01824.i.i320 = phi ptr [ %i.uv, %.preheader.i.i319 ], [ %spec.select.i.i331, %bb.cm ] ; 4 uses
  %i.vb = shl nsw i64 -1, %i.va
  %i.vc = and i64 %i.vb, %i.uy                    ; 2 uses
  %.not.i.i.i321 = icmp eq i64 %i.vc, 0
  br i1 %.not.i.i.i321, label %sta_get_last_rx_stats.exit.i, label %find_next_bit.exit.i.i322

find_next_bit.exit.i.i322:                        ; preds = %bb.cl
  %i.vd = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.vc) #24, !srcloc !164 ; 3 uses
  %i.ve = and i64 %i.vd, 4294967232
  %i.vf = icmp eq i64 %i.ve, 0
  br i1 %i.vf, label %bb.cm, label %sta_get_last_rx_stats.exit.i

bb.cm:                                            ; preds = %find_next_bit.exit.i.i322
  %i.vg = and i64 %i.vd, 63
  %i.vh = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.vg
  %i.vi = load i64, ptr %i.vh, align 8
  %i.vj = add i64 %i.vi, %i.uz
  %i.vk = inttoptr i64 %i.vj to ptr               ; 2 uses
  %i.vl = getelementptr i8, ptr %.01824.i.i320, i64 8
  %i.vm = load i64, ptr %i.vl, align 8
  %i.vn = getelementptr i8, ptr %i.vk, i64 8
  %i.vo = load i64, ptr %i.vn, align 8
  %i.vp = sub i64 %i.vm, %i.vo
  %i.vq = icmp slt i64 %i.vp, 0
  %spec.select.i.i331 = select i1 %i.vq, ptr %i.vk, ptr %.01824.i.i320 ; 2 uses
  %i.vr = add nuw nsw i64 %i.vd, 1
  %i.vs = and i64 %i.vr, 127                      ; 2 uses
  %i.vt = icmp samesign ugt i64 %i.vs, 63
  br i1 %i.vt, label %sta_get_last_rx_stats.exit.i, label %bb.cl, !prof !56, !llvm.loop !165

sta_get_last_rx_stats.exit.i:                     ; preds = %bb.cm, %find_next_bit.exit.i.i322, %bb.cl, %bb.ck
  %.0.i224.i = phi ptr [ %i.uv, %bb.ck ], [ %.01824.i.i320, %find_next_bit.exit.i.i322 ], [ %spec.select.i.i331, %bb.cm ], [ %.01824.i.i320, %bb.cl ] ; 6 uses
  %i.vu = sext i32 %i.uq to i64
  %i.vv = getelementptr [8 x i8], ptr %i.tm, i64 %i.vu
  %i.vw = load ptr, ptr %i.vv, align 8            ; 30 uses
  %i.vx = getelementptr i8, ptr %i.uo, i64 5072   ; 5 uses
  %i.vy = load i32, ptr %i.vx, align 8
  %i.vz = icmp eq i32 %i.vy, 2
  br i1 %i.vz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %sta_get_last_rx_stats.exit.i
  %i.wa = getelementptr i8, ptr %i.uf, i64 980
  %i.wb = load i32, ptr %i.wa, align 4
  %i.wc = zext i32 %i.wb to i64
  %i.wd = getelementptr i8, ptr %i.uh, i64 128
  store i64 %i.wc, ptr %i.wd, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %sta_get_last_rx_stats.exit.i
  %i.we = getelementptr i8, ptr %i.uh, i64 160
  %i.wf = load i32, ptr %i.vw, align 4
  store i32 %i.wf, ptr %i.we, align 4
  %i.wg = getelementptr i8, ptr %i.vw, i64 4
  %i.wh = load i16, ptr %i.wg, align 4
  %i.wi = getelementptr i8, ptr %i.uh, i64 164
  store i16 %i.wh, ptr %i.wi, align 4
  %i.wj = load ptr, ptr %i.ll, align 8            ; 4 uses
  %i.wk = getelementptr i8, ptr %i.vw, i64 936
  %i.wl = load ptr, ptr %i.wk, align 8            ; 2 uses
  %i.wm = tail call i32 @__SCT__might_resched() #18 ; 0 uses
  %.not.i.i225.i = icmp eq ptr %i.uo, null
  br i1 %.not.i.i225.i, label %get_bss_sdata.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wn = load i32, ptr %i.vx, align 8
  %i.wo = icmp eq i32 %i.wn, 4
  br i1 %i.wo, label %bb.cq, label %get_bss_sdata.exit.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.wp = getelementptr i8, ptr %i.uo, i64 2272
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = getelementptr i8, ptr %i.wq, i64 -2504
  br label %get_bss_sdata.exit.i.i

get_bss_sdata.exit.i.i:                           ; preds = %bb.cq, %bb.cp, %bb.co
  %.0.i.i226.i = phi ptr [ %i.wr, %bb.cq ], [ %i.uo, %bb.cp ], [ null, %bb.co ] ; 7 uses
  %i.ws = getelementptr i8, ptr %.0.i.i226.i, i64 1856
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = getelementptr i8, ptr %i.wt, i64 1487
  %i.wv = load i8, ptr %i.wu, align 1, !range !80, !noundef !81
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %.critedge.i.i, label %bb.cr

bb.cr:                                            ; preds = %get_bss_sdata.exit.i.i
  %i.wx = getelementptr i8, ptr %.0.i.i226.i, i64 1864 ; 2 uses
  %i.wy = load i32, ptr %i.wx, align 8
  %i.wz = and i32 %i.wy, 32
  %.not.i227.i = icmp eq i32 %i.wz, 0
  br i1 %.not.i227.i, label %bb.cs, label %.critedge.i.i, !prof !32

bb.cs:                                            ; preds = %bb.cr
  %i.xa = getelementptr i8, ptr %.0.i.i226.i, i64 1848
  %i.xb = getelementptr i8, ptr %.0.i.i226.i, i64 1880
  %i.xc = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.12, ptr nonnull @.str.13, i32 647, i32 2323, i64 16) #20, !srcloc !223
  %i.xd = load ptr, ptr %i.xa, align 8            ; 2 uses
  %.not31.i.i = icmp eq ptr %i.xd, null
  %i.xe = getelementptr i8, ptr %i.xd, i64 288
  %i.xf = select i1 %.not31.i.i, ptr %i.xb, ptr %i.xe
  %i.xg = load i32, ptr %i.wx, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.xc, ptr noundef %i.xf, i32 noundef %i.xg) #18
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !224
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.cs, %bb.cr, %get_bss_sdata.exit.i.i
  %i.xh = getelementptr i8, ptr %.0.i.i226.i, i64 1864
  %i.xi = load i32, ptr %i.xh, align 8
  %i.xj = and i32 %i.xi, 32
  %.not32.i.i = icmp eq i32 %i.xj, 0
  br i1 %.not32.i.i, label %drv_link_sta_statistics.exit.i, label %bb.ct

bb.ct:                                            ; preds = %.critedge.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_link_sta_statistics, i64 8), i1 false) #20
          to label %trace_drv_link_sta_statistics.exit.i.i [label %cpumask_test_cpu.exit.i.i.i.i], !srcloc !97

cpumask_test_cpu.exit.i.i.i.i:                    ; preds = %bb.ct
  %i.xk = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !225
  %i.xl = zext i32 %i.xk to i64
  %i.xm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.xl) #20, !srcloc !99 ; 2 uses
  %i.xn = icmp ult i8 %i.xm, 2
  tail call void @llvm.assume(i1 %i.xn)
  %i.xo = trunc nuw i8 %i.xm to i1
  br i1 %i.xo, label %bb.cu, label %trace_drv_link_sta_statistics.exit.i.i

bb.cu:                                            ; preds = %cpumask_test_cpu.exit.i.i.i.i
  %i.xp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.xp, ptr elementtype(i64) %i.xp) #20, !srcloc !100
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !101
  %i.xq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_link_sta_statistics, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xr = getelementptr i8, ptr %i.xq, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = tail call i32 @__SCT__tp_func_drv_link_sta_statistics(ptr noundef %i.xs, ptr noundef %i.wj, ptr noundef %.0.i.i226.i, ptr noundef %i.wl) #18 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !102
  %i.xu = getelementptr i8, ptr %i.xp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.xu, ptr elementtype(i64) %i.xu) #20, !srcloc !103
  br label %trace_drv_link_sta_statistics.exit.i.i

trace_drv_link_sta_statistics.exit.i.i:           ; preds = %bb.cw, %cpumask_test_cpu.exit.i.i.i.i, %bb.ct
  %i.xv = getelementptr i8, ptr %i.wj, i64 464
  %i.xw = load ptr, ptr %i.xv, align 8
  %i.xx = getelementptr i8, ptr %i.xw, i64 384
  %i.xy = load ptr, ptr %i.xx, align 8            ; 2 uses
  %.not33.i.i = icmp eq ptr %i.xy, null
  br i1 %.not33.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %trace_drv_link_sta_statistics.exit.i.i
  %i.xz = getelementptr i8, ptr %.0.i.i226.i, i64 5072
  tail call void %i.xy(ptr noundef %i.wj, ptr noundef %i.xz, ptr noundef %i.wl, ptr noundef nonnull %i.uh) #18, !inline_history !226
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %trace_drv_link_sta_statistics.exit.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_drv_return_void, i64 8), i1 false) #20
          to label %drv_link_sta_statistics.exit.i [label %cpumask_test_cpu.exit.i.i34.i.i], !srcloc !97

cpumask_test_cpu.exit.i.i34.i.i:                  ; preds = %bb.cy
  %i.ya = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !120
  %i.yb = zext i32 %i.ya to i64
  %i.yc = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.yb) #20, !srcloc !99 ; 2 uses
  %i.yd = icmp ult i8 %i.yc, 2
  tail call void @llvm.assume(i1 %i.yd)
  %i.ye = trunc nuw i8 %i.yc to i1
end_hunk_0
begin_hunk_1_@sta_set_sinfo:bb.a

bb.el:                                            ; preds = %.loopexit245.i
  %i.ajp = getelementptr i8, ptr %i.vw, i64 752   ; 2 uses
  %i.ajq = load i8, ptr %i.ajp, align 8
  %i.ajr = icmp sgt i8 %i.ajq, -1
  br i1 %i.ajr, label %ieee80211_rate_valid.exit.i, label %ieee80211_rate_valid.exit.thread.i

ieee80211_rate_valid.exit.i:                      ; preds = %bb.el
  %i.ajs = getelementptr i8, ptr %i.vw, i64 753
  %i.ajt = load i16, ptr %i.ajs, align 1
  %i.aju = and i16 %i.ajt, 31
  %.not244.i = icmp eq i16 %i.aju, 0
  br i1 %.not244.i, label %ieee80211_rate_valid.exit.thread.i, label %bb.em

bb.em:                                            ; preds = %ieee80211_rate_valid.exit.i
  %i.ajv = getelementptr i8, ptr %i.uh, i64 52
  tail call void @sta_set_rate_info_tx(ptr noundef %0, ptr noundef %i.ajp, ptr noundef %i.ajv) #18
  %i.ajw = load i64, ptr %i.uh, align 8
  %i.ajx = or i64 %i.ajw, 256                     ; 2 uses
  store i64 %i.ajx, ptr %i.uh, align 8
  br label %ieee80211_rate_valid.exit.thread.i

ieee80211_rate_valid.exit.thread.i:               ; preds = %bb.em, %ieee80211_rate_valid.exit.i, %bb.el, %.loopexit245.i
  %i.ajy = phi i64 [ %i.ajn, %bb.el ], [ %i.ajx, %bb.em ], [ %i.ajn, %ieee80211_rate_valid.exit.i ], [ %i.ajn, %.loopexit245.i ]
  %i.ajz = and i64 %i.ajy, 16384
  %.not210.i = icmp eq i64 %i.ajz, 0
  br i1 %.not210.i, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %ieee80211_rate_valid.exit.thread.i
  %i.aka = getelementptr i8, ptr %i.uh, i64 66
  %i.akb = tail call fastcc i32 @sta_set_rate_info_rx(ptr noundef %0, ptr noundef %i.aka, i32 noundef %i.uq) #19, !srcloc !230
  %i.akc = icmp eq i32 %i.akb, 0
  br i1 %i.akc, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.akd = load i64, ptr %i.uh, align 8
  %i.ake = or i64 %i.akd, 16384
  store i64 %i.ake, ptr %i.uh, align 8
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %ieee80211_rate_valid.exit.thread.i
  br i1 %2, label %bb.eq, label %.loopexit.i

bb.eq:                                            ; preds = %bb.ep
  %i.akf = tail call i32 @cfg80211_link_sinfo_alloc_tid_stats(ptr noundef nonnull %i.uh, i32 noundef 3264) #18
  %.not211.i = icmp eq i32 %i.akf, 0
  br i1 %.not211.i, label %.preheader.i330, label %.loopexit.i

.preheader.i330:                                  ; preds = %bb.eq
  %i.akg = getelementptr i8, ptr %i.uh, i64 144   ; 17 uses
  %i.akh = load ptr, ptr %i.akg, align 8
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akh, i32 noundef 0, i32 noundef %i.uq) #19, !srcloc !231
  %i.aki = load ptr, ptr %i.akg, align 8
  %i.akj = getelementptr i8, ptr %i.aki, i64 88
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akj, i32 noundef 1, i32 noundef %i.uq) #19, !srcloc !231
  %i.akk = load ptr, ptr %i.akg, align 8
  %i.akl = getelementptr i8, ptr %i.akk, i64 176
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akl, i32 noundef 2, i32 noundef %i.uq) #19, !srcloc !231
  %i.akm = load ptr, ptr %i.akg, align 8
  %i.akn = getelementptr i8, ptr %i.akm, i64 264
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akn, i32 noundef 3, i32 noundef %i.uq) #19, !srcloc !231
  %i.ako = load ptr, ptr %i.akg, align 8
  %i.akp = getelementptr i8, ptr %i.ako, i64 352
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akp, i32 noundef 4, i32 noundef %i.uq) #19, !srcloc !231
  %i.akq = load ptr, ptr %i.akg, align 8
  %i.akr = getelementptr i8, ptr %i.akq, i64 440
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akr, i32 noundef 5, i32 noundef %i.uq) #19, !srcloc !231
  %i.aks = load ptr, ptr %i.akg, align 8
  %i.akt = getelementptr i8, ptr %i.aks, i64 528
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akt, i32 noundef 6, i32 noundef %i.uq) #19, !srcloc !231
  %i.aku = load ptr, ptr %i.akg, align 8
  %i.akv = getelementptr i8, ptr %i.aku, i64 616
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akv, i32 noundef 7, i32 noundef %i.uq) #19, !srcloc !231
  %i.akw = load ptr, ptr %i.akg, align 8
  %i.akx = getelementptr i8, ptr %i.akw, i64 704
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akx, i32 noundef 8, i32 noundef %i.uq) #19, !srcloc !231
  %i.aky = load ptr, ptr %i.akg, align 8
  %i.akz = getelementptr i8, ptr %i.aky, i64 792
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.akz, i32 noundef 9, i32 noundef %i.uq) #19, !srcloc !231
  %i.ala = load ptr, ptr %i.akg, align 8
  %i.alb = getelementptr i8, ptr %i.ala, i64 880
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.alb, i32 noundef 10, i32 noundef %i.uq) #19, !srcloc !231
  %i.alc = load ptr, ptr %i.akg, align 8
  %i.ald = getelementptr i8, ptr %i.alc, i64 968
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.ald, i32 noundef 11, i32 noundef %i.uq) #19, !srcloc !231
  %i.ale = load ptr, ptr %i.akg, align 8
  %i.alf = getelementptr i8, ptr %i.ale, i64 1056
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.alf, i32 noundef 12, i32 noundef %i.uq) #19, !srcloc !231
  %i.alg = load ptr, ptr %i.akg, align 8
  %i.alh = getelementptr i8, ptr %i.alg, i64 1144
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.alh, i32 noundef 13, i32 noundef %i.uq) #19, !srcloc !231
  %i.ali = load ptr, ptr %i.akg, align 8
  %i.alj = getelementptr i8, ptr %i.ali, i64 1232
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.alj, i32 noundef 14, i32 noundef %i.uq) #19, !srcloc !231
  %i.alk = load ptr, ptr %i.akg, align 8
  %i.all = getelementptr i8, ptr %i.alk, i64 1320
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.all, i32 noundef 15, i32 noundef %i.uq) #19, !srcloc !231
  %i.alm = load ptr, ptr %i.akg, align 8
  %i.aln = getelementptr i8, ptr %i.alm, i64 1408
  tail call fastcc void @sta_set_tidstats(ptr noundef %0, ptr noundef %i.aln, i32 noundef 16, i32 noundef %i.uq) #19, !srcloc !231
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i330, %bb.eq, %bb.ep
  %i.alo = getelementptr i8, ptr %i.uh, i64 100   ; 4 uses
  store i8 0, ptr %i.alo, align 4
  %i.alp = getelementptr i8, ptr %i.uo, i64 5909
  %i.alq = load i8, ptr %i.alp, align 1, !range !80, !noundef !81 ; 3 uses
  store i8 %i.alq, ptr %i.alo, align 4
  %i.alr = getelementptr i8, ptr %i.uo, i64 5910
  %i.als = load i8, ptr %i.alr, align 2, !range !80, !noundef !81
  %i.alt = trunc nuw i8 %i.als to i1
  br i1 %i.alt, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.loopexit.i
  %i.alu = or disjoint i8 %i.alq, 2               ; 2 uses
  store i8 %i.alu, ptr %i.alo, align 4
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.loopexit.i
  %i.alv = phi i8 [ %i.alu, %bb.er ], [ %i.alq, %.loopexit.i ]
  %i.alw = getelementptr i8, ptr %i.uo, i64 5911
  %i.alx = load i8, ptr %i.alw, align 1, !range !80, !noundef !81
  %i.aly = trunc nuw i8 %i.alx to i1
  br i1 %i.aly, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.alz = or i8 %i.alv, 4
  store i8 %i.alz, ptr %i.alo, align 4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ama = getelementptr i8, ptr %i.uf, i64 1056  ; 2 uses
  %i.amb = load ptr, ptr %i.ama, align 8
  %i.amc = getelementptr i8, ptr %i.amb, i64 49
  %i.amd = load i8, ptr %i.amc, align 1
  %i.ame = getelementptr i8, ptr %i.uh, i64 101
  store i8 %i.amd, ptr %i.ame, align 1
  %i.amf = load ptr, ptr %i.ama, align 8
  %i.amg = getelementptr i8, ptr %i.amf, i64 50
  %i.amh = load i16, ptr %i.amg, align 2
  %i.ami = getelementptr i8, ptr %i.uh, i64 102
  store i16 %i.amh, ptr %i.ami, align 2
  %i.amj = tail call i32 @sta_get_expected_throughput(ptr noundef %0) #19 ; 2 uses
  %.not212.i = icmp eq i32 %i.amj, 0
  %.pre266.i = load i64, ptr %i.uh, align 8       ; 2 uses
  br i1 %.not212.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.amk = or i64 %.pre266.i, 134217728           ; 2 uses
  store i64 %i.amk, ptr %i.uh, align 8
  %i.aml = getelementptr i8, ptr %i.uh, i64 108
  store i32 %i.amj, ptr %i.aml, align 4
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.amm = phi i64 [ %i.amk, %bb.ev ], [ %.pre266.i, %bb.eu ] ; 4 uses
  %i.amn = and i64 %i.amm, 17179869184
  %.not213.i = icmp eq i64 %i.amn, 0
  br i1 %.not213.i, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.amo = getelementptr i8, ptr %i.vw, i64 673
  %i.amp = load i8, ptr %i.amo, align 1, !range !80, !noundef !81
  %i.amq = trunc nuw i8 %i.amp to i1
  br i1 %i.amq, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.amr = getelementptr i8, ptr %i.vw, i64 672
  %i.ams = load i8, ptr %i.amr, align 8
  %i.amt = getelementptr i8, ptr %i.uh, i64 140
  store i8 %i.ams, ptr %i.amt, align 4
  %i.amu = or disjoint i64 %i.amm, 17179869184    ; 2 uses
  store i64 %i.amu, ptr %i.uh, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew
  %i.amv = phi i64 [ %i.amu, %bb.ey ], [ %i.amm, %bb.ex ], [ %i.amm, %bb.ew ] ; 2 uses
  %i.amw = and i64 %i.amv, 34359738368
  %.not214.i = icmp eq i64 %i.amw, 0
  br i1 %.not214.i, label %bb.fa, label %sta_set_link_sinfo.exit

bb.fa:                                            ; preds = %bb.ez
  %i.amx = getelementptr i8, ptr %i.vw, i64 673
  %i.amy = load i8, ptr %i.amx, align 1, !range !80, !noundef !81
  %i.amz = trunc nuw i8 %i.amy to i1
  br i1 %i.amz, label %bb.fb, label %sta_set_link_sinfo.exit

bb.fb:                                            ; preds = %bb.fa
  %i.ana = getelementptr i8, ptr %i.vw, i64 680
  %.val222.i = load i64, ptr %i.ana, align 8
  %i.anb = lshr i64 %.val222.i, 10
  %i.anc = trunc i64 %i.anb to i8
  %i.and = sub i8 0, %i.anc
  %i.ane = getelementptr i8, ptr %i.uh, i64 141
  store i8 %i.and, ptr %i.ane, align 1
  %i.anf = or disjoint i64 %i.amv, 34359738368
  store i64 %i.anf, ptr %i.uh, align 8
  br label %sta_set_link_sinfo.exit

sta_set_link_sinfo.exit:                          ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ce, %bb.ch
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %.pr = load i16, ptr %i.tl, align 8             ; 2 uses
  %sext = shl i64 %indvars.iv.next, 32
  %3 = ashr exact i64 %sext, 32
  %.not277 = icmp eq i16 %.pr, 0                  ; 2 uses
  %4 = select i1 %.not277, i64 1, i64 15
  %5 = icmp ugt i64 %4, %3
  br i1 %5, label %bb.cd, label %.loopexit, !llvm.loop !232

.loopexit:                                        ; preds = %sta_set_link_sinfo.exit, %bb.bz
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_ave_rssi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sta_set_rate_info_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @sta_set_rate_info_rx(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1640
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 2584
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.019.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = getelementptr i8, ptr %.019.i, i64 112   ; 2 uses
  %i.h = getelementptr i8, ptr %.019.i, i64 104
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %sta_get_last_rx_stats.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.j = load i64, ptr @__cpu_possible_mask, align 8
  %i.k = ptrtoint ptr %i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i
  %i.l = phi i64 [ 0, %.preheader.i ], [ %i.ad, %bb.f ]
  %.01824.i = phi ptr [ %i.g, %.preheader.i ], [ %spec.select.i, %bb.f ] ; 4 uses
  %i.m = shl nsw i64 -1, %i.l
  %i.n = and i64 %i.m, %i.j                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %sta_get_last_rx_stats.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.e
  %i.o = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.n) #24, !srcloc !164 ; 3 uses
  %i.p = and i64 %i.o, 4294967232
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %sta_get_last_rx_stats.exit

bb.f:                                             ; preds = %find_next_bit.exit.i
  %i.r = and i64 %i.o, 63
  %i.s = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.k
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr i8, ptr %.01824.i, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = icmp slt i64 %i.aa, 0
  %spec.select.i = select i1 %i.ab, ptr %i.v, ptr %.01824.i ; 2 uses
  %i.ac = add nuw nsw i64 %i.o, 1
  %i.ad = and i64 %i.ac, 127                      ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.ad, 63
  br i1 %i.ae, label %sta_get_last_rx_stats.exit, label %bb.e, !prof !56, !llvm.loop !165

sta_get_last_rx_stats.exit:                       ; preds = %bb.e, %find_next_bit.exit.i, %bb.f, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %.01824.i, %bb.e ], [ %spec.select.i, %bb.f ], [ %.01824.i, %find_next_bit.exit.i ]
  %i.af = getelementptr i8, ptr %.0.i, i64 52
  %i.ag = load volatile i32, ptr %i.af, align 4   ; 29 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %sta_stats_decode_rate.exit, label %bb.g

bb.g:                                             ; preds = %sta_get_last_rx_stats.exit
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = lshr i32 %i.ag, 4
  %i.al = trunc i32 %i.ak to i8
  %i.am = and i8 %i.al, 31                        ; 3 uses
  %i.an = getelementptr i8, ptr %1, i64 6
  store i8 %i.am, ptr %i.an, align 2
  %i.ao = and i32 %i.ag, 15
  switch i32 %i.ao, label %sta_stats_decode_rate.exit [
    i32 3, label %bb.h
    i32 2, label %bb.j
    i32 1, label %bb.l
    i32 4, label %bb.n
    i32 6, label %bb.o
    i32 7, label %condstore.split.i
    i32 5, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  store i16 2, ptr %1, align 2
  %i.ap = lshr i32 %i.ag, 12
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 15
  %i.as = getelementptr i8, ptr %1, i64 4
  store i8 %i.ar, ptr %i.as, align 2
  %i.at = lshr i32 %i.ag, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 15
  %i.aw = getelementptr i8, ptr %1, i64 5
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = and i32 %i.ag, 1048576
  %.not130.i = icmp eq i32 %i.ax, 0
  br i1 %.not130.i, label %sta_stats_decode_rate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 6, ptr %1, align 2
  br label %sta_stats_decode_rate.exit

bb.j:                                             ; preds = %bb.g
  store i16 1, ptr %1, align 2
  %i.ay = lshr i32 %i.ag, 12
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr i8, ptr %1, i64 4
  store i8 %i.az, ptr %i.ba, align 2
  %i.bb = and i32 %i.ag, 1048576
  %.not129.i = icmp eq i32 %i.bb, 0
  br i1 %.not129.i, label %sta_stats_decode_rate.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 5, ptr %1, align 2
  br label %sta_stats_decode_rate.exit

bb.l:                                             ; preds = %bb.g
  %i.bc = lshr i32 %i.ag, 16
  %i.bd = and i32 %i.bc, 15
  %i.be = getelementptr i8, ptr %i.aj, i64 80
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 304
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = getelementptr [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not128.i = icmp eq ptr %i.bl, null
  br i1 %.not128.i, label %bb.m, label %.critedge.i, !prof !32

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "2351: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2351b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2351) #20, !srcloc !233
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2590, i32 2307, i64 16) #20, !srcloc !234
  tail call void asm sideeffect "2352: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2352b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2352) #20, !srcloc !235
  br label %sta_stats_decode_rate.exit

.critedge.i:                                      ; preds = %bb.l
  %i.bm = lshr i32 %i.ag, 12
  %i.bn = and i32 %i.bm, 15
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr [12 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %i.br = load i16, ptr %i.bq, align 4
  %switch.selectcmp.i = icmp eq i8 %i.am, 2
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp131.i = icmp eq i8 %i.am, 1
  %switch.select132.i = select i1 %switch.selectcmp131.i, i32 2, i32 %switch.select.i ; 2 uses
  %i.bs = zext i16 %i.br to i32
  %notmask.i = shl nsw i32 -1, %switch.select132.i
  %i.bt = xor i32 %notmask.i, -1
  %i.bu = add nuw nsw i32 %i.bs, %i.bt
  %i.bv = lshr i32 %i.bu, %switch.select132.i
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr i8, ptr %1, i64 2
  store i16 %i.bw, ptr %i.bx, align 2
  br label %sta_stats_decode_rate.exit

bb.n:                                             ; preds = %bb.g
  store i16 16, ptr %1, align 2
  %i.by = lshr i32 %i.ag, 12
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 15
  %i.cb = getelementptr i8, ptr %1, i64 4
  store i8 %i.ca, ptr %i.cb, align 2
  %i.cc = lshr i32 %i.ag, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 15
  %i.cf = getelementptr i8, ptr %1, i64 5
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = lshr i32 %i.ag, 23
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 3
  %i.cj = getelementptr i8, ptr %1, i64 7
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = lshr i32 %i.ag, 20
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = getelementptr i8, ptr %1, i64 9
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = lshr i32 %i.ag, 25
end_hunk_1
