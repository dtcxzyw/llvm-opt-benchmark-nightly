Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regparse?download=true
inline.NumInlined: 358
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 21
begin_hunk_0_@fetch_token:bb.a
bb.fu:                                            ; preds = %bb.ft
  %i.qe = load i32, ptr %i.pt, align 4, !tbaa !28
  %i.qf = icmp eq i32 %i.qe, 0
  %i.qg = zext i1 %i.qf to i32
  store i32 %i.qg, ptr %i.pt, align 4, !tbaa !28
  br label %.thread747

bb.fv:                                            ; preds = %bb.ft
  store ptr %i.pq, ptr %i.c, align 8, !tbaa !131
  br label %.thread747

bb.fw:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !131
  %i.qh = call fastcc i32 @fetch_escaped_value_raw(ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.k) ; 2 uses
  %.not.i740 = icmp eq i32 %i.qh, 0
  br i1 %.not.i740, label %fetch_escaped_value.exit, label %.critedge732

fetch_escaped_value.exit:                         ; preds = %bb.fw
  %i.qi = load ptr, ptr %i.o, align 8, !tbaa !125
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !120
  %i.ql = load i32, ptr %i.k, align 4, !tbaa !26  ; 3 uses
  %i.qm = tail call i32 %i.qk(i32 noundef %i.ql) #26, !inline_history !3 ; 2 uses
  %i.qn = icmp sgt i32 %i.qm, -1
  br i1 %i.qn, label %bb.fx, label %.critedge732

bb.fx:                                            ; preds = %fetch_escaped_value.exit
  %i.qo = load i32, ptr %i.as, align 8, !tbaa !28
  %.not690 = icmp eq i32 %i.qo, %i.ql
  br i1 %.not690, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store i32 4, ptr %0, align 8, !tbaa !142
  store i32 %i.ql, ptr %i.as, align 8, !tbaa !28
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.qp = load ptr, ptr %i.ao, align 8, !tbaa !143 ; 2 uses
  %i.qq = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.qr = tail call i32 %i.qq(ptr noundef %i.qp) #26
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds i8, ptr %i.qp, i64 %i.qs
  store ptr %i.qt, ptr %i.c, align 8, !tbaa !131
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %.thread747

bb.gb:                                            ; preds = %bb.k, %bb.j
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !28
  store i32 0, ptr %i.at, align 8, !tbaa !146
  %cond735 = icmp eq i32 %i.bc, 0
  br i1 %cond735, label %.thread747.loopexit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.qu = load i32, ptr %i.r, align 4, !tbaa !147 ; 11 uses
  %i.qv = and i32 %i.qu, 1
  %.not692 = icmp eq i32 %i.qv, 0
  br i1 %.not692, label %bb.gj, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qw = load i32, ptr %i.au, align 4, !tbaa !216
  %i.qx = icmp eq i32 %i.bc, %i.qw
  br i1 %i.qx, label %.loopexit772.loopexit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qy = load i32, ptr %i.av, align 4, !tbaa !217
  %i.qz = icmp eq i32 %i.bc, %i.qy
  br i1 %i.qz, label %.loopexit773.sink.split, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ra = load i32, ptr %i.aw, align 4, !tbaa !218
  %i.rb = icmp eq i32 %i.bc, %i.ra
  br i1 %i.rb, label %.loopexit773.sink.split, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.rc = load i32, ptr %i.ax, align 4, !tbaa !219
  %i.rd = icmp eq i32 %i.bc, %i.rc
  br i1 %i.rd, label %.loopexit773.sink.split, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.re = load i32, ptr %i.ay, align 4, !tbaa !220
  %i.rf = icmp eq i32 %i.bc, %i.re
  br i1 %i.rf, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store ptr %i.bg, ptr %i.c, align 8
  store i32 12, ptr %0, align 8, !tbaa !142
  br label %.thread747

bb.gj:                                            ; preds = %bb.gh, %bb.gc
  switch i32 %i.bc, label %.thread747.loopexit [
    i32 46, label %bb.gk
    i32 42, label %bb.gl
    i32 43, label %bb.gm
    i32 63, label %bb.gn
    i32 123, label %bb.go
    i32 124, label %bb.gs
    i32 40, label %bb.gu
    i32 41, label %bb.ia
    i32 94, label %bb.ic
    i32 36, label %bb.ig
    i32 91, label %bb.ik
    i32 93, label %bb.im
    i32 35, label %bb.io
    i32 32, label %bb.iq
    i32 9, label %bb.iq
    i32 10, label %bb.iq
    i32 13, label %bb.iq
    i32 12, label %bb.iq
  ]

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.rg = and i32 %i.qu, 2
  %.not726 = icmp eq i32 %i.rg, 0
  br i1 %.not726, label %.thread747, label %.loopexit772

