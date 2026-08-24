Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/fixed-dtoa?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v84base13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_:bb.a
  store i8 %i.fj, ptr %i.fn, align 1
  %i.fo = udiv i32 %i.bz, 1000000
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  %i.fq = or disjoint i8 %i.fp, 48
  %i.fr = load i32, ptr %4, align 4
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs
  store i8 %i.fq, ptr %i.ft, align 1
  %i.fu = load i32, ptr %4, align 4
  %i.fv = add nsw i32 %i.fu, 7                    ; 2 uses
  store i32 %i.fv, ptr %4, align 4
  store i32 %i.fv, ptr %5, align 4
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.fw = icmp sgt i32 %.0.i92, -1
  br i1 %i.fw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fx = zext nneg i32 %.0.i92 to i64
  %i.fy = shl nuw i64 %.0.i, %i.fx
  tail call fastcc void @_ZN2v84baseL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.fy, ptr %2, ptr noundef nonnull %4)
  %i.fz = load i32, ptr %4, align 4
  store i32 %i.fz, ptr %5, align 4
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ga = icmp samesign ugt i32 %.0.i92, -53
  br i1 %i.ga, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gb = sub nsw i32 0, %.0.i92
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = lshr i64 %.0.i, %i.gc                   ; 5 uses
  %i.ge = shl i64 %i.gd, %i.gc
  %i.gf = sub i64 %.0.i, %i.ge
  %i.gg = icmp samesign ugt i64 %i.gd, 4294967295
  br i1 %i.gg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN2v84baseL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %i.gd, ptr %2, ptr noundef nonnull %4)
  %.pre146 = load i32, ptr %4, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not27.i93 = icmp eq i64 %i.gd, 0
  br i1 %.not27.i93, label %._crit_edge.i98, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %bb.l
  %i.gh = trunc nuw i64 %i.gd to i32
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.preheader, %.lr.ph.i94
  %.029.i95 = phi i32 [ %i.gj, %.lr.ph.i94 ], [ %i.gh, %.lr.ph.i94.preheader ] ; 3 uses
  %.02228.i96 = phi i32 [ %i.gq, %.lr.ph.i94 ], [ 0, %.lr.ph.i94.preheader ] ; 2 uses
  %i.gi = urem i32 %.029.i95, 10
  %i.gj = udiv i32 %.029.i95, 10
  %i.gk = trunc nuw nsw i32 %i.gi to i8
  %i.gl = or disjoint i8 %i.gk, 48
  %i.gm = load i32, ptr %4, align 4
  %i.gn = add nsw i32 %i.gm, %.02228.i96
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %i.go
  store i8 %i.gl, ptr %i.gp, align 1
  %i.gq = add nuw nsw i32 %.02228.i96, 1          ; 2 uses
  %.not.i97 = icmp ult i32 %.029.i95, 10
  br i1 %.not.i97, label %._crit_edge.i98.loopexit, label %.lr.ph.i94, !llvm.loop !5

._crit_edge.i98.loopexit:                         ; preds = %.lr.ph.i94
  %.pre = load i32, ptr %4, align 4
  br label %._crit_edge.i98

._crit_edge.i98:                                  ; preds = %._crit_edge.i98.loopexit, %bb.l
  %i.gr = phi i32 [ 0, %bb.l ], [ %.pre, %._crit_edge.i98.loopexit ] ; 3 uses
  %.022.lcssa.i99 = phi i32 [ 0, %bb.l ], [ %i.gq, %._crit_edge.i98.loopexit ] ; 2 uses
  %i.gs = add nsw i32 %i.gr, %.022.lcssa.i99      ; 2 uses
  %.02030.i100 = add nsw i32 %i.gs, -1            ; 2 uses
  %i.gt = icmp slt i32 %i.gr, %.02030.i100
  br i1 %i.gt, label %.lr.ph34.preheader.i102, label %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit111

.lr.ph34.preheader.i102:                          ; preds = %._crit_edge.i98
  %i.gu = sext i32 %.02030.i100 to i64
  %i.gv = sext i32 %i.gr to i64
  br label %.lr.ph34.i103

