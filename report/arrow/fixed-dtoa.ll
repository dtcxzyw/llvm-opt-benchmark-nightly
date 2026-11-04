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
  %i.bx = urem i64 %i.br, 10000000
  %i.by = trunc nuw nsw i64 %i.bx to i32          ; 5 uses
  %i.bz = urem i32 %i.by, 10
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = or disjoint i8 %i.ca, 48
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !9
  %i.cc = udiv i32 %i.by, 10
  %i.cd = urem i32 %i.cc, 10
  %i.ce = trunc nuw nsw i32 %i.cd to i8
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = load i32, ptr %4, align 4, !tbaa !8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %2, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 5
  store i8 %i.cf, ptr %i.cj, align 1, !tbaa !9
  %i.ck = urem i64 %.094, 10000000
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 3 uses
  %i.cm = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cl, i64 1 ; 2 uses
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
  %i.cy = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cz = udiv <4 x i32> %i.cy, <i32 1000, i32 1000, i32 10000, i32 10000>
  %i.da = trunc nuw nsw <4 x i32> %i.cz to <4 x i16>
  %i.db = urem <4 x i16> %i.da, splat (i16 10)
  %i.dc = trunc nuw nsw <4 x i16> %i.db to <4 x i8> ; 4 uses
  %i.dd = extractelement <4 x i8> %i.dc, i64 0
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = load i32, ptr %4, align 4, !tbaa !8
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr %2, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  store i8 %i.de, ptr %i.di, align 1, !tbaa !9
  %i.dj = extractelement <4 x i8> %i.dc, i64 2
  %i.dk = or disjoint i8 %i.dj, 48
  %i.dl = load i32, ptr %4, align 4, !tbaa !8
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %2, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 2
  store i8 %i.dk, ptr %i.do, align 1, !tbaa !9
  %i.dp = udiv i32 %i.by, 100000
  %.lhs.trunc34.i = trunc nuw nsw i32 %i.dp to i8
  %i.dq = urem i8 %.lhs.trunc34.i, 10
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = load i32, ptr %4, align 4, !tbaa !8
  %i.dt = sext i32 %i.ds to i64
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_:bb.a
  %i.gh = trunc nuw i64 %i.gd to i32
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader, %.lr.ph.i100
  %.029.i101 = phi i32 [ %i.gj, %.lr.ph.i100 ], [ %i.gh, %.lr.ph.i100.preheader ] ; 3 uses
  %.02228.i102 = phi i32 [ %i.gq, %.lr.ph.i100 ], [ 0, %.lr.ph.i100.preheader ] ; 2 uses
  %i.gi = urem i32 %.029.i101, 10
  %i.gj = udiv i32 %.029.i101, 10
  %i.gk = trunc nuw nsw i32 %i.gi to i8
  %i.gl = or disjoint i8 %i.gk, 48
  %i.gm = load i32, ptr %4, align 4, !tbaa !8
  %i.gn = add nsw i32 %i.gm, %.02228.i102
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %2, i64 %i.go
  store i8 %i.gl, ptr %i.gp, align 1, !tbaa !9
  %i.gq = add nuw nsw i32 %.02228.i102, 1         ; 2 uses
  %.not.i103 = icmp ult i32 %.029.i101, 10
  br i1 %.not.i103, label %._crit_edge.i104.loopexit, label %.lr.ph.i100, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %.lr.ph.i100
  %.pre = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.l
  %i.gr = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i104.loopexit ] ; 3 uses
  %.022.lcssa.i105 = phi i32 [ 0, %bb.l ], [ %i.gq, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.gs = add nsw i32 %i.gr, %.022.lcssa.i105     ; 2 uses
  %.02030.i106 = add nsw i32 %i.gs, -1            ; 2 uses
  %i.gt = icmp slt i32 %i.gr, %.02030.i106
  br i1 %i.gt, label %.lr.ph34.preheader.i108, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

.lr.ph34.preheader.i108:                          ; preds = %._crit_edge.i104
  %i.gu = sext i32 %.02030.i106 to i64
  %i.gv = sext i32 %i.gr to i64
  br label %.lr.ph34.i109

.lr.ph34.i109:                                    ; preds = %.lr.ph34.i109, %.lr.ph34.preheader.i108
  %indvars.iv36.i110 = phi i64 [ %i.gv, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next37.i112, %.lr.ph34.i109 ] ; 2 uses
  %indvars.iv.i111 = phi i64 [ %i.gu, %.lr.ph34.preheader.i108 ], [ %indvars.iv.next.i113, %.lr.ph34.i109 ] ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv36.i110 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !9
  %i.gy = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.i111 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !9
  store i8 %i.gz, ptr %i.gw, align 1, !tbaa !9
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !9
  %indvars.iv.next37.i112 = add nsw i64 %indvars.iv36.i110, 1 ; 2 uses
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next37.i112, %indvars.iv.next.i113
  br i1 %i.ha, label %.lr.ph34.i109, label %._crit_edge35.loopexit.i114, !llvm.loop !1

._crit_edge35.loopexit.i114:                      ; preds = %.lr.ph34.i109
  %.pre.i115 = load i32, ptr %4, align 4, !tbaa !8
  %.pre41.i116 = add nsw i32 %.pre.i115, %.022.lcssa.i105
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117: ; preds = %._crit_edge.i104, %._crit_edge35.loopexit.i114
  %.pre-phi.i107 = phi i32 [ %.pre41.i116, %._crit_edge35.loopexit.i114 ], [ %i.gs, %._crit_edge.i104 ] ; 2 uses
  store i32 %.pre-phi.i107, ptr %4, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117, %bb.k
  %i.hb = phi i32 [ %.pre-phi.i107, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit117 ], [ %.pre152, %bb.k ]
  store i32 %i.hb, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.gf, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hc = icmp samesign ult i32 %.0.i98, -128
  br i1 %i.hc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1, !tbaa !9
  store i32 0, ptr %4, align 4, !tbaa !8
  %i.hd = sub nsw i32 0, %1
  store i32 %i.hd, ptr %5, align 4, !tbaa !8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4, !tbaa !8
  tail call fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i98, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4, !tbaa !8    ; 5 uses
  %i.he = icmp sgt i32 %.pr.i, 0
  br i1 %i.he, label %.lr.ph.preheader.i, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hf = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i120143 = add nsw i64 %i.hf, -1 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120143
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !9
  %i.hi = icmp eq i8 %i.hh, 48
  br i1 %i.hi, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hj = trunc nuw nsw i64 %indvars.iv.next.i120143 to i32 ; 3 uses
  store i32 %i.hj, ptr %4, align 4, !tbaa !8
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i118.lr.ph, !llvm.loop !11

.lr.ph.i118.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i118, !llvm.loop !11

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.lr.ph, %.lr.ph
  %i.hk = phi i32 [ %i.hj, %.lr.ph.i118.lr.ph ], [ %i.ho, %.lr.ph ]
  %indvars.iv.next.i120145172 = phi i64 [ %indvars.iv.next.i120143, %.lr.ph.i118.lr.ph ], [ %indvars.iv.next.i120, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.next.i120145172, -1 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i120
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9
  %i.hn = icmp eq i8 %i.hm, 48
  br i1 %i.hn, label %.lr.ph, label %.critedge.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i118
  %i.ho = trunc nuw nsw i64 %indvars.iv.next.i120 to i32 ; 3 uses
  store i32 %i.ho, ptr %4, align 4, !tbaa !8
  %i.hp = icmp samesign ugt i64 %indvars.iv.next.i120145172, 1
  br i1 %i.hp, label %.lr.ph.i118, label %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !11

.critedge.i:                                      ; preds = %.lr.ph.i118
  %i.hq = icmp sgt i64 %indvars.iv.next.i120145172, 0
  br i1 %i.hq, label %.lr.ph30.i.preheader, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i119.lcssa161 = phi i64 [ %indvars.iv.next.i120145172, %.critedge.i ], [ %i.hf, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa139160 = phi i32 [ %i.hk, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  %i.ht = icmp eq i8 %i.hs, 48
  br i1 %i.ht, label %bb.r, label %.critedge2.i

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
  %i.hu = icmp sgt i32 %.lcssa139160, %.020.lcssa.i
  br i1 %i.hu, label %.lr.ph35.preheader.i, label %._crit_edge.i122

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %i.hv = ashr exact i64 %sext.i, 32              ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i122:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa139160, %.preheader.i ], [ %i.id, %.lr.ph35.i ]
  %i.hw = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.hw, ptr %4, align 4, !tbaa !8
  %i.hx = load i32, ptr %5, align 4, !tbaa !8
  %i.hy = sub nsw i32 %i.hx, %.020.lcssa.i
  store i32 %i.hy, ptr %5, align 4, !tbaa !8
  %.pre154 = load i32, ptr %4, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %i.hv, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !9
  %i.ib = sub nuw nsw i64 %indvars.iv42.i, %i.hv
  %i.ic = getelementptr inbounds i8, ptr %2, i64 %i.ib
  store i8 %i.ia, ptr %i.ic, align 1, !tbaa !9
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.id = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next43.i, %i.ie
  br i1 %i.if, label %.lr.ph35.i, label %._crit_edge.i122, !llvm.loop !13

.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, !llvm.loop !11

_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, %bb.q, %.critedge.i, %.critedge2.i, %._crit_edge.i122
  %i.ig = phi i32 [ %.pre154, %._crit_edge.i122 ], [ %.pr.i, %bb.q ], [ 0, %.critedge.i ], [ %.lcssa139160, %.critedge2.i ], [ %i.ho, %.lr.ph._ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge ], [ %i.hj, %.lr.ph.preheader ]
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds i8, ptr %2, i64 %i.ih
  store i8 0, ptr %i.ii, align 1, !tbaa !9
  %i.ij = load i32, ptr %4, align 4, !tbaa !8
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit
  %i.il = sub nsw i32 0, %1
  store i32 %i.il, ptr %5, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, %bb.s, %bb.a
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %0, ptr nofree captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = urem i64 %0, 10000000                    ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32            ; 8 uses
  %i.c = udiv i64 %0, 10000000
  %i.d = urem i64 %i.c, 10000000                  ; 2 uses
  %i.e = trunc nuw nsw i64 %i.d to i32            ; 8 uses
  %.not = icmp ult i64 %0, 100000000000000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i64 %0, 100000000000000
  %i.g = trunc nuw nsw i64 %i.f to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.029.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %.02228.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.h = urem i32 %.029.i, 10
  %i.i = udiv i32 %.029.i, 10
  %i.j = trunc nuw nsw i32 %i.h to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load i32, ptr %2, align 4, !tbaa !8
  %i.m = add nsw i32 %i.l, %.02228.i
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1, !tbaa !9
  %i.p = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %.not.i = icmp samesign ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = load i32, ptr %2, align 4, !tbaa !8      ; 4 uses
  %.02030.i = add i32 %i.q, %.02228.i             ; 2 uses
  %i.r = icmp slt i32 %i.q, %.02030.i
  br i1 %i.r, label %.lr.ph34.preheader.i, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.s = sext i32 %.02030.i to i64
  %i.t = sext i32 %i.q to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.t, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.s, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  store i8 %i.x, ptr %i.u, align 1, !tbaa !9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !9
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !1

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.q, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %i.p      ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4, !tbaa !8
  %i.z = urem i32 %i.e, 10
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = sext i32 %.pre-phi.i to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 6
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !9
  %i.af = udiv i32 %i.e, 10
  %i.ag = load i32, ptr %2, align 4, !tbaa !8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 5
  %i.ak = udiv i32 %i.e, 100
  %i.al = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.am = insertelement <2 x i32> %i.al, i32 %i.ak, i64 1
  %i.an = urem <2 x i32> %i.am, splat (i32 10)    ; 2 uses
  %i.ao = bitcast <2 x i32> %i.an to <8 x i8>
  %i.ap = extractelement <8 x i8> %i.ao, i64 0
  %i.aq = or disjoint i8 %i.ap, 48
  store i8 %i.aq, ptr %i.aj, align 1, !tbaa !9
  %i.ar = bitcast <2 x i32> %i.an to <8 x i8>
  %i.as = extractelement <8 x i8> %i.ar, i64 4
  %i.at = or disjoint i8 %i.as, 48
  %i.au = load i32, ptr %2, align 4, !tbaa !8
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  store i8 %i.at, ptr %i.ax, align 1, !tbaa !9
  %i.ay = udiv i32 %i.e, 1000
  %.lhs.trunc103 = trunc nuw nsw i32 %i.ay to i16
  %i.az = urem i16 %.lhs.trunc103, 10
  %i.ba = trunc nuw nsw i16 %i.az to i8
  %i.bb = or disjoint i8 %i.ba, 48
  %i.bc = load i32, ptr %2, align 4, !tbaa !8
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 3
  store i8 %i.bb, ptr %i.bf, align 1, !tbaa !9
  %i.bg = udiv i32 %i.e, 10000
  %.lhs.trunc105 = trunc nuw nsw i32 %i.bg to i16
  %i.bh = urem i16 %.lhs.trunc105, 10
  %i.bi = trunc nuw nsw i16 %i.bh to i8
  %i.bj = or disjoint i8 %i.bi, 48
  %i.bk = load i32, ptr %2, align 4, !tbaa !8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %1, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 2
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !9
  %i.bo = udiv i32 %i.e, 100000
  %.lhs.trunc107 = trunc nuw i32 %i.bo to i8
  %i.bp = urem i8 %.lhs.trunc107, 10
  %i.bq = or disjoint i8 %i.bp, 48
  %i.br = load i32, ptr %2, align 4, !tbaa !8
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !9
  %i.bv = udiv i32 %i.e, 1000000
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.bw, 48
  %i.by = load i32, ptr %2, align 4, !tbaa !8
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz
  store i8 %i.bx, ptr %i.ca, align 1, !tbaa !9
  %i.cb = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.cc = add nsw i32 %i.cb, 7
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq i64 %i.d, 0
  br i1 %.not44, label %bb.d, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.c, %.lr.ph.i50
  %.029.i51 = phi i32 [ %i.ce, %.lr.ph.i50 ], [ %i.e, %bb.c ] ; 3 uses
  %.02228.i52 = phi i32 [ %i.cl, %.lr.ph.i50 ], [ 0, %bb.c ] ; 3 uses
  %i.cd = urem i32 %.029.i51, 10
  %i.ce = udiv i32 %.029.i51, 10
  %i.cf = trunc nuw nsw i32 %i.cd to i8
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = load i32, ptr %2, align 4, !tbaa !8
  %i.ci = add nsw i32 %i.ch, %.02228.i52
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %1, i64 %i.cj
  store i8 %i.cg, ptr %i.ck, align 1, !tbaa !9
  %i.cl = add nuw nsw i32 %.02228.i52, 1          ; 2 uses
  %.not.i53 = icmp samesign ult i32 %.029.i51, 10
  br i1 %.not.i53, label %._crit_edge.i54, label %.lr.ph.i50, !llvm.loop !0

._crit_edge.i54:                                  ; preds = %.lr.ph.i50
  %i.cm = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.02030.i56 = add i32 %i.cm, %.02228.i52        ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %.02030.i56
  br i1 %i.cn, label %.lr.ph34.preheader.i58, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67

.lr.ph34.preheader.i58:                           ; preds = %._crit_edge.i54
  %i.co = sext i32 %.02030.i56 to i64
  %i.cp = sext i32 %i.cm to i64
  br label %.lr.ph34.i59

.lr.ph34.i59:                                     ; preds = %.lr.ph34.i59, %.lr.ph34.preheader.i58
  %indvars.iv36.i60 = phi i64 [ %i.cp, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next37.i62, %.lr.ph34.i59 ] ; 2 uses
  %indvars.iv.i61 = phi i64 [ %i.co, %.lr.ph34.preheader.i58 ], [ %indvars.iv.next.i63, %.lr.ph34.i59 ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i60 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i61 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  store i8 %i.ct, ptr %i.cq, align 1, !tbaa !9
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !9
  %indvars.iv.next37.i62 = add nsw i64 %indvars.iv36.i60, 1 ; 2 uses
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cu = icmp slt i64 %indvars.iv.next37.i62, %indvars.iv.next.i63
  br i1 %i.cu, label %.lr.ph34.i59, label %._crit_edge35.loopexit.i64, !llvm.loop !1

._crit_edge35.loopexit.i64:                       ; preds = %.lr.ph34.i59
  %.pre.i65 = load i32, ptr %2, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67: ; preds = %._crit_edge.i54, %._crit_edge35.loopexit.i64
  %.pre.i65.pn = phi i32 [ %.pre.i65, %._crit_edge35.loopexit.i64 ], [ %i.cm, %._crit_edge.i54 ]
  %.pre-phi.i57 = add nsw i32 %.pre.i65.pn, %i.cl ; 2 uses
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split

bb.d:                                             ; preds = %bb.c
  %.not27.i72 = icmp eq i64 %i.a, 0
  br i1 %.not27.i72, label %._crit_edge.i77, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.d, %.lr.ph.i73
  %.029.i74 = phi i32 [ %i.cw, %.lr.ph.i73 ], [ %i.b, %bb.d ] ; 3 uses
  %.02228.i75 = phi i32 [ %i.dd, %.lr.ph.i73 ], [ 0, %bb.d ] ; 2 uses
  %i.cv = urem i32 %.029.i74, 10
  %i.cw = udiv i32 %.029.i74, 10
  %i.cx = trunc nuw nsw i32 %i.cv to i8
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = load i32, ptr %2, align 4, !tbaa !8
  %i.da = add nsw i32 %i.cz, %.02228.i75
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  store i8 %i.cy, ptr %i.dc, align 1, !tbaa !9
  %i.dd = add nuw nsw i32 %.02228.i75, 1          ; 2 uses
  %.not.i76 = icmp samesign ult i32 %.029.i74, 10
  br i1 %.not.i76, label %._crit_edge.i77, label %.lr.ph.i73, !llvm.loop !0

._crit_edge.i77:                                  ; preds = %.lr.ph.i73, %bb.d
  %.022.lcssa.i78 = phi i32 [ 0, %bb.d ], [ %i.dd, %.lr.ph.i73 ] ; 2 uses
  %i.de = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %i.df = add nsw i32 %i.de, %.022.lcssa.i78      ; 2 uses
  %.02030.i79 = add nsw i32 %i.df, -1             ; 2 uses
  %i.dg = icmp slt i32 %i.de, %.02030.i79
  br i1 %i.dg, label %.lr.ph34.preheader.i81, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90

.lr.ph34.preheader.i81:                           ; preds = %._crit_edge.i77
  %i.dh = sext i32 %.02030.i79 to i64
  %i.di = sext i32 %i.de to i64
  br label %.lr.ph34.i82

.lr.ph34.i82:                                     ; preds = %.lr.ph34.i82, %.lr.ph34.preheader.i81
  %indvars.iv36.i83 = phi i64 [ %i.di, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next37.i85, %.lr.ph34.i82 ] ; 2 uses
  %indvars.iv.i84 = phi i64 [ %i.dh, %.lr.ph34.preheader.i81 ], [ %indvars.iv.next.i86, %.lr.ph34.i82 ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv36.i83 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.dl = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i84 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !9
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !9
  %indvars.iv.next37.i85 = add nsw i64 %indvars.iv36.i83, 1 ; 2 uses
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i84, -1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next37.i85, %indvars.iv.next.i86
  br i1 %i.dn, label %.lr.ph34.i82, label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split, !llvm.loop !1

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.sink171 = phi i32 [ %i.cc, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  %.sink168 = phi i32 [ %i.cb, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ %.pre-phi.i57, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  %.sink166 = phi i64 [ 13, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit ], [ 6, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit67 ]
  store i32 %.sink171, ptr %2, align 4, !tbaa !8
  %i.do = urem i32 %i.b, 10
  %i.dp = trunc nuw nsw i32 %i.do to i8
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = sext i32 %.sink168 to i64
  %i.ds = getelementptr i8, ptr %1, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 %.sink166
  store i8 %i.dq, ptr %i.dt, align 1, !tbaa !9
  %i.du = udiv i32 %i.b, 10
  %i.dv = load i32, ptr %2, align 4, !tbaa !8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %1, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 5
  %i.dz = udiv i32 %i.b, 100
  %i.ea = insertelement <2 x i32> poison, i32 %i.du, i64 0
  %i.eb = insertelement <2 x i32> %i.ea, i32 %i.dz, i64 1
  %i.ec = urem <2 x i32> %i.eb, splat (i32 10)    ; 2 uses
  %i.ed = bitcast <2 x i32> %i.ec to <8 x i8>
  %i.ee = extractelement <8 x i8> %i.ed, i64 0
  %i.ef = or disjoint i8 %i.ee, 48
  store i8 %i.ef, ptr %i.dy, align 1, !tbaa !9
  %i.eg = bitcast <2 x i32> %i.ec to <8 x i8>
  %i.eh = extractelement <8 x i8> %i.eg, i64 4
  %i.ei = or disjoint i8 %i.eh, 48
  %i.ej = load i32, ptr %2, align 4, !tbaa !8
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %1, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 4
  store i8 %i.ei, ptr %i.em, align 1, !tbaa !9
  %i.en = udiv i32 %i.b, 1000
  %.lhs.trunc109 = trunc nuw nsw i32 %i.en to i16
  %i.eo = urem i16 %.lhs.trunc109, 10
  %i.ep = trunc nuw nsw i16 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, 48
  %i.er = load i32, ptr %2, align 4, !tbaa !8
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr i8, ptr %1, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 3
  store i8 %i.eq, ptr %i.eu, align 1, !tbaa !9
  %i.ev = udiv i32 %i.b, 10000
  %.lhs.trunc111 = trunc nuw nsw i32 %i.ev to i16
  %i.ew = urem i16 %.lhs.trunc111, 10
  %i.ex = trunc nuw nsw i16 %i.ew to i8
  %i.ey = or disjoint i8 %i.ex, 48
  %i.ez = load i32, ptr %2, align 4, !tbaa !8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %1, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 2
  store i8 %i.ey, ptr %i.fc, align 1, !tbaa !9
  %i.fd = udiv i32 %i.b, 100000
  %.lhs.trunc113 = trunc nuw i32 %i.fd to i8
  %i.fe = urem i8 %.lhs.trunc113, 10
  %i.ff = or disjoint i8 %i.fe, 48
  %i.fg = load i32, ptr %2, align 4, !tbaa !8
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr i8, ptr %1, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 1
  store i8 %i.ff, ptr %i.fj, align 1, !tbaa !9
  %i.fk = udiv i32 %i.b, 1000000
  %i.fl = trunc nuw nsw i32 %i.fk to i8
  %i.fm = or disjoint i8 %i.fl, 48
  %i.fn = load i32, ptr %2, align 4, !tbaa !8
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %1, i64 %i.fo
  store i8 %i.fm, ptr %i.fp, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split: ; preds = %.lr.ph34.i82, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split
  %.022.lcssa.i78.sink = phi i32 [ 7, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split.sink.split ], [ %.022.lcssa.i78, %.lr.ph34.i82 ]
  %.pre.i88 = load i32, ptr %2, align 4, !tbaa !8
  %.pre41.i89 = add nsw i32 %.pre.i88, %.022.lcssa.i78.sink
  br label %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90

_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90: ; preds = %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split, %._crit_edge.i77
  %.sink = phi i32 [ %i.df, %._crit_edge.i77 ], [ %.pre41.i89, %_ZN14arrow_vendored17double_conversionL12FillDigits32EjNS0_6VectorIcEEPi.exit90.sink.split ]
  store i32 %.sink, ptr %2, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %0, i32 noundef range(i32 -128, 0) %1, i32 noundef range(i32 -2147483648, 21) %2, ptr nofree captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %1                        ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 65
  br i1 %i.b, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader, %bb.b
  %.086 = phi i64 [ %i.r, %bb.b ], [ %0, %.preheader ] ; 2 uses
  %.03685 = phi i32 [ %i.e, %bb.b ], [ %i.a, %.preheader ]
  %.03784 = phi i32 [ %i.s, %bb.b ], [ 0, %.preheader ]
  %cond = icmp eq i64 %.086, 0
  br i1 %cond, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph87
  %i.d = mul i64 %.086, 5                         ; 2 uses
  %i.e = add nsw i32 %.03685, -1                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.d, %i.f                      ; 2 uses
  %i.h = trunc i64 %i.g to i8
  %i.i = add i8 %i.h, 48
  %i.j = load i32, ptr %4, align 4, !tbaa !8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !9
  %i.m = load i32, ptr %4, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %4, align 4, !tbaa !8
  %i.o = shl i64 %i.g, 32
  %i.p = ashr exact i64 %i.o, 32
  %i.q = shl i64 %i.p, %i.f
  %i.r = sub i64 %i.d, %i.q                       ; 2 uses
  %i.s = add nuw nsw i32 %.03784, 1               ; 2 uses
  %exitcond95.not = icmp eq i32 %i.s, %2
  br i1 %exitcond95.not, label %._crit_edge88, label %.lr.ph87, !llvm.loop !14

._crit_edge88:                                    ; preds = %bb.b, %.preheader
  %.036.lcssa = phi i32 [ %i.a, %.preheader ], [ %i.e, %bb.b ]
  %.0.lcssa = phi i64 [ %0, %.preheader ], [ %i.r, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.0.lcssa, 0
  br i1 %.not, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge88
  %i.t = add nsw i32 %.036.lcssa, -1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, %.0.lcssa
  %.not41 = icmp eq i64 %i.w, 0
  br i1 %.not41, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %4, align 4, !tbaa !8      ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 49, ptr %3, align 1, !tbaa !9
  store i32 1, ptr %5, align 4, !tbaa !8
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1     ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = add i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !9
  %i.ae = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.ag = zext nneg i32 %i.ae to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ag, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.ai, 58
  br i1 %.not.i, label %bb.g, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.g:                                             ; preds = %.lr.ph.i
  store i8 48, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr i8, ptr %3, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -2     ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = add i8 %i.al, 1
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !9
  %i.an = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.ao = load i8, ptr %3, align 1, !tbaa !9
  %i.ap = icmp eq i8 %i.ao, 58
  br i1 %i.ap, label %bb.h, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.h:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %3, align 1, !tbaa !9
  %i.aq = load i32, ptr %5, align 4, !tbaa !8
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %5, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.i:                                             ; preds = %bb.a
  %i.as = sub nsw i32 -64, %1                     ; 2 uses
  switch i32 %i.as, label %bb.k [
    i32 0, label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
    i32 64, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit

bb.k:                                             ; preds = %bb.i
  %i.at = zext nneg i32 %i.as to i64
  %i.au = add nsw i32 %1, 128
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %0, %i.av
  %i.ax = lshr i64 %0, %i.at
  br label %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit

_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.17.1 = phi i64 [ %0, %bb.j ], [ %i.aw, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.j ], [ %i.ax, %bb.k ], [ %0, %bb.i ] ; 2 uses
  %i.ay = icmp sgt i32 %2, 0
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
  %i.az = sub nuw nsw i32 128, %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit
  %indvars.iv = phi i64 [ 128, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %.03877 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ca, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.075 = phi i64 [ %.sroa.0.1, %.lr.ph.preheader ], [ %i.bs, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %.sroa.17.074 = phi i64 [ %.sroa.17.1, %.lr.ph.preheader ], [ %i.bl, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 3 uses
  %i.ba = icmp eq i64 %.sroa.0.075, 0
  %i.bb = icmp eq i64 %.sroa.17.074, 0
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %._crit_edge.loopexit.split.loop.exit, label %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit

_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit: ; preds = %.lr.ph
  %i.bd = and i64 %.sroa.17.074, 4294967295
  %i.be = mul nuw nsw i64 %i.bd, 5                ; 2 uses
  %i.bf = lshr i64 %i.be, 32
  %i.bg = lshr i64 %.sroa.17.074, 32
  %i.bh = mul nuw nsw i64 %i.bg, 5
  %i.bi = add nuw nsw i64 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl i64 %i.bi, 32
  %i.bk = and i64 %i.be, 4294967295
  %i.bl = or disjoint i64 %i.bj, %i.bk            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bm = lshr i64 %i.bi, 32
  %reass.mul.i = mul i64 %.sroa.0.075, 5
  %i.bn = add i64 %i.bm, %reass.mul.i             ; 2 uses
  %i.bo = add nsw i64 %indvars.iv, -65            ; 2 uses
  %i.bp = lshr i64 %i.bn, %i.bo                   ; 2 uses
  %sext.i = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.i, 32
  %i.br = shl i64 %i.bq, %i.bo
  %i.bs = sub i64 %i.bn, %i.br                    ; 2 uses
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = add i8 %i.bt, 48
  %i.bv = load i32, ptr %4, align 4, !tbaa !8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %3, i64 %i.bw
  store i8 %i.bu, ptr %i.bx, align 1, !tbaa !9
  %i.by = load i32, ptr %4, align 4, !tbaa !8
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %4, align 4, !tbaa !8
  %i.ca = add nuw nsw i32 %.03877, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit, %._crit_edge.loopexit.split.loop.exit, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit
  %.sroa.17.0.lcssa = phi i64 [ %.sroa.17.1, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit ], [ 0, %._crit_edge.loopexit.split.loop.exit ], [ %i.bl, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.1, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit ], [ 0, %._crit_edge.loopexit.split.loop.exit ], [ %i.bs, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ]
  %.039.lcssa = phi i32 [ 128, %_ZN14arrow_vendored17double_conversion7UInt1285ShiftEi.exit ], [ %i.cb, %._crit_edge.loopexit.split.loop.exit ], [ %i.az, %_ZN14arrow_vendored17double_conversion7UInt12814DivModPowerOf2Ei.exit ] ; 2 uses
  %i.cc = icmp sgt i32 %.039.lcssa, 64            ; 2 uses
  %.sink7.i.v = select i1 %i.cc, i32 -65, i32 -1
  %.sink7.i = add nsw i32 %.sink7.i.v, %.039.lcssa
  %.sink.i42 = select i1 %i.cc, i64 %.sroa.0.0.lcssa, i64 %.sroa.17.0.lcssa
  %i.cd = zext nneg i32 %.sink7.i to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %.sink.i42
  %.not68 = icmp eq i64 %i.cf, 0
  br i1 %.not68, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cg = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 49, ptr %3, align 1, !tbaa !9
  store i32 1, ptr %5, align 4, !tbaa !8
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr i8, ptr %3, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1     ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = add i8 %i.cl, 1
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !9
  %i.cn = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %.lr.ph.preheader.i46, label %._crit_edge.i45

.lr.ph.preheader.i46:                             ; preds = %bb.n
  %i.cp = zext nneg i32 %i.cn to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.o, %.lr.ph.preheader.i46
  %indvars.iv.i48 = phi i64 [ %i.cp, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i49, %bb.o ] ; 3 uses
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i49 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9
  %.not.i50 = icmp eq i8 %i.cr, 58
  br i1 %.not.i50, label %bb.o, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.o:                                             ; preds = %.lr.ph.i47
  store i8 48, ptr %i.cq, align 1, !tbaa !9
  %i.cs = getelementptr i8, ptr %3, i64 %indvars.iv.i48
  %i.ct = getelementptr i8, ptr %i.cs, i64 -2     ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.cv = add i8 %i.cu, 1
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !9
  %i.cw = icmp samesign ugt i64 %indvars.iv.i48, 2
  br i1 %i.cw, label %.lr.ph.i47, label %._crit_edge.i45, !llvm.loop !15

._crit_edge.i45:                                  ; preds = %bb.o, %bb.n
  %i.cx = load i8, ptr %3, align 1, !tbaa !9
  %i.cy = icmp eq i8 %i.cx, 58
  br i1 %i.cy, label %bb.p, label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

bb.p:                                             ; preds = %._crit_edge.i45
  store i8 49, ptr %3, align 1, !tbaa !9
  %i.cz = load i32, ptr %5, align 4, !tbaa !8
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %5, align 4, !tbaa !8
  br label %_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit

_ZN14arrow_vendored17double_conversionL7RoundUpENS0_6VectorIcEEPiS3_.exit: ; preds = %.lr.ph.i47, %.lr.ph87, %.lr.ph.i, %._crit_edge, %bb.m, %._crit_edge.i45, %bb.p, %bb.h, %._crit_edge.i, %bb.e, %._crit_edge88, %bb.c
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
end_hunk_1
