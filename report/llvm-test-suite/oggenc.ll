inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@mdct_forward:bb.a
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 3
  %i.cx = fadd <4 x float> %i.ck, %i.cw           ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.vec = load <8 x float>, ptr %i.cy, align 4, !alias.scope !507 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse198 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.cz = fmul <4 x float> %i.cx, %reverse198
  %i.da = fmul <4 x float> %i.cc, %reverse
  %i.db = fadd <4 x float> %i.cz, %i.da
  %.idx = shl i64 %index, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.dd = fmul <4 x float> %i.cx, %reverse
  %i.de = fmul <4 x float> %i.cc, %reverse198
  %i.df = fsub <4 x float> %i.dd, %i.de
  %interleaved.vec = shufflevector <4 x float> %i.db, <4 x float> %i.df, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dc, align 4, !alias.scope !509, !noalias !511
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %.lr.ph.preheader311, label %vector.body, !llvm.loop !512

.lr.ph.preheader311:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ao, %vector.body ]
  %.0111128.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader ], [ %i.aq, %vector.body ]
  %.0115127.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0118126.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader311, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader311 ] ; 2 uses
  %.0111128 = phi ptr [ %i.di, %.lr.ph ], [ %.0111128.ph, %.lr.ph.preheader311 ]
  %.0115127 = phi ptr [ %i.ed, %.lr.ph ], [ %.0115127.ph, %.lr.ph.preheader311 ] ; 3 uses
  %.0118126 = phi ptr [ %i.dh, %.lr.ph ], [ %.0118126.ph, %.lr.ph.preheader311 ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.0118126, i64 -16 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.0111128, i64 -8 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.0118126, i64 -8
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = load float, ptr %.0115127, align 4
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = load float, ptr %i.dh, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.0115127, i64 8
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ds = load <2 x float>, ptr %i.di, align 4    ; 2 uses
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fmul <2 x float> %i.du, %i.dv           ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.ds           ; 2 uses
  %i.ea = fadd <2 x float> %i.dw, %i.dz
  %i.eb = fsub <2 x float> %i.dw, %i.dz
  %i.ec = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ec, ptr %i.dr, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.0115127, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.ee, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !513

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ef = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0118.lcssa = phi ptr [ %i.l, %bb.a ], [ %i.dh, %._crit_edge.loopexit ] ; 9 uses
  %.0111.lcssa = phi ptr [ %i.o, %bb.a ], [ %i.di, %._crit_edge.loopexit ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ef, %._crit_edge.loopexit ] ; 3 uses
  %i.eg = getelementptr i8, ptr %1, i64 4         ; 9 uses
  %i.eh = sub nsw i32 %i.b, %i.d                  ; 2 uses
  %i.ei = icmp slt i32 %.0.lcssa, %i.eh
  br i1 %i.ei, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %._crit_edge
  %i.ej = zext i32 %.0.lcssa to i64               ; 9 uses
  %i.ek = zext i32 %i.eh to i64                   ; 3 uses
  %i.el = add nuw nsw i64 %i.ej, 2
  %umax220 = call i64 @llvm.umax.i64(i64 %i.el, i64 %i.ek)
  %i.em = xor i64 %i.ej, -1
  %i.en = add nsw i64 %umax220, %i.em             ; 2 uses
  %i.eo = lshr i64 %i.en, 1
  %i.ep = add nuw i64 %i.eo, 1                    ; 2 uses
  %min.iters.check222 = icmp ult i64 %i.en, 24
  br i1 %min.iters.check222, label %.lr.ph137.preheader309, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph137.preheader
  %i.eq = shl nsw i64 %i.h, 2                     ; 2 uses
  %i.er = shl nuw nsw i64 %i.ej, 2                ; 2 uses
  %i.es = getelementptr i8, ptr %i.g, i64 %i.eq
  %scevgep203 = getelementptr i8, ptr %i.es, i64 %i.er ; 3 uses
  %i.et = add nuw nsw i64 %i.ej, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.et, i64 %i.ek)
  %i.eu = xor i64 %i.ej, -1
  %i.ev = add nsw i64 %umax, %i.eu
  %i.ew = lshr i64 %i.ev, 1                       ; 2 uses
  %i.ex = shl i64 %i.ew, 3                        ; 2 uses
  %i.ey = getelementptr i8, ptr %i.g, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.eq
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.er
  %scevgep204 = getelementptr i8, ptr %i.fa, i64 8 ; 3 uses
  %i.fb = shl i64 %i.ew, 4                        ; 2 uses
  %i.fc = getelementptr i8, ptr %1, i64 %i.fb
  %scevgep205 = getelementptr i8, ptr %i.fc, i64 16
  %i.fd = sub nuw nsw i64 -16, %i.fb
  %scevgep206 = getelementptr i8, ptr %.0118.lcssa, i64 %i.fd
  %scevgep207 = getelementptr i8, ptr %.0118.lcssa, i64 -4
  %i.fe = sub nuw nsw i64 -8, %i.ex
  %scevgep208 = getelementptr i8, ptr %.0111.lcssa, i64 %i.fe
  %bound0209 = icmp ult ptr %scevgep203, %scevgep205
  %bound1210 = icmp ult ptr %i.eg, %scevgep204
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0212 = icmp ult ptr %scevgep203, %scevgep207
  %bound1213 = icmp ult ptr %scevgep206, %scevgep204
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %found.conflict211, %found.conflict214
  %bound0216 = icmp ult ptr %scevgep203, %.0111.lcssa
  %bound1217 = icmp ult ptr %scevgep208, %scevgep204
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  br i1 %conflict.rdx219, label %.lr.ph137.preheader309, label %vector.ph223

