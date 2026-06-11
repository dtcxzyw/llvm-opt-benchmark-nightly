inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc14BytecodeHasher12visitOperandEPKhNS_4inst11OperandTypeES3_i:bb.a
  br i1 %or.cond240.not, label %.lr.ph.i78, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

.lr.ph.i78:                                       ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i79 = load i32, ptr %i.db, align 4, !tbaa !213
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i78
  %i.dc = phi i32 [ %.promoted.i79, %.lr.ph.i78 ], [ %i.dh, %bb.r ]
  %.04.i80 = phi i32 [ %i.bn, %.lr.ph.i78 ], [ %i.di, %bb.r ] ; 2 uses
  %i.dd = and i32 %.04.i80, 255
  %i.de = add i32 %i.dd, %i.dc
  %i.df = mul i32 %i.de, 1025                     ; 2 uses
  %i.dg = lshr i32 %i.df, 6
  %i.dh = xor i32 %i.dg, %i.df                    ; 2 uses
  %i.di = lshr i32 %.04.i80, 8                    ; 2 uses
  %.not.i81 = icmp eq i32 %i.di, 0
  br i1 %.not.i81, label %._crit_edge.i82, label %bb.r, !llvm.loop !431

._crit_edge.i82:                                  ; preds = %bb.r
  store i32 %i.dh, ptr %i.db, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.s:                                             ; preds = %_ZN6hermes3hbcL17isOperandStringIDENS_4inst6OpCodeEj.exit
  %i.dj = load i8, ptr %3, align 1, !tbaa !7      ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !215, !range !283, !noundef !250
  %i.dm = trunc nuw i8 %i.dl to i1
  %or.cond5 = and i1 %.0.i.i, %i.dm
  br i1 %or.cond5, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dn = zext i8 %i.dj to i32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8  ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %.sroa.0.0.copyload.i.i84 = load ptr, ptr %i.dq, align 8, !tbaa !44
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call i64 %i.dt(ptr noundef nonnull align 8 dereferenceable(280) %i.dp, i32 noundef %i.dn) #18, !inline_history !426 ; 3 uses
  %.sroa.4.0.extract.shift.i85 = lshr i64 %i.du, 32
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i84, i64 %i.dv ; 3 uses
  %i.dx = and i64 %.sroa.4.0.extract.shift.i85, 2147483647 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = icmp slt i64 %i.du, 0
  %.not22.i86 = icmp eq i64 %i.dx, 0              ; 2 uses
  br i1 %i.dz, label %.preheader.i91, label %.preheader16.i87

.preheader16.i87:                                 ; preds = %bb.t
  br i1 %.not22.i86, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.preheader16.i87
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i89 = load i32, ptr %i.ea, align 4, !tbaa !213
  br label %bb.v

.preheader.i91:                                   ; preds = %bb.t
  br i1 %.not22.i86, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph20.i92

.lr.ph20.i92:                                     ; preds = %.preheader.i91
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted21.i93 = load i32, ptr %i.eb, align 4, !tbaa !213
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph20.i92
  %i.ec = phi i32 [ %.promoted21.i93, %.lr.ph20.i92 ], [ %i.ei, %bb.u ]
  %.01219.i94 = phi ptr [ %i.dw, %.lr.ph20.i92 ], [ %i.ej, %bb.u ] ; 2 uses
  %i.ed = load i16, ptr %.01219.i94, align 2, !tbaa !427
  %i.ee = zext i16 %i.ed to i32
  %i.ef = add i32 %i.ec, %i.ee
  %i.eg = mul i32 %i.ef, 1025                     ; 2 uses
  %i.eh = lshr i32 %i.eg, 6
  %i.ei = xor i32 %i.eh, %i.eg                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01219.i94, i64 2 ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.dy
  br i1 %i.ek, label %bb.u, label %..loopexit_crit_edge.i95, !llvm.loop !429

