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
  %scevgep696 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = add i64 %i.h, -20
  %i.bi = mul i64 %3, %i.bh
  %i.bj = add i64 %i.bi, %i.k                     ; 2 uses
  %scevgep697 = getelementptr i8, ptr %2, i64 %i.bj
  %scevgep698 = getelementptr i8, ptr %2, i64 %i.bf
  %i.bk = getelementptr i8, ptr %2, i64 %i.bj
  %scevgep699 = getelementptr i8, ptr %i.bk, i64 -4
  %i.bl = mul i64 %3, 48                          ; 2 uses
  %i.bm = getelementptr i8, ptr %2, i64 %i.bl
  %scevgep700 = getelementptr i8, ptr %i.bm, i64 4
  %i.bn = add i64 %i.h, -16
  %i.bo = mul i64 %3, %i.bn
  %i.bp = add i64 %i.bo, %i.k                     ; 2 uses
  %scevgep701 = getelementptr i8, ptr %2, i64 %i.bp
  %scevgep702 = getelementptr i8, ptr %2, i64 %i.bl
  %i.bq = getelementptr i8, ptr %2, i64 %i.bp
  %scevgep703 = getelementptr i8, ptr %i.bq, i64 -4
  %i.br = mul i64 %3, 52                          ; 2 uses
  %i.bs = getelementptr i8, ptr %2, i64 %i.br
  %scevgep704 = getelementptr i8, ptr %i.bs, i64 4
  %i.bt = add i64 %i.h, -12
  %i.bu = mul i64 %3, %i.bt
  %i.bv = add i64 %i.bu, %i.k                     ; 2 uses
  %scevgep705 = getelementptr i8, ptr %2, i64 %i.bv
  %scevgep706 = getelementptr i8, ptr %2, i64 %i.br
  %i.bw = getelementptr i8, ptr %2, i64 %i.bv
  %scevgep707 = getelementptr i8, ptr %i.bw, i64 -4
  %i.bx = mul i64 %3, 56                          ; 2 uses
  %i.by = getelementptr i8, ptr %2, i64 %i.bx
  %scevgep708 = getelementptr i8, ptr %i.by, i64 4
  %i.bz = add i64 %i.h, -8
  %i.ca = mul i64 %3, %i.bz
  %i.cb = add i64 %i.ca, %i.k                     ; 2 uses
  %scevgep709 = getelementptr i8, ptr %2, i64 %i.cb
  %scevgep710 = getelementptr i8, ptr %2, i64 %i.bx
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb
  %scevgep711 = getelementptr i8, ptr %i.cc, i64 -4
  %i.cd = mul i64 %3, 60                          ; 2 uses
  %i.ce = getelementptr i8, ptr %2, i64 %i.cd
  %scevgep712 = getelementptr i8, ptr %i.ce, i64 4
  %i.cf = add i64 %i.h, -4
  %i.cg = mul i64 %3, %i.cf
  %i.ch = add i64 %i.cg, %i.k                     ; 2 uses
  %scevgep713 = getelementptr i8, ptr %2, i64 %i.ch
  %scevgep714 = getelementptr i8, ptr %2, i64 %i.cd
  %i.ci = getelementptr i8, ptr %2, i64 %i.ch
  %scevgep715 = getelementptr i8, ptr %i.ci, i64 -4
  %5 = insertelement <16 x ptr> poison, ptr %scevgep672, i64 0
  %i.cj = insertelement <16 x ptr> %5, ptr %scevgep670, i64 1
  %i.ck = insertelement <16 x ptr> %i.cj, ptr %scevgep674, i64 2
  %i.cl = insertelement <16 x ptr> %i.ck, ptr %scevgep676, i64 3
  %i.cm = insertelement <16 x ptr> %i.cl, ptr %scevgep678, i64 4
  %i.cn = insertelement <16 x ptr> %i.cm, ptr %scevgep680, i64 5
  %i.co = insertelement <16 x ptr> %i.cn, ptr %scevgep682, i64 6
  %i.cp = insertelement <16 x ptr> %i.co, ptr %scevgep684, i64 7
  %i.cq = insertelement <16 x ptr> %i.cp, ptr %scevgep686, i64 8
  %i.cr = insertelement <16 x ptr> %i.cq, ptr %scevgep688, i64 9
  %i.cs = insertelement <16 x ptr> %i.cr, ptr %scevgep690, i64 10
  %i.ct = insertelement <16 x ptr> %i.cs, ptr %scevgep692, i64 11
  %i.cu = insertelement <16 x ptr> %i.ct, ptr %scevgep694, i64 12
  %i.cv = insertelement <16 x ptr> %i.cu, ptr %scevgep695, i64 13
  %i.cw = insertelement <16 x ptr> %i.cv, ptr %scevgep697, i64 14
  %i.cx = insertelement <16 x ptr> %i.cw, ptr %scevgep699, i64 15
  %i.cy = insertelement <16 x ptr> poison, ptr %scevgep671, i64 0
  %i.cz = insertelement <16 x ptr> %i.cy, ptr %scevgep669, i64 1
  %i.da = insertelement <16 x ptr> %i.cz, ptr %scevgep673, i64 2
  %i.db = insertelement <16 x ptr> %i.da, ptr %scevgep675, i64 3
  %i.dc = insertelement <16 x ptr> %i.db, ptr %scevgep677, i64 4
  %i.dd = insertelement <16 x ptr> %i.dc, ptr %scevgep679, i64 5
  %i.de = insertelement <16 x ptr> %i.dd, ptr %scevgep681, i64 6
  %i.df = insertelement <16 x ptr> %i.de, ptr %scevgep683, i64 7
  %i.dg = insertelement <16 x ptr> %i.df, ptr %scevgep685, i64 8
  %i.dh = insertelement <16 x ptr> %i.dg, ptr %scevgep687, i64 9
  %i.di = insertelement <16 x ptr> %i.dh, ptr %scevgep689, i64 10
  %i.dj = insertelement <16 x ptr> %i.di, ptr %scevgep691, i64 11
  %i.dk = insertelement <16 x ptr> %i.dj, ptr %scevgep693, i64 12
  %i.dl = insertelement <16 x ptr> %i.dk, ptr %2, i64 13
  %6 = insertelement <16 x ptr> %i.dl, ptr %scevgep696, i64 14
  %7 = insertelement <16 x ptr> %6, ptr %scevgep698, i64 15
  %i.dm = insertelement <8 x ptr> poison, ptr %scevgep701, i64 0
  %i.dn = insertelement <8 x ptr> %i.dm, ptr %scevgep703, i64 1
  %i.do = insertelement <8 x ptr> %i.dn, ptr %scevgep705, i64 2
  %i.dp = insertelement <8 x ptr> %i.do, ptr %scevgep707, i64 3
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %scevgep709, i64 4
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep711, i64 5
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %scevgep713, i64 6
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %scevgep715, i64 7
  %i.du = insertelement <8 x ptr> poison, ptr %scevgep700, i64 0
  %i.dv = insertelement <8 x ptr> %i.du, ptr %scevgep702, i64 1
  %i.dw = insertelement <8 x ptr> %i.dv, ptr %scevgep704, i64 2
  %i.dx = insertelement <8 x ptr> %i.dw, ptr %scevgep706, i64 3
  %i.dy = insertelement <8 x ptr> %i.dx, ptr %scevgep708, i64 4
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %scevgep710, i64 5
  %8 = insertelement <8 x ptr> %i.dz, ptr %scevgep712, i64 6
  %9 = insertelement <8 x ptr> %8, ptr %scevgep714, i64 7
  %min.iters.check = icmp ult i64 %i.c, 48
  %stride.check719 = icmp slt i64 %.idx, 0
  %n.vec = and i64 %i.c, 9223372036854775800      ; 4 uses
  %i.ea = and i64 %i.c, 7
  %i.eb = shl i64 %n.vec, 3                       ; 16 uses
  %i.ec = shl i64 %n.vec, 7
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.preheader517, %bb.d
  %.0485 = phi i64 [ %i.lf, %bb.d ], [ %i.a, %.preheader517 ] ; 2 uses
  %.0480 = phi ptr [ %i.es, %bb.d ], [ %2, %.preheader517 ] ; 7 uses
  %.0 = phi ptr [ %.3, %bb.d ], [ %4, %.preheader517 ] ; 8 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %.0480, i64 %3 ; 6 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %3 ; 6 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %3 ; 6 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %3 ; 6 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %3 ; 6 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %3 ; 6 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %3 ; 6 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %3 ; 6 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %3 ; 6 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %3 ; 6 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %3 ; 6 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %3 ; 6 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %3 ; 6 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %3 ; 6 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %3 ; 5 uses
  %i.es = getelementptr inbounds i8, ptr %.0480, i64 %.idx ; 2 uses
  br i1 %i.d, label %.preheader515.preheader, label %.loopexit516

