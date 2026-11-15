Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@drmp3_L3_read_side_info:bb.a
  %i.bt = add nsw i32 %i.x, %i.bs                 ; 2 uses
  store i32 %i.bt, ptr %i.w, align 8
  %i.bu = load i32, ptr %i.z, align 4
  %i.bv = icmp sgt i32 %i.bt, %i.bu
  br i1 %i.bv, label %drmp3_bs_get_bits.exit131, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.c
  %i.bw = and i32 %i.x, 7                         ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, %i.bs            ; 4 uses
  %i.by = lshr i32 255, %i.bw
  %i.bz = ashr i32 %i.x, 3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.y, i64 %i.ca ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = and i32 %i.by, %i.cd
  %.0.i130 = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = add nsw i32 %i.bx, -8                   ; 2 uses
  %i.cg = shl i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = load i8, ptr %.0.i130, align 1
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp samesign ugt i32 %i.bx, 16
  br i1 %i.cj, label %.lr.ph.i125.1, label %._crit_edge.i120

.lr.ph.i125.1:                                    ; preds = %.lr.ph.i125
  %.0.i130.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ck = add nsw i32 %i.bx, -16
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = or i32 %i.cl, %i.cg
  %i.cn = load i8, ptr %.0.i130.1, align 1
  %i.co = zext i8 %i.cn to i32
  br label %._crit_edge.i120

._crit_edge.i120:                                 ; preds = %.lr.ph.i125.1, %.lr.ph.i125
  %.01825.i127.lcssa = phi i32 [ %i.bx, %.lr.ph.i125 ], [ %i.cf, %.lr.ph.i125.1 ]
  %.lcssa489 = phi i32 [ %i.cg, %.lr.ph.i125 ], [ %i.cm, %.lr.ph.i125.1 ]
  %.lcssa488 = phi i32 [ %i.ci, %.lr.ph.i125 ], [ %i.co, %.lr.ph.i125.1 ]
  %i.cp = sub nuw nsw i32 16, %.01825.i127.lcssa
  %i.cq = lshr i32 %.lcssa488, %i.cp
  %i.cr = or i32 %i.cq, %.lcssa489
  br label %drmp3_bs_get_bits.exit131

drmp3_bs_get_bits.exit131:                        ; preds = %bb.c, %._crit_edge.i120
  %.021.i124 = phi i32 [ %i.cr, %._crit_edge.i120 ], [ 0, %bb.c ]
  %i.cs = lshr i32 %.021.i124, %i.d
  br label %drmp3_bs_get_bits.exit119

