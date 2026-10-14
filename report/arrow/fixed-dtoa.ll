Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_(double noundef %0, i32 noundef %1, ptr nofree captures(none) %2, i32 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
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
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre153 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %i.aj = phi i32 [ 0, %bb.f ], [ %.pre153, %._crit_edge.i.loopexit ] ; 3 uses
  %.022.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.ai, %._crit_edge.i.loopexit ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, %.022.lcssa.i        ; 2 uses
  %.02030.i = add nsw i32 %i.ak, -1               ; 2 uses
  %i.al = icmp slt i32 %i.aj, %.02030.i
  br i1 %i.al, label %.lr.ph34.preheader.i, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

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
  br i1 %i.as, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i = add nsw i32 %.pre.i, %.022.lcssa.i
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
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
  %i.bh = urem <2 x i16> %i.bg, splat (i16 10)
  %6 = trunc nuw nsw <2 x i16> %i.bh to <2 x i8>  ; 2 uses
  %i.bi = extractelement <2 x i8> %6, i64 0
  %i.bj = or disjoint i8 %i.bi, 48
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !9
  %i.bk = extractelement <2 x i8> %6, i64 1
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = load i32, ptr %4, align 4, !tbaa !8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !9
  %i.bp = udiv i64 %.094, 10000000
  %i.bq = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.br = add nsw i32 %i.bq, 3
  store i32 %i.br, ptr %4, align 4, !tbaa !8
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr i8, ptr %2, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 9
  %i.bv = urem i64 %i.bp, 10000000
  %i.bw = trunc nuw nsw i64 %i.bv to i32          ; 5 uses
  %7 = udiv i32 %i.bw, 10
  %8 = udiv i32 %i.bw, 100
  %9 = urem i64 %.094, 10000000
  %10 = trunc nuw nsw i64 %9 to i32               ; 6 uses
  %11 = insertelement <4 x i32> poison, i32 %i.bw, i64 0 ; 2 uses
  %12 = insertelement <4 x i32> %11, i32 %7, i64 1
  %13 = insertelement <4 x i32> %12, i32 %8, i64 2
  %14 = insertelement <4 x i32> %13, i32 %10, i64 3
  %15 = urem <4 x i32> %14, splat (i32 10)        ; 4 uses
  %16 = bitcast <4 x i32> %15 to <16 x i8>
  %17 = extractelement <16 x i8> %16, i64 0
  %18 = or disjoint i8 %17, 48
  store i8 %18, ptr %i.bu, align 1, !tbaa !9
  %19 = bitcast <4 x i32> %15 to <16 x i8>
  %20 = extractelement <16 x i8> %19, i64 4
  %21 = or disjoint i8 %20, 48
  %22 = load i32, ptr %4, align 4, !tbaa !8
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, ptr %2, i64 %23
  %25 = getelementptr i8, ptr %24, i64 5
  store i8 %21, ptr %25, align 1, !tbaa !9
  %26 = bitcast <4 x i32> %15 to <16 x i8>
  %i.bx = extractelement <16 x i8> %26, i64 8
  %i.by = or disjoint i8 %i.bx, 48
  %i.bz = load i32, ptr %4, align 4, !tbaa !8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  store i8 %i.by, ptr %i.cc, align 1, !tbaa !9
  %27 = insertelement <4 x i32> %11, i32 %10, i64 1
  %i.cd = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ce = udiv <4 x i32> %i.cd, <i32 1000, i32 1000, i32 10000, i32 10000>
  %i.cf = trunc nuw nsw <4 x i32> %i.ce to <4 x i16>
  %i.cg = urem <4 x i16> %i.cf, splat (i16 10)    ; 4 uses
  %28 = bitcast <4 x i16> %i.cg to <8 x i8>
  %i.ch = extractelement <8 x i8> %28, i64 0
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = load i32, ptr %4, align 4, !tbaa !8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %2, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 3
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !9
  %29 = bitcast <4 x i16> %i.cg to <8 x i8>
  %i.cn = extractelement <8 x i8> %29, i64 4
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = load i32, ptr %4, align 4, !tbaa !8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %2, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 2
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !9
  %i.ct = udiv i32 %i.bw, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.ct to i8
  %i.cu = urem i8 %.lhs.trunc34.i, 10
  %i.cv = or disjoint i8 %i.cu, 48
  %i.cw = load i32, ptr %4, align 4, !tbaa !8
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %2, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !9
  %i.da = udiv i32 %i.bw, 1000000
  %i.db = trunc nuw nsw i32 %i.da to i8
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = load i32, ptr %4, align 4, !tbaa !8
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %2, i64 %i.de
  store i8 %i.dc, ptr %i.df, align 1, !tbaa !9
  %i.dg = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.dh = add nsw i32 %i.dg, 7
  store i32 %i.dh, ptr %4, align 4, !tbaa !8
  %30 = bitcast <4 x i32> %15 to <16 x i8>
  %i.di = extractelement <16 x i8> %30, i64 12
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = sext i32 %i.dg to i64
  %i.dl = getelementptr i8, ptr %2, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 13
  store i8 %i.dj, ptr %i.dm, align 1, !tbaa !9
  %i.dn = load i32, ptr %4, align 4, !tbaa !8
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %2, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 5
  %31 = udiv i32 %10, 10
  %32 = udiv i32 %10, 100
  %33 = insertelement <2 x i32> poison, i32 %31, i64 0
  %34 = insertelement <2 x i32> %33, i32 %32, i64 1
  %35 = urem <2 x i32> %34, splat (i32 10)        ; 2 uses
  %36 = bitcast <2 x i32> %35 to <8 x i8>
  %37 = extractelement <8 x i8> %36, i64 0
  %38 = or disjoint i8 %37, 48
  store i8 %38, ptr %i.dq, align 1, !tbaa !9
  %39 = bitcast <2 x i32> %35 to <8 x i8>
  %i.dr = extractelement <8 x i8> %39, i64 4
  %i.ds = or disjoint i8 %i.dr, 48
  %i.dt = load i32, ptr %4, align 4, !tbaa !8
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %2, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  store i8 %i.ds, ptr %i.dw, align 1, !tbaa !9
  %40 = bitcast <4 x i16> %i.cg to <8 x i8>
  %i.dx = extractelement <8 x i8> %40, i64 2
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = load i32, ptr %4, align 4, !tbaa !8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %2, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 3
  store i8 %i.dy, ptr %i.ec, align 1, !tbaa !9
  %41 = bitcast <4 x i16> %i.cg to <8 x i8>
  %i.ed = extractelement <8 x i8> %41, i64 6
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = load i32, ptr %4, align 4, !tbaa !8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr i8, ptr %2, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 2
  store i8 %i.ee, ptr %i.ei, align 1, !tbaa !9
  %i.ej = udiv i32 %10, 100000
  %.lhs.trunc40.i = trunc nuw nsw i32 %i.ej to i8
  %i.ek = urem i8 %.lhs.trunc40.i, 10
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = load i32, ptr %4, align 4, !tbaa !8
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr i8, ptr %2, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 1
  store i8 %i.el, ptr %i.ep, align 1, !tbaa !9
  %i.eq = udiv i32 %10, 1000000
  %i.er = trunc nuw nsw i32 %i.eq to i8
  %i.es = or disjoint i8 %i.er, 48
  %i.et = load i32, ptr %4, align 4, !tbaa !8
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %2, i64 %i.eu
  store i8 %i.es, ptr %i.ev, align 1, !tbaa !9
  %i.ew = load i32, ptr %4, align 4, !tbaa !8
  %i.ex = add nsw i32 %i.ew, 7                    ; 2 uses
  store i32 %i.ex, ptr %4, align 4, !tbaa !8
  store i32 %i.ex, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ey = icmp sgt i32 %.0.i98, -1
  br i1 %i.ey, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ez = zext nneg i32 %.0.i98 to i64
  %i.fa = shl nuw i64 %.0.i, %i.ez
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.fa, ptr %2, ptr noundef nonnull %4)
  %i.fb = load i32, ptr %4, align 4, !tbaa !8
  store i32 %i.fb, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.fc = icmp samesign ugt i32 %.0.i98, -53
  br i1 %i.fc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fd = sub nsw i32 0, %.0.i98
  %i.fe = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.ff = lshr i64 %.0.i, %i.fe                   ; 5 uses
  %i.fg = shl i64 %i.ff, %i.fe
  %i.fh = sub i64 %.0.i, %i.fg
  %i.fi = icmp samesign ugt i64 %i.ff, 4294967295
  br i1 %i.fi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.ff, ptr %2, ptr noundef nonnull %4)
  %.pre152 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i99 = icmp eq i64 %i.ff, 0
  br i1 %.not27.i99, label %._crit_edge.i104, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.l
  %i.fj = trunc nuw i64 %i.ff to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.fl, %.lr.ph.i100 ], [ %i.fj, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.fs, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.fk = urem i32 %.029.i101, 10
  %i.fl = udiv i32 %.029.i101, 10
  %i.fm = trunc nuw nsw i32 %i.fk to i8
  %i.fn = or disjoint i8 %i.fm, 48
  %i.fo = load i32, ptr %4, align 4, !tbaa !8
  %i.fp = add nsw i32 %i.fo, %.02228.i102
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %2, i64 %i.fq
  store i8 %i.fn, ptr %i.fr, align 1, !tbaa !9
  %i.fs = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.ft = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.fs, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.fu = add nsw i32 %i.ft, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.fu, -1            ; 2 uses
  %i.fv = icmp slt i32 %i.ft, %.02030.i106
  br i1 %i.fv, label %.lr.ph34.preheader.i108, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.fw = sext i32 %.02030.i106 to i64
  %i.fx = sext i32 %i.ft to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.fx, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.fw, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !9
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !9
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.gc = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.gc, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.fu, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117, %bb.k
  %i.gd = phi i32 [ %.pre-phi.i107, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.gd, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.fh, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.ge = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.ge, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !9
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.gf = sub nsw i32 0, %1
  store i32 %i.gf, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !8    ; 5 uses
  %i.gg = icmp sgt i32 %.pr.i, 0
  br i1 %i.gg, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.gh = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.gh, -1 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !9
  %i.gk = icmp eq i8 %i.gj, 48
  br i1 %i.gk, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.gl = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.gl, ptr %4, align 4, !tbaa !8
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !11

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !11

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.gm = phi i32 [ %i.gl, %.lr.ph.i118.lr.ph ], [ %i.gq, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gp = icmp eq i8 %i.go, 48
  br i1 %i.gp, label %.lr.ph, label %.critedge.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.gq = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.gq, ptr %4, align 4, !tbaa !8
  %i.gr = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.gr, label %.lr.ph.i118, label %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !11

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.gs = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.gs, label %.lr.ph30.i.preheader, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.gh, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.gm, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gv = icmp eq i8 %i.gu, 48
  br i1 %i.gv, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %indvars.iv.i119.lcssa161
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !12

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i119.lcssa161, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.gw = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.gw, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.gx = ashr exact i64 %sext.i, 32              ; 2 uses
end_hunk_0