vector.ph223:                                     ; preds = %vector.memcheck202
  %n.mod.vf224 = and i64 %i.ep, 3                 ; 2 uses
  %i.ff = icmp eq i64 %n.mod.vf224, 0
  %i.fg = select i1 %i.ff, i64 4, i64 %n.mod.vf224
  %n.vec225 = sub i64 %i.ep, %i.fg                ; 5 uses
  %i.fh = shl i64 %n.vec225, 1
  %i.fi = add i64 %i.fh, %i.ej
  %i.fj = mul i64 %n.vec225, -8
  %i.fk = getelementptr i8, ptr %.0111.lcssa, i64 %i.fj
  %i.fl = shl i64 %n.vec225, 4
  %i.fm = getelementptr i8, ptr %i.eg, i64 %i.fl
  %i.fn = mul i64 %n.vec225, -16
  %i.fo = getelementptr i8, ptr %.0118.lcssa, i64 %i.fn
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.ej
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph223
  %index227 = phi i64 [ 0, %vector.ph223 ], [ %index.next248, %vector.body226 ] ; 5 uses
  %i.fp = mul i64 %index227, -8
  %next.gep228 = getelementptr i8, ptr %.0111.lcssa, i64 %i.fp
  %i.fq = shl i64 %index227, 4                    ; 4 uses
  %next.gep229 = getelementptr i8, ptr %i.eg, i64 %i.fq ; 2 uses
  %i.fr = getelementptr i8, ptr %i.eg, i64 %i.fq  ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.fr, i64 16
  %i.fs = getelementptr i8, ptr %i.eg, i64 %i.fq  ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.fs, i64 32
  %i.ft = getelementptr i8, ptr %i.eg, i64 %i.fq  ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.ft, i64 48
  %i.fu = mul i64 %index227, -16                  ; 4 uses
  %next.gep233 = getelementptr i8, ptr %.0118.lcssa, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %.0118.lcssa, i64 %i.fu ; 2 uses
  %i.fw = getelementptr i8, ptr %.0118.lcssa, i64 %i.fu ; 2 uses
  %i.fx = getelementptr i8, ptr %.0118.lcssa, i64 %i.fu ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep233, i64 -16
  %i.fz = getelementptr i8, ptr %i.fv, i64 -32
  %i.ga = getelementptr i8, ptr %i.fw, i64 -48
  %i.gb = getelementptr i8, ptr %i.fx, i64 -64
  %i.gc = getelementptr inbounds i8, ptr %next.gep233, i64 -8
  %i.gd = getelementptr i8, ptr %i.fv, i64 -24
  %i.ge = getelementptr i8, ptr %i.fw, i64 -40
  %i.gf = getelementptr i8, ptr %i.fx, i64 -56
  %i.gg = load float, ptr %i.gc, align 4, !alias.scope !514
  %i.gh = load float, ptr %i.gd, align 4, !alias.scope !514
  %i.gi = load float, ptr %i.ge, align 4, !alias.scope !514
  %i.gj = load float, ptr %i.gf, align 4, !alias.scope !514
  %i.gk = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 1
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 3
  %i.go = load float, ptr %next.gep229, align 4, !alias.scope !517
  %i.gp = load float, ptr %next.gep230, align 4, !alias.scope !517
  %i.gq = load float, ptr %next.gep231, align 4, !alias.scope !517
  %i.gr = load float, ptr %next.gep232, align 4, !alias.scope !517
  %i.gs = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.gp, i64 1
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 2
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 3
  %i.gw = fsub <4 x float> %i.gn, %i.gv           ; 2 uses
  %i.gx = load float, ptr %i.fy, align 4, !alias.scope !514
  %i.gy = load float, ptr %i.fz, align 4, !alias.scope !514
  %i.gz = load float, ptr %i.ga, align 4, !alias.scope !514
  %i.ha = load float, ptr %i.gb, align 4, !alias.scope !514
  %i.hb = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.hc = insertelement <4 x float> %i.hb, float %i.gy, i64 1
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 2
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 3
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep229, i64 8
  %i.hg = getelementptr i8, ptr %i.fr, i64 24
  %i.hh = getelementptr i8, ptr %i.fs, i64 40
  %i.hi = getelementptr i8, ptr %i.ft, i64 56
  %i.hj = load float, ptr %i.hf, align 4, !alias.scope !517
  %i.hk = load float, ptr %i.hg, align 4, !alias.scope !517
  %i.hl = load float, ptr %i.hh, align 4, !alias.scope !517
  %i.hm = load float, ptr %i.hi, align 4, !alias.scope !517
  %i.hn = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hk, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 2
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 3
  %i.hr = fsub <4 x float> %i.he, %i.hq           ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %next.gep228, i64 -32
  %wide.vec237 = load <8 x float>, ptr %i.hs, align 4, !alias.scope !519 ; 2 uses
  %reverse239 = shufflevector <8 x float> %wide.vec237, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse241 = shufflevector <8 x float> %wide.vec237, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.ht = fmul <4 x float> %i.hr, %reverse241
  %i.hu = fmul <4 x float> %i.gw, %reverse239
  %i.hv = fadd <4 x float> %i.ht, %i.hu
  %.idx306 = shl i64 %index227, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx306
  %i.hw = fmul <4 x float> %i.hr, %reverse239
  %i.hx = fmul <4 x float> %i.gw, %reverse241
  %i.hy = fsub <4 x float> %i.hw, %i.hx
  %interleaved.vec247 = shufflevector <4 x float> %i.hv, <4 x float> %i.hy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec247, ptr %gep, align 4, !alias.scope !521, !noalias !523
  %index.next248 = add nuw i64 %index227, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next248, %n.vec225
  br i1 %i.hz, label %.lr.ph137.preheader309, label %vector.body226, !llvm.loop !524

