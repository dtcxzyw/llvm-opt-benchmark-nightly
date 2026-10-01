Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaswp_minus?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dlaswp_minus(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr nofree noundef %4, i64 noundef %5, ptr nofree noundef readnone captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %4, i64 -8 ; 3 uses
  %i.b = add nsw i64 %1, -1                       ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %8, i64 %i.b
  %i.d = sub nsw i64 %2, %i.b                     ; 12 uses
  %.neg = sub i64 1, %i.d
  %.neg1050 = mul i64 %9, %.neg
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.neg1050 ; 10 uses
  %i.f = icmp slt i64 %0, 1
  %i.g = icmp slt i64 %i.d, 1
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 4, !tbaa !14
  %i.j = sext i32 %i.i to i64
  %.idx1069 = shl nsw i64 %i.b, 3                 ; 2 uses
  %i.k = add nsw i64 %.idx1069, 8
  %.idx1070 = shl nsw i64 %i.j, 3                 ; 2 uses
  %.not1230 = icmp eq i64 %i.k, %.idx1070
  br i1 %.not1230, label %.loopexit, label %.lr.ph1180.preheader

.lr.ph1180.preheader:                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %4, i64 %.idx1069  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %.idx1070 ; 2 uses
  %i.n = add nsw i64 %0, -1
  %xtraiter = and i64 %0, 7                       ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph1180.epil.preheader, label %.lr.ph1180.preheader.new

.lr.ph1180.preheader.new:                         ; preds = %.lr.ph1180.preheader
  %unroll_iter = and i64 %0, 9223372036854775800
  br label %.lr.ph1180

.lr.ph1180:                                       ; preds = %.lr.ph1180, %.lr.ph1180.preheader.new
  %.010041178 = phi ptr [ %i.m, %.lr.ph1180.preheader.new ], [ %i.au, %.lr.ph1180 ] ; 3 uses
  %.010111177 = phi ptr [ %i.l, %.lr.ph1180.preheader.new ], [ %i.at, %.lr.ph1180 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1180.preheader.new ], [ %niter.next.7, %.lr.ph1180 ]
  %i.p = load double, ptr %.010111177, align 8, !tbaa !16
  %i.q = load double, ptr %.010041178, align 8, !tbaa !16
  store double %i.q, ptr %.010111177, align 8, !tbaa !16
  store double %i.p, ptr %.010041178, align 8, !tbaa !16
  %i.r = getelementptr inbounds [8 x i8], ptr %.010111177, i64 %5 ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.010041178, i64 %5 ; 3 uses
  %i.t = load double, ptr %i.r, align 8, !tbaa !16
  %i.u = load double, ptr %i.s, align 8, !tbaa !16
  store double %i.u, ptr %i.r, align 8, !tbaa !16
  store double %i.t, ptr %i.s, align 8, !tbaa !16
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %5 ; 3 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %5 ; 3 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !16
  %i.y = load double, ptr %i.w, align 8, !tbaa !16
  store double %i.y, ptr %i.v, align 8, !tbaa !16
  store double %i.x, ptr %i.w, align 8, !tbaa !16
  %i.z = getelementptr inbounds [8 x i8], ptr %i.v, i64 %5 ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %5 ; 3 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !16
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !16
  store double %i.ac, ptr %i.z, align 8, !tbaa !16
  store double %i.ab, ptr %i.aa, align 8, !tbaa !16
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %5 ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %5 ; 3 uses
  %i.af = load double, ptr %i.ad, align 8, !tbaa !16
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !16
  store double %i.ag, ptr %i.ad, align 8, !tbaa !16
  store double %i.af, ptr %i.ae, align 8, !tbaa !16
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %5 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %5 ; 3 uses
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !16
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !16
  store double %i.ak, ptr %i.ah, align 8, !tbaa !16
  store double %i.aj, ptr %i.ai, align 8, !tbaa !16
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %5 ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %5 ; 3 uses
  %i.an = load double, ptr %i.al, align 8, !tbaa !16
  %i.ao = load double, ptr %i.am, align 8, !tbaa !16
  store double %i.ao, ptr %i.al, align 8, !tbaa !16
  store double %i.an, ptr %i.am, align 8, !tbaa !16
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.al, i64 %5 ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %5 ; 3 uses
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !16
  %i.as = load double, ptr %i.aq, align 8, !tbaa !16
  store double %i.as, ptr %i.ap, align 8, !tbaa !16
  store double %i.ar, ptr %i.aq, align 8, !tbaa !16
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %5 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %5 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph1180, !llvm.loop !8

bb.d:                                             ; preds = %bb.b
  %i.av = lshr i64 %0, 2                          ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %.loopexit1081, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aw = shl nsw i64 %5, 1                       ; 6 uses
  %i.ax = mul nsw i64 %5, 3                       ; 6 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.e, i64 %9
  %i.az = lshr i64 %i.d, 1
  %.01015.idx = shl i64 %9, 3                     ; 2 uses
  %.010151092 = getelementptr inbounds i8, ptr %i.e, i64 %.01015.idx ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.d, 3
  %i.bb = and i64 %i.d, 1
  %.not1053 = icmp eq i64 %i.bb, 0
  %.idx = shl nsw i64 %5, 5
  %.pre = load i32, ptr %i.e, align 4, !tbaa !14  ; 3 uses
  %.pre1214 = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %.pn10721082 = sext i32 %.pre1214 to i64
  %.pn1085 = sext i32 %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.ao
  %.01024 = phi ptr [ %i.eg, %bb.ao ], [ %i.a, %.preheader ] ; 7 uses
  %.11019 = phi i64 [ %i.eh, %bb.ao ], [ %i.av, %.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.01024, i64 %2 ; 5 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %5 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.aw ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  %.010021083 = getelementptr inbounds [8 x i8], ptr %.01024, i64 %.pn10721082 ; 5 uses
  %.01084 = getelementptr inbounds [8 x i8], ptr %.010021083, i64 %i.ax ; 2 uses
  %.110051086 = getelementptr inbounds [8 x i8], ptr %.01024, i64 %.pn1085 ; 5 uses
  %.09961087 = getelementptr inbounds [8 x i8], ptr %.110051086, i64 %i.ax ; 2 uses
  %.09971088 = getelementptr inbounds [8 x i8], ptr %.010021083, i64 %i.aw ; 2 uses
  %.09981089 = getelementptr inbounds [8 x i8], ptr %.110051086, i64 %i.aw ; 2 uses
  %.09991090 = getelementptr inbounds [8 x i8], ptr %.010021083, i64 %5 ; 2 uses
  %.010001091 = getelementptr inbounds [8 x i8], ptr %.110051086, i64 %5 ; 2 uses
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.v
  %.010201109.in = phi i64 [ %.010201109, %bb.v ], [ %i.az, %bb.e ] ; 2 uses
  %.010151108 = phi ptr [ %.01015, %bb.v ], [ %.010151092, %bb.e ] ; 3 uses
  %.010001107 = phi ptr [ %.01000, %bb.v ], [ %.010001091, %bb.e ] ; 5 uses
  %.09991106 = phi ptr [ %.0999, %bb.v ], [ %.09991090, %bb.e ] ; 4 uses
  %.09981105 = phi ptr [ %.0998, %bb.v ], [ %.09981089, %bb.e ] ; 5 uses
  %.09971104 = phi ptr [ %.0997, %bb.v ], [ %.09971088, %bb.e ] ; 4 uses
  %.09961103 = phi ptr [ %.0996, %bb.v ], [ %.09961087, %bb.e ] ; 5 uses
  %.110051102 = phi ptr [ %.11005, %bb.v ], [ %.110051086, %bb.e ] ; 12 uses
  %.01101 = phi ptr [ %.0, %bb.v ], [ %.01084, %bb.e ] ; 4 uses
  %.010021100 = phi ptr [ %.01002, %bb.v ], [ %.010021083, %bb.e ] ; 10 uses
  %.pn1072.in1099 = phi i32 [ %i.cc, %bb.v ], [ %.pre1214, %bb.e ]
  %.pn.in1098 = phi i32 [ %i.ca, %bb.v ], [ %.pre, %bb.e ]
  %.010071097 = phi ptr [ %i.cm, %bb.v ], [ %i.bf, %bb.e ] ; 10 uses
  %.010081096 = phi ptr [ %i.cl, %bb.v ], [ %i.be, %bb.e ] ; 10 uses
  %.010091095 = phi ptr [ %i.ck, %bb.v ], [ %i.bd, %bb.e ] ; 10 uses
  %.110121094 = phi ptr [ %i.cj, %bb.v ], [ %i.bc, %bb.e ] ; 8 uses
  %.010201109 = add nsw i64 %.010201109.in, -1
  %i.bg = load double, ptr %.110121094, align 8, !tbaa !16 ; 7 uses
  %i.bh = getelementptr inbounds i8, ptr %.110121094, i64 -8 ; 9 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !16 ; 6 uses
  %i.bj = load double, ptr %.010091095, align 8, !tbaa !16 ; 7 uses
  %i.bk = getelementptr inbounds i8, ptr %.010091095, i64 -8 ; 8 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !16 ; 7 uses
  %i.bm = load double, ptr %.010081096, align 8, !tbaa !16 ; 7 uses
  %i.bn = getelementptr inbounds i8, ptr %.010081096, i64 -8 ; 8 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16 ; 7 uses
  %i.bp = load double, ptr %.010071097, align 8, !tbaa !16 ; 7 uses
  %i.bq = getelementptr inbounds i8, ptr %.010071097, i64 -8 ; 8 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !16 ; 7 uses
  %i.bs = load double, ptr %.110051102, align 8, !tbaa !16 ; 3 uses
  %i.bt = load double, ptr %.010021100, align 8, !tbaa !16 ; 3 uses
  %i.bu = load double, ptr %.010001107, align 8, !tbaa !16 ; 4 uses
  %i.bv = load double, ptr %.09991106, align 8, !tbaa !16 ; 3 uses
  %i.bw = load double, ptr %.09981105, align 8, !tbaa !16 ; 4 uses
  %i.bx = load double, ptr %.09971104, align 8, !tbaa !16 ; 3 uses
  %i.by = load double, ptr %.09961103, align 8, !tbaa !16 ; 4 uses
  %i.bz = load double, ptr %.01101, align 8, !tbaa !16 ; 3 uses
  %i.ca = load i32, ptr %.010151108, align 4, !tbaa !14 ; 3 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %.010151108, i64 %9
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !14 ; 3 uses
  %i.cd = icmp eq ptr %.110051102, %.110121094
  br i1 %i.cd, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.ce = icmp eq ptr %.010021100, %.110051102
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.bi, ptr %.110051102, align 8, !tbaa !16
  store double %i.bg, ptr %i.bh, align 8, !tbaa !16
  store double %i.bl, ptr %.010091095, align 8, !tbaa !16
  store double %i.bj, ptr %i.bk, align 8, !tbaa !16
  store double %i.bo, ptr %.010081096, align 8, !tbaa !16
  store double %i.bm, ptr %i.bn, align 8, !tbaa !16
  store double %i.br, ptr %.010071097, align 8, !tbaa !16
  store double %i.bp, ptr %i.bq, align 8, !tbaa !16
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %.not1068 = icmp eq ptr %.010021100, %i.bh
  br i1 %.not1068, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  store double %i.bt, ptr %i.bh, align 8, !tbaa !16
  store double %i.bi, ptr %.010021100, align 8, !tbaa !16
  store double %i.bv, ptr %i.bk, align 8, !tbaa !16
  store double %i.bl, ptr %.09991106, align 8, !tbaa !16
  store double %i.bx, ptr %i.bn, align 8, !tbaa !16
  store double %i.bo, ptr %.09971104, align 8, !tbaa !16
  store double %i.bz, ptr %i.bq, align 8, !tbaa !16
  store double %i.br, ptr %.01101, align 8, !tbaa !16
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.cf = icmp eq ptr %.110051102, %i.bh
  %.not1067 = icmp eq ptr %.010021100, %.110121094 ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %.not1067, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = icmp eq ptr %.010021100, %.110051102
  store double %i.bi, ptr %.110121094, align 8, !tbaa !16
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.bg, ptr %.110051102, align 8, !tbaa !16
  store double %i.bl, ptr %.010091095, align 8, !tbaa !16
  store double %i.bj, ptr %i.bk, align 8, !tbaa !16
  store double %i.bo, ptr %.010081096, align 8, !tbaa !16
  store double %i.bm, ptr %i.bn, align 8, !tbaa !16
  store double %i.br, ptr %.010071097, align 8, !tbaa !16
  store double %i.bp, ptr %i.bq, align 8, !tbaa !16
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  store double %i.bt, ptr %.110051102, align 8, !tbaa !16
  store double %i.bg, ptr %.010021100, align 8, !tbaa !16
  store double %i.bl, ptr %.010091095, align 8, !tbaa !16
  store double %i.bv, ptr %i.bk, align 8, !tbaa !16
  store double %i.bj, ptr %.09991106, align 8, !tbaa !16
  store double %i.bo, ptr %.010081096, align 8, !tbaa !16
  store double %i.bx, ptr %i.bn, align 8, !tbaa !16
  store double %i.bm, ptr %.09971104, align 8, !tbaa !16
  store double %i.br, ptr %.010071097, align 8, !tbaa !16
  store double %i.bz, ptr %i.bq, align 8, !tbaa !16
  store double %i.bp, ptr %.01101, align 8, !tbaa !16
  br label %bb.v

bb.o:                                             ; preds = %bb.j
  br i1 %.not1067, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.bi, ptr %.010021100, align 8, !tbaa !16
  store double %i.bs, ptr %i.bh, align 8, !tbaa !16
  store double %i.bg, ptr %.110051102, align 8, !tbaa !16
  store double %i.bl, ptr %.010091095, align 8, !tbaa !16
  store double %i.bu, ptr %i.bk, align 8, !tbaa !16
  store double %i.bj, ptr %.010001107, align 8, !tbaa !16
  store double %i.bo, ptr %.010081096, align 8, !tbaa !16
  store double %i.bw, ptr %i.bn, align 8, !tbaa !16
  store double %i.bm, ptr %.09981105, align 8, !tbaa !16
  store double %i.br, ptr %.010071097, align 8, !tbaa !16
  store double %i.by, ptr %i.bq, align 8, !tbaa !16
  store double %i.bp, ptr %.09961103, align 8, !tbaa !16
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ch = icmp eq ptr %.010021100, %i.bh
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.bs, ptr %.110121094, align 8, !tbaa !16
  store double %i.bg, ptr %.110051102, align 8, !tbaa !16
  store double %i.bu, ptr %.010091095, align 8, !tbaa !16
  store double %i.bj, ptr %.010001107, align 8, !tbaa !16
  store double %i.bw, ptr %.010081096, align 8, !tbaa !16
  store double %i.bm, ptr %.09981105, align 8, !tbaa !16
  store double %i.by, ptr %.010071097, align 8, !tbaa !16
  store double %i.bp, ptr %.09961103, align 8, !tbaa !16
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ci = icmp eq i32 %.pn1072.in1099, %.pn.in1098
  store double %i.bs, ptr %.110121094, align 8, !tbaa !16
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.bg, ptr %i.bh, align 8, !tbaa !16
  store double %i.bi, ptr %.110051102, align 8, !tbaa !16
  store double %i.bu, ptr %.010091095, align 8, !tbaa !16
  store double %i.bj, ptr %i.bk, align 8, !tbaa !16
  store double %i.bl, ptr %.010001107, align 8, !tbaa !16
  store double %i.bw, ptr %.010081096, align 8, !tbaa !16
  store double %i.bm, ptr %i.bn, align 8, !tbaa !16
  store double %i.bo, ptr %.09981105, align 8, !tbaa !16
  store double %i.by, ptr %.010071097, align 8, !tbaa !16
  store double %i.bp, ptr %i.bq, align 8, !tbaa !16
  store double %i.br, ptr %.09961103, align 8, !tbaa !16
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store double %i.bt, ptr %i.bh, align 8, !tbaa !16
  store double %i.bg, ptr %.110051102, align 8, !tbaa !16
  store double %i.bi, ptr %.010021100, align 8, !tbaa !16
  store double %i.bu, ptr %.010091095, align 8, !tbaa !16
  store double %i.bv, ptr %i.bk, align 8, !tbaa !16
  store double %i.bj, ptr %.010001107, align 8, !tbaa !16
  store double %i.bl, ptr %.09991106, align 8, !tbaa !16
  store double %i.bw, ptr %.010081096, align 8, !tbaa !16
  store double %i.bx, ptr %i.bn, align 8, !tbaa !16
  store double %i.bm, ptr %.09981105, align 8, !tbaa !16
  store double %i.bo, ptr %.09971104, align 8, !tbaa !16
  store double %i.by, ptr %.010071097, align 8, !tbaa !16
  store double %i.bz, ptr %i.bq, align 8, !tbaa !16
  store double %i.bp, ptr %.09961103, align 8, !tbaa !16
  store double %i.br, ptr %.01101, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.r, %bb.u, %bb.t, %bb.p, %bb.g, %bb.i, %bb.h
  %i.cj = getelementptr inbounds i8, ptr %.110121094, i64 -16 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.010091095, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.010081096, i64 -16 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.010071097, i64 -16 ; 2 uses
  %.pn1072 = sext i32 %i.cc to i64
  %.01002 = getelementptr inbounds [8 x i8], ptr %.01024, i64 %.pn1072 ; 5 uses
  %.0 = getelementptr inbounds [8 x i8], ptr %.01002, i64 %i.ax ; 2 uses
  %.pn = sext i32 %i.ca to i64
  %.11005 = getelementptr inbounds [8 x i8], ptr %.01024, i64 %.pn ; 5 uses
  %.0996 = getelementptr inbounds [8 x i8], ptr %.11005, i64 %i.ax ; 2 uses
  %.0997 = getelementptr inbounds [8 x i8], ptr %.01002, i64 %i.aw ; 2 uses
  %.0998 = getelementptr inbounds [8 x i8], ptr %.11005, i64 %i.aw ; 2 uses
  %.0999 = getelementptr inbounds [8 x i8], ptr %.01002, i64 %5 ; 2 uses
  %.01000 = getelementptr inbounds [8 x i8], ptr %.11005, i64 %5 ; 2 uses
  %.01015 = getelementptr inbounds i8, ptr %.010151108, i64 %.01015.idx ; 2 uses
  %i.cn = icmp sgt i64 %.010201109.in, 2
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.v, %bb.e
  %.11012.lcssa = phi ptr [ %i.bc, %bb.e ], [ %i.cj, %bb.v ] ; 11 uses
  %.01009.lcssa = phi ptr [ %i.bd, %bb.e ], [ %i.ck, %bb.v ] ; 10 uses
  %.01008.lcssa = phi ptr [ %i.be, %bb.e ], [ %i.cl, %bb.v ] ; 10 uses
  %.01007.lcssa = phi ptr [ %i.bf, %bb.e ], [ %i.cm, %bb.v ] ; 10 uses
  %.pn.in.lcssa = phi i32 [ %.pre, %bb.e ], [ %i.ca, %bb.v ]
  %.pn1072.in.lcssa = phi i32 [ %.pre1214, %bb.e ], [ %i.cc, %bb.v ]
  %.01002.lcssa = phi ptr [ %.010021083, %bb.e ], [ %.01002, %bb.v ] ; 10 uses
  %.0.lcssa = phi ptr [ %.01084, %bb.e ], [ %.0, %bb.v ] ; 4 uses
  %.11005.lcssa = phi ptr [ %.110051086, %bb.e ], [ %.11005, %bb.v ] ; 9 uses
  %.0996.lcssa = phi ptr [ %.09961087, %bb.e ], [ %.0996, %bb.v ] ; 5 uses
  %.0997.lcssa = phi ptr [ %.09971088, %bb.e ], [ %.0997, %bb.v ] ; 4 uses
  %.0998.lcssa = phi ptr [ %.09981089, %bb.e ], [ %.0998, %bb.v ] ; 5 uses
  %.0999.lcssa = phi ptr [ %.09991090, %bb.e ], [ %.0999, %bb.v ] ; 4 uses
  %.01000.lcssa = phi ptr [ %.010001091, %bb.e ], [ %.01000, %bb.v ] ; 5 uses
  %.01015.lcssa = phi ptr [ %.010151092, %bb.e ], [ %.01015, %bb.v ]
  %i.co = load double, ptr %.11012.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.cp = getelementptr inbounds i8, ptr %.11012.lcssa, i64 -8 ; 9 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16 ; 6 uses
  %i.cr = load double, ptr %.01009.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.cs = getelementptr inbounds i8, ptr %.01009.lcssa, i64 -8 ; 8 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !16 ; 7 uses
  %i.cu = load double, ptr %.01008.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.cv = getelementptr inbounds i8, ptr %.01008.lcssa, i64 -8 ; 8 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !16 ; 7 uses
  %i.cx = load double, ptr %.01007.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.cy = getelementptr inbounds i8, ptr %.01007.lcssa, i64 -8 ; 8 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !16 ; 7 uses
  %i.da = load double, ptr %.11005.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.db = load double, ptr %.01002.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.dc = load double, ptr %.01000.lcssa, align 8, !tbaa !16 ; 4 uses
  %i.dd = load double, ptr %.0999.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.de = load double, ptr %.0998.lcssa, align 8, !tbaa !16 ; 4 uses
  %i.df = load double, ptr %.0997.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.dg = load double, ptr %.0996.lcssa, align 8, !tbaa !16 ; 4 uses
  %i.dh = load double, ptr %.0.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.di = icmp eq ptr %.11005.lcssa, %.11012.lcssa
  br i1 %i.di, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %._crit_edge
  %i.dj = icmp eq ptr %.01002.lcssa, %.11012.lcssa
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double %i.cq, ptr %.11012.lcssa, align 8, !tbaa !16
  store double %i.co, ptr %i.cp, align 8, !tbaa !16
  store double %i.ct, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.cr, ptr %i.cs, align 8, !tbaa !16
  store double %i.cw, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.cu, ptr %i.cv, align 8, !tbaa !16
  store double %i.cz, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !16
  br label %bb.am

bb.y:                                             ; preds = %bb.w
  %.not1052 = icmp eq ptr %.01002.lcssa, %i.cp
  br i1 %.not1052, label %bb.am, label %bb.z

bb.z:                                             ; preds = %bb.y
  store double %i.db, ptr %i.cp, align 8, !tbaa !16
  store double %i.cq, ptr %.01002.lcssa, align 8, !tbaa !16
  store double %i.dd, ptr %i.cs, align 8, !tbaa !16
  store double %i.ct, ptr %.0999.lcssa, align 8, !tbaa !16
  store double %i.df, ptr %i.cv, align 8, !tbaa !16
  store double %i.cw, ptr %.0997.lcssa, align 8, !tbaa !16
  store double %i.dh, ptr %i.cy, align 8, !tbaa !16
  store double %i.cz, ptr %.0.lcssa, align 8, !tbaa !16
  br label %bb.am

bb.aa:                                            ; preds = %._crit_edge
  %i.dk = icmp eq ptr %.11005.lcssa, %i.cp
  %.not1051 = icmp eq ptr %.01002.lcssa, %.11012.lcssa ; 2 uses
  br i1 %i.dk, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not1051, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = icmp eq ptr %.01002.lcssa, %.11005.lcssa
  store double %i.cq, ptr %.11012.lcssa, align 8, !tbaa !16
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store double %i.co, ptr %.01002.lcssa, align 8, !tbaa !16
  store double %i.ct, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.cr, ptr %i.cs, align 8, !tbaa !16
  store double %i.cw, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.cu, ptr %i.cv, align 8, !tbaa !16
  store double %i.cz, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !16
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  store double %i.db, ptr %.11005.lcssa, align 8, !tbaa !16
  store double %i.co, ptr %.01002.lcssa, align 8, !tbaa !16
  store double %i.ct, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.dd, ptr %i.cs, align 8, !tbaa !16
  store double %i.cr, ptr %.0999.lcssa, align 8, !tbaa !16
  store double %i.cw, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.df, ptr %i.cv, align 8, !tbaa !16
  store double %i.cu, ptr %.0997.lcssa, align 8, !tbaa !16
  store double %i.cz, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.dh, ptr %i.cy, align 8, !tbaa !16
  store double %i.cx, ptr %.0.lcssa, align 8, !tbaa !16
  br label %bb.am

bb.af:                                            ; preds = %bb.aa
  br i1 %.not1051, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store double %i.cq, ptr %.11012.lcssa, align 8, !tbaa !16
  store double %i.da, ptr %i.cp, align 8, !tbaa !16
  store double %i.co, ptr %.11005.lcssa, align 8, !tbaa !16
  store double %i.ct, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.dc, ptr %i.cs, align 8, !tbaa !16
  store double %i.cr, ptr %.01000.lcssa, align 8, !tbaa !16
  store double %i.cw, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.de, ptr %i.cv, align 8, !tbaa !16
  store double %i.cu, ptr %.0998.lcssa, align 8, !tbaa !16
  store double %i.cz, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.dg, ptr %i.cy, align 8, !tbaa !16
  store double %i.cx, ptr %.0996.lcssa, align 8, !tbaa !16
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.dm = icmp eq ptr %.01002.lcssa, %i.cp
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store double %i.da, ptr %.11012.lcssa, align 8, !tbaa !16
  store double %i.co, ptr %.11005.lcssa, align 8, !tbaa !16
  store double %i.dc, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.cr, ptr %.01000.lcssa, align 8, !tbaa !16
  store double %i.de, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.cu, ptr %.0998.lcssa, align 8, !tbaa !16
  store double %i.dg, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.cx, ptr %.0996.lcssa, align 8, !tbaa !16
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.dn = icmp eq i32 %.pn1072.in.lcssa, %.pn.in.lcssa
  store double %i.da, ptr %.11012.lcssa, align 8, !tbaa !16
  br i1 %i.dn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store double %i.co, ptr %i.cp, align 8, !tbaa !16
  store double %i.cq, ptr %.11005.lcssa, align 8, !tbaa !16
  store double %i.dc, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.cr, ptr %i.cs, align 8, !tbaa !16
  store double %i.ct, ptr %.01000.lcssa, align 8, !tbaa !16
  store double %i.de, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.cu, ptr %i.cv, align 8, !tbaa !16
  store double %i.cw, ptr %.0998.lcssa, align 8, !tbaa !16
  store double %i.dg, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !16
  store double %i.cz, ptr %.0996.lcssa, align 8, !tbaa !16
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  store double %i.db, ptr %i.cp, align 8, !tbaa !16
  store double %i.co, ptr %.11005.lcssa, align 8, !tbaa !16
  store double %i.cq, ptr %.01002.lcssa, align 8, !tbaa !16
  store double %i.dc, ptr %.01009.lcssa, align 8, !tbaa !16
  store double %i.dd, ptr %i.cs, align 8, !tbaa !16
  store double %i.cr, ptr %.01000.lcssa, align 8, !tbaa !16
  store double %i.ct, ptr %.0999.lcssa, align 8, !tbaa !16
  store double %i.de, ptr %.01008.lcssa, align 8, !tbaa !16
  store double %i.df, ptr %i.cv, align 8, !tbaa !16
  store double %i.cu, ptr %.0998.lcssa, align 8, !tbaa !16
  store double %i.cw, ptr %.0997.lcssa, align 8, !tbaa !16
  store double %i.dg, ptr %.01007.lcssa, align 8, !tbaa !16
  store double %i.dh, ptr %i.cy, align 8, !tbaa !16
  store double %i.cx, ptr %.0996.lcssa, align 8, !tbaa !16
  store double %i.cz, ptr %.0.lcssa, align 8, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %bb.ae, %bb.ab, %bb.ai, %bb.al, %bb.ak, %bb.ag, %bb.x, %bb.z, %bb.y
  br i1 %.not1053, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = getelementptr inbounds i8, ptr %.01007.lcssa, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.01008.lcssa, i64 -16 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.01009.lcssa, i64 -16 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.11012.lcssa, i64 -16 ; 2 uses
  %i.ds = load i32, ptr %.01015.lcssa, align 4, !tbaa !14
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %.01024, i64 %i.dt ; 5 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %5 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.aw ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.ax ; 2 uses
  %i.dy = load double, ptr %i.dr, align 8, !tbaa !16
  %i.dz = load double, ptr %i.du, align 8, !tbaa !16
  %i.ea = load double, ptr %i.dq, align 8, !tbaa !16
  %i.eb = load double, ptr %i.dv, align 8, !tbaa !16
  %i.ec = load double, ptr %i.dp, align 8, !tbaa !16
  %i.ed = load double, ptr %i.dw, align 8, !tbaa !16
  %i.ee = load double, ptr %i.do, align 8, !tbaa !16
  %i.ef = load double, ptr %i.dx, align 8, !tbaa !16
  store double %i.dz, ptr %i.dr, align 8, !tbaa !16
  store double %i.dy, ptr %i.du, align 8, !tbaa !16
  store double %i.eb, ptr %i.dq, align 8, !tbaa !16
  store double %i.ea, ptr %i.dv, align 8, !tbaa !16
  store double %i.ed, ptr %i.dp, align 8, !tbaa !16
  store double %i.ec, ptr %i.dw, align 8, !tbaa !16
  store double %i.ef, ptr %i.do, align 8, !tbaa !16
  store double %i.ee, ptr %i.dx, align 8, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eg = getelementptr inbounds i8, ptr %.01024, i64 %.idx ; 2 uses
  %i.eh = add nsw i64 %.11019, -1
  %i.ei = icmp sgt i64 %.11019, 1
  br i1 %i.ei, label %bb.e, label %.loopexit1081, !llvm.loop !10

.loopexit1081:                                    ; preds = %bb.ao, %bb.d
  %.11025 = phi ptr [ %i.a, %bb.d ], [ %i.eg, %bb.ao ] ; 8 uses
  %i.ej = and i64 %0, 2
  %.not1054 = icmp eq i64 %i.ej, 0
  br i1 %.not1054, label %bb.ca, label %bb.ap

bb.ap:                                            ; preds = %.loopexit1081
  %i.ek = getelementptr inbounds [8 x i8], ptr %.11025, i64 %2 ; 3 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %5 ; 2 uses
  %i.em = load i32, ptr %i.e, align 4, !tbaa !14  ; 3 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.e, i64 %9
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !14 ; 3 uses
  %.11016.idx = shl i64 %9, 3                     ; 2 uses
  %.pn10771124 = sext i32 %i.eo to i64
  %.110031125 = getelementptr inbounds [8 x i8], ptr %.11025, i64 %.pn10771124 ; 3 uses
  %.11126 = getelementptr inbounds [8 x i8], ptr %.110031125, i64 %5 ; 2 uses
  %.pn10751127 = sext i32 %i.em to i64
  %.210061128 = getelementptr inbounds [8 x i8], ptr %.11025, i64 %.pn10751127 ; 3 uses
  %.110011129 = getelementptr inbounds [8 x i8], ptr %.210061128, i64 %5 ; 2 uses
  %.110161130 = getelementptr inbounds i8, ptr %i.e, i64 %.11016.idx ; 2 uses
  %i.ep = icmp ugt i64 %i.d, 3
  br i1 %i.ep, label %.lr.ph1143.preheader, label %._crit_edge1144

.lr.ph1143.preheader:                             ; preds = %bb.ap
  %i.eq = lshr i64 %i.d, 1
  br label %.lr.ph1143

.lr.ph1143:                                       ; preds = %.lr.ph1143.preheader, %bb.bg
  %.110211141.in = phi i64 [ %.110211141, %bb.bg ], [ %i.eq, %.lr.ph1143.preheader ] ; 2 uses
  %.110161140 = phi ptr [ %.11016, %bb.bg ], [ %.110161130, %.lr.ph1143.preheader ] ; 3 uses
  %.110011139 = phi ptr [ %.11001, %bb.bg ], [ %.110011129, %.lr.ph1143.preheader ] ; 5 uses
  %.210061138 = phi ptr [ %.21006, %bb.bg ], [ %.210061128, %.lr.ph1143.preheader ] ; 12 uses
  %.11137 = phi ptr [ %.1, %bb.bg ], [ %.11126, %.lr.ph1143.preheader ] ; 4 uses
  %.110031136 = phi ptr [ %.11003, %bb.bg ], [ %.110031125, %.lr.ph1143.preheader ] ; 10 uses
  %.pn1077.in1135 = phi i32 [ %i.fd, %bb.bg ], [ %i.eo, %.lr.ph1143.preheader ]
  %.pn1075.in1134 = phi i32 [ %i.fb, %bb.bg ], [ %i.em, %.lr.ph1143.preheader ]
  %.110101133 = phi ptr [ %i.fl, %bb.bg ], [ %i.el, %.lr.ph1143.preheader ] ; 10 uses
  %.210131132 = phi ptr [ %i.fk, %bb.bg ], [ %i.ek, %.lr.ph1143.preheader ] ; 8 uses
  %.110211141 = add nsw i64 %.110211141.in, -1
  %i.er = load double, ptr %.210131132, align 8, !tbaa !16 ; 7 uses
  %i.es = getelementptr inbounds i8, ptr %.210131132, i64 -8 ; 9 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !16 ; 6 uses
  %i.eu = load double, ptr %.110101133, align 8, !tbaa !16 ; 7 uses
  %i.ev = getelementptr inbounds i8, ptr %.110101133, i64 -8 ; 8 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !16 ; 7 uses
  %i.ex = load double, ptr %.210061138, align 8, !tbaa !16 ; 3 uses
  %i.ey = load double, ptr %.110031136, align 8, !tbaa !16 ; 3 uses
  %i.ez = load double, ptr %.110011139, align 8, !tbaa !16 ; 4 uses
  %i.fa = load double, ptr %.11137, align 8, !tbaa !16 ; 3 uses
  %i.fb = load i32, ptr %.110161140, align 4, !tbaa !14 ; 3 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %.110161140, i64 %9
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp eq ptr %.210061138, %.210131132
  br i1 %i.fe, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %.lr.ph1143
  %i.ff = icmp eq ptr %.110031136, %.210061138
  br i1 %i.ff, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store double %i.et, ptr %.210061138, align 8, !tbaa !16
  store double %i.er, ptr %i.es, align 8, !tbaa !16
  store double %i.ew, ptr %.110101133, align 8, !tbaa !16
  store double %i.eu, ptr %i.ev, align 8, !tbaa !16
  br label %bb.bg

bb.as:                                            ; preds = %bb.aq
  %.not1066 = icmp eq ptr %.110031136, %i.es
  br i1 %.not1066, label %bb.bg, label %bb.at

bb.at:                                            ; preds = %bb.as
  store double %i.ey, ptr %i.es, align 8, !tbaa !16
  store double %i.et, ptr %.110031136, align 8, !tbaa !16
  store double %i.fa, ptr %i.ev, align 8, !tbaa !16
  store double %i.ew, ptr %.11137, align 8, !tbaa !16
  br label %bb.bg

bb.au:                                            ; preds = %.lr.ph1143
  %i.fg = icmp eq ptr %.210061138, %i.es
  %.not1065 = icmp eq ptr %.110031136, %.210131132 ; 2 uses
  br i1 %i.fg, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  br i1 %.not1065, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = icmp eq ptr %.110031136, %.210061138
  store double %i.et, ptr %.210131132, align 8, !tbaa !16
  br i1 %i.fh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store double %i.er, ptr %.210061138, align 8, !tbaa !16
  store double %i.ew, ptr %.110101133, align 8, !tbaa !16
  store double %i.eu, ptr %i.ev, align 8, !tbaa !16
  br label %bb.bg

bb.ay:                                            ; preds = %bb.aw
  store double %i.ey, ptr %.210061138, align 8, !tbaa !16
  store double %i.er, ptr %.110031136, align 8, !tbaa !16
  store double %i.ew, ptr %.110101133, align 8, !tbaa !16
  store double %i.fa, ptr %i.ev, align 8, !tbaa !16
  store double %i.eu, ptr %.11137, align 8, !tbaa !16
  br label %bb.bg

bb.az:                                            ; preds = %bb.au
  br i1 %.not1065, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store double %i.et, ptr %.110031136, align 8, !tbaa !16
  store double %i.ex, ptr %i.es, align 8, !tbaa !16
  store double %i.er, ptr %.210061138, align 8, !tbaa !16
  store double %i.ew, ptr %.110101133, align 8, !tbaa !16
  store double %i.ez, ptr %i.ev, align 8, !tbaa !16
  store double %i.eu, ptr %.110011139, align 8, !tbaa !16
  br label %bb.bg

bb.bb:                                            ; preds = %bb.az
  %i.fi = icmp eq ptr %.110031136, %i.es
  br i1 %i.fi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store double %i.ex, ptr %.210131132, align 8, !tbaa !16
  store double %i.er, ptr %.210061138, align 8, !tbaa !16
  store double %i.ez, ptr %.110101133, align 8, !tbaa !16
  store double %i.eu, ptr %.110011139, align 8, !tbaa !16
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.fj = icmp eq i32 %.pn1077.in1135, %.pn1075.in1134
  store double %i.ex, ptr %.210131132, align 8, !tbaa !16
  br i1 %i.fj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store double %i.er, ptr %i.es, align 8, !tbaa !16
  store double %i.et, ptr %.210061138, align 8, !tbaa !16
  store double %i.ez, ptr %.110101133, align 8, !tbaa !16
  store double %i.eu, ptr %i.ev, align 8, !tbaa !16
  store double %i.ew, ptr %.110011139, align 8, !tbaa !16
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store double %i.ey, ptr %i.es, align 8, !tbaa !16
  store double %i.er, ptr %.210061138, align 8, !tbaa !16
  store double %i.et, ptr %.110031136, align 8, !tbaa !16
  store double %i.ez, ptr %.110101133, align 8, !tbaa !16
  store double %i.fa, ptr %i.ev, align 8, !tbaa !16
  store double %i.eu, ptr %.110011139, align 8, !tbaa !16
  store double %i.ew, ptr %.11137, align 8, !tbaa !16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.ax, %bb.ay, %bb.av, %bb.bc, %bb.bf, %bb.be, %bb.ba, %bb.ar, %bb.at, %bb.as
  %i.fk = getelementptr inbounds i8, ptr %.210131132, i64 -16 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.110101133, i64 -16 ; 2 uses
  %.pn1077 = sext i32 %i.fd to i64
  %.11003 = getelementptr inbounds [8 x i8], ptr %.11025, i64 %.pn1077 ; 3 uses
  %.1 = getelementptr inbounds [8 x i8], ptr %.11003, i64 %5 ; 2 uses
  %.pn1075 = sext i32 %i.fb to i64
  %.21006 = getelementptr inbounds [8 x i8], ptr %.11025, i64 %.pn1075 ; 3 uses
  %.11001 = getelementptr inbounds [8 x i8], ptr %.21006, i64 %5 ; 2 uses
  %.11016 = getelementptr inbounds i8, ptr %.110161140, i64 %.11016.idx ; 2 uses
  %i.fm = icmp samesign ugt i64 %.110211141.in, 2
  br i1 %i.fm, label %.lr.ph1143, label %._crit_edge1144, !llvm.loop !11

._crit_edge1144:                                  ; preds = %bb.bg, %bb.ap
  %.21013.lcssa = phi ptr [ %i.ek, %bb.ap ], [ %i.fk, %bb.bg ] ; 11 uses
  %.11010.lcssa = phi ptr [ %i.el, %bb.ap ], [ %i.fl, %bb.bg ] ; 10 uses
  %.pn1075.in.lcssa = phi i32 [ %i.em, %bb.ap ], [ %i.fb, %bb.bg ]
  %.pn1077.in.lcssa = phi i32 [ %i.eo, %bb.ap ], [ %i.fd, %bb.bg ]
  %.11003.lcssa = phi ptr [ %.110031125, %bb.ap ], [ %.11003, %bb.bg ] ; 10 uses
  %.1.lcssa = phi ptr [ %.11126, %bb.ap ], [ %.1, %bb.bg ] ; 4 uses
  %.21006.lcssa = phi ptr [ %.210061128, %bb.ap ], [ %.21006, %bb.bg ] ; 9 uses
  %.11001.lcssa = phi ptr [ %.110011129, %bb.ap ], [ %.11001, %bb.bg ] ; 5 uses
  %.11016.lcssa = phi ptr [ %.110161130, %bb.ap ], [ %.11016, %bb.bg ]
  %i.fn = load double, ptr %.21006.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.fo = load double, ptr %.11003.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.fp = load double, ptr %.11001.lcssa, align 8, !tbaa !16 ; 4 uses
  %i.fq = load double, ptr %.1.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.fr = load double, ptr %.21013.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.fs = getelementptr inbounds i8, ptr %.21013.lcssa, i64 -8 ; 9 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !16 ; 6 uses
  %i.fu = load double, ptr %.11010.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.fv = getelementptr inbounds i8, ptr %.11010.lcssa, i64 -8 ; 8 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !16 ; 7 uses
  %i.fx = icmp eq ptr %.21006.lcssa, %.21013.lcssa
  br i1 %i.fx, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %._crit_edge1144
  %i.fy = icmp eq ptr %.11003.lcssa, %.21013.lcssa
  br i1 %i.fy, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store double %i.ft, ptr %.21013.lcssa, align 8, !tbaa !16
  store double %i.fr, ptr %i.fs, align 8, !tbaa !16
  store double %i.fw, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !16
  br label %bb.bx

bb.bj:                                            ; preds = %bb.bh
  %.not1056 = icmp eq ptr %.11003.lcssa, %i.fs
  br i1 %.not1056, label %bb.bx, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store double %i.fo, ptr %i.fs, align 8, !tbaa !16
  store double %i.ft, ptr %.11003.lcssa, align 8, !tbaa !16
  store double %i.fq, ptr %i.fv, align 8, !tbaa !16
  store double %i.fw, ptr %.1.lcssa, align 8, !tbaa !16
  br label %bb.bx

bb.bl:                                            ; preds = %._crit_edge1144
  %i.fz = icmp eq ptr %.21006.lcssa, %i.fs
  %.not1055 = icmp eq ptr %.11003.lcssa, %.21013.lcssa ; 2 uses
  br i1 %i.fz, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %.not1055, label %bb.bx, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ga = icmp eq ptr %.11003.lcssa, %.21006.lcssa
  store double %i.ft, ptr %.21013.lcssa, align 8, !tbaa !16
  br i1 %i.ga, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store double %i.fr, ptr %.11003.lcssa, align 8, !tbaa !16
  store double %i.fw, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !16
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bn
  store double %i.fo, ptr %.21006.lcssa, align 8, !tbaa !16
  store double %i.fr, ptr %.11003.lcssa, align 8, !tbaa !16
  store double %i.fw, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fq, ptr %i.fv, align 8, !tbaa !16
  store double %i.fu, ptr %.1.lcssa, align 8, !tbaa !16
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bl
  br i1 %.not1055, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store double %i.ft, ptr %.21013.lcssa, align 8, !tbaa !16
  store double %i.fn, ptr %i.fs, align 8, !tbaa !16
  store double %i.fr, ptr %.21006.lcssa, align 8, !tbaa !16
  store double %i.fw, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fp, ptr %i.fv, align 8, !tbaa !16
  store double %i.fu, ptr %.11001.lcssa, align 8, !tbaa !16
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %i.gb = icmp eq ptr %.11003.lcssa, %i.fs
  br i1 %i.gb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store double %i.fn, ptr %.21013.lcssa, align 8, !tbaa !16
  store double %i.fr, ptr %.21006.lcssa, align 8, !tbaa !16
  store double %i.fp, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fu, ptr %.11001.lcssa, align 8, !tbaa !16
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.gc = icmp eq i32 %.pn1077.in.lcssa, %.pn1075.in.lcssa
  store double %i.fn, ptr %.21013.lcssa, align 8, !tbaa !16
  br i1 %i.gc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store double %i.fr, ptr %i.fs, align 8, !tbaa !16
  store double %i.ft, ptr %.21006.lcssa, align 8, !tbaa !16
  store double %i.fp, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !16
  store double %i.fw, ptr %.11001.lcssa, align 8, !tbaa !16
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  store double %i.fo, ptr %i.fs, align 8, !tbaa !16
  store double %i.fr, ptr %.21006.lcssa, align 8, !tbaa !16
  store double %i.ft, ptr %.11003.lcssa, align 8, !tbaa !16
  store double %i.fp, ptr %.11010.lcssa, align 8, !tbaa !16
  store double %i.fq, ptr %i.fv, align 8, !tbaa !16
  store double %i.fu, ptr %.11001.lcssa, align 8, !tbaa !16
  store double %i.fw, ptr %.1.lcssa, align 8, !tbaa !16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bo, %bb.bp, %bb.bm, %bb.bt, %bb.bw, %bb.bv, %bb.br, %bb.bi, %bb.bk, %bb.bj
  %i.gd = and i64 %i.d, 1
  %.not1057 = icmp eq i64 %i.gd, 0
  br i1 %.not1057, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ge = getelementptr inbounds i8, ptr %.11010.lcssa, i64 -16 ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.21013.lcssa, i64 -16 ; 2 uses
  %i.gg = load i32, ptr %.11016.lcssa, align 4, !tbaa !14
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %.11025, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %5 ; 2 uses
  %i.gk = load double, ptr %i.gf, align 8, !tbaa !16
  %i.gl = load double, ptr %i.gi, align 8, !tbaa !16
  %i.gm = load double, ptr %i.ge, align 8, !tbaa !16
  %i.gn = load double, ptr %i.gj, align 8, !tbaa !16
  store double %i.gl, ptr %i.gf, align 8, !tbaa !16
  store double %i.gk, ptr %i.gi, align 8, !tbaa !16
  store double %i.gn, ptr %i.ge, align 8, !tbaa !16
  store double %i.gm, ptr %i.gj, align 8, !tbaa !16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.idx1058 = shl nsw i64 %5, 4
  %i.go = getelementptr inbounds i8, ptr %.11025, i64 %.idx1058
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.loopexit1081
  %.21026 = phi ptr [ %i.go, %bb.bz ], [ %.11025, %.loopexit1081 ] ; 6 uses
  %i.gp = and i64 %0, 1
  %.not1059 = icmp eq i64 %i.gp, 0
  br i1 %.not1059, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gq = getelementptr inbounds [8 x i8], ptr %.21026, i64 %2 ; 2 uses
  %i.gr = load i32, ptr %i.e, align 4, !tbaa !14  ; 3 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.e, i64 %9
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !14 ; 3 uses
  %.21017.idx = shl i64 %9, 3                     ; 2 uses
  %.pn10801154 = sext i32 %i.gt to i64
  %.21155 = getelementptr inbounds [8 x i8], ptr %.21026, i64 %.pn10801154 ; 2 uses
  %.pn10791156 = sext i32 %i.gr to i64
  %.31157 = getelementptr inbounds [8 x i8], ptr %.21026, i64 %.pn10791156 ; 2 uses
  %.210171158 = getelementptr inbounds i8, ptr %i.e, i64 %.21017.idx ; 2 uses
  %i.gu = icmp ugt i64 %i.d, 3
  br i1 %i.gu, label %.lr.ph1168.preheader, label %._crit_edge1169

.lr.ph1168.preheader:                             ; preds = %bb.cb
  %i.gv = lshr i64 %i.d, 1
  br label %.lr.ph1168

.lr.ph1168:                                       ; preds = %.lr.ph1168.preheader, %bb.cs
  %.210221166.in = phi i64 [ %.210221166, %bb.cs ], [ %i.gv, %.lr.ph1168.preheader ] ; 2 uses
  %.210171165 = phi ptr [ %.21017, %bb.cs ], [ %.210171158, %.lr.ph1168.preheader ] ; 3 uses
  %.31164 = phi ptr [ %.3, %bb.cs ], [ %.31157, %.lr.ph1168.preheader ] ; 12 uses
  %.21163 = phi ptr [ %.2, %bb.cs ], [ %.21155, %.lr.ph1168.preheader ] ; 10 uses
  %.pn1080.in1162 = phi i32 [ %i.hd, %bb.cs ], [ %i.gt, %.lr.ph1168.preheader ]
  %.pn1079.in1161 = phi i32 [ %i.hb, %bb.cs ], [ %i.gr, %.lr.ph1168.preheader ]
  %.310141160 = phi ptr [ %i.hk, %bb.cs ], [ %i.gq, %.lr.ph1168.preheader ] ; 8 uses
  %.210221166 = add nsw i64 %.210221166.in, -1
  %i.gw = load double, ptr %.310141160, align 8, !tbaa !16 ; 7 uses
  %i.gx = getelementptr inbounds i8, ptr %.310141160, i64 -8 ; 9 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !16 ; 6 uses
  %i.gz = load double, ptr %.31164, align 8, !tbaa !16 ; 3 uses
  %i.ha = load double, ptr %.21163, align 8, !tbaa !16 ; 3 uses
  %i.hb = load i32, ptr %.210171165, align 4, !tbaa !14 ; 3 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.210171165, i64 %9
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !14 ; 3 uses
  %i.he = icmp eq ptr %.31164, %.310141160
  br i1 %i.he, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %.lr.ph1168
  %i.hf = icmp eq ptr %.21163, %.31164
  br i1 %i.hf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store double %i.gy, ptr %.31164, align 8, !tbaa !16
  store double %i.gw, ptr %i.gx, align 8, !tbaa !16
  br label %bb.cs

bb.ce:                                            ; preds = %bb.cc
  %.not1064 = icmp eq ptr %.21163, %i.gx
  br i1 %.not1064, label %bb.cs, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store double %i.ha, ptr %i.gx, align 8, !tbaa !16
  store double %i.gy, ptr %.21163, align 8, !tbaa !16
  br label %bb.cs

bb.cg:                                            ; preds = %.lr.ph1168
  %i.hg = icmp eq ptr %.31164, %i.gx
  %.not1063 = icmp eq ptr %.21163, %.310141160    ; 2 uses
  br i1 %i.hg, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not1063, label %bb.cs, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hh = icmp eq ptr %.21163, %.31164
  store double %i.gy, ptr %.310141160, align 8, !tbaa !16
  br i1 %i.hh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store double %i.gw, ptr %.31164, align 8, !tbaa !16
  br label %bb.cs

bb.ck:                                            ; preds = %bb.ci
  store double %i.ha, ptr %.31164, align 8, !tbaa !16
  store double %i.gw, ptr %.21163, align 8, !tbaa !16
  br label %bb.cs

bb.cl:                                            ; preds = %bb.cg
  br i1 %.not1063, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store double %i.gy, ptr %.21163, align 8, !tbaa !16
  store double %i.gz, ptr %i.gx, align 8, !tbaa !16
  store double %i.gw, ptr %.31164, align 8, !tbaa !16
  br label %bb.cs

bb.cn:                                            ; preds = %bb.cl
  %i.hi = icmp eq ptr %.21163, %i.gx
  br i1 %i.hi, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store double %i.gz, ptr %.310141160, align 8, !tbaa !16
  store double %i.gw, ptr %.31164, align 8, !tbaa !16
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.hj = icmp eq i32 %.pn1080.in1162, %.pn1079.in1161
  store double %i.gz, ptr %.310141160, align 8, !tbaa !16
  br i1 %i.hj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store double %i.gw, ptr %i.gx, align 8, !tbaa !16
  store double %i.gy, ptr %.31164, align 8, !tbaa !16
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  store double %i.ha, ptr %i.gx, align 8, !tbaa !16
  store double %i.gw, ptr %.31164, align 8, !tbaa !16
  store double %i.gy, ptr %.21163, align 8, !tbaa !16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cj, %bb.ck, %bb.ch, %bb.co, %bb.cr, %bb.cq, %bb.cm, %bb.cd, %bb.cf, %bb.ce
  %i.hk = getelementptr inbounds i8, ptr %.310141160, i64 -16 ; 2 uses
  %.pn1080 = sext i32 %i.hd to i64
  %.2 = getelementptr inbounds [8 x i8], ptr %.21026, i64 %.pn1080 ; 2 uses
  %.pn1079 = sext i32 %i.hb to i64
  %.3 = getelementptr inbounds [8 x i8], ptr %.21026, i64 %.pn1079 ; 2 uses
  %.21017 = getelementptr inbounds i8, ptr %.210171165, i64 %.21017.idx ; 2 uses
  %i.hl = icmp samesign ugt i64 %.210221166.in, 2
  br i1 %i.hl, label %.lr.ph1168, label %._crit_edge1169, !llvm.loop !12

._crit_edge1169:                                  ; preds = %bb.cs, %bb.cb
  %.31014.lcssa = phi ptr [ %i.gq, %bb.cb ], [ %i.hk, %bb.cs ] ; 11 uses
  %.pn1079.in.lcssa = phi i32 [ %i.gr, %bb.cb ], [ %i.hb, %bb.cs ]
  %.pn1080.in.lcssa = phi i32 [ %i.gt, %bb.cb ], [ %i.hd, %bb.cs ]
  %.2.lcssa = phi ptr [ %.21155, %bb.cb ], [ %.2, %bb.cs ] ; 10 uses
  %.3.lcssa = phi ptr [ %.31157, %bb.cb ], [ %.3, %bb.cs ] ; 9 uses
  %.21017.lcssa = phi ptr [ %.210171158, %bb.cb ], [ %.21017, %bb.cs ]
  %i.hm = load double, ptr %.31014.lcssa, align 8, !tbaa !16 ; 7 uses
  %i.hn = getelementptr inbounds i8, ptr %.31014.lcssa, i64 -8 ; 9 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !16 ; 6 uses
  %i.hp = load double, ptr %.3.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.hq = load double, ptr %.2.lcssa, align 8, !tbaa !16 ; 3 uses
  %i.hr = icmp eq ptr %.3.lcssa, %.31014.lcssa
  br i1 %i.hr, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %._crit_edge1169
  %i.hs = icmp eq ptr %.2.lcssa, %.31014.lcssa
  br i1 %i.hs, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store double %i.ho, ptr %.31014.lcssa, align 8, !tbaa !16
  store double %i.hm, ptr %i.hn, align 8, !tbaa !16
  br label %bb.dj

bb.cv:                                            ; preds = %bb.ct
  %.not1061 = icmp eq ptr %.2.lcssa, %i.hn
  br i1 %.not1061, label %bb.dj, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store double %i.hq, ptr %i.hn, align 8, !tbaa !16
  store double %i.ho, ptr %.2.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.cx:                                            ; preds = %._crit_edge1169
  %i.ht = icmp eq ptr %.3.lcssa, %i.hn
  %.not1060 = icmp eq ptr %.2.lcssa, %.31014.lcssa ; 2 uses
  br i1 %i.ht, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not1060, label %bb.dj, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hu = icmp eq ptr %.2.lcssa, %.3.lcssa
  store double %i.ho, ptr %.31014.lcssa, align 8, !tbaa !16
  br i1 %i.hu, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store double %i.hm, ptr %.2.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.db:                                            ; preds = %bb.cz
  store double %i.hq, ptr %.3.lcssa, align 8, !tbaa !16
  store double %i.hm, ptr %.2.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.dc:                                            ; preds = %bb.cx
  br i1 %.not1060, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store double %i.ho, ptr %.31014.lcssa, align 8, !tbaa !16
  store double %i.hp, ptr %i.hn, align 8, !tbaa !16
  store double %i.hm, ptr %.3.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.de:                                            ; preds = %bb.dc
  %i.hv = icmp eq ptr %.2.lcssa, %i.hn
  br i1 %i.hv, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store double %i.hp, ptr %.31014.lcssa, align 8, !tbaa !16
  store double %i.hm, ptr %.3.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  %i.hw = icmp eq i32 %.pn1080.in.lcssa, %.pn1079.in.lcssa
  store double %i.hp, ptr %.31014.lcssa, align 8, !tbaa !16
  br i1 %i.hw, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store double %i.hm, ptr %i.hn, align 8, !tbaa !16
  store double %i.ho, ptr %.3.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  store double %i.hq, ptr %i.hn, align 8, !tbaa !16
  store double %i.hm, ptr %.3.lcssa, align 8, !tbaa !16
  store double %i.ho, ptr %.2.lcssa, align 8, !tbaa !16
  br label %bb.dj

bb.dj:                                            ; preds = %bb.da, %bb.db, %bb.cy, %bb.df, %bb.di, %bb.dh, %bb.dd, %bb.cu, %bb.cw, %bb.cv
  %i.hx = and i64 %i.d, 1
  %.not1062 = icmp eq i64 %i.hx, 0
  br i1 %.not1062, label %.loopexit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hy = getelementptr inbounds i8, ptr %.31014.lcssa, i64 -16 ; 2 uses
  %i.hz = load i32, ptr %.21017.lcssa, align 4, !tbaa !14
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %.21026, i64 %i.ia ; 2 uses
  %i.ic = load double, ptr %i.hy, align 8, !tbaa !16
  %i.id = load double, ptr %i.ib, align 8, !tbaa !16
  store double %i.id, ptr %i.hy, align 8, !tbaa !16
  store double %i.ic, ptr %i.ib, align 8, !tbaa !16
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph1180
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph1180.epil.preheader

.lr.ph1180.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1180.preheader
  %.010041178.epil.init = phi ptr [ %i.m, %.lr.ph1180.preheader ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.010111177.epil.init = phi ptr [ %i.l, %.lr.ph1180.preheader ], [ %i.at, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1321 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1321)
  br label %.lr.ph1180.epil

.lr.ph1180.epil:                                  ; preds = %.lr.ph1180.epil, %.lr.ph1180.epil.preheader
  %.010041178.epil = phi ptr [ %i.ih, %.lr.ph1180.epil ], [ %.010041178.epil.init, %.lr.ph1180.epil.preheader ] ; 3 uses
  %.010111177.epil = phi ptr [ %i.ig, %.lr.ph1180.epil ], [ %.010111177.epil.init, %.lr.ph1180.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1180.epil ], [ 0, %.lr.ph1180.epil.preheader ]
  %i.ie = load double, ptr %.010111177.epil, align 8, !tbaa !16
  %i.if = load double, ptr %.010041178.epil, align 8, !tbaa !16
  store double %i.if, ptr %.010111177.epil, align 8, !tbaa !16
  store double %i.ie, ptr %.010041178.epil, align 8, !tbaa !16
  %i.ig = getelementptr inbounds [8 x i8], ptr %.010111177.epil, i64 %5
  %i.ih = getelementptr inbounds [8 x i8], ptr %.010041178.epil, i64 %5
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph1180.epil, !llvm.loop !13

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1180.epil, %bb.ca, %bb.dk, %bb.dj, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !17}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, !17}
!13 = distinct !{!13, !18}
!14 = !{!5, !5, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