bb.v:                                             ; preds = %bb.v, %.lr.ph.i88
  %i.el = phi i32 [ %.promoted.i89, %.lr.ph.i88 ], [ %i.er, %bb.v ]
  %.018.i90 = phi ptr [ %i.dw, %.lr.ph.i88 ], [ %i.es, %bb.v ] ; 2 uses
  %i.em = load i8, ptr %.018.i90, align 1, !tbaa !7
  %i.en = zext i8 %i.em to i32
  %i.eo = add i32 %i.el, %i.en
  %i.ep = mul i32 %i.eo, 1025                     ; 2 uses
  %i.eq = lshr i32 %i.ep, 6
  %i.er = xor i32 %i.eq, %i.ep                    ; 2 uses
  store i32 %i.er, ptr %i.ea, align 4, !tbaa !213
  %i.es = getelementptr inbounds nuw i8, ptr %.018.i90, i64 1 ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.dy
  br i1 %i.et, label %bb.v, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, !llvm.loop !430

..loopexit_crit_edge.i95:                         ; preds = %bb.u
  store i32 %i.ei, ptr %i.eb, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.w:                                             ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !216, !range !283, !noundef !250
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = icmp eq i8 %i.b, 110
  %or.cond51 = and i1 %i.ex, %i.ew
  %.not3.i97 = icmp ne i8 %i.dj, 0
  %or.cond245.not = select i1 %or.cond51, i1 %.not3.i97, i1 false
  br i1 %or.cond245.not, label %.lr.ph.i98, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

.lr.ph.i98:                                       ; preds = %bb.w
  %i.ey = zext i8 %i.dj to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i99 = load i32, ptr %i.ez, align 4, !tbaa !213
  %i.fa = add i32 %.promoted.i99, %i.ey
  %i.fb = mul i32 %i.fa, 1025                     ; 2 uses
  %i.fc = lshr i32 %i.fb, 6
  %i.fd = xor i32 %i.fc, %i.fb
  store i32 %i.fd, ptr %i.ez, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.x:                                             ; preds = %_ZN6hermes3hbcL17isOperandStringIDENS_4inst6OpCodeEj.exit
  %i.fe = load i16, ptr %3, align 1               ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !215, !range !283, !noundef !250
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond7 = and i1 %.0.i.i, %i.fh
  br i1 %or.cond7, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fi = zext i16 %i.fe to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !8  ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %.sroa.0.0.copyload.i.i104 = load ptr, ptr %i.fl, align 8, !tbaa !44
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = tail call i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(280) %i.fk, i32 noundef %i.fi) #18, !inline_history !426 ; 3 uses
  %.sroa.4.0.extract.shift.i105 = lshr i64 %i.fp, 32
  %i.fq = and i64 %i.fp, 4294967295
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i104, i64 %i.fq ; 3 uses
  %i.fs = and i64 %.sroa.4.0.extract.shift.i105, 2147483647 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs ; 2 uses
  %i.fu = icmp slt i64 %i.fp, 0
  %.not22.i106 = icmp eq i64 %i.fs, 0             ; 2 uses
  br i1 %i.fu, label %.preheader.i111, label %.preheader16.i107

.preheader16.i107:                                ; preds = %bb.y
  br i1 %.not22.i106, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.preheader16.i107
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i109 = load i32, ptr %i.fv, align 4, !tbaa !213
  br label %bb.aa

.preheader.i111:                                  ; preds = %bb.y
  br i1 %.not22.i106, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph20.i112

.lr.ph20.i112:                                    ; preds = %.preheader.i111
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted21.i113 = load i32, ptr %i.fw, align 4, !tbaa !213
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph20.i112
  %i.fx = phi i32 [ %.promoted21.i113, %.lr.ph20.i112 ], [ %i.gd, %bb.z ]
  %.01219.i114 = phi ptr [ %i.fr, %.lr.ph20.i112 ], [ %i.ge, %bb.z ] ; 2 uses
  %i.fy = load i16, ptr %.01219.i114, align 2, !tbaa !427
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add i32 %i.fx, %i.fz
  %i.gb = mul i32 %i.ga, 1025                     ; 2 uses
  %i.gc = lshr i32 %i.gb, 6
  %i.gd = xor i32 %i.gc, %i.gb                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01219.i114, i64 2 ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.ft
  br i1 %i.gf, label %bb.z, label %..loopexit_crit_edge.i115, !llvm.loop !429

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i108
  %i.gg = phi i32 [ %.promoted.i109, %.lr.ph.i108 ], [ %i.gm, %bb.aa ]
  %.018.i110 = phi ptr [ %i.fr, %.lr.ph.i108 ], [ %i.gn, %bb.aa ] ; 2 uses
  %i.gh = load i8, ptr %.018.i110, align 1, !tbaa !7
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add i32 %i.gg, %i.gi
  %i.gk = mul i32 %i.gj, 1025                     ; 2 uses
  %i.gl = lshr i32 %i.gk, 6
  %i.gm = xor i32 %i.gl, %i.gk                    ; 2 uses
  store i32 %i.gm, ptr %i.fv, align 4, !tbaa !213
  %i.gn = getelementptr inbounds nuw i8, ptr %.018.i110, i64 1 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %i.ft
  br i1 %i.go, label %bb.aa, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, !llvm.loop !430