.lr.ph137.preheader309:                           ; preds = %vector.body226, %vector.memcheck202, %.lr.ph137.preheader
  %indvars.iv161.ph = phi i64 [ %i.ej, %vector.memcheck202 ], [ %i.ej, %.lr.ph137.preheader ], [ %i.fi, %vector.body226 ]
  %.1112134.ph = phi ptr [ %.0111.lcssa, %vector.memcheck202 ], [ %.0111.lcssa, %.lr.ph137.preheader ], [ %i.fk, %vector.body226 ]
  %.1116133.ph = phi ptr [ %i.eg, %vector.memcheck202 ], [ %i.eg, %.lr.ph137.preheader ], [ %i.fm, %vector.body226 ]
  %.1119132.ph = phi ptr [ %.0118.lcssa, %vector.memcheck202 ], [ %.0118.lcssa, %.lr.ph137.preheader ], [ %i.fo, %vector.body226 ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader309, %.lr.ph137
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph137 ], [ %indvars.iv161.ph, %.lr.ph137.preheader309 ] ; 2 uses
  %.1112134 = phi ptr [ %i.ia, %.lr.ph137 ], [ %.1112134.ph, %.lr.ph137.preheader309 ]
  %.1116133 = phi ptr [ %i.ik, %.lr.ph137 ], [ %.1116133.ph, %.lr.ph137.preheader309 ] ; 3 uses
  %.1119132 = phi ptr [ %i.ib, %.lr.ph137 ], [ %.1119132.ph, %.lr.ph137.preheader309 ] ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.1112134, i64 -8 ; 3 uses
  %i.ib = getelementptr inbounds i8, ptr %.1119132, i64 -16 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.1119132, i64 -8
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = load float, ptr %.1116133, align 4
  %i.if = fsub float %i.id, %i.ie
  %i.ig = load float, ptr %i.ib, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.1116133, i64 8
  %i.ii = load float, ptr %i.ih, align 4
  %i.ij = fsub float %i.ig, %i.ii
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv161
  %4 = load <2 x float>, ptr %i.ia, align 4       ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.ij, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %8 = fmul <2 x float> %6, %7                    ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.if, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %10, %4                  ; 2 uses
  %12 = fadd <2 x float> %8, %11
  %13 = fsub <2 x float> %8, %11
  %14 = shufflevector <2 x float> %12, <2 x float> %13, <2 x i32> <i32 0, i32 3>
  store <2 x float> %14, ptr %3, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.1116133, i64 16 ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 2 ; 3 uses
  %i.il = icmp samesign ult i64 %indvars.iv.next162, %i.ek
  br i1 %i.il, label %.lr.ph137, label %._crit_edge138.loopexit, !llvm.loop !525