.lr.ph34.i103:                                    ; preds = %.lr.ph34.i103, %.lr.ph34.preheader.i102
  %indvars.iv36.i104 = phi i64 [ %i.gv, %.lr.ph34.preheader.i102 ], [ %indvars.iv.next37.i106, %.lr.ph34.i103 ] ; 2 uses
  %indvars.iv.i105 = phi i64 [ %i.gu, %.lr.ph34.preheader.i102 ], [ %indvars.iv.next.i107, %.lr.ph34.i103 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv36.i104 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i105 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1
  store i8 %i.gz, ptr %i.gw, align 1
  store i8 %i.gx, ptr %i.gy, align 1
  %indvars.iv.next37.i106 = add nsw i64 %indvars.iv36.i104, 1 ; 2 uses
  %indvars.iv.next.i107 = add nsw i64 %indvars.iv.i105, -1 ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next37.i106, %indvars.iv.next.i107
  br i1 %i.ha, label %.lr.ph34.i103, label %._crit_edge35.loopexit.i108, !llvm.loop !7

._crit_edge35.loopexit.i108:                      ; preds = %.lr.ph34.i103
  %.pre.i109 = load i32, ptr %4, align 4
  %.pre41.i110 = add nsw i32 %.pre.i109, %.022.lcssa.i99
  br label %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit111

_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit111: ; preds = %._crit_edge.i98, %._crit_edge35.loopexit.i108
  %.pre-phi.i101 = phi i32 [ %.pre41.i110, %._crit_edge35.loopexit.i108 ], [ %i.gs, %._crit_edge.i98 ] ; 2 uses
  store i32 %.pre-phi.i101, ptr %4, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit111, %bb.k
  %i.hb = phi i32 [ %.pre-phi.i101, %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit111 ], [ %.pre146, %bb.k ]
  store i32 %i.hb, ptr %5, align 4
  tail call fastcc void @_ZN2v84baseL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %i.gf, i32 noundef %.0.i92, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.hc = icmp samesign ult i32 %.0.i92, -128
  br i1 %i.hc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %2, align 1
  store i32 0, ptr %4, align 4
  %i.hd = sub nsw i32 0, %1
  store i32 %i.hd, ptr %5, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %5, align 4
  tail call fastcc void @_ZN2v84baseL15FillFractionalsEmiiNS0_6VectorIcEEPiS3_(i64 noundef %.0.i, i32 noundef %.0.i92, i32 noundef %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p, %bb.m, %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit
  %.pr.i = load i32, ptr %4, align 4              ; 5 uses
  %i.he = icmp sgt i32 %.pr.i, 0
  br i1 %i.he, label %.lr.ph.preheader.i, label %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.hf = zext nneg i32 %.pr.i to i64             ; 2 uses
  %indvars.iv.next.i114137 = add nsw i64 %i.hf, -1 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i114137
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = icmp eq i8 %i.hh, 48
  br i1 %i.hi, label %.lr.ph.preheader, label %.lr.ph30.i.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.hj = trunc nuw nsw i64 %indvars.iv.next.i114137 to i32 ; 3 uses
  store i32 %i.hj, ptr %4, align 4
  %.not = icmp eq i32 %.pr.i, 1
  br i1 %.not, label %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.lr.ph.i112.lr.ph, !llvm.loop !8

.lr.ph.i112.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph.i112, !llvm.loop !8

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.lr.ph, %.lr.ph
  %i.hk = phi i32 [ %i.hj, %.lr.ph.i112.lr.ph ], [ %i.ho, %.lr.ph ]
  %indvars.iv.next.i114139166 = phi i64 [ %indvars.iv.next.i114137, %.lr.ph.i112.lr.ph ], [ %indvars.iv.next.i114, %.lr.ph ] ; 4 uses
  %indvars.iv.next.i114 = add nsw i64 %indvars.iv.next.i114139166, -1 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i114
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = icmp eq i8 %i.hm, 48
  br i1 %i.hn, label %.lr.ph, label %.critedge.i, !llvm.loop !8

.lr.ph:                                           ; preds = %.lr.ph.i112
  %i.ho = trunc nuw nsw i64 %indvars.iv.next.i114 to i32 ; 3 uses
  store i32 %i.ho, ptr %4, align 4
  %i.hp = icmp samesign ugt i64 %indvars.iv.next.i114139166, 1
  br i1 %i.hp, label %.lr.ph.i112, label %.lr.ph._ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, !llvm.loop !8

.critedge.i:                                      ; preds = %.lr.ph.i112
  %i.hq = icmp sgt i64 %indvars.iv.next.i114139166, 0
  br i1 %i.hq, label %.lr.ph30.i.preheader, label %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph30.i.preheader:                             ; preds = %.lr.ph.preheader.i, %.critedge.i
  %indvars.iv.i113.lcssa155 = phi i64 [ %indvars.iv.next.i114139166, %.critedge.i ], [ %i.hf, %.lr.ph.preheader.i ] ; 2 uses
  %.lcssa133154 = phi i32 [ %i.hk, %.critedge.i ], [ %.pr.i, %.lr.ph.preheader.i ] ; 3 uses
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %bb.r
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.r ], [ 0, %.lr.ph30.i.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.i
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = icmp eq i8 %i.hs, 48
  br i1 %i.ht, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next40.i, %indvars.iv.i113.lcssa155
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph30.i, !llvm.loop !9

.critedge2.i:                                     ; preds = %.lr.ph30.i, %bb.r
  %.020.lcssa.in.i = phi i64 [ %indvars.iv.i113.lcssa155, %bb.r ], [ %indvars.iv39.i, %.lr.ph30.i ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i115 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i115, label %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i
  %i.hu = icmp sgt i32 %.lcssa133154, %.020.lcssa.i
  br i1 %i.hu, label %.lr.ph35.preheader.i, label %._crit_edge.i116

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %.020.lcssa.in.i, 32
  %6 = ashr exact i64 %sext.i, 32                 ; 2 uses
  br label %.lr.ph35.i

._crit_edge.i116:                                 ; preds = %.lr.ph35.i, %.preheader.i
  %.lcssa.i = phi i32 [ %.lcssa133154, %.preheader.i ], [ %i.ic, %.lr.ph35.i ]
  %i.hv = sub nsw i32 %.lcssa.i, %.020.lcssa.i
  store i32 %i.hv, ptr %4, align 4
  %i.hw = load i32, ptr %5, align 4
  %i.hx = sub nsw i32 %i.hw, %.020.lcssa.i
  store i32 %i.hx, ptr %5, align 4
  %.pre148 = load i32, ptr %4, align 4
  br label %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv42.i = phi i64 [ %6, %.lr.ph35.preheader.i ], [ %indvars.iv.next43.i, %.lr.ph35.i ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv42.i
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = sub nuw nsw i64 %indvars.iv42.i, %6
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 %i.ia
  store i8 %i.hz, ptr %i.ib, align 1
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.ic = load i32, ptr %4, align 4               ; 2 uses
  %7 = sext i32 %i.ic to i64
  %8 = icmp slt i64 %indvars.iv.next43.i, %7
  br i1 %8, label %.lr.ph35.i, label %._crit_edge.i116, !llvm.loop !10

.lr.ph._ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit, !llvm.loop !8

_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit: ; preds = %.lr.ph.preheader, %.lr.ph._ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge, %bb.q, %.critedge.i, %.critedge2.i, %._crit_edge.i116
  %i.id = phi i32 [ %.pre148, %._crit_edge.i116 ], [ %.pr.i, %bb.q ], [ 0, %.critedge.i ], [ %.lcssa133154, %.critedge2.i ], [ %i.ho, %.lr.ph._ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit.loopexit_crit_edge ], [ %i.hj, %.lr.ph.preheader ]
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 %i.ie
  store i8 0, ptr %i.if, align 1
  %i.ig = load i32, ptr %4, align 4
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit
  %i.ii = sub nsw i32 0, %1
  store i32 %i.ii, ptr %5, align 4
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v84baseL9TrimZerosENS0_6VectorIcEEPiS3_.exit, %bb.s, %bb.a
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2v84baseL12FillDigits64EmNS0_6VectorIcEEPi(i64 noundef %0, ptr nofree captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
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
  %i.l = load i32, ptr %2, align 4
  %i.m = add nsw i32 %i.l, %.02228.i
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  store i8 %i.k, ptr %i.o, align 1
  %i.p = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %.not.i = icmp samesign ult i32 %.029.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = load i32, ptr %2, align 4                ; 4 uses
  %.02030.i = add i32 %i.q, %.02228.i             ; 2 uses
  %i.r = icmp slt i32 %i.q, %.02030.i
  br i1 %i.r, label %.lr.ph34.preheader.i, label %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.s = sext i32 %.02030.i to i64
  %i.t = sext i32 %i.q to i64
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.preheader.i
  %indvars.iv36.i = phi i64 [ %i.t, %.lr.ph34.preheader.i ], [ %indvars.iv.next37.i, %.lr.ph34.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.s, %.lr.ph34.preheader.i ], [ %indvars.iv.next.i, %.lr.ph34.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv36.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  store i8 %i.x, ptr %i.u, align 1
  store i8 %i.v, ptr %i.w, align 1
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next37.i, %indvars.iv.next.i
  br i1 %i.y, label %.lr.ph34.i, label %._crit_edge35.loopexit.i, !llvm.loop !7

._crit_edge35.loopexit.i:                         ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %2, align 4
  br label %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit

_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit: ; preds = %._crit_edge.i, %._crit_edge35.loopexit.i
  %.pre.i.pn = phi i32 [ %.pre.i, %._crit_edge35.loopexit.i ], [ %i.q, %._crit_edge.i ]
  %.pre-phi.i = add nsw i32 %.pre.i.pn, %i.p      ; 2 uses
  store i32 %.pre-phi.i, ptr %2, align 4
  %i.z = urem i32 %i.e, 10
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = sext i32 %.pre-phi.i to i64
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 6
  store i8 %i.ab, ptr %i.ae, align 1
  %i.af = udiv i32 %i.e, 10
  %i.ag = urem i32 %i.af, 10
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = load i32, ptr %2, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 5
  store i8 %i.ai, ptr %i.am, align 1
  %i.an = udiv i32 %i.e, 100
  %i.ao = urem i32 %i.an, 10
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = load i32, ptr %2, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store i8 %i.aq, ptr %i.au, align 1
  %i.av = udiv i32 %i.e, 1000
  %.lhs.trunc93 = trunc nuw nsw i32 %i.av to i16
  %i.aw = urem i16 %.lhs.trunc93, 10
  %i.ax = trunc nuw nsw i16 %i.aw to i8
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = load i32, ptr %2, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 3
  store i8 %i.ay, ptr %i.bc, align 1
  %i.bd = udiv i32 %i.e, 10000
  %.lhs.trunc95 = trunc nuw nsw i32 %i.bd to i16
  %i.be = urem i16 %.lhs.trunc95, 10
  %i.bf = trunc nuw nsw i16 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = load i32, ptr %2, align 4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i8 %i.bg, ptr %i.bk, align 1
  %i.bl = udiv i32 %i.e, 100000
  %.lhs.trunc97 = trunc nuw i32 %i.bl to i8
  %i.bm = urem i8 %.lhs.trunc97, 10
  %i.bn = or disjoint i8 %i.bm, 48
  %i.bo = load i32, ptr %2, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bn, ptr %i.br, align 1
  %i.bs = udiv i32 %i.e, 1000000
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 48
  %i.bv = load i32, ptr %2, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  store i8 %i.bu, ptr %i.bx, align 1
  %i.by = load i32, ptr %2, align 4               ; 2 uses
  %i.bz = add nsw i32 %i.by, 7
  br label %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit80.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %.not34 = icmp eq i64 %i.d, 0
  br i1 %.not34, label %bb.d, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.c, %.lr.ph.i40
  %.029.i41 = phi i32 [ %i.cb, %.lr.ph.i40 ], [ %i.e, %bb.c ] ; 3 uses
  %.02228.i42 = phi i32 [ %i.ci, %.lr.ph.i40 ], [ 0, %bb.c ] ; 3 uses
  %i.ca = urem i32 %.029.i41, 10
  %i.cb = udiv i32 %.029.i41, 10
  %i.cc = trunc nuw nsw i32 %i.ca to i8
  %i.cd = or disjoint i8 %i.cc, 48
  %i.ce = load i32, ptr %2, align 4
  %i.cf = add nsw i32 %i.ce, %.02228.i42
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  store i8 %i.cd, ptr %i.ch, align 1
  %i.ci = add nuw nsw i32 %.02228.i42, 1          ; 2 uses
  %.not.i43 = icmp samesign ult i32 %.029.i41, 10
  br i1 %.not.i43, label %._crit_edge.i44, label %.lr.ph.i40, !llvm.loop !5

._crit_edge.i44:                                  ; preds = %.lr.ph.i40
  %i.cj = load i32, ptr %2, align 4               ; 4 uses
  %.02030.i46 = add i32 %i.cj, %.02228.i42        ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %.02030.i46
  br i1 %i.ck, label %.lr.ph34.preheader.i48, label %_ZN2v84baseL12FillDigits32EjNS0_6VectorIcEEPi.exit57

.lr.ph34.preheader.i48:                           ; preds = %._crit_edge.i44
  %i.cl = sext i32 %.02030.i46 to i64
  %i.cm = sext i32 %i.cj to i64
  br label %.lr.ph34.i49

.lr.ph34.i49:                                     ; preds = %.lr.ph34.i49, %.lr.ph34.preheader.i48
  %indvars.iv36.i50 = phi i64 [ %i.cm, %.lr.ph34.preheader.i48 ], [ %indvars.iv.next37.i52, %.lr.ph34.i49 ] ; 2 uses
  %indvars.iv.i51 = phi i64 [ %i.cl, %.lr.ph34.preheader.i48 ], [ %indvars.iv.next.i53, %.lr.ph34.i49 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv36.i50 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i51 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1
  store i8 %i.cq, ptr %i.cn, align 1
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next37.i52 = add nsw i64 %indvars.iv36.i50, 1 ; 2 uses
  %indvars.iv.next.i53 = add nsw i64 %indvars.iv.i51, -1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next37.i52, %indvars.iv.next.i53
  br i1 %i.cr, label %.lr.ph34.i49, label %._crit_edge35.loopexit.i54, !llvm.loop !7

._crit_edge35.loopexit.i54:                       ; preds = %.lr.ph34.i49
  %.pre.i55 = load i32, ptr %2, align 4
end_hunk_0