.loopexit772.loopexit:                            ; preds = %bb.gd
  store ptr %i.bg, ptr %i.c, align 8
  br label %.loopexit772

.loopexit772:                                     ; preds = %.loopexit772.loopexit, %bb.gk
  store i32 5, ptr %0, align 8, !tbaa !142
  br label %.thread747

bb.gl:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.rh = and i32 %i.qu, 4
  %.not725 = icmp eq i32 %i.rh, 0
  br i1 %.not725, label %.thread747, label %.loopexit773

bb.gm:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.ri = and i32 %i.qu, 16
  %.not724 = icmp eq i32 %i.ri, 0
  br i1 %.not724, label %.thread747, label %.loopexit773

bb.gn:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.rj = and i32 %i.qu, 64
  %.not723 = icmp eq i32 %i.rj, 0
  br i1 %.not723, label %.thread747, label %.loopexit773

bb.go:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.rk = and i32 %i.qu, 256
  %.not721 = icmp eq i32 %i.rk, 0
  br i1 %.not721, label %.thread747, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.rl = call fastcc i32 @fetch_interval(ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef %0, ptr noundef %3) ; 3 uses
  %i.rm = icmp slt i32 %i.rl, 0
  br i1 %i.rm, label %.thread750, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  switch i32 %i.rl, label %.thread747 [
    i32 0, label %bb.q
    i32 2, label %bb.gr
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.rn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !66
  %i.rp = and i32 %i.ro, 512
  %.not722 = icmp eq i32 %i.rp, 0
  br i1 %.not722, label %bb.q, label %bb.v

bb.gs:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.rq = and i32 %i.qu, 1024
  %.not720 = icmp eq i32 %i.rq, 0
  br i1 %.not720, label %.thread747, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i32 13, ptr %0, align 8, !tbaa !142
  br label %.thread747

bb.gu:                                            ; preds = %bb.gj
  %i.rr = icmp ult ptr %i.bg, %2
  br i1 %i.rr, label %bb.gv, label %.loopexit776.loopexit

bb.gv:                                            ; preds = %bb.gu
  %i.rs = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.rt = tail call i32 %i.rs(ptr noundef %i.bg, ptr noundef nonnull %2) #26
  %i.ru = icmp eq i32 %i.rt, 63
  br i1 %i.ru, label %bb.gw, label %.loopexit776.loopexit

bb.gw:                                            ; preds = %bb.gv
  %i.rv = load i32, ptr %i.ar, align 4, !tbaa !145
  %i.rw = and i32 %i.rv, 2
  %.not707 = icmp eq i32 %i.rw, 0
  br i1 %.not707, label %.loopexit776.loopexit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.rx = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ry = tail call i32 %i.rx(ptr noundef %i.bg) #26
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds i8, ptr %i.bg, i64 %i.rz ; 21 uses
  %i.sb = icmp ult ptr %i.sa, %2
  br i1 %i.sb, label %bb.gy, label %.loopexit777.loopexit

bb.gy:                                            ; preds = %bb.gx
  %i.sc = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.sd = tail call i32 %i.sc(ptr noundef %i.sa, ptr noundef nonnull %2) #26 ; 4 uses
  %i.se = icmp eq i32 %i.sd, 35
  br i1 %i.se, label %bb.gz, label %bb.he

bb.gz:                                            ; preds = %bb.gy
  %i.sf = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.sg = tail call i32 %i.sf(ptr noundef %i.sa, ptr noundef nonnull %2) #26 ; 0 uses
  %i.sh = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.si = tail call i32 %i.sh(ptr noundef %i.sa) #26
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds i8, ptr %i.sa, i64 %i.sj ; 2 uses
  %i.sl = icmp ult ptr %i.sk, %2
  br i1 %i.sl, label %.lr.ph, label %.thread750.loopexit1100

.lr.ph:                                           ; preds = %bb.gz, %bb.hd
  %i.sm = phi ptr [ %i.td, %bb.hd ], [ %i.sk, %bb.gz ] ; 3 uses
  %i.sn = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.so = tail call i32 %i.sn(ptr noundef %i.sm, ptr noundef nonnull %2) #26 ; 2 uses
  %i.sp = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.sq = tail call i32 %i.sp(ptr noundef %i.sm) #26
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds i8, ptr %i.sm, i64 %i.sr ; 7 uses
  %i.st = load i32, ptr %i.aq, align 4, !tbaa !144
  %i.su = icmp eq i32 %i.so, %i.st
  br i1 %i.su, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %.lr.ph
  %i.sv = icmp ult ptr %i.ss, %2
  br i1 %i.sv, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  %i.sw = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.sx = tail call i32 %i.sw(ptr noundef %i.ss, ptr noundef nonnull %2) #26 ; 0 uses
  %i.sy = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.sz = tail call i32 %i.sy(ptr noundef %i.ss) #26
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.ss, i64 %i.ta
  br label %bb.hd

bb.hc:                                            ; preds = %.lr.ph
  %i.tc = icmp eq i32 %i.so, 41
  br i1 %i.tc, label %.backedge, label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb, %bb.ha
  %i.td = phi ptr [ %i.ss, %bb.hc ], [ %i.tb, %bb.hb ], [ %i.ss, %bb.ha ] ; 2 uses
  %i.te = icmp ult ptr %i.td, %2
  br i1 %i.te, label %.lr.ph, label %.thread750.loopexit1098

bb.he:                                            ; preds = %bb.gy
  store ptr %i.sa, ptr %i.c, align 8
  %i.tf = load i32, ptr %i.ar, align 4, !tbaa !145
  %i.tg = and i32 %i.tf, 134217728
  %.not708 = icmp eq i32 %i.tg, 0
  br i1 %.not708, label %bb.hu, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  switch i32 %i.sd, label %bb.hn [
    i32 38, label %bb.hg
    i32 82, label %bb.hi
    i32 45, label %bb.hk
    i32 43, label %bb.hk
  ]

bb.hg:                                            ; preds = %bb.hf
  %i.th = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ti = tail call i32 %i.th(ptr noundef %i.sa) #26
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %i.sa, i64 %i.tj ; 2 uses
  store ptr %i.tk, ptr %i.c, align 8, !tbaa !131
  %i.tl = call fastcc i32 @fetch_name(i32 noundef 40, ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef %i.m, ptr noundef %3, ptr noundef %i.l, ptr noundef %i.n, i32 noundef 0) ; 2 uses
  %i.tm = icmp slt i32 %i.tl, 0
  br i1 %i.tm, label %.critedge734.thread, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  store i32 8, ptr %0, align 8, !tbaa !142
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.tn, align 4, !tbaa !28
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.to, align 8, !tbaa !28
  br label %.critedge734.thread762.sink.split

bb.hi:                                            ; preds = %bb.hf
  store i32 8, ptr %0, align 8, !tbaa !142
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.tp, align 4, !tbaa !28
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.tq, align 8, !tbaa !28
  store ptr %i.sa, ptr %i.as, align 8, !tbaa !28
  %i.tr = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ts = tail call i32 %i.tr(ptr noundef %i.sa) #26
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds i8, ptr %i.sa, i64 %i.tt ; 4 uses
  store ptr %i.tu, ptr %i.c, align 8, !tbaa !131
  %i.tv = icmp ult ptr %i.tu, %2
  br i1 %i.tv, label %bb.hj, label %.critedge734.thread

bb.hj:                                            ; preds = %bb.hi
  %i.tw = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.tx = tail call i32 %i.tw(ptr noundef %i.tu, ptr noundef nonnull %2) #26
  %i.ty = icmp eq i32 %i.tx, 41
  br i1 %i.ty, label %.critedge734.thread762, label %.critedge734.thread

bb.hk:                                            ; preds = %bb.hf, %bb.hf
  %i.tz = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ua = tail call i32 %i.tz(ptr noundef %i.sa) #26
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds i8, ptr %i.sa, i64 %i.ub ; 2 uses
  %i.ud = icmp ult ptr %i.uc, %2
  br i1 %i.ud, label %bb.hl, label %.critedge734

bb.hl:                                            ; preds = %bb.hk
  %i.ue = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.uf = tail call i32 %i.ue(ptr noundef %i.uc, ptr noundef nonnull %2) #26
  %i.ug = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.uh = tail call i32 %i.ug(i32 noundef %i.uf, i32 noundef 4) #26
  %.not717 = icmp eq i32 %i.uh, 0
  br i1 %.not717, label %.critedge734, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  store ptr %i.sa, ptr %i.c, align 8, !tbaa !131
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hf
  %i.ui = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.uj = tail call i32 %i.ui(i32 noundef %i.sd, i32 noundef 4) #26
  %.not718 = icmp eq i32 %i.uj, 0
  br i1 %.not718, label %.critedge734.thread766, label %bb.ho

.critedge734.thread766:                           ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %.loopexit777

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.uk = call fastcc i32 @fetch_name(i32 noundef 40, ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef %i.m, ptr noundef %3, ptr noundef %i.l, ptr noundef %i.n, i32 noundef 1) ; 2 uses
  %i.ul = icmp slt i32 %i.uk, 0
  br i1 %i.ul, label %.critedge734.thread, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.um = load i32, ptr %i.n, align 4, !tbaa !26
  switch i32 %i.um, label %._crit_edge1033 [
    i32 0, label %.critedge734.thread
    i32 2, label %bb.hq
  ]

._crit_edge1033:                                  ; preds = %bb.hp
  %.pre = load i32, ptr %i.l, align 4, !tbaa !26
  br label %bb.ht

bb.hq:                                            ; preds = %bb.hp
  %i.un = load i32, ptr %i.l, align 4, !tbaa !26  ; 4 uses
  %i.uo = icmp sgt i32 %i.un, 0
  %i.up = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !135 ; 3 uses
  br i1 %i.uo, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.ur = sub nsw i32 2147483647, %i.uq
  %i.us = icmp samesign ugt i32 %i.un, %i.ur
  %i.ut = add nsw i32 %i.uq, %i.un
  br i1 %i.us, label %backref_rel_to_abs.exit744.thread, label %backref_rel_to_abs.exit744

bb.hs:                                            ; preds = %bb.hq
  %i.uu = add i32 %i.uq, %i.un
  %i.uv = add i32 %i.uu, 1
  br label %backref_rel_to_abs.exit744

backref_rel_to_abs.exit744:                       ; preds = %bb.hr, %bb.hs
  %.0.i742 = phi i32 [ %i.uv, %bb.hs ], [ %i.ut, %bb.hr ] ; 2 uses
  %i.uw = icmp slt i32 %.0.i742, 0
  br i1 %i.uw, label %backref_rel_to_abs.exit744.thread, label %bb.ht

backref_rel_to_abs.exit744.thread:                ; preds = %bb.hr, %backref_rel_to_abs.exit744
  %i.ux = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.sa, ptr %i.uy, align 8, !tbaa !139
  %i.uz = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.ux, ptr %i.uz, align 8, !tbaa !140
  br label %.critedge734.thread

bb.ht:                                            ; preds = %._crit_edge1033, %backref_rel_to_abs.exit744
  %i.va = phi i32 [ %.pre, %._crit_edge1033 ], [ %.0.i742, %backref_rel_to_abs.exit744 ]
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.vb, align 4, !tbaa !28
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.va, ptr %i.vc, align 8, !tbaa !28
  store i32 8, ptr %0, align 8, !tbaa !142
  br label %.critedge734.thread762.sink.split

.critedge734.thread:                              ; preds = %bb.ho, %backref_rel_to_abs.exit744.thread, %bb.hp, %bb.hj, %bb.hg, %bb.hi
  %.4582.ph = phi i32 [ -119, %bb.hi ], [ %i.tl, %bb.hg ], [ -119, %bb.hj ], [ -215, %bb.hp ], [ -218, %backref_rel_to_abs.exit744.thread ], [ %i.uk, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %.thread750

.critedge734.thread762.sink.split:                ; preds = %bb.ht, %bb.hh
  %.sink1221 = phi ptr [ %i.tk, %bb.hh ], [ %i.sa, %bb.ht ]
  store ptr %.sink1221, ptr %i.as, align 8, !tbaa !28
  %i.vd = load ptr, ptr %i.m, align 8, !tbaa !131
  br label %.critedge734.thread762

.critedge734.thread762:                           ; preds = %.critedge734.thread762.sink.split, %bb.hj
  %.sink1219 = phi ptr [ %i.tu, %bb.hj ], [ %i.vd, %.critedge734.thread762.sink.split ]
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink1219, ptr %i.ve, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %.thread747

.critedge734:                                     ; preds = %bb.hl, %bb.hk
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %.loopexit776

bb.hu:                                            ; preds = %bb.he
  %i.vf = icmp eq i32 %i.sd, 80
  br i1 %i.vf, label %bb.hv, label %.loopexit777

bb.hv:                                            ; preds = %bb.hu
  %i.vg = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !145
  %.not709 = icmp sgt i32 %i.vi, -1
  br i1 %.not709, label %.loopexit777, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.vj = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.vk = tail call i32 %i.vj(ptr noundef %i.sa) #26
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds i8, ptr %i.sa, i64 %i.vl ; 4 uses
  %i.vn = icmp ult ptr %i.vm, %2
  br i1 %i.vn, label %bb.hx, label %.thread750

bb.hx:                                            ; preds = %bb.hw
  %i.vo = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.vp = tail call i32 %i.vo(ptr noundef %i.vm, ptr noundef nonnull %2) #26
  %i.vq = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.vr = tail call i32 %i.vq(ptr noundef %i.vm) #26
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds i8, ptr %i.vm, i64 %i.vs ; 3 uses
  store ptr %i.vt, ptr %i.c, align 8, !tbaa !131
  switch i32 %i.vp, label %bb.hy [
    i32 61, label %bb.eg
    i32 62, label %bb.fd
  ]

bb.hy:                                            ; preds = %bb.hx
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !131
  br label %.loopexit776

.loopexit777.loopexit:                            ; preds = %bb.gx
  store ptr %i.sa, ptr %i.c, align 8
  br label %.loopexit777

.loopexit777:                                     ; preds = %.loopexit777.loopexit, %.critedge734.thread766, %bb.hv, %bb.hu
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !131
  br label %.loopexit776

.loopexit776.loopexit:                            ; preds = %bb.gu, %bb.gw, %bb.gv
  store ptr %i.bg, ptr %i.c, align 8
  br label %.loopexit776

.loopexit776:                                     ; preds = %.loopexit776.loopexit, %.critedge734, %.loopexit777, %bb.hy
  %i.vu = load i32, ptr %i.r, align 4, !tbaa !147
  %i.vv = and i32 %i.vu, 4096
  %.not719 = icmp eq i32 %i.vv, 0
  br i1 %.not719, label %.thread747, label %bb.hz

bb.hz:                                            ; preds = %.loopexit776
  store i32 14, ptr %0, align 8, !tbaa !142
  br label %.thread747

bb.ia:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.vw = and i32 %i.qu, 4096
  %.not706 = icmp eq i32 %i.vw, 0
  br i1 %.not706, label %.thread747, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  store i32 15, ptr %0, align 8, !tbaa !142
  br label %.thread747

bb.ic:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.vx = and i32 %i.qu, 8388608
  %.not702 = icmp eq i32 %i.vx, 0
  br i1 %.not702, label %.thread747, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.vy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !66
  %i.wa = and i32 %i.vz, 16384
  %.not703 = icmp eq i32 %i.wa, 0
  br i1 %.not703, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.wb = tail call fastcc i32 @is_head_of_bre_subexp(ptr noundef %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %i.p, ptr noundef %3)
  %.not704 = icmp eq i32 %i.wb, 0
  br i1 %.not704, label %.thread747, label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  store i32 9, ptr %0, align 8, !tbaa !142
  %i.wc = load i32, ptr %3, align 8, !tbaa !123
  %i.wd = and i32 %i.wc, 8
  %.not705 = icmp eq i32 %i.wd, 0
  %i.we = select i1 %.not705, i32 32, i32 16
  store i32 %i.we, ptr %i.as, align 8, !tbaa !28
  br label %.thread747

bb.ig:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.wf = and i32 %i.qu, 8388608
  %.not698 = icmp eq i32 %i.wf, 0
  br i1 %.not698, label %.thread747, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.wg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !66
  %i.wi = and i32 %i.wh, 16384
  %.not699 = icmp eq i32 %i.wi, 0
  br i1 %.not699, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.wj = tail call fastcc i32 @is_end_of_bre_subexp(ptr noundef %i.bg, ptr noundef nonnull %2, ptr noundef nonnull %i.p, ptr noundef %3)
  %.not700 = icmp eq i32 %i.wj, 0
  br i1 %.not700, label %.thread747, label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  store i32 9, ptr %0, align 8, !tbaa !142
  %i.wk = load i32, ptr %3, align 8, !tbaa !123
  %i.wl = and i32 %i.wk, 8
  %.not701 = icmp eq i32 %i.wl, 0
  %i.wm = select i1 %.not701, i32 512, i32 256
  store i32 %i.wm, ptr %i.as, align 8, !tbaa !28
  br label %.thread747

bb.ik:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.wn = and i32 %i.qu, 131072
  %.not697 = icmp eq i32 %i.wn, 0
  br i1 %.not697, label %.thread747, label %bb.il

bb.il:                                            ; preds = %bb.ik
  store i32 16, ptr %0, align 8, !tbaa !142
  br label %.thread747

bb.im:                                            ; preds = %bb.gj
  store ptr %i.bg, ptr %i.c, align 8
  %i.wo = load ptr, ptr %1, align 8, !tbaa !131
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !127
  %i.wr = icmp ugt ptr %i.wo, %i.wq
  br i1 %i.wr, label %bb.in, label %.thread747

bb.in:                                            ; preds = %bb.im
  tail call fastcc void @CLOSE_BRACKET_WITHOUT_ESC_WARN(ptr noundef nonnull %3)
  br label %.thread747

bb.io:                                            ; preds = %bb.gj
  %i.ws = load i32, ptr %3, align 8, !tbaa !123
  %i.wt = and i32 %i.ws, 2
  %.not694 = icmp eq i32 %i.wt, 0
  br i1 %.not694, label %.thread747.loopexit, label %.preheader771

.preheader771:                                    ; preds = %bb.io, %bb.ip
  %i.wu = phi ptr [ %i.xa, %bb.ip ], [ %i.bg, %bb.io ] ; 5 uses
  %.not695 = icmp ult ptr %i.wu, %2
  br i1 %.not695, label %bb.ip, label %.backedge

bb.ip:                                            ; preds = %.preheader771
  %i.wv = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.ww = tail call i32 %i.wv(ptr noundef %i.wu, ptr noundef nonnull %2) #26
  %i.wx = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.wy = tail call i32 %i.wx(ptr noundef %i.wu) #26
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds i8, ptr %i.wu, i64 %i.wz ; 2 uses
  %i.xb = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.xc = tail call i32 %i.xb(i32 noundef %i.ww, i32 noundef 0) #26
  %.not696 = icmp eq i32 %i.xc, 0
  br i1 %.not696, label %.preheader771, label %.backedge, !llvm.loop !215

.backedge:                                        ; preds = %.preheader771, %bb.ip, %bb.hc, %bb.iq
  %.lcssa11851211 = phi ptr [ %i.ss, %bb.hc ], [ %i.bg, %bb.iq ], [ %i.wu, %.preheader771 ], [ %i.xa, %bb.ip ] ; 3 uses
  %i.xd = icmp ult ptr %.lcssa11851211, %2
  br i1 %i.xd, label %bb.j, label %._crit_edge.loopexit

bb.iq:                                            ; preds = %bb.gj, %bb.gj, %bb.gj, %bb.gj, %bb.gj
  %i.xe = load i32, ptr %3, align 8, !tbaa !123
  %i.xf = and i32 %i.xe, 2
  %.not693 = icmp eq i32 %i.xf, 0
  br i1 %.not693, label %.thread747.loopexit, label %.backedge

.thread747.loopexit:                              ; preds = %bb.io, %bb.iq, %bb.gj, %bb.gb
  store ptr %i.bg, ptr %i.c, align 8
  br label %.thread747

.thread747:                                       ; preds = %.thread747.loopexit, %.thread, %.critedge734.thread762, %bb.ga, %bb.ey, %bb.ex, %bb.gq, %bb.af, %bb.fp, %bb.fq, %bb.fo, %bb.fu, %bb.fv, %bb.fr, %bb.fs, %bb.fm, %bb.fn, %bb.fb, %bb.fa, %bb.fl, %bb.fk, %bb.ee, %bb.ed, %bb.er, %bb.ez, %bb.eb, %bb.ec, %bb.dp, %bb.do, %bb.dl, %bb.dn, %bb.dk, %bb.dg, %bb.df, %bb.dj, %bb.dh, %bb.cs, %bb.cm, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %bb.ch, %bb.cf, %bb.cc, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.ad, %bb.u, %bb.v, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.p, %bb.o, %bb.n, %bb.dy, %bb.dw, %bb.ci, %bb.cg, %bb.cd, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.im, %bb.in, %bb.ik, %bb.ii, %bb.ig, %bb.ie, %bb.ic, %bb.ia, %.loopexit776, %bb.gs, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.il, %bb.ij, %bb.if, %bb.ib, %bb.hz, %bb.gt, %.loopexit772, %bb.gi, %bb.h
  %i.xg = load ptr, ptr %i.c, align 8, !tbaa !131
  store ptr %i.xg, ptr %1, align 8, !tbaa !131
  %i.xh = load i32, ptr %0, align 8, !tbaa !142
  br label %.thread750

.critedge732:                                     ; preds = %bb.fw, %fetch_escaped_value.exit
  %.0.i741755 = phi i32 [ %i.qm, %fetch_escaped_value.exit ], [ %i.qh, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %.thread750

.thread750.loopexit1098:                          ; preds = %bb.hd
  store ptr %i.sa, ptr %i.c, align 8
  br label %.thread750

.thread750.loopexit1100:                          ; preds = %bb.gz
  store ptr %i.sa, ptr %i.c, align 8
  br label %.thread750

.thread750:                                       ; preds = %bb.ew, %bb.ev, %.thread750.loopexit1100, %.thread750.loopexit1098, %bb.es, %.critedge734.thread, %get_next_code_point.exit.thread, %bb.hw, %bb.gp, %.critedge732, %bb.ff, %bb.fd, %bb.ep, %bb.eq, %backref_rel_to_abs.exit, %bb.ej, %bb.eh, %bb.ea, %bb.du, %bb.dv, %bb.dm, %bb.di, %bb.dd, %bb.dc, %bb.cz, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.ce, %bb.ae, %bb.l, %get_next_code_point.exit, %.thread747, %backref_rel_to_abs.exit739.thread, %._crit_edge
  %.5 = phi i32 [ %i.xh, %.thread747 ], [ %.0.i741755, %.critedge732 ], [ %i.rl, %bb.gp ], [ %.4582.ph, %.critedge734.thread ], [ -200, %bb.ea ], [ %i.ls, %bb.eh ], [ -208, %bb.ej ], [ -208, %backref_rel_to_abs.exit ], [ -118, %bb.hw ], [ -208, %bb.ep ], [ %i.ol, %bb.fd ], [ -218, %backref_rel_to_abs.exit739.thread ], [ -118, %.thread750.loopexit1100 ], [ -400, %get_next_code_point.exit.thread ], [ -104, %bb.l ], [ %i.dp, %bb.ae ], [ -213, %bb.ce ], [ %i.gv, %bb.co ], [ -400, %bb.cz ], [ %i.ip, %bb.dc ], [ -212, %bb.cx ], [ -212, %bb.cr ], [ %i.hp, %bb.cu ], [ -400, %bb.dd ], [ %i.iu, %bb.di ], [ -208, %bb.du ], [ %phi.call, %bb.dm ], [ %.0.i, %get_next_code_point.exit ], [ 0, %._crit_edge ], [ -208, %bb.dv ], [ -208, %bb.eq ], [ -218, %bb.ff ], [ -217, %bb.es ], [ -118, %.thread750.loopexit1098 ], [ -208, %bb.ev ], [ -208, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prs_alts(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 16) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !149
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !149
  %i.e = load i32, ptr @ParseDepthLimit, align 4, !tbaa !26
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %onig_node_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %5, align 8, !tbaa !123
  %i.h = call fastcc i32 @prs_branch(ptr noundef %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6) ; 5 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %onig_node_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.j), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.j) #26, !inline_history !101
  br label %onig_node_free.exit

bb.e:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.h, %2
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !110
  store ptr %i.m, ptr %0, align 8, !tbaa !110
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %i.h, 13
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !110  ; 7 uses
  br i1 %i.n, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.p = icmp eq ptr %calloc.i.i, null
  br i1 %i.p, label %bb.i, label %onig_node_new_alt.exit

onig_node_new_alt.exit:                           ; preds = %bb.h
  store i32 8, ptr %calloc.i.i, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !28
  store ptr %calloc.i.i, ptr %0, align 8, !tbaa !110
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.r = icmp eq ptr %i.o, null
  br i1 %i.r, label %onig_node_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.o), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.o) #26, !inline_history !101
  br label %onig_node_free.exit