._crit_edge138.loopexit:                          ; preds = %.lr.ph137
  %i.im = trunc nuw nsw i64 %indvars.iv.next162 to i32
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %._crit_edge
  %.1116.lcssa = phi ptr [ %i.eg, %._crit_edge ], [ %i.ik, %._crit_edge138.loopexit ] ; 9 uses
  %.1112.lcssa = phi ptr [ %.0111.lcssa, %._crit_edge ], [ %i.ia, %._crit_edge138.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.im, %._crit_edge138.loopexit ] ; 2 uses
  %i.in = icmp slt i32 %.1.lcssa, %i.b
  br i1 %i.in, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %._crit_edge138
  %i.io = getelementptr inbounds [4 x i8], ptr %1, i64 %i.e ; 7 uses
  %i.ip = zext i32 %.1.lcssa to i64               ; 9 uses
  %i.iq = add nuw nsw i64 %i.ip, 2
  %smax272 = call i64 @llvm.smax.i64(i64 %i.iq, i64 %i.h)
  %i.ir = xor i64 %i.ip, -1
  %i.is = add nsw i64 %smax272, %i.ir             ; 2 uses
  %i.it = lshr i64 %i.is, 1
  %i.iu = add nuw i64 %i.it, 1                    ; 2 uses
  %min.iters.check274 = icmp ult i64 %i.is, 24
  br i1 %min.iters.check274, label %.lr.ph147.preheader308, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.lr.ph147.preheader
  %i.iv = shl nsw i64 %i.h, 2                     ; 2 uses
  %i.iw = shl nuw nsw i64 %i.ip, 2                ; 2 uses
  %i.ix = getelementptr i8, ptr %i.g, i64 %i.iv
  %scevgep255.a = getelementptr i8, ptr %i.ix, i64 %i.iw ; 3 uses
  %i.iy = add nuw nsw i64 %i.ip, 2
  %smax = call i64 @llvm.smax.i64(i64 %i.iy, i64 %i.h)
  %i.iz = xor i64 %i.ip, -1
  %i.ja = add nsw i64 %smax, %i.iz
  %i.jb = lshr i64 %i.ja, 1                       ; 2 uses
  %i.jc = shl i64 %i.jb, 3                        ; 2 uses
  %i.jd = getelementptr i8, ptr %i.g, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.iv
  %i.jf = getelementptr i8, ptr %i.je, i64 %i.iw
  %scevgep256 = getelementptr i8, ptr %i.jf, i64 8 ; 3 uses
  %i.jg = shl i64 %i.jb, 4                        ; 2 uses
  %i.jh = getelementptr i8, ptr %.1116.lcssa, i64 %i.jg
  %scevgep257 = getelementptr i8, ptr %i.jh, i64 12
  %i.ji = shl nsw i64 %i.e, 2                     ; 2 uses
  %i.jj = add nsw i64 %i.ji, -16
  %i.jk = sub i64 %i.jj, %i.jg
  %scevgep258 = getelementptr i8, ptr %1, i64 %i.jk
  %i.jl = getelementptr i8, ptr %1, i64 %i.ji
  %scevgep259 = getelementptr i8, ptr %i.jl, i64 -4
  %i.jm = sub nuw nsw i64 -8, %i.jc
  %scevgep260 = getelementptr i8, ptr %.1112.lcssa, i64 %i.jm
  %bound0261 = icmp ult ptr %scevgep255.a, %scevgep257
  %bound1262 = icmp ult ptr %.1116.lcssa, %scevgep256
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0264 = icmp ult ptr %scevgep255.a, %scevgep259
  %bound1265 = icmp ult ptr %scevgep258, %scevgep256
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %found.conflict263, %found.conflict266
  %bound0268 = icmp ult ptr %scevgep255.a, %.1112.lcssa
  %bound1269 = icmp ult ptr %scevgep260, %scevgep256
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %.lr.ph147.preheader308, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck254
  %n.mod.vf276 = and i64 %i.iu, 3                 ; 2 uses
  %i.jn = icmp eq i64 %n.mod.vf276, 0
  %i.jo = select i1 %i.jn, i64 4, i64 %n.mod.vf276
  %n.vec277 = sub i64 %i.iu, %i.jo                ; 5 uses
  %i.jp = shl i64 %n.vec277, 1
  %i.jq = add i64 %i.jp, %i.ip
  %i.jr = mul i64 %n.vec277, -8
  %i.js = getelementptr i8, ptr %.1112.lcssa, i64 %i.jr
  %i.jt = shl i64 %n.vec277, 4
  %i.ju = getelementptr i8, ptr %.1116.lcssa, i64 %i.jt
  %i.jv = mul i64 %n.vec277, -16
  %i.jw = getelementptr i8, ptr %i.io, i64 %i.jv
  %invariant.gep317 = getelementptr [4 x i8], ptr %i.i, i64 %i.ip
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph275
  %index279 = phi i64 [ 0, %vector.ph275 ], [ %index.next300, %vector.body278 ] ; 5 uses
  %i.jx = mul i64 %index279, -8
  %next.gep280.a = getelementptr i8, ptr %.1112.lcssa, i64 %i.jx
  %i.jy = shl i64 %index279, 4                    ; 4 uses
  %next.gep281 = getelementptr i8, ptr %.1116.lcssa, i64 %i.jy ; 2 uses
  %i.jz = getelementptr i8, ptr %.1116.lcssa, i64 %i.jy ; 2 uses
  %next.gep282 = getelementptr i8, ptr %i.jz, i64 16
  %i.ka = getelementptr i8, ptr %.1116.lcssa, i64 %i.jy ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.ka, i64 32
  %i.kb = getelementptr i8, ptr %.1116.lcssa, i64 %i.jy ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.kb, i64 48
  %i.kc = mul i64 %index279, -16                  ; 4 uses
  %next.gep285 = getelementptr i8, ptr %i.io, i64 %i.kc ; 2 uses
  %i.kd = getelementptr i8, ptr %i.io, i64 %i.kc  ; 2 uses
  %i.ke = getelementptr i8, ptr %i.io, i64 %i.kc  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.io, i64 %i.kc  ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %next.gep285, i64 -16
  %i.kh = getelementptr i8, ptr %i.kd, i64 -32
  %i.ki = getelementptr i8, ptr %i.ke, i64 -48
  %i.kj = getelementptr i8, ptr %i.kf, i64 -64
  %i.kk = getelementptr inbounds i8, ptr %next.gep285, i64 -8
  %i.kl = getelementptr i8, ptr %i.kd, i64 -24
  %i.km = getelementptr i8, ptr %i.ke, i64 -40
  %i.kn = getelementptr i8, ptr %i.kf, i64 -56
  %i.ko = load float, ptr %i.kk, align 4, !alias.scope !526
  %i.kp = load float, ptr %i.kl, align 4, !alias.scope !526
  %i.kq = load float, ptr %i.km, align 4, !alias.scope !526
  %i.kr = load float, ptr %i.kn, align 4, !alias.scope !526
  %i.ks = insertelement <4 x float> poison, float %i.ko, i64 0
  %i.kt = insertelement <4 x float> %i.ks, float %i.kp, i64 1
  %i.ku = insertelement <4 x float> %i.kt, float %i.kq, i64 2
  %i.kv = insertelement <4 x float> %i.ku, float %i.kr, i64 3
  %i.kw = fneg <4 x float> %i.kv
  %i.kx = load float, ptr %next.gep281, align 4, !alias.scope !529
  %i.ky = load float, ptr %next.gep282, align 4, !alias.scope !529
  %i.kz = load float, ptr %next.gep283, align 4, !alias.scope !529
  %i.la = load float, ptr %next.gep284, align 4, !alias.scope !529
  %i.lb = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.ky, i64 1
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 2
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 3
  %i.lf = fsub <4 x float> %i.kw, %i.le           ; 2 uses
  %i.lg = load float, ptr %i.kg, align 4, !alias.scope !526
  %i.lh = load float, ptr %i.kh, align 4, !alias.scope !526
  %i.li = load float, ptr %i.ki, align 4, !alias.scope !526
  %i.lj = load float, ptr %i.kj, align 4, !alias.scope !526
  %i.lk = insertelement <4 x float> poison, float %i.lg, i64 0
  %i.ll = insertelement <4 x float> %i.lk, float %i.lh, i64 1
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 2
  %i.ln = insertelement <4 x float> %i.lm, float %i.lj, i64 3
  %i.lo = fneg <4 x float> %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %next.gep281, i64 8
  %i.lq = getelementptr i8, ptr %i.jz, i64 24
  %i.lr = getelementptr i8, ptr %i.ka, i64 40
  %i.ls = getelementptr i8, ptr %i.kb, i64 56
  %i.lt = load float, ptr %i.lp, align 4, !alias.scope !529
  %i.lu = load float, ptr %i.lq, align 4, !alias.scope !529
  %i.lv = load float, ptr %i.lr, align 4, !alias.scope !529
  %i.lw = load float, ptr %i.ls, align 4, !alias.scope !529
  %i.lx = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.ly = insertelement <4 x float> %i.lx, float %i.lu, i64 1
  %i.lz = insertelement <4 x float> %i.ly, float %i.lv, i64 2
  %i.ma = insertelement <4 x float> %i.lz, float %i.lw, i64 3
  %i.mb = fsub <4 x float> %i.lo, %i.ma           ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %next.gep280.a, i64 -32 ; 2 uses
  %wide.vec289.a = load <8 x float>, ptr %i.mc, align 4, !alias.scope !531 ; 2 uses
  %reverse291.a = shufflevector <8 x float> %wide.vec289.a, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse293.a = shufflevector <8 x float> %wide.vec289.a, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.md = fmul <4 x float> %i.mb, %reverse293.a
  %i.me = fmul <4 x float> %i.lf, %reverse291.a
  %i.mf = fadd <4 x float> %i.md, %i.me
  %.idx307 = shl i64 %index279, 3
  %gep318 = getelementptr i8, ptr %invariant.gep317, i64 %.idx307
  %wide.vec294 = load <8 x float>, ptr %i.mc, align 4, !alias.scope !531 ; 2 uses
  %reverse296 = shufflevector <8 x float> %wide.vec294, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse298 = shufflevector <8 x float> %wide.vec294, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mg = fmul <4 x float> %i.mb, %reverse296
  %i.mh = fmul <4 x float> %i.lf, %reverse298
  %i.mi = fsub <4 x float> %i.mg, %i.mh
  %interleaved.vec299 = shufflevector <4 x float> %i.mf, <4 x float> %i.mi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec299, ptr %gep318, align 4, !alias.scope !533, !noalias !535
  %index.next300 = add nuw i64 %index279, 4       ; 2 uses
  %i.mj = icmp eq i64 %index.next300, %n.vec277
  br i1 %i.mj, label %.lr.ph147.preheader308, label %vector.body278, !llvm.loop !536

