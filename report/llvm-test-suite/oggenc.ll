Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@decode_packed_entry_number:bb.a
  %i.t = load ptr, ptr %i.s, align 8              ; 6 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = lshr i32 %i.v, %.fr
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp sgt i32 %i.i, 8
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = sub nsw i32 8, %.fr
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = or i64 %i.ae, %i.x                      ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.i, 16
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = sub nsw i32 16, %.fr
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = or i64 %i.af, %i.am                     ; 2 uses
  %i.ao = icmp samesign ugt i32 %i.i, 24
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 24, %.fr
  %i.at = shl i32 %i.ar, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = or i64 %i.an, %i.au                     ; 2 uses
  %i.aw = icmp samesign ult i32 %i.i, 33
  %.not33.i = icmp eq i32 %.fr, 0
  %or.cond.i = or i1 %.not33.i, %i.aw
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = sub nsw i32 32, %.fr
  %i.bb = shl i32 %i.az, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = or i64 %i.av, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.bd, %bb.g ], [ %i.x, %bb.c ], [ %i.av, %bb.f ], [ %i.an, %bb.e ], [ %i.af, %bb.d ]
  %i.be = and i64 %.0.i, %i.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %.not = icmp slt i32 %i.bi, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %.fr, %i.bp                 ; 2 uses
  %i.br = sdiv i32 %i.bq, 8
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.t, i64 %i.bs
  store ptr %i.bt, ptr %i.s, align 8
  br label %._crit_edge.sink.split