..loopexit_crit_edge.i115:                        ; preds = %bb.z
  store i32 %i.gd, ptr %i.fw, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.ab:                                            ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !216, !range !283, !noundef !250
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = icmp eq i8 %i.b, 110
  %or.cond53 = and i1 %i.gs, %i.gr
  %.not3.i117 = icmp ne i16 %i.fe, 0
  %or.cond246.not = select i1 %or.cond53, i1 %.not3.i117, i1 false
  br i1 %or.cond246.not, label %bb.ac, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.ac:                                            ; preds = %bb.ab
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i119 = load i32, ptr %5, align 4, !tbaa !213
  %6 = zext i16 %i.fe to i32                      ; 2 uses
  %i.gt = and i32 %6, 255
  %i.gu = add i32 %i.gt, %.promoted.i119
  %i.gv = mul i32 %i.gu, 1025                     ; 2 uses
  %i.gw = lshr i32 %i.gv, 6
  %i.gx = xor i32 %i.gw, %i.gv                    ; 2 uses
  %i.gy = lshr i32 %6, 8                          ; 2 uses
  %.not.i121 = icmp eq i32 %i.gy, 0
  %7 = add i32 %i.gy, %i.gx
  %8 = mul i32 %7, 1025                           ; 2 uses
  %9 = lshr i32 %8, 6
  %10 = xor i32 %9, %8
  %.lcssa355 = select i1 %.not.i121, i32 %i.gx, i32 %10
  store i32 %.lcssa355, ptr %5, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.ad:                                            ; preds = %_ZN6hermes3hbcL17isOperandStringIDENS_4inst6OpCodeEj.exit
  %i.gz = load i32, ptr %3, align 1               ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !215, !range !283, !noundef !250
  %i.hc = trunc nuw i8 %i.hb to i1
  %or.cond9 = and i1 %.0.i.i, %i.hc
  br i1 %or.cond9, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !8  ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %.sroa.0.0.copyload.i.i124 = load ptr, ptr %i.hf, align 8, !tbaa !44
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = tail call i64 %i.hi(ptr noundef nonnull align 8 dereferenceable(280) %i.he, i32 noundef %i.gz) #18, !inline_history !426 ; 3 uses
  %.sroa.4.0.extract.shift.i125 = lshr i64 %i.hj, 32
  %i.hk = and i64 %i.hj, 4294967295
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i124, i64 %i.hk ; 3 uses
  %i.hm = and i64 %.sroa.4.0.extract.shift.i125, 2147483647 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm ; 2 uses
  %i.ho = icmp slt i64 %i.hj, 0
  %.not22.i126 = icmp eq i64 %i.hm, 0             ; 2 uses
  br i1 %i.ho, label %.preheader.i131, label %.preheader16.i127

.preheader16.i127:                                ; preds = %bb.ae
  br i1 %.not22.i126, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.preheader16.i127
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i129 = load i32, ptr %i.hp, align 4, !tbaa !213
  br label %bb.ag

.preheader.i131:                                  ; preds = %bb.ae
  br i1 %.not22.i126, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph20.i132