bb.k:                                             ; preds = %onig_node_new_alt.exit, %onig_node_new_alt.exit57
  %calloc.i.i.pn = phi ptr [ %calloc.i.i, %onig_node_new_alt.exit ], [ %calloc.i.i56, %onig_node_new_alt.exit57 ]
  %.071 = getelementptr inbounds nuw i8, ptr %calloc.i.i.pn, i64 24 ; 2 uses
  %i.s = tail call fastcc i32 @fetch_token(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %onig_node_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = call fastcc i32 @prs_branch(ptr noundef %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0) ; 4 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @onig_node_free(ptr noundef %i.w)
  br label %onig_node_free.exit

bb.n:                                             ; preds = %bb.l
  %calloc.i.i56 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.x = icmp eq ptr %calloc.i.i56, null
  br i1 %i.x, label %bb.o, label %onig_node_new_alt.exit57

onig_node_new_alt.exit57:                         ; preds = %bb.n
  store i32 8, ptr %calloc.i.i56, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i.i56, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i.i56, i64 24
  store ptr null, ptr %i.z, align 8, !tbaa !28
  store ptr %calloc.i.i56, ptr %.071, align 8, !tbaa !110
  %i.aa = icmp eq i32 %i.u, 13
  br i1 %i.aa, label %bb.k, label %bb.p, !llvm.loop !221

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %.071, align 8, !tbaa !110
  tail call void @onig_node_free(ptr noundef %i.w)
  %i.ab = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @onig_node_free(ptr noundef %i.ab)
  store ptr null, ptr %0, align 8, !tbaa !110
  br label %onig_node_free.exit

bb.p:                                             ; preds = %onig_node_new_alt.exit57
  %i.ac = load i32, ptr %1, align 8, !tbaa !142
  %.not = icmp eq i32 %i.ac, %2
  br i1 %.not, label %bb.s, label %onig_node_free.exit58

bb.q:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %i.o, null
  br i1 %i.ad, label %onig_node_free.exit58, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.o), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.o) #26, !inline_history !101
  br label %onig_node_free.exit58