.preheader515.preheader:                          ; preds = %bb.b
  br i1 %min.iters.check, label %.preheader515.preheader1270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader515.preheader
  %scevgep = getelementptr i8, ptr %.0, i64 %i.f  ; 2 uses
  %i.et = insertelement <16 x ptr> poison, ptr %.0, i64 0
  %i.eu = shufflevector <16 x ptr> %i.et, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.ev = icmp ult <16 x ptr> %i.eu, %i.cx
  %i.ew = insertelement <16 x ptr> poison, ptr %scevgep, i64 0
  %i.ex = shufflevector <16 x ptr> %i.ew, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.ey = icmp ult <16 x ptr> %7, %i.ex
  %i.ez = and <16 x i1> %i.ev, %i.ey              ; 2 uses
  %i.fa = insertelement <8 x ptr> poison, ptr %.0, i64 0
  %i.fb = shufflevector <8 x ptr> %i.fa, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.fc = icmp ult <8 x ptr> %i.fb, %i.dt
  %i.fd = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.fe = shufflevector <8 x ptr> %i.fd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ff = icmp ult <8 x ptr> %9, %i.fe
  %i.fg = and <8 x i1> %i.fc, %i.ff
  %i.fh = shufflevector <8 x i1> %i.fg, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = or <16 x i1> %i.ez, %i.fh
  %i.fj = shufflevector <16 x i1> %i.fi, <16 x i1> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fk = bitcast <16 x i1> %i.fj to i16
  %i.fl = icmp ne i16 %i.fk, 0
  %op.rdx = or i1 %i.fl, %stride.check719
  br i1 %op.rdx, label %.preheader515.preheader1270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fm = getelementptr i8, ptr %.0480, i64 %i.eb ; 2 uses
  %i.fn = getelementptr i8, ptr %i.ed, i64 %i.eb  ; 2 uses
  %i.fo = getelementptr i8, ptr %i.ee, i64 %i.eb  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.ef, i64 %i.eb  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.eg, i64 %i.eb  ; 2 uses
  %i.fr = getelementptr i8, ptr %i.eh, i64 %i.eb  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.ei, i64 %i.eb  ; 2 uses
  %i.ft = getelementptr i8, ptr %i.ej, i64 %i.eb  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ek, i64 %i.eb  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.el, i64 %i.eb  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.em, i64 %i.eb  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.en, i64 %i.eb  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.eo, i64 %i.eb  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.ep, i64 %i.eb  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.eq, i64 %i.eb  ; 2 uses
  %i.gb = getelementptr i8, ptr %i.er, i64 %i.eb  ; 2 uses
  %i.gc = getelementptr i8, ptr %.0, i64 %i.ec    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 128, i64 256, i64 384, i64 512, i64 640, i64 768, i64 896> ; 32 uses
  %i.gd = shl i64 %index, 3                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.0480, i64 %i.gd
  %next.gep830 = getelementptr i8, ptr %i.ed, i64 %i.gd
  %next.gep831 = getelementptr i8, ptr %i.ee, i64 %i.gd
  %next.gep832 = getelementptr i8, ptr %i.ef, i64 %i.gd
  %next.gep833 = getelementptr i8, ptr %i.eg, i64 %i.gd
  %next.gep834 = getelementptr i8, ptr %i.eh, i64 %i.gd
  %next.gep835 = getelementptr i8, ptr %i.ei, i64 %i.gd
  %next.gep836 = getelementptr i8, ptr %i.ej, i64 %i.gd
  %next.gep837 = getelementptr i8, ptr %i.ek, i64 %i.gd
  %next.gep838 = getelementptr i8, ptr %i.el, i64 %i.gd
  %next.gep839 = getelementptr i8, ptr %i.em, i64 %i.gd
  %next.gep840 = getelementptr i8, ptr %i.en, i64 %i.gd
  %next.gep841 = getelementptr i8, ptr %i.eo, i64 %i.gd
  %next.gep842 = getelementptr i8, ptr %i.ep, i64 %i.gd
  %next.gep843 = getelementptr i8, ptr %i.eq, i64 %i.gd
  %next.gep844 = getelementptr i8, ptr %i.er, i64 %i.gd
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !70 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec845 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec846 = load <16 x float>, ptr %next.gep830, align 4, !tbaa !70 ; 2 uses
  %strided.vec847 = shufflevector <16 x float> %wide.vec846, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec848 = shufflevector <16 x float> %wide.vec846, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec849 = load <16 x float>, ptr %next.gep831, align 4, !tbaa !70 ; 2 uses
  %strided.vec850 = shufflevector <16 x float> %wide.vec849, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec851 = shufflevector <16 x float> %wide.vec849, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec852 = load <16 x float>, ptr %next.gep832, align 4, !tbaa !70, !alias.scope !71 ; 2 uses
  %strided.vec853 = shufflevector <16 x float> %wide.vec852, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec854 = shufflevector <16 x float> %wide.vec852, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec855 = load <16 x float>, ptr %next.gep833, align 4, !tbaa !70, !alias.scope !72 ; 2 uses
  %strided.vec856 = shufflevector <16 x float> %wide.vec855, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec857 = shufflevector <16 x float> %wide.vec855, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec858 = load <16 x float>, ptr %next.gep834, align 4, !tbaa !70, !alias.scope !73 ; 2 uses
  %strided.vec859 = shufflevector <16 x float> %wide.vec858, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec860 = shufflevector <16 x float> %wide.vec858, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec861 = load <16 x float>, ptr %next.gep835, align 4, !tbaa !70, !alias.scope !74 ; 2 uses
  %strided.vec862 = shufflevector <16 x float> %wide.vec861, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec863 = shufflevector <16 x float> %wide.vec861, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec864 = load <16 x float>, ptr %next.gep836, align 4, !tbaa !70, !alias.scope !75 ; 2 uses
  %strided.vec865 = shufflevector <16 x float> %wide.vec864, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec866 = shufflevector <16 x float> %wide.vec864, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
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
  %wide.gep891 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec850, <8 x ptr> align 4 %wide.gep891, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep892 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec853, <8 x ptr> align 4 %wide.gep892, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep893 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec856, <8 x ptr> align 4 %wide.gep893, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep894 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec859, <8 x ptr> align 4 %wide.gep894, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep895 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec862, <8 x ptr> align 4 %wide.gep895, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep896 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec865, <8 x ptr> align 4 %wide.gep896, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep897 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec868, <8 x ptr> align 4 %wide.gep897, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
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
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec845, <8 x ptr> align 4 %wide.gep905, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep906 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 68
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec848, <8 x ptr> align 4 %wide.gep906, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep907 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 72
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec851, <8 x ptr> align 4 %wide.gep907, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep908 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 76
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec854, <8 x ptr> align 4 %wide.gep908, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep909 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 80
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec857, <8 x ptr> align 4 %wide.gep909, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep910 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 84
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec860, <8 x ptr> align 4 %wide.gep910, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep911 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 88
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec863, <8 x ptr> align 4 %wide.gep911, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep912 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 92
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec866, <8 x ptr> align 4 %wide.gep912, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep913 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 96
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec869, <8 x ptr> align 4 %wide.gep913, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep914 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 100
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec872, <8 x ptr> align 4 %wide.gep914, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep915 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 104
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec875, <8 x ptr> align 4 %wide.gep915, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep916 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 108
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec878, <8 x ptr> align 4 %wide.gep916, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep917 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 112
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec881, <8 x ptr> align 4 %wide.gep917, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep918 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 116
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec884, <8 x ptr> align 4 %wide.gep918, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep919 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 120
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec887, <8 x ptr> align 4 %wide.gep919, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %wide.gep920 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 124
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec890, <8 x ptr> align 4 %wide.gep920, <8 x i1> splat (i1 true)), !tbaa !70, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1024
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit516, label %.preheader515.preheader1270