.lr.ph20.i132:                                    ; preds = %.preheader.i131
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted21.i133 = load i32, ptr %i.hq, align 4, !tbaa !213
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph20.i132
  %i.hr = phi i32 [ %.promoted21.i133, %.lr.ph20.i132 ], [ %i.hx, %bb.af ]
  %.01219.i134 = phi ptr [ %i.hl, %.lr.ph20.i132 ], [ %i.hy, %bb.af ] ; 2 uses
  %i.hs = load i16, ptr %.01219.i134, align 2, !tbaa !427
  %i.ht = zext i16 %i.hs to i32
  %i.hu = add i32 %i.hr, %i.ht
  %i.hv = mul i32 %i.hu, 1025                     ; 2 uses
  %i.hw = lshr i32 %i.hv, 6
  %i.hx = xor i32 %i.hw, %i.hv                    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.01219.i134, i64 2 ; 2 uses
  %i.hz = icmp ult ptr %i.hy, %i.hn
  br i1 %i.hz, label %bb.af, label %..loopexit_crit_edge.i135, !llvm.loop !429

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i128
  %i.ia = phi i32 [ %.promoted.i129, %.lr.ph.i128 ], [ %i.ig, %bb.ag ]
  %.018.i130 = phi ptr [ %i.hl, %.lr.ph.i128 ], [ %i.ih, %bb.ag ] ; 2 uses
  %i.ib = load i8, ptr %.018.i130, align 1, !tbaa !7
  %i.ic = zext i8 %i.ib to i32
  %i.id = add i32 %i.ia, %i.ic
  %i.ie = mul i32 %i.id, 1025                     ; 2 uses
  %i.if = lshr i32 %i.ie, 6
  %i.ig = xor i32 %i.if, %i.ie                    ; 2 uses
  store i32 %i.ig, ptr %i.hp, align 4, !tbaa !213
  %i.ih = getelementptr inbounds nuw i8, ptr %.018.i130, i64 1 ; 2 uses
  %i.ii = icmp ult ptr %i.ih, %i.hn
  br i1 %i.ii, label %bb.ag, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, !llvm.loop !430

..loopexit_crit_edge.i135:                        ; preds = %bb.af
  store i32 %i.hx, ptr %i.hq, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.ah:                                            ; preds = %bb.ad
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !216, !range !283, !noundef !250
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = icmp eq i8 %i.b, 110
  %or.cond55 = and i1 %i.im, %i.il
  %.not3.i137 = icmp ne i32 %i.gz, 0
  %or.cond241.not = select i1 %or.cond55, i1 %.not3.i137, i1 false
  br i1 %or.cond241.not, label %.lr.ph.i138, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

.lr.ph.i138:                                      ; preds = %bb.ah
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i139 = load i32, ptr %i.in, align 4, !tbaa !213
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i138
  %i.io = phi i32 [ %.promoted.i139, %.lr.ph.i138 ], [ %i.it, %bb.ai ]
  %.04.i140 = phi i32 [ %i.gz, %.lr.ph.i138 ], [ %i.iu, %bb.ai ] ; 2 uses
  %i.ip = and i32 %.04.i140, 255
  %i.iq = add i32 %i.ip, %i.io
  %i.ir = mul i32 %i.iq, 1025                     ; 2 uses
  %i.is = lshr i32 %i.ir, 6
  %i.it = xor i32 %i.is, %i.ir                    ; 2 uses
  %i.iu = lshr i32 %.04.i140, 8                   ; 2 uses
  %.not.i141 = icmp eq i32 %i.iu, 0
  br i1 %.not.i141, label %._crit_edge.i142, label %bb.ai, !llvm.loop !431

._crit_edge.i142:                                 ; preds = %bb.ai
  store i32 %i.it, ptr %i.in, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.aj:                                            ; preds = %_ZN6hermes3hbcL17isOperandStringIDENS_4inst6OpCodeEj.exit
  %i.iv = load i8, ptr %3, align 1, !tbaa !7      ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !215, !range !283, !noundef !250
  %i.iy = trunc nuw i8 %i.ix to i1
  %or.cond11 = and i1 %.0.i.i, %i.iy
  br i1 %or.cond11, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.iz = sext i8 %i.iv to i32
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !8  ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %.sroa.0.0.copyload.i.i144 = load ptr, ptr %i.jc, align 8, !tbaa !44
  %i.jd = load ptr, ptr %i.jb, align 8, !tbaa !19
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = tail call i64 %i.jf(ptr noundef nonnull align 8 dereferenceable(280) %i.jb, i32 noundef %i.iz) #18, !inline_history !426 ; 3 uses
  %.sroa.4.0.extract.shift.i145 = lshr i64 %i.jg, 32
  %i.jh = and i64 %i.jg, 4294967295
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i144, i64 %i.jh ; 3 uses
  %i.jj = and i64 %.sroa.4.0.extract.shift.i145, 2147483647 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jj ; 2 uses
  %i.jl = icmp slt i64 %i.jg, 0
  %.not22.i146 = icmp eq i64 %i.jj, 0             ; 2 uses
  br i1 %i.jl, label %.preheader.i151, label %.preheader16.i147