onig_node_free.exit58:                            ; preds = %bb.r, %bb.q, %bb.p
  %i.ae = icmp eq i32 %2, 15
  %. = select i1 %i.ae, i32 -117, i32 -11
  br label %onig_node_free.exit

bb.s:                                             ; preds = %bb.p, %bb.f
  %.1 = phi i32 [ %2, %bb.f ], [ %i.u, %bb.p ]
  store i32 %i.g, ptr %5, align 8, !tbaa !123
  %i.af = load i32, ptr %i.b, align 8, !tbaa !149
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !149
  br label %onig_node_free.exit

onig_node_free.exit:                              ; preds = %bb.k, %bb.j, %bb.i, %bb.d, %bb.c, %onig_node_free.exit58, %bb.a, %bb.s, %bb.o, %bb.m
  %.046 = phi i32 [ -5, %bb.j ], [ %., %onig_node_free.exit58 ], [ %.1, %bb.s ], [ %i.h, %bb.d ], [ -16, %bb.a ], [ %i.u, %bb.m ], [ -5, %bb.o ], [ %i.h, %bb.c ], [ -5, %bb.i ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -202, 3) i32 @fetch_interval(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !66
  %i.h = and i32 %i.g, 8
  %.not = icmp eq i32 %i.h, 0                     ; 3 uses
  %i.i = icmp ult ptr %i.a, %1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = select i1 %.not, i32 -100, i32 1
  br label %scan_number.exit.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = tail call i32 %i.k(ptr noundef %i.a, ptr noundef nonnull %1) #26
  switch i32 %i.l, label %..lr.ph.i_crit_edge [
    i32 124, label %scan_number.exit.thread
    i32 41, label %scan_number.exit.thread
    i32 40, label %scan_number.exit.thread
  ]

..lr.ph.i_crit_edge:                              ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !125
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %bb.c
  %i.m = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.c, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.030.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.u, %bb.h ] ; 5 uses
  %.02229.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ad, %bb.h ] ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.q = tail call i32 %i.p(ptr noundef %.030.i, ptr noundef nonnull %1) #26, !inline_history !150 ; 4 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !84
end_hunk_0