drmp3_bs_get_bits.exit119:                        ; preds = %._crit_edge.i108, %drmp3_bs_get_bits.exit, %drmp3_bs_get_bits.exit131
  %.095 = phi i32 [ 0, %drmp3_bs_get_bits.exit131 ], [ %i.br, %._crit_edge.i108 ], [ 0, %drmp3_bs_get_bits.exit ]
  %.094 = phi i32 [ %i.cs, %drmp3_bs_get_bits.exit131 ], [ %.021.i, %._crit_edge.i108 ], [ %.021.i, %drmp3_bs_get_bits.exit ] ; 2 uses
  %.0 = phi i32 [ %i.d, %drmp3_bs_get_bits.exit131 ], [ %i.aa, %._crit_edge.i108 ], [ %i.aa, %drmp3_bs_get_bits.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 32 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 15 uses
  %i.cv = sext i32 %i.u to i64                    ; 3 uses
  %i.cw = getelementptr inbounds [23 x i8], ptr @drmp3_L3_read_side_info.g_scf_long, i64 %i.cv
  %i.cx = getelementptr inbounds [40 x i8], ptr @drmp3_L3_read_side_info.g_scf_mixed, i64 %i.cv
  %i.cy = getelementptr inbounds [40 x i8], ptr @drmp3_L3_read_side_info.g_scf_short, i64 %i.cv
  br label %bb.d

bb.d:                                             ; preds = %drmp3_bs_get_bits.exit335, %drmp3_bs_get_bits.exit119
  %.099 = phi ptr [ %1, %drmp3_bs_get_bits.exit119 ], [ %i.su, %drmp3_bs_get_bits.exit335 ] ; 31 uses
  %.196 = phi i32 [ %.095, %drmp3_bs_get_bits.exit119 ], [ %i.st, %drmp3_bs_get_bits.exit335 ] ; 2 uses
  %.093 = phi i32 [ 0, %drmp3_bs_get_bits.exit119 ], [ %i.eg, %drmp3_bs_get_bits.exit335 ]
  %.1 = phi i32 [ %.0, %drmp3_bs_get_bits.exit119 ], [ %i.sv, %drmp3_bs_get_bits.exit335 ]
  %i.cz = load i8, ptr %i.a, align 1
  %i.da = icmp ugt i8 %i.cz, -65
  %i.db = shl i32 %.196, 4
  %spec.select = select i1 %i.da, i32 %i.db, i32 %.196 ; 3 uses
  %i.dc = load i32, ptr %i.ct, align 8            ; 3 uses
  %i.dd = load ptr, ptr %0, align 8
  %i.de = add nsw i32 %i.dc, 12                   ; 2 uses
  store i32 %i.de, ptr %i.ct, align 8
  %i.df = load i32, ptr %i.cu, align 4
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %drmp3_bs_get_bits.exit143, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.d
  %i.dh = and i32 %i.dc, 7                        ; 5 uses
  %i.di = lshr i32 255, %i.dh
  %i.dj = ashr i32 %i.dc, 3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dd, i64 %i.dk ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = and i32 %i.di, %i.dn
  %i.dp = add nuw nsw i32 %i.dh, 12
  %.0.i142 = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dq = add nuw nsw i32 %i.dh, 4                ; 2 uses
  %i.dr = shl nuw nsw i32 %i.do, %i.dq            ; 2 uses
  %i.ds = load i8, ptr %.0.i142, align 1
  %i.dt = zext i8 %i.ds to i32                    ; 2 uses
  %i.du = icmp samesign ugt i32 %i.dh, 4
  br i1 %i.du, label %.lr.ph.i137.1, label %._crit_edge.i132

.lr.ph.i137.1:                                    ; preds = %.lr.ph.i137
  %.0.i142.1 = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dv = add nsw i32 %i.dh, -4
  %i.dw = shl i32 %i.dt, %i.dv
  %i.dx = or i32 %i.dw, %i.dr
  %i.dy = load i8, ptr %.0.i142.1, align 1
  %i.dz = zext i8 %i.dy to i32
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %.lr.ph.i137.1, %.lr.ph.i137
  %.01825.i139.lcssa = phi i32 [ %i.dp, %.lr.ph.i137 ], [ %i.dq, %.lr.ph.i137.1 ]
  %.lcssa478 = phi i32 [ %i.dr, %.lr.ph.i137 ], [ %i.dx, %.lr.ph.i137.1 ]
  %.lcssa = phi i32 [ %i.dt, %.lr.ph.i137 ], [ %i.dz, %.lr.ph.i137.1 ]
  %i.ea = sub nuw nsw i32 16, %.01825.i139.lcssa
  %i.eb = lshr i32 %.lcssa, %i.ea
  %i.ec = or i32 %i.eb, %.lcssa478
  br label %drmp3_bs_get_bits.exit143

drmp3_bs_get_bits.exit143:                        ; preds = %bb.d, %._crit_edge.i132
  %.021.i136 = phi i32 [ %i.ec, %._crit_edge.i132 ], [ 0, %bb.d ] ; 2 uses
  %i.ed = trunc i32 %.021.i136 to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %.099, i64 8
  store i16 %i.ed, ptr %i.ee, align 8
  %i.ef = and i32 %.021.i136, 65535
  %i.eg = add nuw nsw i32 %i.ef, %.093            ; 2 uses
  %i.eh = load i32, ptr %i.ct, align 8            ; 3 uses
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = add nsw i32 %i.eh, 9                    ; 2 uses
  store i32 %i.ej, ptr %i.ct, align 8
  %i.ek = load i32, ptr %i.cu, align 4
  %i.el = icmp sgt i32 %i.ej, %i.ek
  br i1 %i.el, label %drmp3_bs_get_bits.exit155.thread, label %.lr.ph.i149

drmp3_bs_get_bits.exit155.thread:                 ; preds = %drmp3_bs_get_bits.exit143
  %i.em = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 0, ptr %i.em, align 2
  br label %bb.e

.lr.ph.i149:                                      ; preds = %drmp3_bs_get_bits.exit143
  %i.en = ashr i32 %i.eh, 3
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.ei, i64 %i.eo ; 2 uses
  %i.eq = and i32 %i.eh, 7                        ; 3 uses
  %i.er = load i8, ptr %i.ep, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = lshr i32 255, %i.eq
  %i.eu = and i32 %i.et, %i.es
  %i.ev = add nuw nsw i32 %i.eq, 1
  %i.ew = shl nuw nsw i32 %i.eu, %i.ev
  %.0.i154 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.ex = load i8, ptr %.0.i154, align 1
  %i.ey = zext i8 %i.ex to i32
  %i.ez = xor i32 %i.eq, 7
  %i.fa = lshr i32 %i.ey, %i.ez
  %i.fb = or i32 %i.fa, %i.ew                     ; 2 uses
  %i.fc = trunc nuw i32 %i.fb to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 %i.fc, ptr %i.fd, align 2
  %i.fe = icmp samesign ugt i32 %i.fb, 288
  br i1 %i.fe, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %drmp3_bs_get_bits.exit155.thread, %.lr.ph.i149
  %i.ff = load i32, ptr %i.ct, align 8            ; 3 uses
  %i.fg = load ptr, ptr %0, align 8
  %i.fh = add nsw i32 %i.ff, 8                    ; 2 uses
  store i32 %i.fh, ptr %i.ct, align 8
  %i.fi = load i32, ptr %i.cu, align 4
  %i.fj = icmp sgt i32 %i.fh, %i.fi
  br i1 %i.fj, label %drmp3_bs_get_bits.exit167, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fk = ashr i32 %i.ff, 3
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fg, i64 %i.fl ; 2 uses
  %i.fn = and i32 %i.ff, 7                        ; 4 uses
  %i.fo = load i8, ptr %i.fm, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = lshr i32 255, %i.fn
  %i.fr = and i32 %i.fq, %i.fp                    ; 2 uses
  %.not341 = icmp eq i32 %i.fn, 0
  br i1 %.not341, label %._crit_edge.i156, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %bb.f
  %i.fs = shl nuw nsw i32 %i.fr, %i.fn
  %.0.i166 = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.ft = load i8, ptr %.0.i166, align 1
  %i.fu = zext i8 %i.ft to i32
  %i.fv = sub nuw nsw i32 8, %i.fn
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %.lr.ph.i161.preheader, %bb.f
  %.020.lcssa.i157 = phi i32 [ %i.fr, %bb.f ], [ %i.fu, %.lr.ph.i161.preheader ]
  %.019.lcssa.i158 = phi i32 [ 0, %bb.f ], [ %i.fs, %.lr.ph.i161.preheader ]
  %.018.lcssa.i159 = phi i32 [ 0, %bb.f ], [ %i.fv, %.lr.ph.i161.preheader ]
  %i.fw = lshr i32 %.020.lcssa.i157, %.018.lcssa.i159
  %i.fx = or i32 %i.fw, %.019.lcssa.i158
  %i.fy = trunc i32 %i.fx to i8
  br label %drmp3_bs_get_bits.exit167

drmp3_bs_get_bits.exit167:                        ; preds = %bb.e, %._crit_edge.i156
  %.021.i160 = phi i8 [ %i.fy, %._crit_edge.i156 ], [ 0, %bb.e ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.099, i64 14
  store i8 %.021.i160, ptr %i.fz, align 2
  %i.ga = load i8, ptr %i.j, align 1
  %i.gb = and i8 %i.ga, 8
  %.not101 = icmp eq i8 %i.gb, 0
  %i.gc = select i1 %.not101, i32 9, i32 4        ; 3 uses
  %i.gd = load i32, ptr %i.ct, align 8            ; 4 uses
  %i.ge = load ptr, ptr %0, align 8
  %i.gf = add nsw i32 %i.gc, %i.gd                ; 2 uses
  store i32 %i.gf, ptr %i.ct, align 8
  %i.gg = load i32, ptr %i.cu, align 4
  %i.gh = icmp sgt i32 %i.gf, %i.gg
  br i1 %i.gh, label %drmp3_bs_get_bits.exit179, label %bb.g

bb.g:                                             ; preds = %drmp3_bs_get_bits.exit167
  %i.gi = ashr i32 %i.gd, 3
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.ge, i64 %i.gj ; 2 uses
  %i.gl = and i32 %i.gd, 7                        ; 2 uses
  %i.gm = add nuw nsw i32 %i.gc, %i.gl            ; 3 uses
  %i.gn = load i8, ptr %i.gk, align 1
  %i.go = zext i8 %i.gn to i32
  %i.gp = lshr i32 255, %i.gl
  %i.gq = and i32 %i.gp, %i.go                    ; 2 uses
  %i.gr = icmp samesign ugt i32 %i.gm, 8
  br i1 %i.gr, label %._crit_edge.i168.loopexit, label %._crit_edge.i168

._crit_edge.i168.loopexit:                        ; preds = %bb.g
  %3 = add nsw i32 %i.gm, -8
  %4 = shl nuw nsw i32 %i.gq, %3
  %.0.i178 = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gs = load i8, ptr %.0.i178, align 1
  %i.gt = zext i8 %i.gs to i32
  %5 = or i32 %i.gd, -8
  %6 = add nsw i32 %i.gc, %5
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %._crit_edge.i168.loopexit, %bb.g
  %.020.lcssa.i169 = phi i32 [ %i.gq, %bb.g ], [ %i.gt, %._crit_edge.i168.loopexit ]
  %.019.lcssa.i170 = phi i32 [ 0, %bb.g ], [ %4, %._crit_edge.i168.loopexit ]
  %.018.lcssa.i171 = phi i32 [ %i.gm, %bb.g ], [ %6, %._crit_edge.i168.loopexit ]
  %i.gu = sub nuw nsw i32 8, %.018.lcssa.i171
  %i.gv = lshr i32 %.020.lcssa.i169, %i.gu
  %i.gw = or i32 %i.gv, %.019.lcssa.i170
  %i.gx = trunc nuw i32 %i.gw to i16
  br label %drmp3_bs_get_bits.exit179

drmp3_bs_get_bits.exit179:                        ; preds = %drmp3_bs_get_bits.exit167, %._crit_edge.i168
  %.021.i172 = phi i16 [ %i.gx, %._crit_edge.i168 ], [ 0, %drmp3_bs_get_bits.exit167 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.099, i64 12 ; 2 uses
  store i16 %.021.i172, ptr %i.gy, align 4
  store ptr %i.cw, ptr %.099, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.099, i64 17 ; 2 uses
  store i8 22, ptr %i.gz, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.099, i64 18 ; 2 uses
  store i8 0, ptr %i.ha, align 2
  %i.hb = load i32, ptr %i.ct, align 8            ; 5 uses
  %i.hc = load ptr, ptr %0, align 8               ; 2 uses
  %i.hd = add nsw i32 %i.hb, 1                    ; 3 uses
  store i32 %i.hd, ptr %i.ct, align 8
  %i.he = load i32, ptr %i.cu, align 4            ; 2 uses
  %.not342 = icmp slt i32 %i.hb, %i.he
  br i1 %.not342, label %drmp3_bs_get_bits.exit191, label %drmp3_bs_get_bits.exit191.thread

drmp3_bs_get_bits.exit191:                        ; preds = %drmp3_bs_get_bits.exit179
  %i.hf = ashr i32 %i.hb, 3
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %i.hc, i64 %i.hg
  %i.hi = and i32 %i.hb, 7                        ; 2 uses
  %i.hj = load i8, ptr %i.hh, align 1
  %i.hk = zext i8 %i.hj to i32
  %i.hl = lshr i32 255, %i.hi
  %i.hm = and i32 %i.hl, %i.hk
  %i.hn = xor i32 %i.hi, 7
  %i.ho = lshr i32 %i.hm, %i.hn
  %.not102 = icmp eq i32 %i.ho, 0
  br i1 %.not102, label %drmp3_bs_get_bits.exit191.thread, label %bb.h

bb.h:                                             ; preds = %drmp3_bs_get_bits.exit191
  %i.hp = add nsw i32 %i.hb, 3                    ; 2 uses
  store i32 %i.hp, ptr %i.ct, align 8
  %i.hq = icmp sgt i32 %i.hp, %i.he
  br i1 %i.hq, label %drmp3_bs_get_bits.exit203.thread, label %bb.i

drmp3_bs_get_bits.exit203.thread:                 ; preds = %bb.h
  %i.hr = getelementptr inbounds nuw i8, ptr %.099, i64 15
  store i8 0, ptr %i.hr, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.hs = ashr i32 %i.hd, 3
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %i.hc, i64 %i.ht ; 2 uses
  %i.hv = and i32 %i.hd, 7                        ; 3 uses
  %i.hw = add nuw nsw i32 %i.hv, 2
  %i.hx = load i8, ptr %i.hu, align 1
  %i.hy = zext i8 %i.hx to i32
  %i.hz = lshr i32 255, %i.hv
  %i.ia = and i32 %i.hz, %i.hy                    ; 2 uses
  %i.ib = icmp eq i32 %i.hv, 7
  br i1 %i.ib, label %.lr.ph.i197, label %drmp3_bs_get_bits.exit203

.lr.ph.i197:                                      ; preds = %bb.i
  %.0.i202 = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.ic = shl nuw nsw i32 %i.ia, 1
  %i.id = load i8, ptr %.0.i202, align 1
  %i.ie = zext i8 %i.id to i32
  br label %drmp3_bs_get_bits.exit203

drmp3_bs_get_bits.exit203:                        ; preds = %.lr.ph.i197, %bb.i
  %.020.lcssa.i193 = phi i32 [ %i.ia, %bb.i ], [ %i.ie, %.lr.ph.i197 ]
  %.019.lcssa.i194 = phi i32 [ 0, %bb.i ], [ %i.ic, %.lr.ph.i197 ]
  %.018.lcssa.i195 = phi i32 [ %i.hw, %bb.i ], [ 1, %.lr.ph.i197 ]
  %i.if = sub nuw nsw i32 8, %.018.lcssa.i195
  %i.ig = lshr i32 %.020.lcssa.i193, %i.if
  %i.ih = or i32 %i.ig, %.019.lcssa.i194
  %i.ii = trunc i32 %i.ih to i8                   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.099, i64 15 ; 2 uses
  store i8 %i.ii, ptr %i.ij, align 1
  %.not103 = icmp eq i8 %i.ii, 0
  br i1 %.not103, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %drmp3_bs_get_bits.exit203
  %i.ik = load i32, ptr %i.ct, align 8            ; 4 uses
  %i.il = load ptr, ptr %0, align 8
  %i.im = add nsw i32 %i.ik, 1
  store i32 %i.im, ptr %i.ct, align 8
  %i.in = load i32, ptr %i.cu, align 4
  %.not343 = icmp slt i32 %i.ik, %i.in
  br i1 %.not343, label %._crit_edge.i204, label %drmp3_bs_get_bits.exit215

._crit_edge.i204:                                 ; preds = %bb.j
  %i.io = ashr i32 %i.ik, 3
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds i8, ptr %i.il, i64 %i.ip
  %i.ir = and i32 %i.ik, 7                        ; 2 uses
  %i.is = load i8, ptr %i.iq, align 1
  %i.it = zext i8 %i.is to i32
  %i.iu = lshr i32 255, %i.ir
  %i.iv = and i32 %i.iu, %i.it
  %i.iw = xor i32 %i.ir, 7
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = trunc nuw i32 %i.ix to i8
  br label %drmp3_bs_get_bits.exit215

drmp3_bs_get_bits.exit215:                        ; preds = %bb.j, %._crit_edge.i204
  %.021.i208 = phi i8 [ %i.iy, %._crit_edge.i204 ], [ 0, %bb.j ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.099, i64 16
  store i8 %.021.i208, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.099, i64 22 ; 2 uses
  store i8 7, ptr %i.ja, align 2
  %i.jb = getelementptr inbounds nuw i8, ptr %.099, i64 23
  store i8 -1, ptr %i.jb, align 1
  %i.jc = load i8, ptr %i.ij, align 1
  %i.jd = icmp eq i8 %i.jc, 2
  br i1 %i.jd, label %bb.k, label %bb.n

bb.k:                                             ; preds = %drmp3_bs_get_bits.exit215
  %i.je = and i32 %spec.select, 3855
  %.not104 = icmp eq i8 %.021.i208, 0
  br i1 %.not104, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 8, ptr %i.ja, align 2
  store ptr %i.cy, ptr %.099, align 8
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  store ptr %i.cx, ptr %.099, align 8
  %i.jf = load i8, ptr %i.j, align 1
  %i.jg = and i8 %i.jf, 8
  %.not105 = icmp eq i8 %i.jg, 0
  %i.jh = select i1 %.not105, i8 6, i8 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink463 = phi i8 [ 0, %bb.l ], [ %i.jh, %bb.m ]
  %.sink = phi i8 [ 39, %bb.l ], [ 30, %bb.m ]
  store i8 %.sink463, ptr %i.gz, align 1
  store i8 %.sink, ptr %i.ha, align 2
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %drmp3_bs_get_bits.exit215
  %.3 = phi i32 [ %spec.select, %drmp3_bs_get_bits.exit215 ], [ %i.je, %.sink.split ]
  %i.ji = load i32, ptr %i.ct, align 8            ; 4 uses
  %i.jj = load ptr, ptr %0, align 8               ; 2 uses
  %i.jk = add nsw i32 %i.ji, 10                   ; 4 uses
  store i32 %i.jk, ptr %i.ct, align 8
  %i.jl = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.jm = icmp sgt i32 %i.jk, %i.jl
  br i1 %i.jm, label %drmp3_bs_get_bits.exit227, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.n
  %i.jn = and i32 %i.ji, 7                        ; 5 uses
  %i.jo = lshr i32 255, %i.jn
  %i.jp = ashr i32 %i.ji, 3
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %i.jj, i64 %i.jq ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i32
  %i.ju = and i32 %i.jo, %i.jt
  %i.jv = add nuw nsw i32 %i.jn, 10
  %.0.i226 = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jw = add nuw nsw i32 %i.jn, 2                ; 2 uses
  %i.jx = shl nuw nsw i32 %i.ju, %i.jw            ; 2 uses
  %i.jy = load i8, ptr %.0.i226, align 1
  %i.jz = zext i8 %i.jy to i32                    ; 2 uses
  %i.ka = icmp eq i32 %i.jn, 7
  br i1 %i.ka, label %.lr.ph.i221.1, label %._crit_edge.i216

.lr.ph.i221.1:                                    ; preds = %.lr.ph.i221
  %.0.i226.1 = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.kb = add nsw i32 %i.jn, -6
  %i.kc = shl nuw nsw i32 %i.jz, %i.kb
  %i.kd = or disjoint i32 %i.kc, %i.jx
  %i.ke = load i8, ptr %.0.i226.1, align 1
  %i.kf = zext i8 %i.ke to i32
  br label %._crit_edge.i216

._crit_edge.i216:                                 ; preds = %.lr.ph.i221.1, %.lr.ph.i221
  %.01825.i223.lcssa = phi i32 [ %i.jv, %.lr.ph.i221 ], [ %i.jw, %.lr.ph.i221.1 ]
  %.lcssa480 = phi i32 [ %i.jx, %.lr.ph.i221 ], [ %i.kd, %.lr.ph.i221.1 ]
  %.lcssa479 = phi i32 [ %i.jz, %.lr.ph.i221 ], [ %i.kf, %.lr.ph.i221.1 ]
  %i.kg = sub nuw nsw i32 16, %.01825.i223.lcssa
  %i.kh = lshr i32 %.lcssa479, %i.kg
  %i.ki = or i32 %i.kh, %.lcssa480
  %i.kj = shl i32 %i.ki, 5
  br label %drmp3_bs_get_bits.exit227

drmp3_bs_get_bits.exit227:                        ; preds = %bb.n, %._crit_edge.i216
  %.021.i220 = phi i32 [ %i.kj, %._crit_edge.i216 ], [ 0, %bb.n ]
  %i.kk = add nsw i32 %i.ji, 13                   ; 2 uses
  store i32 %i.kk, ptr %i.ct, align 8
  %i.kl = icmp sgt i32 %i.kk, %i.jl
  br i1 %i.kl, label %drmp3_bs_get_bits.exit239, label %bb.o

bb.o:                                             ; preds = %drmp3_bs_get_bits.exit227
  %i.km = ashr i32 %i.jk, 3
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.jj, i64 %i.kn ; 2 uses
  %i.kp = and i32 %i.jk, 7                        ; 5 uses
end_hunk_0