.preheader16.i147:                                ; preds = %bb.ak
  br i1 %.not22.i146, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.preheader16.i147
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i149 = load i32, ptr %i.jm, align 4, !tbaa !213
  br label %bb.am

.preheader.i151:                                  ; preds = %bb.ak
  br i1 %.not22.i146, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph20.i152

.lr.ph20.i152:                                    ; preds = %.preheader.i151
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted21.i153 = load i32, ptr %i.jn, align 4, !tbaa !213
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph20.i152
  %i.jo = phi i32 [ %.promoted21.i153, %.lr.ph20.i152 ], [ %i.ju, %bb.al ]
  %.01219.i154 = phi ptr [ %i.ji, %.lr.ph20.i152 ], [ %i.jv, %bb.al ] ; 2 uses
  %i.jp = load i16, ptr %.01219.i154, align 2, !tbaa !427
  %i.jq = zext i16 %i.jp to i32
  %i.jr = add i32 %i.jo, %i.jq
  %i.js = mul i32 %i.jr, 1025                     ; 2 uses
  %i.jt = lshr i32 %i.js, 6
  %i.ju = xor i32 %i.jt, %i.js                    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.01219.i154, i64 2 ; 2 uses
  %i.jw = icmp ult ptr %i.jv, %i.jk
  br i1 %i.jw, label %bb.al, label %..loopexit_crit_edge.i155, !llvm.loop !429

bb.am:                                            ; preds = %bb.am, %.lr.ph.i148
  %i.jx = phi i32 [ %.promoted.i149, %.lr.ph.i148 ], [ %i.kd, %bb.am ]
  %.018.i150 = phi ptr [ %i.ji, %.lr.ph.i148 ], [ %i.ke, %bb.am ] ; 2 uses
  %i.jy = load i8, ptr %.018.i150, align 1, !tbaa !7
  %i.jz = zext i8 %i.jy to i32
  %i.ka = add i32 %i.jx, %i.jz
  %i.kb = mul i32 %i.ka, 1025                     ; 2 uses
  %i.kc = lshr i32 %i.kb, 6
  %i.kd = xor i32 %i.kc, %i.kb                    ; 2 uses
  store i32 %i.kd, ptr %i.jm, align 4, !tbaa !213
  %i.ke = getelementptr inbounds nuw i8, ptr %.018.i150, i64 1 ; 2 uses
  %i.kf = icmp ult ptr %i.ke, %i.jk
  br i1 %i.kf, label %bb.am, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, !llvm.loop !430

..loopexit_crit_edge.i155:                        ; preds = %bb.al
  store i32 %i.ju, ptr %i.jn, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.an:                                            ; preds = %bb.aj
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !216, !range !283, !noundef !250
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = icmp eq i8 %i.b, 110
  %or.cond57 = and i1 %i.kj, %i.ki
  %.not3.i157 = icmp ne i8 %i.iv, 0
  %or.cond247.not = select i1 %or.cond57, i1 %.not3.i157, i1 false
  br i1 %or.cond247.not, label %.lr.ph.i158, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

