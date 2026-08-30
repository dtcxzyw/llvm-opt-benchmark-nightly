Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_(double noundef %0, i32 noundef %1, ptr nofree captures(none) %2, i32 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = and i64 %i.a, 4503599627370495           ; 2 uses
  %i.c = and i64 %i.a, 9218868437227405312
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.e = or disjoint i64 %i.b, 4503599627370496
  %.0.i = select i1 %i.d, i64 %i.b, i64 %i.e      ; 7 uses
  %i.f = lshr i64 %i.a, 52
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 2047
  %i.i = add nsw i32 %i.h, -1075
  %.0.i98 = select i1 %i.d, i32 -1074, i32 %i.i   ; 13 uses
  %i.j = icmp slt i32 %.0.i98, 21
  %i.k = icmp slt i32 %1, 21
  %or.cond.not = and i1 %i.k, %i.j                ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.l = icmp sgt i32 %.0.i98, 11
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i32 %.0.i98, 17
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %.0.i98, -17
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 %.0.i, %i.o              ; 2 uses
  %i.q = udiv i64 %i.p, 762939453125
  %i.r = urem i64 %i.p, 762939453125
  %i.s = shl nuw nsw i64 %i.r, 17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = sub nuw nsw i32 17, %.0.i98
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 762939453125, %i.u       ; 2 uses
  %i.w = udiv i64 %.0.i, %i.v
  %i.x = urem i64 %.0.i, %i.v
  %i.y = zext nneg i32 %.0.i98 to i64
  %i.z = shl nuw nsw i64 %i.x, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.094 = phi i64 [ %i.s, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.093.in = phi i64 [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %.not27.i = icmp eq i64 %.093.in, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %.093 = trunc nuw nsw i64 %.093.in to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.029.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %.093, %.lr.ph.i.preheader ] ; 3 uses
  %.02228.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.aa = urem i32 %.029.i, 10
  %i.ab = udiv i32 %.029.i, 10
  %i.ac = trunc nuw nsw i32 %i.aa to i8
  %i.ad = or disjoint i8 %i.ac, 48
  %i.ae = load i32, ptr %4, align 4, !tbaa !8
  %i.af = add nsw i32 %i.ae, %.02228.i
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !9
  %i.ai = add nuw nsw i32 %.02228.i, 1            ; 2 uses
  %.not.i = icmp ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre153 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.aj = phi i32 [ 0, %bb.f ], [ %.pre153, %._crit_edge.i.loopexit ] ; 3 uses
  %.022.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.ai, %._crit_edge.i.loopexit ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, %.022.lcssa.i        ; 2 uses
  %.02030.i = add nsw i32 %i.ak, -1               ; 2 uses
  %i.al = icmp slt i32 %i.aj, %.02030.i
  br i1 %i.al, label %.lr.ph34.preheader.i, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.am = sext i32 %.02030.i to i64
  %i.an = sext i32 %i.aj to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.an, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.am, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !9
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !9
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.as, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !12

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i = add nsw i32 %.pre.i, %.022.lcssa.i
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre-phi.i = phi i32 [ %.pre41.i, %._crit_edge35.loopexit.i ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  store i32 %.pre-phi.i, ptr %4, align 4, !tbaa !8
  %i.at = udiv i64 %.094, 100000000000000
  %.lhs.trunc = trunc nsw i64 %i.at to i16        ; 2 uses
  %i.au = urem i16 %.lhs.trunc, 10
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = sext i32 %.pre-phi.i to i64
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !9
  %i.ba = load i32, ptr %4, align 4, !tbaa !8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %2, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  %i.be = insertelement <2 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.bf = shufflevector <2 x i16> %i.be, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bg = udiv <2 x i16> %i.bf, <i16 10, i16 100>
  %i.bh = urem <2 x i16> %i.bg, splat (i16 10)    ; 2 uses
  %i.bi = bitcast <2 x i16> %i.bh to <4 x i8>
  %i.bj = extractelement <4 x i8> %i.bi, i64 0
  %i.bk = or disjoint i8 %i.bj, 48
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !9
  %i.bl = bitcast <2 x i16> %i.bh to <4 x i8>
  %i.bm = extractelement <4 x i8> %i.bl, i64 2
  %i.bn = or disjoint i8 %i.bm, 48
  %i.bo = load i32, ptr %4, align 4, !tbaa !8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !9
  %i.br = udiv i64 %.094, 10000000
  %i.bs = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.bt = add nsw i32 %i.bs, 3
  store i32 %i.bt, ptr %4, align 4, !tbaa !8
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 9
  %i.bx = urem i64 %.094, 10000000
  %i.by = urem i64 %i.br, 10000000
  %i.bz = trunc nuw nsw i64 %i.bx to i32          ; 5 uses
  %i.ca = trunc nuw nsw i64 %i.by to i32          ; 7 uses
  %i.cb = urem i32 %i.ca, 10
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  %i.cd = or disjoint i8 %i.cc, 48
  store i8 %i.cd, ptr %i.bw, align 1, !tbaa !9
  %i.ce = udiv i32 %i.ca, 10
  %i.cf = urem i32 %i.ce, 10
  %i.cg = trunc nuw nsw i32 %i.cf to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = load i32, ptr %4, align 4, !tbaa !8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 5
  store i8 %i.ch, ptr %i.cl, align 1, !tbaa !9
  %i.cm = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.bz, i64 1
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cp = udiv <4 x i32> %i.co, <i32 100, i32 1, i32 10, i32 100>
  %i.cq = urem <4 x i32> %i.cp, splat (i32 10)
  %i.cr = trunc nuw nsw <4 x i32> %i.cq to <4 x i8> ; 4 uses
  %i.cs = extractelement <4 x i8> %i.cr, i64 0
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = load i32, ptr %4, align 4, !tbaa !8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %2, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  store i8 %i.ct, ptr %i.cx, align 1, !tbaa !9
  %6 = udiv i32 %i.bz, 10000
  %7 = udiv i32 %i.bz, 1000
  %8 = udiv i32 %i.ca, 10000
  %9 = udiv i32 %i.ca, 1000
  %.lhs.trunc38.i = trunc nuw nsw i32 %6 to i16
  %.lhs.trunc36.i = trunc nuw nsw i32 %7 to i16
  %.lhs.trunc32.i = trunc nuw nsw i32 %8 to i16
  %.lhs.trunc30.i = trunc nuw nsw i32 %9 to i16
  %10 = insertelement <4 x i16> poison, i16 %.lhs.trunc30.i, i64 0
  %11 = insertelement <4 x i16> %10, i16 %.lhs.trunc36.i, i64 1
  %12 = insertelement <4 x i16> %11, i16 %.lhs.trunc32.i, i64 2
  %13 = insertelement <4 x i16> %12, i16 %.lhs.trunc38.i, i64 3
  %i.cy = urem <4 x i16> %13, splat (i16 10)
  %i.cz = trunc nuw nsw <4 x i16> %i.cy to <4 x i8> ; 4 uses
  %i.da = extractelement <4 x i8> %i.cz, i64 0
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = load i32, ptr %4, align 4, !tbaa !8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 3
  store i8 %i.db, ptr %i.df, align 1, !tbaa !9
  %i.dg = extractelement <4 x i8> %i.cz, i64 2
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = load i32, ptr %4, align 4, !tbaa !8
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr i8, ptr %2, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !9
  %i.dm = udiv i32 %i.ca, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.dm to i8
  %i.dn = urem i8 %.lhs.trunc34.i, 10
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = load i32, ptr %4, align 4, !tbaa !8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  store i8 %i.do, ptr %i.ds, align 1, !tbaa !9
  %i.dt = udiv i32 %i.ca, 1000000
  %i.du = trunc nuw nsw i32 %i.dt to i8
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = load i32, ptr %4, align 4, !tbaa !8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %2, i64 %i.dx
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !9
  %i.dz = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ea = add nsw i32 %i.dz, 7
  store i32 %i.ea, ptr %4, align 4, !tbaa !8
  %i.eb = extractelement <4 x i8> %i.cr, i64 1
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = sext i32 %i.dz to i64
  %i.ee = getelementptr i8, ptr %2, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 13
  store i8 %i.ec, ptr %i.ef, align 1, !tbaa !9
  %i.eg = extractelement <4 x i8> %i.cr, i64 2
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = load i32, ptr %4, align 4, !tbaa !8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr i8, ptr %2, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 5
  store i8 %i.eh, ptr %i.el, align 1, !tbaa !9
  %i.em = extractelement <4 x i8> %i.cr, i64 3
  %i.en = or disjoint i8 %i.em, 48
  %i.eo = load i32, ptr %4, align 4, !tbaa !8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr i8, ptr %2, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store i8 %i.en, ptr %i.er, align 1, !tbaa !9
  %i.es = extractelement <4 x i8> %i.cz, i64 1
  %i.et = or disjoint i8 %i.es, 48
  %i.eu = load i32, ptr %4, align 4, !tbaa !8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr i8, ptr %2, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 3
  store i8 %i.et, ptr %i.ex, align 1, !tbaa !9
  %i.ey = extractelement <4 x i8> %i.cz, i64 3
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = load i32, ptr %4, align 4, !tbaa !8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %2, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 2
  store i8 %i.ez, ptr %i.fd, align 1, !tbaa !9
  %i.fe = udiv i32 %i.bz, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.fe to i8
  %i.ff = urem i8 %.lhs.trunc40.i, 10
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = load i32, ptr %4, align 4, !tbaa !8
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr i8, ptr %2, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 1
  store i8 %i.fg, ptr %i.fk, align 1, !tbaa !9
  %i.fl = udiv i32 %i.bz, 1000000
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  %i.fn = or disjoint i8 %i.fm, 48
  %i.fo = load i32, ptr %4, align 4, !tbaa !8
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !9
  %i.fr = load i32, ptr %4, align 4, !tbaa !8
  %i.fs = add nsw i32 %i.fr, 7                    ; 2 uses
  store i32 %i.fs, ptr %4, align 4, !tbaa !8
  store i32 %i.fs, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ft = icmp sgt i32 %.0.i98, -1
  br i1 %i.ft, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fu = zext nneg i32 %.0.i98 to i64
  %i.fv = shl nuw i64 %.0.i, %i.fu
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.fv, ptr %2, ptr noundef nonnull %4)
  %i.fw = load i32, ptr %4, align 4, !tbaa !8
  store i32 %i.fw, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.fx = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.fx, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fy = sub nsw i32 0, %.0.i98
  %i.fz = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.ga = lshr i64 %.0.i, %i.fz                   ; 5 uses
  %i.gb = shl i64 %i.ga, %i.fz
  %i.gc = sub i64 %.0.i, %i.gb
  %i.gd = icmp samesign ugt i64 %i.ga, 4294967295
  br i1 %i.gd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN17double_conversionL12FillDigits64EmNS_6VectorIcEEPi(i64 noundef %i.ga, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.ga, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.ge = trunc nuw i64 %i.ga to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.gg, %.lr.ph.i100 ], [ %i.ge, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gn, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.gf = urem i32 %.029.i101, 10
  %i.gg = udiv i32 %.029.i101, 10
  %i.gh = trunc nuw nsw i32 %i.gf to i8
  %i.gi = or disjoint i8 %i.gh, 48
  %i.gj = load i32, ptr %4, align 4, !tbaa !8
  %i.gk = add nsw i32 %i.gj, %.02228.i102
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %2, i64 %i.gl
  store i8 %i.gi, ptr %i.gm, align 1, !tbaa !9
  %i.gn = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !10

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.go = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gn, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gp = add nsw i32 %i.go, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gp, -1            ; 2 uses
  %i.gq = icmp slt i32 %i.go, %.02030.i106
  br i1 %i.gq, label %.lr.ph34.preheader.i108, label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.gr = sext i32 %.02030.i106 to i64
  %i.gs = sext i32 %i.go to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.gs, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.gr, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  store i8 %i.gw, ptr %i.gt, align 1, !tbaa !9
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !9
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.gx = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.gx, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !12

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117

_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gp, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117, %bb.k
  %i.gy = phi i32 [ %.pre-phi.i107, %_ZN17double_conversionL12FillDigits32EjNS_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.gy, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN17double_conversionL15FillFractionalsEmiiNS_6VectorIcEEPiS2_(i64 noundef %i.gc, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.gz = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.gz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !9
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.ha = sub nsw i32 0, %1
  store i32 %i.ha, ptr %5, align 4, !tbaa !8
end_hunk_0
