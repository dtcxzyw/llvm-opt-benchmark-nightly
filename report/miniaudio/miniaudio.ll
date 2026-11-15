Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_dr_mp3_L3_read_side_info:bb.a
  %.021.i = phi i32 [ %i.as, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.at = add nuw nsw i32 %i.aa, 7                ; 2 uses
  %i.au = add nsw i32 %i.ab, %i.at                ; 4 uses
  store i32 %i.au, ptr %i.w, align 8, !tbaa !777
  %i.av = icmp sgt i32 %i.au, %i.ac
  br i1 %i.av, label %ma_dr_mp3_bs_get_bits.exit119, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.aw = and i32 %i.ab, 7                        ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, %i.at            ; 4 uses
  %i.ay = lshr i32 255, %i.aw
  %i.az = ashr i32 %i.ab, 3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.y, i64 %i.ba ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !119
  %i.bd = zext i8 %i.bc to i32
  %i.be = and i32 %i.ay, %i.bd
  %.0.i118 = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = add nsw i32 %i.ax, -8                   ; 2 uses
  %i.bg = shl i32 %i.be, %i.bf                    ; 2 uses
  %i.bh = load i8, ptr %.0.i118, align 1, !tbaa !119
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.ax, 16
  br i1 %i.bj, label %.lr.ph.i113.1, label %._crit_edge.i108

.lr.ph.i113.1:                                    ; preds = %.lr.ph.i113
  %.0.i118.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bk = add nsw i32 %i.ax, -16
  %i.bl = shl i32 %i.bi, %i.bk
  %i.bm = or i32 %i.bl, %i.bg
  %i.bn = load i8, ptr %.0.i118.1, align 1, !tbaa !119
  %i.bo = zext i8 %i.bn to i32
  br label %._crit_edge.i108

._crit_edge.i108:                                 ; preds = %.lr.ph.i113.1, %.lr.ph.i113
  %.01825.i115.lcssa = phi i32 [ %i.ax, %.lr.ph.i113 ], [ %i.bf, %.lr.ph.i113.1 ]
  %.lcssa505 = phi i32 [ %i.bg, %.lr.ph.i113 ], [ %i.bm, %.lr.ph.i113.1 ]
  %.lcssa504 = phi i32 [ %i.bi, %.lr.ph.i113 ], [ %i.bo, %.lr.ph.i113.1 ]
  %i.bp = sub nuw nsw i32 16, %.01825.i115.lcssa
  %i.bq = lshr i32 %.lcssa504, %i.bp
  %i.br = or i32 %i.bq, %.lcssa505
  br label %ma_dr_mp3_bs_get_bits.exit119

bb.c:                                             ; preds = %bb.a
  %i.bs = or disjoint i32 %i.d, 8                 ; 2 uses
  %i.bt = add nsw i32 %i.x, %i.bs                 ; 3 uses
  store i32 %i.bt, ptr %i.w, align 8, !tbaa !777
  %i.bu = load i32, ptr %i.z, align 4, !tbaa !778 ; 2 uses
  %i.bv = icmp sgt i32 %i.bt, %i.bu
  br i1 %i.bv, label %ma_dr_mp3_bs_get_bits.exit131, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.c
  %i.bw = and i32 %i.x, 7                         ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, %i.bs            ; 4 uses
  %i.by = lshr i32 255, %i.bw
  %i.bz = ashr i32 %i.x, 3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.y, i64 %i.ca ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !119
  %i.cd = zext i8 %i.cc to i32
  %i.ce = and i32 %i.by, %i.cd
  %.0.i130 = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = add nsw i32 %i.bx, -8                   ; 2 uses
  %i.cg = shl i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = load i8, ptr %.0.i130, align 1, !tbaa !119
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp samesign ugt i32 %i.bx, 16
  br i1 %i.cj, label %.lr.ph.i125.1, label %._crit_edge.i120

.lr.ph.i125.1:                                    ; preds = %.lr.ph.i125
  %.0.i130.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ck = add nsw i32 %i.bx, -16
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = or i32 %i.cl, %i.cg
  %i.cn = load i8, ptr %.0.i130.1, align 1, !tbaa !119
  %i.co = zext i8 %i.cn to i32
  br label %._crit_edge.i120

._crit_edge.i120:                                 ; preds = %.lr.ph.i125.1, %.lr.ph.i125
  %.01825.i127.lcssa = phi i32 [ %i.bx, %.lr.ph.i125 ], [ %i.cf, %.lr.ph.i125.1 ]
  %.lcssa503 = phi i32 [ %i.cg, %.lr.ph.i125 ], [ %i.cm, %.lr.ph.i125.1 ]
  %.lcssa502 = phi i32 [ %i.ci, %.lr.ph.i125 ], [ %i.co, %.lr.ph.i125.1 ]
  %i.cp = sub nuw nsw i32 16, %.01825.i127.lcssa
  %i.cq = lshr i32 %.lcssa502, %i.cp
  %i.cr = or i32 %i.cq, %.lcssa503
  br label %ma_dr_mp3_bs_get_bits.exit131

ma_dr_mp3_bs_get_bits.exit131:                    ; preds = %bb.c, %._crit_edge.i120
  %.021.i124 = phi i32 [ %i.cr, %._crit_edge.i120 ], [ 0, %bb.c ]
  %i.cs = lshr i32 %.021.i124, %i.d
  br label %ma_dr_mp3_bs_get_bits.exit119

ma_dr_mp3_bs_get_bits.exit119:                    ; preds = %._crit_edge.i108, %ma_dr_mp3_bs_get_bits.exit, %ma_dr_mp3_bs_get_bits.exit131
  %i.ct = phi i32 [ %i.bu, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.ac, %._crit_edge.i108 ], [ %i.ac, %ma_dr_mp3_bs_get_bits.exit ]
  %i.cu = phi i32 [ %i.bt, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.au, %._crit_edge.i108 ], [ %i.au, %ma_dr_mp3_bs_get_bits.exit ]
  %.095 = phi i32 [ 0, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.br, %._crit_edge.i108 ], [ 0, %ma_dr_mp3_bs_get_bits.exit ]
  %.094 = phi i32 [ %i.cs, %ma_dr_mp3_bs_get_bits.exit131 ], [ %.021.i, %._crit_edge.i108 ], [ %.021.i, %ma_dr_mp3_bs_get_bits.exit ] ; 2 uses
  %.0 = phi i32 [ %i.d, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.aa, %._crit_edge.i108 ], [ %i.aa, %ma_dr_mp3_bs_get_bits.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.cx = sext i32 %i.u to i64                    ; 3 uses
  %i.cy = getelementptr inbounds [23 x i8], ptr @ma_dr_mp3_L3_read_side_info.g_scf_long, i64 %i.cx
  %i.cz = getelementptr inbounds [40 x i8], ptr @ma_dr_mp3_L3_read_side_info.g_scf_mixed, i64 %i.cx
  %i.da = getelementptr inbounds [40 x i8], ptr @ma_dr_mp3_L3_read_side_info.g_scf_short, i64 %i.cx
  br label %bb.d

bb.d:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit335, %ma_dr_mp3_bs_get_bits.exit119
  %i.db = phi i32 [ %i.ct, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.qx, %ma_dr_mp3_bs_get_bits.exit335 ] ; 9 uses
  %i.dc = phi ptr [ %i.y, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.qy, %ma_dr_mp3_bs_get_bits.exit335 ] ; 9 uses
  %i.dd = phi i32 [ %i.cu, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.rq, %ma_dr_mp3_bs_get_bits.exit335 ] ; 5 uses
  %.099 = phi ptr [ %1, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.sj, %ma_dr_mp3_bs_get_bits.exit335 ] ; 34 uses
  %.196 = phi i32 [ %.095, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.si, %ma_dr_mp3_bs_get_bits.exit335 ] ; 2 uses
  %.093 = phi i32 [ 0, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.ei, %ma_dr_mp3_bs_get_bits.exit335 ]
  %.1 = phi i32 [ %.0, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.sk, %ma_dr_mp3_bs_get_bits.exit335 ]
  %i.de = load i8, ptr %i.a, align 1, !tbaa !119
  %i.df = icmp ugt i8 %i.de, -65
  %i.dg = shl i32 %.196, 4
  %spec.select = select i1 %i.df, i32 %i.dg, i32 %.196 ; 5 uses
  %i.dh = add nsw i32 %i.dd, 12                   ; 4 uses
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !777
  %i.di = icmp sgt i32 %i.dh, %i.db
  br i1 %i.di, label %ma_dr_mp3_bs_get_bits.exit143, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.d
  %i.dj = and i32 %i.dd, 7                        ; 5 uses
  %i.dk = lshr i32 255, %i.dj
  %i.dl = ashr i32 %i.dd, 3
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dc, i64 %i.dm ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !119
  %i.dp = zext i8 %i.do to i32
  %i.dq = and i32 %i.dk, %i.dp
  %i.dr = add nuw nsw i32 %i.dj, 12
  %.0.i142 = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.ds = add nuw nsw i32 %i.dj, 4                ; 2 uses
  %i.dt = shl nuw nsw i32 %i.dq, %i.ds            ; 2 uses
  %i.du = load i8, ptr %.0.i142, align 1, !tbaa !119
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.dj, 4
  br i1 %i.dw, label %.lr.ph.i137.1, label %._crit_edge.i132

.lr.ph.i137.1:                                    ; preds = %.lr.ph.i137
  %.0.i142.1 = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dx = add nsw i32 %i.dj, -4
  %i.dy = shl i32 %i.dv, %i.dx
  %i.dz = or i32 %i.dy, %i.dt
  %i.ea = load i8, ptr %.0.i142.1, align 1, !tbaa !119
  %i.eb = zext i8 %i.ea to i32
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %.lr.ph.i137.1, %.lr.ph.i137
  %.01825.i139.lcssa = phi i32 [ %i.dr, %.lr.ph.i137 ], [ %i.ds, %.lr.ph.i137.1 ]
  %.lcssa490 = phi i32 [ %i.dt, %.lr.ph.i137 ], [ %i.dz, %.lr.ph.i137.1 ]
  %.lcssa = phi i32 [ %i.dv, %.lr.ph.i137 ], [ %i.eb, %.lr.ph.i137.1 ]
  %i.ec = sub nuw nsw i32 16, %.01825.i139.lcssa
  %i.ed = lshr i32 %.lcssa, %i.ec
  %i.ee = or i32 %i.ed, %.lcssa490
  br label %ma_dr_mp3_bs_get_bits.exit143

ma_dr_mp3_bs_get_bits.exit143:                    ; preds = %bb.d, %._crit_edge.i132
  %.021.i136 = phi i32 [ %i.ee, %._crit_edge.i132 ], [ 0, %bb.d ] ; 2 uses
  %i.ef = trunc i32 %.021.i136 to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %.099, i64 8
  store i16 %i.ef, ptr %i.eg, align 8, !tbaa !1121
  %i.eh = and i32 %.021.i136, 65535
  %i.ei = add nuw nsw i32 %i.eh, %.093            ; 2 uses
  %i.ej = add nsw i32 %i.dd, 21                   ; 4 uses
  store i32 %i.ej, ptr %i.cv, align 8, !tbaa !777
  %i.ek = icmp sgt i32 %i.ej, %i.db
  br i1 %i.ek, label %ma_dr_mp3_bs_get_bits.exit155.thread, label %.lr.ph.i149

ma_dr_mp3_bs_get_bits.exit155.thread:             ; preds = %ma_dr_mp3_bs_get_bits.exit143
  %i.el = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 0, ptr %i.el, align 2, !tbaa !1129
  br label %bb.e

.lr.ph.i149:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit143
  %i.em = ashr i32 %i.dh, 3
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.dc, i64 %i.en ; 2 uses
  %i.ep = and i32 %i.dh, 7                        ; 3 uses
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !119
  %i.er = zext i8 %i.eq to i32
  %i.es = lshr i32 255, %i.ep
  %i.et = and i32 %i.es, %i.er
  %i.eu = add nuw nsw i32 %i.ep, 1
  %i.ev = shl nuw nsw i32 %i.et, %i.eu
  %.0.i154 = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.ew = load i8, ptr %.0.i154, align 1, !tbaa !119
  %i.ex = zext i8 %i.ew to i32
  %i.ey = xor i32 %i.ep, 7
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = or i32 %i.ez, %i.ev                     ; 2 uses
  %i.fb = trunc nuw i32 %i.fa to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !1129
  %i.fd = icmp samesign ugt i32 %i.fa, 288
  br i1 %i.fd, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit155.thread, %.lr.ph.i149
  %i.fe = add nsw i32 %i.dd, 29                   ; 6 uses
  store i32 %i.fe, ptr %i.cv, align 8, !tbaa !777
  %i.ff = icmp sgt i32 %i.fe, %i.db
  br i1 %i.ff, label %ma_dr_mp3_bs_get_bits.exit167, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fg = ashr i32 %i.ej, 3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.dc, i64 %i.fh ; 2 uses
  %i.fj = and i32 %i.ej, 7                        ; 4 uses
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !119
  %i.fl = zext i8 %i.fk to i32
  %i.fm = lshr i32 255, %i.fj
  %i.fn = and i32 %i.fm, %i.fl                    ; 2 uses
  %.not341 = icmp eq i32 %i.fj, 0
  br i1 %.not341, label %._crit_edge.i156, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %bb.f
  %i.fo = shl nuw nsw i32 %i.fn, %i.fj
  %.0.i166 = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fp = load i8, ptr %.0.i166, align 1, !tbaa !119
  %i.fq = zext i8 %i.fp to i32
  %i.fr = sub nuw nsw i32 8, %i.fj
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %.lr.ph.i161.preheader, %bb.f
  %.020.lcssa.i157 = phi i32 [ %i.fn, %bb.f ], [ %i.fq, %.lr.ph.i161.preheader ]
  %.019.lcssa.i158 = phi i32 [ 0, %bb.f ], [ %i.fo, %.lr.ph.i161.preheader ]
  %.018.lcssa.i159 = phi i32 [ 0, %bb.f ], [ %i.fr, %.lr.ph.i161.preheader ]
  %i.fs = lshr i32 %.020.lcssa.i157, %.018.lcssa.i159
  %i.ft = or i32 %i.fs, %.019.lcssa.i158
  %i.fu = trunc i32 %i.ft to i8
  br label %ma_dr_mp3_bs_get_bits.exit167

ma_dr_mp3_bs_get_bits.exit167:                    ; preds = %bb.e, %._crit_edge.i156
  %.021.i160 = phi i8 [ %i.fu, %._crit_edge.i156 ], [ 0, %bb.e ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.099, i64 14
  store i8 %.021.i160, ptr %i.fv, align 2, !tbaa !1128
  %i.fw = load i8, ptr %i.j, align 1, !tbaa !119
  %i.fx = and i8 %i.fw, 8
  %.not101 = icmp eq i8 %i.fx, 0
  %i.fy = select i1 %.not101, i32 9, i32 4        ; 3 uses
  %i.fz = add nsw i32 %i.fy, %i.fe                ; 11 uses
  store i32 %i.fz, ptr %i.cv, align 8, !tbaa !777
  %i.ga = icmp sgt i32 %i.fz, %i.db
  br i1 %i.ga, label %ma_dr_mp3_bs_get_bits.exit179, label %bb.g

bb.g:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit167
  %i.gb = ashr i32 %i.fe, 3
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %i.dc, i64 %i.gc ; 2 uses
  %i.ge = and i32 %i.fe, 7                        ; 2 uses
  %i.gf = add nuw nsw i32 %i.fy, %i.ge            ; 3 uses
  %i.gg = load i8, ptr %i.gd, align 1, !tbaa !119
  %i.gh = zext i8 %i.gg to i32
  %i.gi = lshr i32 255, %i.ge
  %i.gj = and i32 %i.gi, %i.gh                    ; 2 uses
  %i.gk = icmp samesign ugt i32 %i.gf, 8
  br i1 %i.gk, label %._crit_edge.i168.loopexit, label %._crit_edge.i168

._crit_edge.i168.loopexit:                        ; preds = %bb.g
  %3 = add nsw i32 %i.gf, -8
  %4 = shl nuw nsw i32 %i.gj, %3
  %.0.i178 = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gl = load i8, ptr %.0.i178, align 1, !tbaa !119
  %i.gm = zext i8 %i.gl to i32
  %5 = or i32 %i.fe, -8
  %6 = add nsw i32 %i.fy, %5
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %._crit_edge.i168.loopexit, %bb.g
  %.020.lcssa.i169 = phi i32 [ %i.gj, %bb.g ], [ %i.gm, %._crit_edge.i168.loopexit ]
  %.019.lcssa.i170 = phi i32 [ 0, %bb.g ], [ %4, %._crit_edge.i168.loopexit ]
  %.018.lcssa.i171 = phi i32 [ %i.gf, %bb.g ], [ %6, %._crit_edge.i168.loopexit ]
  %i.gn = sub nuw nsw i32 8, %.018.lcssa.i171
  %i.go = lshr i32 %.020.lcssa.i169, %i.gn
  %i.gp = or i32 %i.go, %.019.lcssa.i170
  %i.gq = trunc nuw i32 %i.gp to i16
  br label %ma_dr_mp3_bs_get_bits.exit179

ma_dr_mp3_bs_get_bits.exit179:                    ; preds = %ma_dr_mp3_bs_get_bits.exit167, %._crit_edge.i168
  %i.gr = phi i16 [ %i.gq, %._crit_edge.i168 ], [ 0, %ma_dr_mp3_bs_get_bits.exit167 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.099, i64 12
  store i16 %i.gr, ptr %i.gs, align 4, !tbaa !1126
  store ptr %i.cy, ptr %.099, align 8, !tbaa !1130
  %i.gt = getelementptr inbounds nuw i8, ptr %.099, i64 17 ; 2 uses
  store i8 22, ptr %i.gt, align 1, !tbaa !1123
  %i.gu = getelementptr inbounds nuw i8, ptr %.099, i64 18 ; 2 uses
  store i8 0, ptr %i.gu, align 2, !tbaa !1122
  %i.gv = add nsw i32 %i.fz, 1                    ; 5 uses
  store i32 %i.gv, ptr %i.cv, align 8, !tbaa !777
  %.not342 = icmp slt i32 %i.fz, %i.db
  br i1 %.not342, label %ma_dr_mp3_bs_get_bits.exit191, label %ma_dr_mp3_bs_get_bits.exit191.thread

ma_dr_mp3_bs_get_bits.exit191:                    ; preds = %ma_dr_mp3_bs_get_bits.exit179
  %i.gw = ashr i32 %i.fz, 3
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %i.dc, i64 %i.gx
  %i.gz = and i32 %i.fz, 7                        ; 2 uses
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !119
  %i.hb = zext i8 %i.ha to i32
  %i.hc = lshr i32 255, %i.gz
  %i.hd = and i32 %i.hc, %i.hb
  %i.he = xor i32 %i.gz, 7
  %i.hf = lshr i32 %i.hd, %i.he
  %.not102 = icmp eq i32 %i.hf, 0
  br i1 %.not102, label %ma_dr_mp3_bs_get_bits.exit191.thread, label %bb.h

bb.h:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit191
  %i.hg = add nsw i32 %i.fz, 3                    ; 4 uses
  store i32 %i.hg, ptr %i.cv, align 8, !tbaa !777
  %i.hh = icmp sgt i32 %i.hg, %i.db
  br i1 %i.hh, label %ma_dr_mp3_bs_get_bits.exit203.thread, label %bb.i

ma_dr_mp3_bs_get_bits.exit203.thread:             ; preds = %bb.h
  %i.hi = getelementptr inbounds nuw i8, ptr %.099, i64 15
  store i8 0, ptr %i.hi, align 1, !tbaa !1133
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.hj = ashr i32 %i.gv, 3
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %i.dc, i64 %i.hk ; 2 uses
  %i.hm = and i32 %i.gv, 7                        ; 3 uses
  %i.hn = add nuw nsw i32 %i.hm, 2
  %i.ho = load i8, ptr %i.hl, align 1, !tbaa !119
  %i.hp = zext i8 %i.ho to i32
  %i.hq = lshr i32 255, %i.hm
  %i.hr = and i32 %i.hq, %i.hp                    ; 2 uses
  %i.hs = icmp eq i32 %i.hm, 7
  br i1 %i.hs, label %.lr.ph.i197, label %ma_dr_mp3_bs_get_bits.exit203

.lr.ph.i197:                                      ; preds = %bb.i
  %.0.i202 = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %i.ht = shl nuw nsw i32 %i.hr, 1
  %i.hu = load i8, ptr %.0.i202, align 1, !tbaa !119
  %i.hv = zext i8 %i.hu to i32
  br label %ma_dr_mp3_bs_get_bits.exit203

ma_dr_mp3_bs_get_bits.exit203:                    ; preds = %.lr.ph.i197, %bb.i
  %.020.lcssa.i193 = phi i32 [ %i.hr, %bb.i ], [ %i.hv, %.lr.ph.i197 ]
  %.019.lcssa.i194 = phi i32 [ 0, %bb.i ], [ %i.ht, %.lr.ph.i197 ]
  %.018.lcssa.i195 = phi i32 [ %i.hn, %bb.i ], [ 1, %.lr.ph.i197 ]
  %i.hw = sub nuw nsw i32 8, %.018.lcssa.i195
  %i.hx = lshr i32 %.020.lcssa.i193, %i.hw
  %i.hy = or i32 %i.hx, %.019.lcssa.i194
  %i.hz = trunc i32 %i.hy to i8                   ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.099, i64 15
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !1133
  %.not103 = icmp eq i8 %i.hz, 0
  br i1 %.not103, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit203
  %i.ib = add nsw i32 %i.fz, 4                    ; 2 uses
  store i32 %i.ib, ptr %i.cv, align 8, !tbaa !777
  %i.ic = icmp sgt i32 %i.ib, %i.db
  br i1 %i.ic, label %ma_dr_mp3_bs_get_bits.exit215.thread, label %ma_dr_mp3_bs_get_bits.exit215

ma_dr_mp3_bs_get_bits.exit215:                    ; preds = %bb.j
  %i.id = ashr i32 %i.hg, 3
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.dc, i64 %i.ie
  %i.ig = and i32 %i.hg, 7                        ; 2 uses
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !119
  %i.ii = zext i8 %i.ih to i32
  %i.ij = lshr i32 255, %i.ig
  %i.ik = and i32 %i.ij, %i.ii
  %i.il = xor i32 %i.ig, 7
  %i.im = lshr i32 %i.ik, %i.il                   ; 2 uses
  %i.in = trunc nuw i32 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr %.099, i64 16
  store i8 %i.in, ptr %i.io, align 8, !tbaa !1132
  %i.ip = getelementptr inbounds nuw i8, ptr %.099, i64 22 ; 2 uses
  store i8 7, ptr %i.ip, align 2, !tbaa !119
  %i.iq = getelementptr inbounds nuw i8, ptr %.099, i64 23
  store i8 -1, ptr %i.iq, align 1, !tbaa !119
  %i.ir = icmp eq i8 %i.hz, 2
  br i1 %i.ir, label %bb.k, label %bb.n

ma_dr_mp3_bs_get_bits.exit215.thread:             ; preds = %bb.j
  %i.is = getelementptr inbounds nuw i8, ptr %.099, i64 16
  store i8 0, ptr %i.is, align 8, !tbaa !1132
  %i.it = getelementptr inbounds nuw i8, ptr %.099, i64 22 ; 2 uses
  store i8 7, ptr %i.it, align 2, !tbaa !119
  %i.iu = getelementptr inbounds nuw i8, ptr %.099, i64 23
  store i8 -1, ptr %i.iu, align 1, !tbaa !119
  %i.iv = icmp eq i8 %i.hz, 2
  br i1 %i.iv, label %.thread, label %bb.n

.thread:                                          ; preds = %ma_dr_mp3_bs_get_bits.exit215.thread
  %i.iw = and i32 %spec.select, 3855
  br label %bb.l

bb.k:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit215
  %i.ix = and i32 %spec.select, 3855              ; 2 uses
  %.not104 = icmp eq i32 %i.im, 0
  br i1 %.not104, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.iy = phi i32 [ %i.iw, %.thread ], [ %i.ix, %bb.k ]
  %i.iz = phi ptr [ %i.it, %.thread ], [ %i.ip, %bb.k ]
  store i8 8, ptr %i.iz, align 2, !tbaa !119
  store ptr %i.da, ptr %.099, align 8, !tbaa !1130
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  store ptr %i.cz, ptr %.099, align 8, !tbaa !1130
  %i.ja = load i8, ptr %i.j, align 1, !tbaa !119
  %i.jb = and i8 %i.ja, 8
  %.not105 = icmp eq i8 %i.jb, 0
  %i.jc = select i1 %.not105, i8 6, i8 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink473 = phi i8 [ 0, %bb.l ], [ %i.jc, %bb.m ]
  %.sink = phi i8 [ 39, %bb.l ], [ 30, %bb.m ]
  %.3.ph = phi i32 [ %i.iy, %bb.l ], [ %i.ix, %bb.m ]
  store i8 %.sink473, ptr %i.gt, align 1, !tbaa !1123
  store i8 %.sink, ptr %i.gu, align 2, !tbaa !1122
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %ma_dr_mp3_bs_get_bits.exit215.thread, %ma_dr_mp3_bs_get_bits.exit215
  %.3 = phi i32 [ %spec.select, %ma_dr_mp3_bs_get_bits.exit215 ], [ %spec.select, %ma_dr_mp3_bs_get_bits.exit215.thread ], [ %.3.ph, %.sink.split ]
  %i.jd = load i32, ptr %i.cv, align 8, !tbaa !777 ; 4 uses
  %i.je = load ptr, ptr %0, align 8, !tbaa !776   ; 2 uses
  %i.jf = add nsw i32 %i.jd, 10                   ; 4 uses
  store i32 %i.jf, ptr %i.cv, align 8, !tbaa !777
  %i.jg = load i32, ptr %i.cw, align 4, !tbaa !778 ; 2 uses
  %i.jh = icmp sgt i32 %i.jf, %i.jg
  br i1 %i.jh, label %ma_dr_mp3_bs_get_bits.exit227, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.n
  %i.ji = and i32 %i.jd, 7                        ; 5 uses
  %i.jj = lshr i32 255, %i.ji
  %i.jk = ashr i32 %i.jd, 3
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %i.je, i64 %i.jl ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !119
  %i.jo = zext i8 %i.jn to i32
  %i.jp = and i32 %i.jj, %i.jo
  %i.jq = add nuw nsw i32 %i.ji, 10
  %.0.i226 = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jr = add nuw nsw i32 %i.ji, 2                ; 2 uses
  %i.js = shl nuw nsw i32 %i.jp, %i.jr            ; 2 uses
  %i.jt = load i8, ptr %.0.i226, align 1, !tbaa !119
  %i.ju = zext i8 %i.jt to i32                    ; 2 uses
  %i.jv = icmp eq i32 %i.ji, 7
  br i1 %i.jv, label %.lr.ph.i221.1, label %._crit_edge.i216

.lr.ph.i221.1:                                    ; preds = %.lr.ph.i221
  %.0.i226.1 = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jw = add nsw i32 %i.ji, -6
  %i.jx = shl nuw nsw i32 %i.ju, %i.jw
  %i.jy = or disjoint i32 %i.jx, %i.js
  %i.jz = load i8, ptr %.0.i226.1, align 1, !tbaa !119
  %i.ka = zext i8 %i.jz to i32
  br label %._crit_edge.i216

._crit_edge.i216:                                 ; preds = %.lr.ph.i221.1, %.lr.ph.i221
  %.01825.i223.lcssa = phi i32 [ %i.jq, %.lr.ph.i221 ], [ %i.jr, %.lr.ph.i221.1 ]
  %.lcssa492 = phi i32 [ %i.js, %.lr.ph.i221 ], [ %i.jy, %.lr.ph.i221.1 ]
  %.lcssa491 = phi i32 [ %i.ju, %.lr.ph.i221 ], [ %i.ka, %.lr.ph.i221.1 ]
  %i.kb = sub nuw nsw i32 16, %.01825.i223.lcssa
  %i.kc = lshr i32 %.lcssa491, %i.kb
  %i.kd = or i32 %i.kc, %.lcssa492
  %i.ke = shl i32 %i.kd, 5
  br label %ma_dr_mp3_bs_get_bits.exit227

ma_dr_mp3_bs_get_bits.exit227:                    ; preds = %bb.n, %._crit_edge.i216
  %.021.i220 = phi i32 [ %i.ke, %._crit_edge.i216 ], [ 0, %bb.n ]
  %i.kf = add nsw i32 %i.jd, 13                   ; 2 uses
  store i32 %i.kf, ptr %i.cv, align 8, !tbaa !777
  %i.kg = icmp sgt i32 %i.kf, %i.jg
  br i1 %i.kg, label %ma_dr_mp3_bs_get_bits.exit239, label %bb.o
end_hunk_0