.lr.ph.i158:                                      ; preds = %bb.an
  %i.kk = sext i8 %i.iv to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i159 = load i32, ptr %i.kl, align 4, !tbaa !213
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i158
  %i.km = phi i32 [ %.promoted.i159, %.lr.ph.i158 ], [ %i.kr, %bb.ao ]
  %.04.i160 = phi i32 [ %i.kk, %.lr.ph.i158 ], [ %i.ks, %bb.ao ] ; 2 uses
  %i.kn = and i32 %.04.i160, 255
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc14BytecodeHasher12visitOperandEPKhNS_4inst11OperandTypeES3_i:bb.a
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !8  ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %.sroa.0.0.copyload.i.i184 = load ptr, ptr %i.mv, align 8, !tbaa !44
  %i.mw = load ptr, ptr %i.mu, align 8, !tbaa !19
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = tail call i64 %i.my(ptr noundef nonnull align 8 dereferenceable(280) %i.mu, i32 noundef %i.mp) #18, !inline_history !426 ; 3 uses
  %.sroa.4.0.extract.shift.i185 = lshr i64 %i.mz, 32
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i184, i64 %i.na ; 3 uses
  %i.nc = and i64 %.sroa.4.0.extract.shift.i185, 2147483647 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc ; 2 uses
  %i.ne = icmp slt i64 %i.mz, 0
  %.not22.i186 = icmp eq i64 %i.nc, 0             ; 2 uses
  br i1 %i.ne, label %.preheader.i191, label %.preheader16.i187

.preheader16.i187:                                ; preds = %bb.aw
  br i1 %.not22.i186, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.preheader16.i187
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i189 = load i32, ptr %i.nf, align 4, !tbaa !213
  br label %bb.ay

.preheader.i191:                                  ; preds = %bb.aw
  br i1 %.not22.i186, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph20.i192

.lr.ph20.i192:                                    ; preds = %.preheader.i191
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted21.i193 = load i32, ptr %i.ng, align 4, !tbaa !213
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph20.i192
  %i.nh = phi i32 [ %.promoted21.i193, %.lr.ph20.i192 ], [ %i.nn, %bb.ax ]
  %.01219.i194 = phi ptr [ %i.nb, %.lr.ph20.i192 ], [ %i.no, %bb.ax ] ; 2 uses
  %i.ni = load i16, ptr %.01219.i194, align 2, !tbaa !427
  %i.nj = zext i16 %i.ni to i32
  %i.nk = add i32 %i.nh, %i.nj
  %i.nl = mul i32 %i.nk, 1025                     ; 2 uses
  %i.nm = lshr i32 %i.nl, 6
  %i.nn = xor i32 %i.nm, %i.nl                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.01219.i194, i64 2 ; 2 uses
  %i.np = icmp ult ptr %i.no, %i.nd
  br i1 %i.np, label %bb.ax, label %..loopexit_crit_edge.i195, !llvm.loop !429

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i188
  %i.nq = phi i32 [ %.promoted.i189, %.lr.ph.i188 ], [ %i.nw, %bb.ay ]
  %.018.i190 = phi ptr [ %i.nb, %.lr.ph.i188 ], [ %i.nx, %bb.ay ] ; 2 uses
  %i.nr = load i8, ptr %.018.i190, align 1, !tbaa !7
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add i32 %i.nq, %i.ns
  %i.nu = mul i32 %i.nt, 1025                     ; 2 uses
  %i.nv = lshr i32 %i.nu, 6
  %i.nw = xor i32 %i.nv, %i.nu                    ; 2 uses
  store i32 %i.nw, ptr %i.nf, align 4, !tbaa !213
  %i.nx = getelementptr inbounds nuw i8, ptr %.018.i190, i64 1 ; 2 uses
  %i.ny = icmp ult ptr %i.nx, %i.nd
  br i1 %i.ny, label %bb.ay, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, !llvm.loop !430

..loopexit_crit_edge.i195:                        ; preds = %bb.ax
  store i32 %i.nn, ptr %i.ng, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.az:                                            ; preds = %bb.av
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !216, !range !283, !noundef !250
  %i.ob = trunc nuw i8 %i.oa to i1
  %.not3.i197 = icmp ne i32 %i.mp, 0
  %or.cond243.not = select i1 %i.ob, i1 %.not3.i197, i1 false
  br i1 %or.cond243.not, label %.lr.ph.i198, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