.preheader515.preheader1270:                      ; preds = %vector.memcheck, %.preheader515.preheader, %middle.block
  %.0486.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.preheader515.preheader ], [ %i.ea, %middle.block ]
  %.0470.ph = phi ptr [ %.0480, %vector.memcheck ], [ %.0480, %.preheader515.preheader ], [ %i.fm, %middle.block ]
  %.0462.ph = phi ptr [ %i.ed, %vector.memcheck ], [ %i.ed, %.preheader515.preheader ], [ %i.fn, %middle.block ]
  %.0456.ph = phi ptr [ %i.ee, %vector.memcheck ], [ %i.ee, %.preheader515.preheader ], [ %i.fo, %middle.block ]
  %.0450.ph = phi ptr [ %i.ef, %vector.memcheck ], [ %i.ef, %.preheader515.preheader ], [ %i.fp, %middle.block ]
  %.0446.ph = phi ptr [ %i.eg, %vector.memcheck ], [ %i.eg, %.preheader515.preheader ], [ %i.fq, %middle.block ]
  %.0442.ph = phi ptr [ %i.eh, %vector.memcheck ], [ %i.eh, %.preheader515.preheader ], [ %i.fr, %middle.block ]
  %.0438.ph = phi ptr [ %i.ei, %vector.memcheck ], [ %i.ei, %.preheader515.preheader ], [ %i.fs, %middle.block ]
  %.0434.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.preheader515.preheader ], [ %i.ft, %middle.block ]
  %.0432.ph = phi ptr [ %i.ek, %vector.memcheck ], [ %i.ek, %.preheader515.preheader ], [ %i.fu, %middle.block ]
  %.0430.ph = phi ptr [ %i.el, %vector.memcheck ], [ %i.el, %.preheader515.preheader ], [ %i.fv, %middle.block ]
  %.0428.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.preheader515.preheader ], [ %i.fw, %middle.block ]
  %.0426.ph = phi ptr [ %i.en, %vector.memcheck ], [ %i.en, %.preheader515.preheader ], [ %i.fx, %middle.block ]
  %.0424.ph = phi ptr [ %i.eo, %vector.memcheck ], [ %i.eo, %.preheader515.preheader ], [ %i.fy, %middle.block ]
  %.0422.ph = phi ptr [ %i.ep, %vector.memcheck ], [ %i.ep, %.preheader515.preheader ], [ %i.fz, %middle.block ]
  %.0420.ph = phi ptr [ %i.eq, %vector.memcheck ], [ %i.eq, %.preheader515.preheader ], [ %i.ga, %middle.block ]
  %.0418.ph = phi ptr [ %i.er, %vector.memcheck ], [ %i.er, %.preheader515.preheader ], [ %i.gb, %middle.block ]
  %.1.ph = phi ptr [ %.0, %vector.memcheck ], [ %.0, %.preheader515.preheader ], [ %i.gc, %middle.block ]
  br label %.preheader515

.preheader515:                                    ; preds = %.preheader515.preheader1270, %.preheader515
  %.0486 = phi i64 [ %i.jx, %.preheader515 ], [ %.0486.ph, %.preheader515.preheader1270 ] ; 2 uses
  %.0470 = phi ptr [ %i.jg, %.preheader515 ], [ %.0470.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0462 = phi ptr [ %i.jh, %.preheader515 ], [ %.0462.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0456 = phi ptr [ %i.ji, %.preheader515 ], [ %.0456.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0450 = phi ptr [ %i.jj, %.preheader515 ], [ %.0450.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0446 = phi ptr [ %i.jk, %.preheader515 ], [ %.0446.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0442 = phi ptr [ %i.jl, %.preheader515 ], [ %.0442.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0438 = phi ptr [ %i.jm, %.preheader515 ], [ %.0438.ph, %.preheader515.preheader1270 ] ; 3 uses
  %.0434 = phi ptr [ %i.jn, %.preheader515 ], [ %.0434.ph, %.preheader515.preheader1270 ] ; 3 uses
end_hunk_0