.thread127:                                       ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = zext nneg i32 %i.b to i64
  %notmask.i63130 = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i63130, -1
  %i.by = add nsw i32 %.fr, %i.b
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bz = lshr i64 %i.bj, 15
  %i.ca = and i64 %i.bz, 32767                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.bj, 32767
  %i.ce = sub nsw i64 %i.cc, %i.cd                ; 2 uses
  %i.cf = zext nneg i32 %i.b to i64
  %notmask.i63 = shl nsw i64 -1, %i.cf
  %i.cg = xor i64 %notmask.i63, -1                ; 2 uses
  %i.ch = add nsw i32 %.fr, %i.b                  ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread127, %bb.j
  %i.ci = phi i32 [ %i.by, %.thread127 ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cj = phi i64 [ %i.bx, %.thread127 ], [ %i.cg, %bb.j ]
  %.154136 = phi i64 [ %i.bv, %.thread127 ], [ %i.ce, %bb.j ] ; 3 uses
  %.157133 = phi i64 [ 0, %.thread127 ], [ %i.ca, %bb.j ] ; 3 uses
  %i.ck = shl nsw i64 %i.j, 3
  %i.cl = sext i32 %i.ci to i64
  %i.cm = add nsw i64 %i.ck, %i.cl
  %i.cn = shl nsw i64 %i.m, 3
  %i.co = icmp sgt i64 %i.cm, %i.cn
  br i1 %i.co, label %oggpack_look.exit69, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cp = phi i32 [ %i.ci, %bb.k ], [ %i.ch, %bb.j ] ; 4 uses
  %i.cq = phi i64 [ %i.cj, %bb.k ], [ %i.cg, %bb.j ]
  %.154134 = phi i64 [ %.154136, %bb.k ], [ %i.ce, %bb.j ]
  %.157131 = phi i64 [ %.157133, %bb.k ], [ %i.ca, %bb.j ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8            ; 5 uses
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = lshr i32 %i.cu, %.fr
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = icmp sgt i32 %i.cp, 8
  br i1 %i.cx, label %bb.m, label %oggpack_look.exit69.thread

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 8, %.fr
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = or i64 %i.dd, %i.cw                     ; 2 uses
  %i.df = icmp samesign ugt i32 %i.cp, 16
  br i1 %i.df, label %bb.n, label %oggpack_look.exit69.thread

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = sub nsw i32 16, %.fr
  %i.dk = shl i32 %i.di, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = or i64 %i.de, %i.dl                     ; 2 uses
  %i.dn = icmp samesign ugt i32 %i.cp, 24
  br i1 %i.dn, label %bb.o, label %oggpack_look.exit69.thread

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i32
  %i.dr = sub nsw i32 24, %.fr
  %i.ds = shl i32 %i.dq, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = or i64 %i.dm, %i.dt                     ; 2 uses
  %i.dv = icmp samesign ult i32 %i.cp, 33
  %.not33.i67 = icmp eq i32 %.fr, 0
  %or.cond.i68 = or i1 %.not33.i67, %i.dv
  br i1 %or.cond.i68, label %oggpack_look.exit69.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  %i.dz = sub nsw i32 32, %.fr
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = or i64 %i.du, %i.eb
  br label %oggpack_look.exit69.thread

oggpack_look.exit69.thread:                       ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i65 = phi i64 [ %i.ec, %bb.p ], [ %i.cw, %bb.l ], [ %i.du, %bb.o ], [ %i.dm, %bb.n ], [ %i.de, %bb.m ]
  %i.ed = and i64 %.0.i65, %i.cq
  br label %bb.y

oggpack_look.exit69:                              ; preds = %bb.k
  %i.ee = icmp sgt i32 %i.b, 1
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %oggpack_look.exit69
  %i.ef = shl i64 %i.j, 3                         ; 4 uses
  %i.eg = shl i64 %i.m, 3                         ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ei = sub nsw i32 8, %.fr                     ; 2 uses
  %i.ej = sub nsw i32 16, %.fr                    ; 2 uses
  %i.ek = sub nsw i32 24, %.fr                    ; 2 uses
  %.not33.i74 = icmp eq i32 %.fr, 0
  %i.el = sub nsw i32 32, %.fr
  %i.em = zext nneg i32 %i.b to i64               ; 8 uses
  br i1 %.not33.i74, label %.lr.ph.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.en = add i64 %i.ef, %i.em
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  %i.ep = tail call i64 @llvm.smin.i64(i64 %i.eg, i64 %i.eo)
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = add nsw i64 %i.em, -2
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.er)
  %i.et = add i64 %i.es, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.et, 112
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.et, -16                     ; 3 uses
  %i.eu = sub i64 %i.em, %n.vec
  %broadcast.splatinsert169 = insertelement <16 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat170 = shufflevector <16 x i64> %broadcast.splatinsert169, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <16 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat172 = shufflevector <16 x i64> %broadcast.splatinsert171, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ev = add nsw <16 x i64> %broadcast.splat172, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  %.scalar = add i64 %i.ef, -1
  %i.ew = insertelement <16 x i64> poison, i64 %.scalar, i64 0
  %i.ex = shufflevector <16 x i64> %i.ew, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.ev, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ey = add <16 x i64> %i.ex, %vec.ind
  %i.ez = icmp sle <16 x i64> %i.ey, %broadcast.splat170
  %.fr173 = freeze <16 x i1> %i.ez
  %i.fa = select i1 %.not.i, <16 x i1> %.fr173, <16 x i1> splat (i1 true) ; 2 uses
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %.not174 = icmp eq i16 %i.fb, 0
  br i1 %.not174, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !3883

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader177

.lr.ph.split.us.preheader177:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv116.ph = phi i64 [ %i.em, %.lr.ph.split.us.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.split.us

vector.early.exit:                                ; preds = %vector.body
  %i.fd = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.fa, i1 false)
  %i.fe = add i64 %index, %i.fd                   ; 2 uses
  %i.ff = sub i64 %i.em, %i.fe
  %.neg = xor i64 %i.fe, -1
  %i.fg = add i64 %.neg, %i.em
  br label %.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader177, %oggpack_look.exit76.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %oggpack_look.exit76.us ], [ %indvars.iv116.ph, %.lr.ph.split.us.preheader177 ] ; 3 uses
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 3 uses
  %i.fh = add nsw i64 %i.ef, %indvars.iv.next117
  %i.fi = icmp sgt i64 %i.fh, %i.eg
  %or.cond = select i1 %.not.i, i1 %i.fi, i1 false
  br i1 %or.cond, label %oggpack_look.exit76.us, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.us, %vector.early.exit
  %indvars.iv116.lcssa = phi i64 [ %i.ff, %vector.early.exit ], [ %indvars.iv116, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv.next117.lcssa = phi i64 [ %i.fg, %vector.early.exit ], [ %indvars.iv.next117, %.lr.ph.split.us ] ; 2 uses
  %notmask.i70.us.le = shl nsw i64 -1, %indvars.iv.next117.lcssa
  %i.fj = xor i64 %notmask.i70.us.le, -1
  %i.fk = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i64                    ; 2 uses
  %i.fn = icmp samesign ugt i64 %indvars.iv116.lcssa, 9
  br i1 %i.fn, label %bb.q, label %._crit_edge.loopexit.thread

bb.q:                                             ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, %i.ei
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = or disjoint i64 %i.fs, %i.fm            ; 2 uses
  %i.fu = icmp samesign ugt i64 %indvars.iv116.lcssa, 17
  br i1 %i.fu, label %bb.r, label %._crit_edge.loopexit.thread

bb.r:                                             ; preds = %bb.q
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, %i.ej
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = or disjoint i64 %i.ft, %i.fz            ; 2 uses
  %i.gb = icmp samesign ugt i64 %indvars.iv116.lcssa, 25
  br i1 %i.gb, label %bb.s, label %._crit_edge.loopexit.thread

bb.s:                                             ; preds = %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i32
  %i.gf = shl nuw i32 %i.ge, %i.ek
  %i.gg = sext i32 %i.gf to i64
  %i.gh = or i64 %i.ga, %i.gg
  br label %._crit_edge.loopexit.thread

._crit_edge.loopexit.thread:                      ; preds = %bb.s, %bb.r, %bb.q, %.loopexit
  %.0.i72.us = phi i64 [ %i.ft, %bb.q ], [ %i.fm, %.loopexit ], [ %i.gh, %bb.s ], [ %i.ga, %bb.r ]
  %i.gi = and i64 %.0.i72.us, %i.fj
  %i.gj = trunc nuw nsw i64 %indvars.iv.next117.lcssa to i32
  br label %bb.y

oggpack_look.exit76.us:                           ; preds = %.lr.ph.split.us
  %i.gk = icmp samesign ugt i64 %indvars.iv116, 2
  br i1 %i.gk, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3884

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph
  %i.gl = sext i32 %.fr to i64
  br label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %oggpack_look.exit76
  %indvars.iv = phi i64 [ %i.em, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %oggpack_look.exit76 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.gm = add nsw i64 %indvars.iv.next, %i.gl     ; 5 uses
  %i.gn = add nsw i64 %i.ef, %i.gm
  %i.go = icmp sgt i64 %i.gn, %i.eg
  br i1 %i.go, label %oggpack_look.exit76, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split
  %notmask.i70.le = shl nsw i64 -1, %indvars.iv.next
  %i.gp = xor i64 %notmask.i70.le, -1
  %i.gq = load ptr, ptr %i.eh, align 8            ; 5 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = zext i8 %i.gr to i32
  %i.gt = lshr i32 %i.gs, %.fr
  %i.gu = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gv = icmp sgt i64 %i.gm, 8
  br i1 %i.gv, label %bb.u, label %._crit_edge.loopexit109.thread

bb.u:                                             ; preds = %bb.t
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl i32 %i.gy, %i.ei
  %i.ha = sext i32 %i.gz to i64
  %i.hb = or i64 %i.ha, %i.gu                     ; 2 uses
  %i.hc = icmp samesign ugt i64 %i.gm, 16
  br i1 %i.hc, label %bb.v, label %._crit_edge.loopexit109.thread

bb.v:                                             ; preds = %bb.u
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = zext i8 %i.he to i32
  %i.hg = shl i32 %i.hf, %i.ej
  %i.hh = sext i32 %i.hg to i64
  %i.hi = or i64 %i.hb, %i.hh                     ; 2 uses
  %i.hj = icmp samesign ugt i64 %i.gm, 24
  br i1 %i.hj, label %bb.w, label %._crit_edge.loopexit109.thread

bb.w:                                             ; preds = %bb.v
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 3
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i32
  %i.hn = shl i32 %i.hm, %i.ek
  %i.ho = sext i32 %i.hn to i64
  %i.hp = or i64 %i.hi, %i.ho                     ; 2 uses
  %i.hq = icmp samesign ult i64 %i.gm, 33
  br i1 %i.hq, label %._crit_edge.loopexit109.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = zext i8 %i.hs to i32
  %i.hu = shl i32 %i.ht, %i.el
  %i.hv = sext i32 %i.hu to i64
  %i.hw = or i64 %i.hp, %i.hv
  br label %._crit_edge.loopexit109.thread

._crit_edge.loopexit109.thread:                   ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i72 = phi i64 [ %i.hw, %bb.x ], [ %i.gu, %bb.t ], [ %i.hp, %bb.w ], [ %i.hi, %bb.v ], [ %i.hb, %bb.u ]
  %i.hx = and i64 %.0.i72, %i.gp
  %i.hy = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %bb.y

oggpack_look.exit76:                              ; preds = %.lr.ph.split.split
  %i.hz = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.hz, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3885

bb.y:                                             ; preds = %oggpack_look.exit69.thread, %._crit_edge.loopexit109.thread, %._crit_edge.loopexit.thread
  %.049.lcssa149 = phi i32 [ %i.b, %oggpack_look.exit69.thread ], [ %i.hy, %._crit_edge.loopexit109.thread ], [ %i.gj, %._crit_edge.loopexit.thread ] ; 2 uses
  %.052.lcssa148 = phi i64 [ %i.ed, %oggpack_look.exit69.thread ], [ %i.hx, %._crit_edge.loopexit109.thread ], [ %i.gi, %._crit_edge.loopexit.thread ]
  %.154135140147 = phi i64 [ %.154134, %oggpack_look.exit69.thread ], [ %.154136, %._crit_edge.loopexit109.thread ], [ %.154136, %._crit_edge.loopexit.thread ] ; 2 uses
  %.157132141146 = phi i64 [ %.157131, %oggpack_look.exit69.thread ], [ %.157133, %._crit_edge.loopexit109.thread ], [ %.157133, %._crit_edge.loopexit.thread ] ; 3 uses
  %i.ia = trunc i64 %.052.lcssa148 to i32
  %rev10.i = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ia)
  %i.ib = sub nsw i64 %.154135140147, %.157132141146 ; 2 uses
  %i.ic = icmp sgt i64 %i.ib, 1
  br i1 %i.ic, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.y
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ie = load ptr, ptr %i.id, align 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph106, %bb.z
  %i.if = phi i64 [ %i.ib, %.lr.ph106 ], [ %i.ip, %bb.z ]
  %.255104 = phi i64 [ %.154135140147, %.lr.ph106 ], [ %i.io, %bb.z ]
  %.258103 = phi i64 [ %.157132141146, %.lr.ph106 ], [ %i.im, %bb.z ] ; 2 uses
  %i.ig = lshr i64 %i.if, 1                       ; 3 uses
  %i.ih = getelementptr [4 x i8], ptr %i.ie, i64 %.258103
end_hunk_0