.lr.ph.i198:                                      ; preds = %bb.az
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i199 = load i32, ptr %i.oc, align 4, !tbaa !213
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i198
  %i.od = phi i32 [ %.promoted.i199, %.lr.ph.i198 ], [ %i.oi, %bb.ba ]
  %.04.i200 = phi i32 [ %i.mp, %.lr.ph.i198 ], [ %i.oj, %bb.ba ] ; 2 uses
  %i.oe = and i32 %.04.i200, 255
  %i.of = add i32 %i.oe, %i.od
  %i.og = mul i32 %i.of, 1025                     ; 2 uses
  %i.oh = lshr i32 %i.og, 6
  %i.oi = xor i32 %i.oh, %i.og                    ; 2 uses
  %i.oj = lshr i32 %.04.i200, 8                   ; 2 uses
  %.not.i201 = icmp eq i32 %i.oj, 0
  br i1 %.not.i201, label %._crit_edge.i202, label %bb.ba, !llvm.loop !431

._crit_edge.i202:                                 ; preds = %bb.ba
  store i32 %i.oi, ptr %i.oc, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.bb:                                            ; preds = %_ZN6hermes3hbcL17isOperandStringIDENS_4inst6OpCodeEj.exit
  %i.ok = load double, ptr %3, align 1            ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !215, !range !283, !noundef !250
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond17 = and i1 %.0.i.i, %i.on
  br i1 %or.cond17, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.oo = fptoui double %i.ok to i32
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !8  ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %.sroa.0.0.copyload.i.i204 = load ptr, ptr %i.or, align 8, !tbaa !44
  %i.os = load ptr, ptr %i.oq, align 8, !tbaa !19
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = tail call i64 %i.ou(ptr noundef nonnull align 8 dereferenceable(280) %i.oq, i32 noundef %i.oo) #18, !inline_history !426 ; 3 uses
  %.sroa.4.0.extract.shift.i205 = lshr i64 %i.ov, 32
  %i.ow = and i64 %i.ov, 4294967295
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i204, i64 %i.ow ; 3 uses
  %i.oy = and i64 %.sroa.4.0.extract.shift.i205, 2147483647 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy ; 2 uses
  %i.pa = icmp slt i64 %i.ov, 0
  %.not22.i206 = icmp eq i64 %i.oy, 0             ; 2 uses
  br i1 %i.pa, label %.preheader.i211, label %.preheader16.i207

.preheader16.i207:                                ; preds = %bb.bc
  br i1 %.not22.i206, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.preheader16.i207
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i209 = load i32, ptr %i.pb, align 4, !tbaa !213
  br label %bb.be

.preheader.i211:                                  ; preds = %bb.bc
  br i1 %.not22.i206, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph20.i212

.lr.ph20.i212:                                    ; preds = %.preheader.i211
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted21.i213 = load i32, ptr %i.pc, align 4, !tbaa !213
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph20.i212
  %i.pd = phi i32 [ %.promoted21.i213, %.lr.ph20.i212 ], [ %i.pj, %bb.bd ]
  %.01219.i214 = phi ptr [ %i.ox, %.lr.ph20.i212 ], [ %i.pk, %bb.bd ] ; 2 uses
  %i.pe = load i16, ptr %.01219.i214, align 2, !tbaa !427
  %i.pf = zext i16 %i.pe to i32
  %i.pg = add i32 %i.pd, %i.pf
  %i.ph = mul i32 %i.pg, 1025                     ; 2 uses
  %i.pi = lshr i32 %i.ph, 6
  %i.pj = xor i32 %i.pi, %i.ph                    ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.01219.i214, i64 2 ; 2 uses
  %i.pl = icmp ult ptr %i.pk, %i.oz
  br i1 %i.pl, label %bb.bd, label %..loopexit_crit_edge.i215, !llvm.loop !429

bb.be:                                            ; preds = %bb.be, %.lr.ph.i208
  %i.pm = phi i32 [ %.promoted.i209, %.lr.ph.i208 ], [ %i.ps, %bb.be ]
  %.018.i210 = phi ptr [ %i.ox, %.lr.ph.i208 ], [ %i.pt, %bb.be ] ; 2 uses
  %i.pn = load i8, ptr %.018.i210, align 1, !tbaa !7
  %i.po = zext i8 %i.pn to i32
  %i.pp = add i32 %i.pm, %i.po
  %i.pq = mul i32 %i.pp, 1025                     ; 2 uses
  %i.pr = lshr i32 %i.pq, 6
  %i.ps = xor i32 %i.pr, %i.pq                    ; 2 uses
  store i32 %i.ps, ptr %i.pb, align 4, !tbaa !213
  %i.pt = getelementptr inbounds nuw i8, ptr %.018.i210, i64 1 ; 2 uses
  %i.pu = icmp ult ptr %i.pt, %i.oz
  br i1 %i.pu, label %bb.be, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, !llvm.loop !430