.lr.ph147.preheader308:                           ; preds = %vector.body278, %vector.memcheck254, %.lr.ph147.preheader
  %indvars.iv164.ph = phi i64 [ %i.ip, %vector.memcheck254 ], [ %i.ip, %.lr.ph147.preheader ], [ %i.jq, %vector.body278 ]
  %.2113144.ph = phi ptr [ %.1112.lcssa, %vector.memcheck254 ], [ %.1112.lcssa, %.lr.ph147.preheader ], [ %i.js, %vector.body278 ]
  %.2117143.ph = phi ptr [ %.1116.lcssa, %vector.memcheck254 ], [ %.1116.lcssa, %.lr.ph147.preheader ], [ %i.ju, %vector.body278 ]
  %.2120142.ph = phi ptr [ %i.io, %vector.memcheck254 ], [ %i.io, %.lr.ph147.preheader ], [ %i.jw, %vector.body278 ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader308, %.lr.ph147
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph147 ], [ %indvars.iv164.ph, %.lr.ph147.preheader308 ] ; 2 uses
  %.2113144 = phi ptr [ %i.mk, %.lr.ph147 ], [ %.2113144.ph, %.lr.ph147.preheader308 ] ; 2 uses
  %.2117143 = phi ptr [ %i.nj, %.lr.ph147 ], [ %.2117143.ph, %.lr.ph147.preheader308 ] ; 3 uses
  %.2120142 = phi ptr [ %i.ml, %.lr.ph147 ], [ %.2120142.ph, %.lr.ph147.preheader308 ] ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %.2113144, i64 -8 ; 3 uses
  %i.ml = getelementptr inbounds i8, ptr %.2120142, i64 -16 ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.2120142, i64 -8
  %i.mn = load float, ptr %i.mm, align 4
  %i.mo = fneg float %i.mn
  %i.mp = load float, ptr %.2117143, align 4
  %i.mq = fsub float %i.mo, %i.mp                 ; 2 uses
  %i.mr = load float, ptr %i.ml, align 4
  %i.ms = fneg float %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %.2117143, i64 8
  %i.mu = load float, ptr %i.mt, align 4
  %i.mv = fsub float %i.ms, %i.mu                 ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %.2113144, i64 -4 ; 2 uses
  %i.mx = load float, ptr %i.mw, align 4
  %i.my = fmul float %i.mv, %i.mx
  %i.mz = load float, ptr %i.mk, align 4
  %i.na = fmul float %i.mq, %i.mz
  %i.nb = fadd float %i.my, %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv164 ; 2 uses
end_hunk_0
