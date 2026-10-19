Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_incopy?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @sgemm_incopy(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr nofree noundef writeonly %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 4                           ; 4 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.preheader517, label %.loopexit518

.preheader517:                                    ; preds = %bb.a
  %.idx = shl i64 %3, 6                           ; 2 uses
  %i.c = ashr i64 %0, 1                           ; 9 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = and i64 %0, 1
  %.not = icmp eq i64 %i.e, 0
  %i.f = shl i64 %i.c, 7
  %i.g = mul i64 %3, 40
  %scevgep669 = getelementptr i8, ptr %2, i64 %i.g
  %i.h = shl i64 %i.a, 6                          ; 15 uses
  %i.i = add i64 %i.h, -24
  %i.j = mul i64 %3, %i.i
  %i.k = shl i64 %i.c, 3                          ; 16 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %scevgep670 = getelementptr i8, ptr %i.l, i64 %i.k
  %i.m = mul i64 %3, 36
  %scevgep671 = getelementptr i8, ptr %2, i64 %i.m
  %i.n = add i64 %i.h, -28
  %i.o = mul i64 %3, %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.o
  %scevgep672 = getelementptr i8, ptr %i.p, i64 %i.k
  %i.q = shl i64 %3, 5
  %scevgep673 = getelementptr i8, ptr %2, i64 %i.q
  %i.r = add i64 %i.h, -32
  %i.s = mul i64 %3, %i.r
  %i.t = getelementptr i8, ptr %2, i64 %i.s
  %scevgep674 = getelementptr i8, ptr %i.t, i64 %i.k
  %i.u = mul i64 %3, 28
  %scevgep675 = getelementptr i8, ptr %2, i64 %i.u
  %i.v = add i64 %i.h, -36
  %i.w = mul i64 %3, %i.v
  %i.x = getelementptr i8, ptr %2, i64 %i.w
  %scevgep676 = getelementptr i8, ptr %i.x, i64 %i.k
  %i.y = mul i64 %3, 24
  %scevgep677 = getelementptr i8, ptr %2, i64 %i.y
  %i.z = add i64 %i.h, -40
  %i.aa = mul i64 %3, %i.z
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %scevgep678 = getelementptr i8, ptr %i.ab, i64 %i.k
  %i.ac = mul i64 %3, 20
  %scevgep679 = getelementptr i8, ptr %2, i64 %i.ac
  %i.ad = add i64 %i.h, -44
  %i.ae = mul i64 %3, %i.ad
  %i.af = getelementptr i8, ptr %2, i64 %i.ae
  %scevgep680 = getelementptr i8, ptr %i.af, i64 %i.k
  %i.ag = shl i64 %3, 4
  %scevgep681 = getelementptr i8, ptr %2, i64 %i.ag
  %i.ah = add i64 %i.h, -48
  %i.ai = mul i64 %3, %i.ah
  %i.aj = getelementptr i8, ptr %2, i64 %i.ai
  %scevgep682 = getelementptr i8, ptr %i.aj, i64 %i.k
  %i.ak = mul i64 %3, 12
  %scevgep683 = getelementptr i8, ptr %2, i64 %i.ak
  %i.al = add i64 %i.h, -52
  %i.am = mul i64 %3, %i.al
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %scevgep684 = getelementptr i8, ptr %i.an, i64 %i.k
  %i.ao = shl i64 %3, 3                           ; 2 uses
  %i.ap = getelementptr i8, ptr %2, i64 %i.ao
  %scevgep685 = getelementptr i8, ptr %i.ap, i64 4
  %i.aq = add i64 %i.h, -56
  %i.ar = mul i64 %3, %i.aq
  %i.as = add i64 %i.ar, %i.k                     ; 2 uses
  %scevgep686 = getelementptr i8, ptr %2, i64 %i.as
  %scevgep687 = getelementptr i8, ptr %2, i64 %i.ao
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %scevgep688 = getelementptr i8, ptr %i.at, i64 -4
  %i.au = shl i64 %3, 2                           ; 2 uses
  %i.av = getelementptr i8, ptr %2, i64 %i.au
  %scevgep689 = getelementptr i8, ptr %i.av, i64 4
  %i.aw = add i64 %i.h, -60
  %i.ax = mul i64 %3, %i.aw
  %i.ay = add i64 %i.ax, %i.k                     ; 2 uses
  %scevgep690 = getelementptr i8, ptr %2, i64 %i.ay
  %scevgep691 = getelementptr i8, ptr %2, i64 %i.au
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %scevgep692 = getelementptr i8, ptr %i.az, i64 -4
  %scevgep693 = getelementptr i8, ptr %2, i64 4
  %i.ba = add nuw nsw i64 %i.a, 288230376151711743
  %i.bb = mul i64 %3, %i.ba
  %i.bc = shl i64 %i.bb, 6
  %i.bd = add i64 %i.bc, %i.k                     ; 2 uses
  %scevgep694 = getelementptr i8, ptr %2, i64 %i.bd
  %i.be = getelementptr i8, ptr %2, i64 %i.bd
  %scevgep695 = getelementptr i8, ptr %i.be, i64 -4
  %i.bf = mul i64 %3, 44                          ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.bf
  %i.bh = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.bg, i64 1
  %i.bj = getelementptr i8, <2 x ptr> %i.bi, <2 x i64> <i64 0, i64 4>
  %i.bk = add i64 %i.h, -20
  %i.bl = mul i64 %3, %i.bk
  %i.bm = add i64 %i.bl, %i.k                     ; 2 uses
  %scevgep697 = getelementptr i8, ptr %2, i64 %i.bm
  %scevgep698 = getelementptr i8, ptr %2, i64 %i.bf
  %i.bn = getelementptr i8, ptr %2, i64 %i.bm
  %scevgep699 = getelementptr i8, ptr %i.bn, i64 -4
  %i.bo = mul i64 %3, 48                          ; 2 uses
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo
  %scevgep700 = getelementptr i8, ptr %i.bp, i64 4
  %i.bq = add i64 %i.h, -16
  %i.br = mul i64 %3, %i.bq
  %i.bs = add i64 %i.br, %i.k                     ; 2 uses
  %scevgep701 = getelementptr i8, ptr %2, i64 %i.bs
  %scevgep702 = getelementptr i8, ptr %2, i64 %i.bo
  %i.bt = getelementptr i8, ptr %2, i64 %i.bs
  %scevgep703 = getelementptr i8, ptr %i.bt, i64 -4
  %i.bu = mul i64 %3, 52                          ; 2 uses
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu
  %scevgep704 = getelementptr i8, ptr %i.bv, i64 4
  %i.bw = add i64 %i.h, -12
  %i.bx = mul i64 %3, %i.bw
  %i.by = add i64 %i.bx, %i.k                     ; 2 uses
  %scevgep705 = getelementptr i8, ptr %2, i64 %i.by
  %scevgep706 = getelementptr i8, ptr %2, i64 %i.bu
  %i.bz = getelementptr i8, ptr %2, i64 %i.by
  %scevgep707 = getelementptr i8, ptr %i.bz, i64 -4
  %i.ca = mul i64 %3, 56                          ; 2 uses
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca
  %scevgep708 = getelementptr i8, ptr %i.cb, i64 4
  %i.cc = add i64 %i.h, -8
  %i.cd = mul i64 %3, %i.cc
  %i.ce = add i64 %i.cd, %i.k                     ; 2 uses
  %scevgep709 = getelementptr i8, ptr %2, i64 %i.ce
  %scevgep710 = getelementptr i8, ptr %2, i64 %i.ca
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %scevgep711 = getelementptr i8, ptr %i.cf, i64 -4
  %i.cg = mul i64 %3, 60                          ; 2 uses
  %i.ch = getelementptr i8, ptr %2, i64 %i.cg
  %scevgep712 = getelementptr i8, ptr %i.ch, i64 4
  %i.ci = add i64 %i.h, -4
  %i.cj = mul i64 %3, %i.ci
  %i.ck = add i64 %i.cj, %i.k                     ; 2 uses
  %scevgep713 = getelementptr i8, ptr %2, i64 %i.ck
  %scevgep714 = getelementptr i8, ptr %2, i64 %i.cg
  %i.cl = getelementptr i8, ptr %2, i64 %i.ck
  %scevgep715 = getelementptr i8, ptr %i.cl, i64 -4
  %i.cm = insertelement <16 x ptr> poison, ptr %scevgep672, i64 0
  %i.cn = insertelement <16 x ptr> %i.cm, ptr %scevgep670, i64 1
  %i.co = insertelement <16 x ptr> %i.cn, ptr %scevgep674, i64 2
  %i.cp = insertelement <16 x ptr> %i.co, ptr %scevgep676, i64 3
  %i.cq = insertelement <16 x ptr> %i.cp, ptr %scevgep678, i64 4
  %i.cr = insertelement <16 x ptr> %i.cq, ptr %scevgep680, i64 5
  %i.cs = insertelement <16 x ptr> %i.cr, ptr %scevgep682, i64 6
  %i.ct = insertelement <16 x ptr> %i.cs, ptr %scevgep684, i64 7
  %i.cu = insertelement <16 x ptr> %i.ct, ptr %scevgep686, i64 8
  %i.cv = insertelement <16 x ptr> %i.cu, ptr %scevgep688, i64 9
  %i.cw = insertelement <16 x ptr> %i.cv, ptr %scevgep690, i64 10
  %i.cx = insertelement <16 x ptr> %i.cw, ptr %scevgep692, i64 11
  %i.cy = insertelement <16 x ptr> %i.cx, ptr %scevgep694, i64 12
  %i.cz = insertelement <16 x ptr> %i.cy, ptr %scevgep695, i64 13
  %i.da = insertelement <16 x ptr> %i.cz, ptr %scevgep697, i64 14
  %i.db = insertelement <16 x ptr> %i.da, ptr %scevgep699, i64 15
  %i.dc = insertelement <16 x ptr> poison, ptr %scevgep671, i64 0
  %i.dd = insertelement <16 x ptr> %i.dc, ptr %scevgep669, i64 1
  %i.de = insertelement <16 x ptr> %i.dd, ptr %scevgep673, i64 2
  %i.df = insertelement <16 x ptr> %i.de, ptr %scevgep675, i64 3
  %i.dg = insertelement <16 x ptr> %i.df, ptr %scevgep677, i64 4
  %i.dh = insertelement <16 x ptr> %i.dg, ptr %scevgep679, i64 5
  %i.di = insertelement <16 x ptr> %i.dh, ptr %scevgep681, i64 6
  %i.dj = insertelement <16 x ptr> %i.di, ptr %scevgep683, i64 7
  %i.dk = insertelement <16 x ptr> %i.dj, ptr %scevgep685, i64 8
  %i.dl = insertelement <16 x ptr> %i.dk, ptr %scevgep687, i64 9
  %i.dm = insertelement <16 x ptr> %i.dl, ptr %scevgep689, i64 10
  %i.dn = insertelement <16 x ptr> %i.dm, ptr %scevgep691, i64 11
  %i.do = insertelement <16 x ptr> %i.dn, ptr %scevgep693, i64 12
  %i.dp = insertelement <8 x ptr> poison, ptr %scevgep701, i64 0
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %scevgep703, i64 1
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep705, i64 2
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %scevgep707, i64 3
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %scevgep709, i64 4
  %i.du = insertelement <8 x ptr> %i.dt, ptr %scevgep711, i64 5
  %i.dv = insertelement <8 x ptr> %i.du, ptr %scevgep713, i64 6
  %i.dw = insertelement <8 x ptr> %i.dv, ptr %scevgep715, i64 7
  %i.dx = insertelement <8 x ptr> poison, ptr %scevgep700, i64 0
  %i.dy = insertelement <8 x ptr> %i.dx, ptr %scevgep702, i64 1
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %scevgep704, i64 2
  %i.ea = insertelement <8 x ptr> %i.dz, ptr %scevgep706, i64 3
  %i.eb = insertelement <8 x ptr> %i.ea, ptr %scevgep708, i64 4
  %i.ec = insertelement <8 x ptr> %i.eb, ptr %scevgep710, i64 5
  %i.ed = insertelement <8 x ptr> %i.ec, ptr %scevgep712, i64 6
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %scevgep714, i64 7
  %i.ef = shufflevector <2 x ptr> %i.bj, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <16 x ptr> %i.do, <16 x ptr> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %min.iters.check = icmp ult i64 %i.c, 48
  %stride.check719 = icmp slt i64 %.idx, 0
  %i.eh = insertelement <16 x ptr> %i.eg, ptr %scevgep698, i64 15
  %n.vec = and i64 %i.c, 9223372036854775800      ; 4 uses
  %i.ei = and i64 %i.c, 7
  %i.ej = shl i64 %n.vec, 3                       ; 16 uses
  %i.ek = shl i64 %n.vec, 7
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.preheader517, %bb.d
  %.0485 = phi i64 [ %i.ln, %bb.d ], [ %i.a, %.preheader517 ] ; 2 uses
  %.0480 = phi ptr [ %i.fa, %bb.d ], [ %2, %.preheader517 ] ; 7 uses
  %.0 = phi ptr [ %.3, %bb.d ], [ %4, %.preheader517 ] ; 8 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.0480, i64 %3 ; 6 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %3 ; 6 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %3 ; 6 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %3 ; 6 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %3 ; 6 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %3 ; 6 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %3 ; 6 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %3 ; 6 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %3 ; 6 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %3 ; 6 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %3 ; 6 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %3 ; 6 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %3 ; 6 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %3 ; 6 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %3 ; 5 uses
  %i.fa = getelementptr inbounds i8, ptr %.0480, i64 %.idx ; 2 uses
  br i1 %i.d, label %.preheader515.preheader, label %.loopexit516

.preheader515.preheader:                          ; preds = %bb.b
  br i1 %min.iters.check, label %.preheader515.preheader1270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader515.preheader
  %scevgep = getelementptr i8, ptr %.0, i64 %i.f  ; 2 uses
  %i.fb = insertelement <16 x ptr> poison, ptr %.0, i64 0
  %i.fc = shufflevector <16 x ptr> %i.fb, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.fd = icmp ult <16 x ptr> %i.fc, %i.db
  %i.fe = insertelement <16 x ptr> poison, ptr %scevgep, i64 0
  %i.ff = shufflevector <16 x ptr> %i.fe, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.fg = icmp ult <16 x ptr> %i.eh, %i.ff
  %i.fh = and <16 x i1> %i.fd, %i.fg              ; 2 uses
  %i.fi = insertelement <8 x ptr> poison, ptr %.0, i64 0
  %i.fj = shufflevector <8 x ptr> %i.fi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.fk = icmp ult <8 x ptr> %i.fj, %i.dw
  %i.fl = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.fm = shufflevector <8 x ptr> %i.fl, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.fn = icmp ult <8 x ptr> %i.ee, %i.fm
  %i.fo = and <8 x i1> %i.fk, %i.fn
  %i.fp = shufflevector <8 x i1> %i.fo, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = or <16 x i1> %i.fh, %i.fp
  %i.fr = shufflevector <16 x i1> %i.fq, <16 x i1> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %i.ft = icmp ne i16 %i.fs, 0
  %op.rdx = or i1 %i.ft, %stride.check719
  br i1 %op.rdx, label %.preheader515.preheader1270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fu = getelementptr i8, ptr %.0480, i64 %i.ej ; 2 uses
  %i.fv = getelementptr i8, ptr %i.el, i64 %i.ej  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.em, i64 %i.ej  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.en, i64 %i.ej  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.eo, i64 %i.ej  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.ep, i64 %i.ej  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.eq, i64 %i.ej  ; 2 uses
  %i.gb = getelementptr i8, ptr %i.er, i64 %i.ej  ; 2 uses
  %i.gc = getelementptr i8, ptr %i.es, i64 %i.ej  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.et, i64 %i.ej  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.eu, i64 %i.ej  ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ev, i64 %i.ej  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ew, i64 %i.ej  ; 2 uses
  %i.gh = getelementptr i8, ptr %i.ex, i64 %i.ej  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.ey, i64 %i.ej  ; 2 uses
  %i.gj = getelementptr i8, ptr %i.ez, i64 %i.ej  ; 2 uses
  %i.gk = getelementptr i8, ptr %.0, i64 %i.ek    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 128, i64 256, i64 384, i64 512, i64 640, i64 768, i64 896> ; 32 uses
  %i.gl = shl i64 %index, 3                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.0480, i64 %i.gl
  %next.gep830 = getelementptr i8, ptr %i.el, i64 %i.gl
  %next.gep831 = getelementptr i8, ptr %i.em, i64 %i.gl
  %next.gep832 = getelementptr i8, ptr %i.en, i64 %i.gl
  %next.gep833 = getelementptr i8, ptr %i.eo, i64 %i.gl
  %next.gep834 = getelementptr i8, ptr %i.ep, i64 %i.gl
  %next.gep835 = getelementptr i8, ptr %i.eq, i64 %i.gl
  %next.gep836 = getelementptr i8, ptr %i.er, i64 %i.gl
  %next.gep837 = getelementptr i8, ptr %i.es, i64 %i.gl
  %next.gep838 = getelementptr i8, ptr %i.et, i64 %i.gl
  %next.gep839 = getelementptr i8, ptr %i.eu, i64 %i.gl
  %next.gep840 = getelementptr i8, ptr %i.ev, i64 %i.gl
  %next.gep841 = getelementptr i8, ptr %i.ew, i64 %i.gl
  %next.gep842 = getelementptr i8, ptr %i.ex, i64 %i.gl
  %next.gep843 = getelementptr i8, ptr %i.ey, i64 %i.gl
  %next.gep844 = getelementptr i8, ptr %i.ez, i64 %i.gl
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !70 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec845.a = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec846 = load <16 x float>, ptr %next.gep830, align 4, !tbaa !70 ; 2 uses
  %strided.vec847 = shufflevector <16 x float> %wide.vec846, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec848.a = shufflevector <16 x float> %wide.vec846, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec849 = load <16 x float>, ptr %next.gep831, align 4, !tbaa !70 ; 2 uses
  %strided.vec850 = shufflevector <16 x float> %wide.vec849, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec851.a = shufflevector <16 x float> %wide.vec849, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec852 = load <16 x float>, ptr %next.gep832, align 4, !tbaa !70, !alias.scope !71 ; 2 uses
  %strided.vec853 = shufflevector <16 x float> %wide.vec852, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec854.a = shufflevector <16 x float> %wide.vec852, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec855 = load <16 x float>, ptr %next.gep833, align 4, !tbaa !70, !alias.scope !72 ; 2 uses
  %strided.vec856 = shufflevector <16 x float> %wide.vec855, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec857.a = shufflevector <16 x float> %wide.vec855, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec858 = load <16 x float>, ptr %next.gep834, align 4, !tbaa !70, !alias.scope !73 ; 2 uses
  %strided.vec859 = shufflevector <16 x float> %wide.vec858, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec860.a = shufflevector <16 x float> %wide.vec858, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec861 = load <16 x float>, ptr %next.gep835, align 4, !tbaa !70, !alias.scope !74 ; 2 uses
  %strided.vec862 = shufflevector <16 x float> %wide.vec861, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec863.a = shufflevector <16 x float> %wide.vec861, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec864 = load <16 x float>, ptr %next.gep836, align 4, !tbaa !70, !alias.scope !75 ; 2 uses
  %strided.vec865 = shufflevector <16 x float> %wide.vec864, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec866.a = shufflevector <16 x float> %wide.vec864, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec867 = load <16 x float>, ptr %next.gep837, align 4, !tbaa !70, !alias.scope !76 ; 2 uses
  %strided.vec868 = shufflevector <16 x float> %wide.vec867, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec869 = shufflevector <16 x float> %wide.vec867, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec870 = load <16 x float>, ptr %next.gep838, align 4, !tbaa !70, !alias.scope !77 ; 2 uses
  %strided.vec871 = shufflevector <16 x float> %wide.vec870, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec872 = shufflevector <16 x float> %wide.vec870, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec873 = load <16 x float>, ptr %next.gep839, align 4, !tbaa !70, !alias.scope !78 ; 2 uses
  %strided.vec874 = shufflevector <16 x float> %wide.vec873, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec875 = shufflevector <16 x float> %wide.vec873, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec876 = load <16 x float>, ptr %next.gep840, align 4, !tbaa !70 ; 2 uses
  %strided.vec877 = shufflevector <16 x float> %wide.vec876, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec878 = shufflevector <16 x float> %wide.vec876, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec879 = load <16 x float>, ptr %next.gep841, align 4, !tbaa !70 ; 2 uses
  %strided.vec880 = shufflevector <16 x float> %wide.vec879, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec881 = shufflevector <16 x float> %wide.vec879, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec882 = load <16 x float>, ptr %next.gep842, align 4, !tbaa !70 ; 2 uses
  %strided.vec883 = shufflevector <16 x float> %wide.vec882, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec884 = shufflevector <16 x float> %wide.vec882, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec885 = load <16 x float>, ptr %next.gep843, align 4, !tbaa !70 ; 2 uses
  %strided.vec886 = shufflevector <16 x float> %wide.vec885, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec887 = shufflevector <16 x float> %wide.vec885, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec888 = load <16 x float>, ptr %next.gep844, align 4, !tbaa !70 ; 2 uses
  %strided.vec889 = shufflevector <16 x float> %wide.vec888, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec890 = shufflevector <16 x float> %wide.vec888, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %vector.gep, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec847, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep891.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec850, <8 x ptr> align 4 %wide.gep891.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep892.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec853, <8 x ptr> align 4 %wide.gep892.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep893.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec856, <8 x ptr> align 4 %wide.gep893.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep894.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec859, <8 x ptr> align 4 %wide.gep894.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep895.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec862, <8 x ptr> align 4 %wide.gep895.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep896.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec865, <8 x ptr> align 4 %wide.gep896.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep897.a = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec868, <8 x ptr> align 4 %wide.gep897.a, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep898 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec871, <8 x ptr> align 4 %wide.gep898, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep899 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec874, <8 x ptr> align 4 %wide.gep899, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep900 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec877, <8 x ptr> align 4 %wide.gep900, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep901 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec880, <8 x ptr> align 4 %wide.gep901, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep902 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec883, <8 x ptr> align 4 %wide.gep902, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep903 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec886, <8 x ptr> align 4 %wide.gep903, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep904 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec889, <8 x ptr> align 4 %wide.gep904, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep905 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 64
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec845.a, <8 x ptr> align 4 %wide.gep905, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep906 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 68
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec848.a, <8 x ptr> align 4 %wide.gep906, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep907 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 72
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec851.a, <8 x ptr> align 4 %wide.gep907, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep908 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 76
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec854.a, <8 x ptr> align 4 %wide.gep908, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep909 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 80
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec857.a, <8 x ptr> align 4 %wide.gep909, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep910 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 84
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec860.a, <8 x ptr> align 4 %wide.gep910, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep911 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 88
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec863.a, <8 x ptr> align 4 %wide.gep911, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep912 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 92
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec866.a, <8 x ptr> align 4 %wide.gep912, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep913 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 96
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec869, <8 x ptr> align 4 %wide.gep913, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep914 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 100
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec872, <8 x ptr> align 4 %wide.gep914, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep915 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 104
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec875, <8 x ptr> align 4 %wide.gep915, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
end_hunk_0