..loopexit_crit_edge.i215:                        ; preds = %bb.bd
  store i32 %i.pj, ptr %i.pc, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.bf:                                            ; preds = %bb.bb
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !216, !range !283, !noundef !250
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = icmp eq i8 %i.b, 110
  %or.cond61 = and i1 %i.py, %i.px
  br i1 %or.cond61, label %bb.bg, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

bb.bg:                                            ; preds = %bb.bf
  %i.pz = fptoui double %i.ok to i32              ; 2 uses
  %.not3.i217 = icmp eq i32 %i.pz, 0
  br i1 %.not3.i217, label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %bb.bg
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i219 = load i32, ptr %i.qa, align 4, !tbaa !213
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i218
  %i.qb = phi i32 [ %.promoted.i219, %.lr.ph.i218 ], [ %i.qg, %bb.bh ]
  %.04.i220 = phi i32 [ %i.pz, %.lr.ph.i218 ], [ %i.qh, %bb.bh ] ; 2 uses
  %i.qc = and i32 %.04.i220, 255
  %i.qd = add i32 %i.qc, %i.qb
  %i.qe = mul i32 %i.qd, 1025                     ; 2 uses
  %i.qf = lshr i32 %i.qe, 6
  %i.qg = xor i32 %i.qf, %i.qe                    ; 2 uses
  %i.qh = lshr i32 %.04.i220, 8                   ; 2 uses
  %.not.i221 = icmp eq i32 %i.qh, 0
  br i1 %.not.i221, label %._crit_edge.i222, label %bb.bh, !llvm.loop !431

._crit_edge.i222:                                 ; preds = %bb.bh
  store i32 %i.qg, ptr %i.qa, align 4, !tbaa !213
  br label %_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit

_ZN6hermes3hbc14BytecodeHasher17hashOperandStringEj.exit: ; preds = %bb.be, %bb.ay, %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.v, %bb.p, %bb.k, %bb.bf, %.preheader16.i207, %.preheader.i211, %..loopexit_crit_edge.i215, %bb.bg, %._crit_edge.i222, %bb.az, %.preheader16.i187, %.preheader.i191, %..loopexit_crit_edge.i195, %._crit_edge.i202, %bb.at, %.preheader16.i167, %.preheader.i171, %..loopexit_crit_edge.i175, %._crit_edge.i182, %bb.an, %.preheader16.i147, %.preheader.i151, %..loopexit_crit_edge.i155, %._crit_edge.i162, %bb.ah, %.preheader16.i127, %.preheader.i131, %..loopexit_crit_edge.i135, %._crit_edge.i142, %bb.ab, %.preheader16.i107, %.preheader.i111, %..loopexit_crit_edge.i115, %bb.ac, %bb.w, %.preheader16.i87, %.preheader.i91, %..loopexit_crit_edge.i95, %.lr.ph.i98, %bb.q, %.preheader16.i67, %.preheader.i71, %..loopexit_crit_edge.i75, %._crit_edge.i82, %bb.l, %.preheader16.i, %.preheader.i, %..loopexit_crit_edge.i, %.lr.ph.i62, %_ZN6hermes3hbcL17isOperandStringIDENS_4inst6OpCodeEj.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BytecodeHasherD0Ev(ptr noundef nonnull align 8 dereferenceable(35) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !211
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !220
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor12visitOperandEPKhNS_4inst11OperandTypeES3_i(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitorD0Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !211
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !220
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !432
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !432
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 10 uses
  store ptr null, ptr %i.a, align 8, !tbaa !189
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !190    ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !366
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.e, ptr %i.d, align 8, !tbaa !232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !182  ; 2 uses
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.h = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !192  ; 5 uses
  %i.k = urem i64 %i.h, %i.j                      ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !193
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !194  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge18, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

end_hunk_1
