Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_petite?download=true
inline.NumInlined: 26
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Petite: Old EP: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Petite: In troubles while attempting to decrypt old EP, using bogus %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Petite: Sections dump:\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Petite: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Petite: Rebuilding failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Petite: maximum number of sections exceeded, giving up.\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Petite: Found petite code in sect%d(%x). Let's strip it.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Petite: Encrypted EP: %x | Array of imports: %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @petite_inflate2x_1to9(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 14 uses
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 11 uses
  %i.d = icmp eq i32 %8, 2                        ; 2 uses
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %8, 1
  br i1 %i.e, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink1683 = phi i64 [ 440, %bb.a ], [ 376, %bb.b ]
  %.0673.ph = phi i32 [ 853, %bb.a ], [ 803, %bb.b ]
  %.0672.ph = phi i32 [ 53, %bb.a ], [ 52, %bb.b ]
  %i.f = add i32 %4, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink1683
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.1699 = phi ptr [ null, %bb.b ], [ %i.l, %.sink.split ] ; 2 uses
  %.0673 = phi i32 [ 853, %bb.b ], [ %.0673.ph, %.sink.split ] ; 4 uses
  %.0672 = phi i32 [ 53, %bb.b ], [ %.0672.ph, %.sink.split ] ; 3 uses
  %i.m = icmp ult i32 %2, 4
  %.not1248 = icmp ult ptr %.1699, %0
  %or.cond1249 = select i1 %i.m, i1 true, i1 %.not1248
  br i1 %or.cond1249, label %.thread1042, label %.lr.ph1259

.lr.ph1259:                                       ; preds = %bb.c
  %i.n = zext i32 %2 to i64                       ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 17 uses
  %i.p = icmp ult i32 %2, 8
  %i.q = xor i64 %i.a, -1
  %i.r = icmp ugt i32 %2, 7
  %.not1338 = icmp eq i32 %4, 0
  %invariant.op = add nuw nsw i64 %i.a, %i.n      ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -1 ; 8 uses
  %i.t = zext nneg i32 %.0673 to i64
  %i.u = sub nsw i64 0, %i.t                      ; 3 uses
  %i.v = add nuw nsw i32 %.0672, %.0673
  %i.w = zext nneg i32 %.0672 to i64
  %i.x = sub nsw i64 0, %i.w                      ; 2 uses
  %i.y = icmp ugt i32 %2, 436
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph1259, %.thread1022
  %.06551257 = phi ptr [ null, %.lr.ph1259 ], [ %.3658, %.thread1022 ] ; 31 uses
  %.06591256 = phi i32 [ 0, %.lr.ph1259 ], [ %.3662, %.thread1022 ] ; 3 uses
  %.06631255 = phi i32 [ 0, %.lr.ph1259 ], [ %.6, %.thread1022 ]
  %.06681254 = phi i32 [ 0, %.lr.ph1259 ], [ %.3671, %.thread1022 ] ; 13 uses
  %.06811253 = phi i32 [ 0, %.lr.ph1259 ], [ %.6687, %.thread1022 ] ; 15 uses
  %.06881252 = phi i32 [ 0, %.lr.ph1259 ], [ %.15, %.thread1022 ] ; 18 uses
  %.06951251 = phi i32 [ 0, %.lr.ph1259 ], [ %.2697, %.thread1022 ] ; 3 uses
  %.27001250 = phi ptr [ %.1699, %.lr.ph1259 ], [ %.5703, %.thread1022 ] ; 7 uses
  %.06631255.fr = freeze i32 %.06631255           ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.27001250, i64 4 ; 3 uses
  %.not770.not = icmp ugt ptr %i.z, %i.o
  br i1 %.not770.not, label %._crit_edge1260, label %bb.e

._crit_edge1260:                                  ; preds = %.thread1022, %bb.d
  %.0655.lcssa = phi ptr [ %.06551257, %bb.d ], [ %.3658, %.thread1022 ] ; 2 uses
  %.not771 = icmp eq ptr %.0655.lcssa, null
  br i1 %.not771, label %.thread1042, label %.thread1042.sink.split

bb.e:                                             ; preds = %bb.d
  %.2700.val = load i32, ptr %.27001250, align 1  ; 5 uses
  %.not772 = icmp eq i32 %.2700.val, 0
  br i1 %.not772, label %bb.f, label %bb.af

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp slt i32 %.06681254, 1
  br i1 %i.aa, label %.thread1042, label %.preheader1080

.preheader1080:                                   ; preds = %bb.f
  %i.ab = add nsw i32 %.06681254, -1              ; 2 uses
  %.not1340 = icmp eq i32 %.06681254, 1
  br i1 %.not1340, label %._crit_edge1271, label %.preheader1079.us.preheader

.preheader1079.us.preheader:                      ; preds = %.preheader1080
  %wide.trip.count1457 = zext nneg i32 %i.ab to i64
  br label %.preheader1079.us

.preheader1079.us:                                ; preds = %.preheader1079.us.preheader, %..loopexit_crit_edge.us
  %.pre = load i32, ptr %.06551257, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.preheader1079.us, %bb.i
  %i.ac = phi i32 [ %.pre, %.preheader1079.us ], [ %i.ao, %bb.i ] ; 3 uses
  %indvars.iv1454 = phi i64 [ 0, %.preheader1079.us ], [ %indvars.iv.next1455, %bb.i ] ; 2 uses
  %.16261266.us = phi i32 [ 0, %.preheader1079.us ], [ %.2627.us, %bb.i ]
  %indvars.iv.next1455 = add nuw nsw i64 %indvars.iv1454, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv.next1455 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 3 uses
  %.not789.us = icmp ugt i32 %i.ac, %i.ae
  br i1 %.not789.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1454 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !11
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !8
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !10
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi i32 [ %i.ac, %bb.h ], [ %i.ae, %bb.g ]
  %.2627.us = phi i32 [ 1, %bb.h ], [ %.16261266.us, %bb.g ] ; 2 uses
  %exitcond1458.not = icmp eq i64 %indvars.iv.next1455, %wide.trip.count1457
  br i1 %exitcond1458.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !12

..loopexit_crit_edge.us:                          ; preds = %bb.i
  %.not773.us = icmp eq i32 %.2627.us, 0
  br i1 %.not773.us, label %.lr.ph1270.preheader, label %.preheader1079.us, !llvm.loop !14

.lr.ph1270.preheader:                             ; preds = %..loopexit_crit_edge.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 1) ; 2 uses
  %wide.trip.count1462 = zext nneg i32 %smax to i64 ; 2 uses
  %.pre1516 = load i32, ptr %.06551257, align 4, !tbaa !8 ; 2 uses
  %xtraiter1869 = and i64 %wide.trip.count1462, 1
  %i.ap = icmp slt i32 %.06681254, 3
  br i1 %i.ap, label %.lr.ph1270.epil.preheader, label %.lr.ph1270.preheader.new

.lr.ph1270.preheader.new:                         ; preds = %.lr.ph1270.preheader
  %unroll_iter = and i64 %wide.trip.count1462, 2147483646
  br label %.lr.ph1270

.lr.ph1270:                                       ; preds = %bb.l, %.lr.ph1270.preheader.new
  %i.aq = phi i32 [ %.pre1516, %.lr.ph1270.preheader.new ], [ %i.bb, %bb.l ]
  %indvars.iv1459 = phi i64 [ 0, %.lr.ph1270.preheader.new ], [ %indvars.iv.next1460.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1270.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.ar = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1459
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %indvars.iv.next1460 = or disjoint i64 %indvars.iv1459, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv.next1460
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 2 uses
  %i.aw = sub i32 %i.av, %i.aq                    ; 2 uses
  %.not788 = icmp eq i32 %i.at, %i.aw
  br i1 %.not788, label %.lr.ph1270.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph1270
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !11
  br label %.lr.ph1270.1

.lr.ph1270.1:                                     ; preds = %.lr.ph1270, %bb.j
  %i.ax = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv.next1460
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11
  %indvars.iv.next1460.1 = add nuw nsw i64 %indvars.iv1459, 2 ; 3 uses
  %i.ba = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv.next1460.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 3 uses
  %i.bc = sub i32 %i.bb, %i.av                    ; 2 uses
  %.not788.1 = icmp eq i32 %i.az, %i.bc
  br i1 %.not788.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph1270.1
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph1270.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1271.loopexit.unr-lcssa, label %.lr.ph1270, !llvm.loop !15

._crit_edge1271.loopexit.unr-lcssa:               ; preds = %bb.l
  %lcmp.mod1870.not = icmp eq i64 %xtraiter1869, 0
  br i1 %lcmp.mod1870.not, label %._crit_edge1271, label %.lr.ph1270.epil.preheader

.lr.ph1270.epil.preheader:                        ; preds = %._crit_edge1271.loopexit.unr-lcssa, %.lr.ph1270.preheader
  %.epil.init = phi i32 [ %.pre1516, %.lr.ph1270.preheader ], [ %i.bb, %._crit_edge1271.loopexit.unr-lcssa ]
  %indvars.iv1459.epil.init = phi i64 [ 0, %.lr.ph1270.preheader ], [ %indvars.iv.next1460.1, %._crit_edge1271.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1871 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod1871)
  %i.bd = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1459.epil.init
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1459.epil.init
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = sub i32 %i.bi, %.epil.init              ; 2 uses
  %.not788.epil = icmp eq i32 %i.bf, %i.bj
  br i1 %.not788.epil, label %._crit_edge1271, label %bb.m

bb.m:                                             ; preds = %.lr.ph1270.epil.preheader
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !11
  br label %._crit_edge1271

._crit_edge1271:                                  ; preds = %._crit_edge1271.loopexit.unr-lcssa, %bb.m, %.lr.ph1270.epil.preheader, %.preheader1080
  %.not774 = icmp eq i32 %.06881252, 0
  br i1 %.not774, label %bb.z, label %bb.n

bb.n:                                             ; preds = %._crit_edge1271
  %i.bk = add i32 %6, 5                           ; 2 uses
  %i.bl = add i32 %i.bk, %5                       ; 2 uses
  %i.bm = zext i32 %.06811253 to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm ; 4 uses
  br i1 %i.d, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.n
  %.not7761304 = icmp ult i32 %.06811253, %1
  br i1 %.not7761304, label %.critedge, label %.lr.ph1309

.lr.ph1309:                                       ; preds = %.preheader
  %.not1342 = icmp eq i32 %.06631255.fr, 0
  %i.bo = add i32 %4, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.bp ; 2 uses
  br i1 %.not1342, label %.lr.ph1309.split, label %.lr.ph1309.split.us.preheader

.lr.ph1309.split.us.preheader:                    ; preds = %.lr.ph1309
  %i.br = sub nsw i64 4, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.br  ; 2 uses
  %scevgep1465 = getelementptr i8, ptr %scevgep, i64 %i.bm
  %.not776.us = icmp ult ptr %scevgep1465, %0
  %invariant.op2013 = sub i64 4, %i.a
  br label %.lr.ph1309.split.us

.lr.ph1309.split.us:                              ; preds = %.lr.ph1309.split.us.preheader, %.critedge7.us
  %.06131308.us = phi ptr [ %i.bs, %.critedge7.us ], [ %i.bn, %.lr.ph1309.split.us.preheader ] ; 2 uses
  %.06171307.us = phi i32 [ %.us-phi1466, %.critedge7.us ], [ 0, %.lr.ph1309.split.us.preheader ] ; 2 uses
  %.06211306.us = phi i32 [ %.us-phi1465, %.critedge7.us ], [ %i.bl, %.lr.ph1309.split.us.preheader ] ; 2 uses
  %.16891305.us = phi i32 [ %.us-phi, %.critedge7.us ], [ %.06881252, %.lr.ph1309.split.us.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.06131308.us, i64 4 ; 2 uses
  %.not777.us.not = icmp ugt ptr %i.bs, %i.o
  br i1 %.not777.us.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph1309.split.us
  %.0613.val891.us = load i32, ptr %.06131308.us, align 1 ; 2 uses
  %.not778.us = icmp eq i32 %.0613.val891.us, 0
  br i1 %.not778.us, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = sext i32 %.0613.val891.us to i64        ; 4 uses
  %11 = getelementptr inbounds i8, ptr %i.c, i64 %i.bt ; 3 uses
  %.not7791272.us = icmp slt i64 %i.bt, %i.a
  br i1 %.not7791272.us, label %.critedge, label %.lr.ph1278.us.preheader

.lr.ph1278.us.preheader:                          ; preds = %bb.p
  %i.bu = getelementptr i8, ptr %scevgep, i64 %i.bt
  %scevgep1464.fr = freeze ptr %i.bu
  %.not779.us1318 = icmp ult ptr %scevgep1464.fr, %0
  %.reass.reass = add i64 %i.bt, %invariant.op2013
  %.not780.us1313.not.us = icmp sgt i64 %.reass.reass, %i.n ; 2 uses
  br i1 %.not779.us1318, label %.lr.ph1278.us.preheader.split.us, label %.lr.ph1278.us.preheader1731, !llvm.loop !16

.lr.ph1278.us.preheader1731:                      ; preds = %.lr.ph1278.us.preheader
  br i1 %.not780.us1313.not.us, label %.critedge, label %.lr.ph1821

.lr.ph1821:                                       ; preds = %.lr.ph1278.us.preheader1731
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %.lr.ph1278.us.a

.lr.ph1278.us.preheader.split.us:                 ; preds = %.lr.ph1278.us.preheader
  br i1 %.not780.us1313.not.us, label %.critedge, label %13

13:                                               ; preds = %.lr.ph1278.us.preheader.split.us
  %.0612.val.us1314.us = load i32, ptr %11, align 1
  %.not781.us1315.us = icmp eq i32 %.0612.val.us1314.us, 0
  br i1 %.not781.us1315.us, label %.critedge7.us, label %.critedge

.lr.ph1278.us.a:                                  ; preds = %.lr.ph1821, %bb.t
  %.06121276.us1311 = phi ptr [ %12, %.lr.ph1821 ], [ %14, %bb.t ] ; 2 uses
  %.16181275.us = phi i32 [ %.16891305.us, %.lr.ph1821 ], [ %i.cg, %bb.t ] ; 2 uses
  %.16221274.us = phi i32 [ %.06211306.us, %.lr.ph1821 ], [ %.2623.us, %bb.t ] ; 5 uses
  %.26901273.us1312 = phi i32 [ %.06171307.us, %.lr.ph1821 ], [ %.3620.us, %bb.t ] ; 4 uses
  %.06121276.us13111817 = phi ptr [ %11, %.lr.ph1821 ], [ %.06121276.us1311, %bb.t ]
  %.0612.val.us1314 = load i32, ptr %.06121276.us13111817, align 1 ; 2 uses
  %.not781.us1315 = icmp eq i32 %.0612.val.us1314, 0
  br i1 %.not781.us1315, label %.critedge7.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph1278.us.a
  %i.bv = icmp sgt i32 %.0612.val.us1314, -1
  br i1 %i.bv, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bw = add nsw i32 %.26901273.us1312, -1
  %i.bx = icmp slt i32 %.26901273.us1312, 1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = add i32 %.16221274.us, 5                ; 2 uses
  %i.bz = and i32 %i.by, 7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.2623.us = phi i32 [ %i.by, %bb.s ], [ %.16221274.us, %bb.r ], [ %.16221274.us, %bb.q ] ; 2 uses
  %.3620.us = phi i32 [ %i.bz, %bb.s ], [ %i.bw, %bb.r ], [ %.26901273.us1312, %bb.q ]
  %.0611.us = phi i32 [ %.16221274.us, %bb.s ], [ -1074785481, %bb.r ], [ -1074785481, %bb.q ] ; 2 uses
  %i.ca = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.cb = add i32 %i.ca, %5
  %i.cc = icmp ult i32 %i.cb, %.0611.us
  %i.cd = sext i1 %i.cc to i32
  %i.ce = icmp ult i32 %.0611.us, %.2623.us
  %i.cf = sext i1 %i.ce to i32
  %spec.select.us1316 = add i32 %.16181275.us, %i.cf
  %.4692.us1317 = add i32 %spec.select.us1316, %i.cd ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %.4692.us1317, i32 %.4692.us1317, i32 29)
  %14 = getelementptr inbounds nuw i8, ptr %.06121276.us1311, i64 4 ; 2 uses
  %.not780.us1313.not = icmp ugt ptr %14, %i.o
  br i1 %.not780.us1313.not, label %.critedge, label %.lr.ph1278.us.a

.critedge7.us:                                    ; preds = %.lr.ph1278.us.a, %13
  %.us-phi = phi i32 [ %.16891305.us, %13 ], [ %.16181275.us, %.lr.ph1278.us.a ]
  %.us-phi1465 = phi i32 [ %.06211306.us, %13 ], [ %.16221274.us, %.lr.ph1278.us.a ]
  %.us-phi1466 = phi i32 [ %.06171307.us, %13 ], [ %.26901273.us1312, %.lr.ph1278.us.a ]
  br i1 %.not776.us, label %.critedge, label %.lr.ph1309.split.us

.lr.ph1309.split:                                 ; preds = %.lr.ph1309
  %i.ch = icmp ugt i32 %i.bl, -1074785481
  %i.ci = sext i1 %i.ch to i32
  %i.cj = sub nsw i64 4, %i.a
  %scevgep1466 = getelementptr i8, ptr %0, i64 %i.cj ; 3 uses
  %scevgep1468 = getelementptr i8, ptr %scevgep1466, i64 %i.bm
  %scevgep1474.fr = freeze ptr %scevgep1468
  %.not776 = icmp ult ptr %scevgep1474.fr, %0
  %15 = sub nsw i64 %i.bm, %i.a
  %16 = add nsw i64 %15, 4
  %.not777.not.us = icmp sgt i64 %16, %i.n        ; 2 uses
  br i1 %.not776, label %.lr.ph1309.split.split.us, label %.lr.ph1309.split.split

.lr.ph1309.split.split.us:                        ; preds = %.lr.ph1309.split
  br i1 %.not777.not.us, label %.critedge, label %17

17:                                               ; preds = %.lr.ph1309.split.split.us
  %.0613.val891.us1477 = load i32, ptr %i.bn, align 1 ; 2 uses
  %.not778.us1478 = icmp eq i32 %.0613.val891.us1477, 0
  br i1 %.not778.us1478, label %.critedge.thread, label %18

18:                                               ; preds = %17
  %19 = sext i32 %.0613.val891.us1477 to i64      ; 3 uses
  %.not7791272.us1479 = icmp slt i64 %19, %i.a
  %scevgep1470.us = getelementptr i8, ptr %scevgep1466, i64 %19
  %scevgep1470.us.fr = freeze ptr %scevgep1470.us
  %.not779.us.us = icmp ult ptr %scevgep1470.us.fr, %0
  %or.cond1726 = or i1 %.not7791272.us1479, %.not779.us.us
  br i1 %or.cond1726, label %.critedge, label %.lr.ph1278.us1480.preheader, !llvm.loop !16

.lr.ph1278.us1480.preheader:                      ; preds = %18
  %20 = getelementptr inbounds i8, ptr %i.c, i64 %19
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph1278.us1480.preheader, %bb.v
  %.06131308 = phi ptr [ %i.ck, %bb.v ], [ %20, %.lr.ph1278.us1480.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.06131308, i64 4 ; 2 uses
  %.not777.not.a = icmp ugt ptr %i.ck, %i.o
  br i1 %.not777.not.a, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.0613.val891.a = load i32, ptr %.06131308, align 1
  %.not778.a = icmp eq i32 %.0613.val891.a, 0
  br i1 %.not778.a, label %.critedge, label %bb.u

.lr.ph1309.split.split:                           ; preds = %.lr.ph1309.split
  br i1 %.not777.not.us, label %.critedge, label %.lr.ph1829

.lr.ph1829:                                       ; preds = %.lr.ph1309.split.split
  %21 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %invariant.op2014 = sub i64 4, %i.a
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph1829, %.critedge7
  %22 = phi ptr [ %21, %.lr.ph1829 ], [ %28, %.critedge7 ] ; 2 uses
  %.168913051828 = phi i32 [ %.06881252, %.lr.ph1829 ], [ %.2690.lcssa, %.critedge7 ] ; 3 uses
  %.061313081827 = phi ptr [ %i.bn, %.lr.ph1829 ], [ %22, %.critedge7 ]
  %.0613.val891 = load i32, ptr %.061313081827, align 1 ; 2 uses
  %.not778 = icmp eq i32 %.0613.val891, 0
  br i1 %.not778, label %.critedge.thread, label %.lr.ph1278.preheader.a

.lr.ph1278.preheader.a:                           ; preds = %bb.w
  %23 = sext i32 %.0613.val891 to i64             ; 4 uses
  %scevgep1467 = getelementptr inbounds i8, ptr %i.c, i64 %23 ; 3 uses
  %.not7791272 = icmp slt i64 %23, %i.a
  br i1 %.not7791272, label %.critedge, label %.lr.ph1278.a

.lr.ph1278.a:                                     ; preds = %.lr.ph1278.preheader.a
  %scevgep1470 = getelementptr i8, ptr %scevgep1466, i64 %23
  %scevgep1470.fr = freeze ptr %scevgep1470
  %.not779.us = icmp ult ptr %scevgep1470.fr, %0
  %.reass1721.reass = add i64 %23, %invariant.op2014
  %.not780.us.not.us = icmp sgt i64 %.reass1721.reass, %i.n ; 2 uses
  br i1 %.not779.us, label %.lr.ph1278.preheader.split.us, label %.lr.ph1278.preheader1728, !llvm.loop !16

.lr.ph1278.preheader1728:                         ; preds = %.lr.ph1278.a
  br i1 %.not780.us.not.us, label %.critedge, label %.lr.ph1825

.lr.ph1825:                                       ; preds = %.lr.ph1278.preheader1728
  %24 = getelementptr inbounds nuw i8, ptr %scevgep1467, i64 4
  br label %bb.x

.lr.ph1278.preheader.split.us:                    ; preds = %.lr.ph1278.a
  br i1 %.not780.us.not.us, label %.critedge, label %25

25:                                               ; preds = %.lr.ph1278.preheader.split.us
  %.0612.val.us.us = load i32, ptr %scevgep1467, align 1
  %.not781.us.us = icmp eq i32 %.0612.val.us.us, 0
  br i1 %.not781.us.us, label %.critedge7, label %.critedge

bb.x:                                             ; preds = %.lr.ph1825, %bb.y
  %26 = phi ptr [ %24, %.lr.ph1825 ], [ %27, %bb.y ] ; 2 uses
  %.26901273.us1824 = phi i32 [ %.168913051828, %.lr.ph1825 ], [ %i.cp, %bb.y ] ; 2 uses
  %.06121276.us1823 = phi ptr [ %scevgep1467, %.lr.ph1825 ], [ %26, %bb.y ]
  %.0612.val.us = load i32, ptr %.06121276.us1823, align 1
  %.not781.us = icmp eq i32 %.0612.val.us, 0
  br i1 %.not781.us, label %.critedge7, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.cm = add i32 %i.cl, %5
  %i.cn = icmp ult i32 %i.cm, -1074785481
  %i.co = sext i1 %i.cn to i32
  %spec.select.us = add i32 %.26901273.us1824, %i.ci
  %.4692.us = add i32 %spec.select.us, %i.co      ; 2 uses
  %i.cp = tail call i32 @llvm.fshl.i32(i32 %.4692.us, i32 %.4692.us, i32 29)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 4 ; 2 uses
  %.not780.us.not = icmp ugt ptr %27, %i.o
  br i1 %.not780.us.not, label %.critedge, label %bb.x

.critedge7:                                       ; preds = %bb.x, %25
  %.2690.lcssa = phi i32 [ %.168913051828, %25 ], [ %.26901273.us1824, %bb.x ]
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %.not777.not = icmp ugt ptr %28, %i.o
  br i1 %.not777.not, label %.critedge, label %bb.w

.critedge.thread:                                 ; preds = %bb.o, %bb.w, %17, %bb.n
  %.6694992 = phi i32 [ %.06881252, %bb.n ], [ %.168913051828, %bb.w ], [ %.06881252, %17 ], [ %.16891305.us, %bb.o ]
  %i.cq = add i32 %.6694992, %i.bk                ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %i.cq) #6
  br label %bb.z

.critedge:                                        ; preds = %.lr.ph1278.us.preheader.split.us, %bb.p, %.lr.ph1309.split.us, %.critedge7.us, %13, %.lr.ph1278.us.preheader1731, %bb.t, %.critedge7, %.lr.ph1278.preheader.a, %.lr.ph1278.preheader.split.us, %25, %.lr.ph1278.preheader1728, %bb.y, %bb.v, %bb.u, %.lr.ph1309.split.split, %18, %.lr.ph1309.split.split.us, %.preheader
  %i.cr = load i32, ptr %.06551257, align 4, !tbaa !8 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.cr) #6
  br label %bb.z

bb.z:                                             ; preds = %.critedge.thread, %.critedge, %._crit_edge1271
  %.8 = phi i32 [ 0, %._crit_edge1271 ], [ %i.cq, %.critedge.thread ], [ %i.cr, %.critedge ]
  %wide.trip.count1490 = zext nneg i32 %.06681254 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.06551257, i64 8
  store i32 0, ptr %i.cs, align 4, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %.06551257, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !10 ; 3 uses
  %i.cv = add i32 %i.cu, -1
  %or.cond846.not.peel = icmp uge i32 %i.cv, %2
  %.not787.peel = icmp ugt i32 %i.cu, %2
  %or.cond = or i1 %or.cond846.not.peel, %.not787.peel
  br i1 %or.cond, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = zext i32 %i.cu to i64
  %i.cx = load i32, ptr %.06551257, align 4, !tbaa !8
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.cz, i64 %i.cw, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %exitcond1491.peel.not = icmp eq i32 %.06681254, 1
  br i1 %exitcond1491.peel.not, label %.lr.ph1333.preheader, label %.lr.ph1329.peel.next

.lr.ph1329.peel.next:                             ; preds = %bb.ab, %bb.ae
  %indvars.iv1469 = phi i64 [ %indvars.iv.next1470, %bb.ae ], [ 1, %bb.ab ] ; 3 uses
  %i.da = getelementptr [36 x i8], ptr %.06551257, i64 %indvars.iv1469 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 -28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !17
  %i.dd = getelementptr i8, ptr %i.da, i64 -24
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !10
  %i.df = add i32 %i.de, %i.dc                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1469 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dk = add i32 %i.dj, -1
  %or.cond846.not = icmp ult i32 %i.dk, %2
  br i1 %or.cond846.not, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph1329.peel.next
  %i.dl = zext i32 %i.df to i64                   ; 2 uses
  %i.dm = zext i32 %i.dj to i64                   ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, %i.dl
  %.not787 = icmp samesign ugt i64 %i.dn, %i.n
  br i1 %.not787, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl
  %i.dp = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dr, i64 %i.dm, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1329.peel.next, %bb.ac, %bb.ad
  %indvars.iv.next1470 = add nuw nsw i64 %indvars.iv1469, 1 ; 2 uses
  %exitcond1491.not = icmp eq i64 %indvars.iv.next1470, %wide.trip.count1490
  br i1 %exitcond1491.not, label %.lr.ph1333.preheader, label %.lr.ph1329.peel.next, !llvm.loop !18

.lr.ph1333.preheader:                             ; preds = %bb.ae, %bb.ab
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  %wide.trip.count1514 = zext nneg i32 %.06681254 to i64
  br label %.lr.ph1333

.lr.ph1333:                                       ; preds = %.lr.ph1333.preheader, %.lr.ph1333
  %indvars.iv1493 = phi i64 [ 0, %.lr.ph1333.preheader ], [ %indvars.iv.next1494, %.lr.ph1333 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [36 x i8], ptr %.06551257, i64 %indvars.iv1493 ; 4 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !10
  %i.ea = trunc nuw nsw i64 %indvars.iv1493 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.ea, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz) #6
  %indvars.iv.next1494 = add nuw nsw i64 %indvars.iv1493, 1 ; 2 uses
  %exitcond1515.not = icmp eq i64 %indvars.iv.next1494, %wide.trip.count1514
  br i1 %exitcond1515.not, label %._crit_edge1334, label %.lr.ph1333, !llvm.loop !20

._crit_edge1334:                                  ; preds = %.lr.ph1333
  %i.eb = tail call i32 @cli_rebuildpe(ptr noundef %0, ptr noundef nonnull %.06551257, i32 noundef %.06681254, i32 noundef %5, i32 noundef %.8, i32 noundef %9, i32 noundef %10, i32 noundef %7) #6
  %.not782 = icmp eq i32 %i.eb, 0
  br i1 %.not782, label %.thread1042.sink.split.sink.split, label %.thread1042.sink.split

bb.af:                                            ; preds = %bb.e
  %.not790 = icmp sgt i32 %.2700.val, -1
  br i1 %.not790, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.p, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %.27001250, i64 12 ; 2 uses
  %.not833.not = icmp ugt ptr %i.ec, %i.o
  br i1 %.not833.not, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not834 = icmp eq ptr %.06551257, null
  br i1 %.not834, label %.thread1042, label %.thread1042.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %.27001250, i64 8
  %.val890 = load i32, ptr %i.ed, align 1         ; 2 uses
  %i.ee = add nsw i32 %.val890, 4
  %.val889 = load i32, ptr %i.z, align 1
  %i.ef = sext i32 %.val889 to i64
  %i.eg = shl i32 %.2700.val, 2                   ; 3 uses
  %i.eh = add i32 %i.eg, -4
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = sub nsw i64 %i.ef, %i.ei                ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %i.c, i64 %i.ej
  %i.el = sext i32 %.val890 to i64
  %i.em = sub nsw i64 %i.el, %i.ei                ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %i.c, i64 %i.em
  %i.eo = add i32 %i.eg, -1
  %or.cond849 = icmp uge i32 %i.eo, %2
  %.not837 = icmp slt i64 %i.ej, %i.a
  %or.cond1068 = select i1 %or.cond849, i1 true, i1 %.not837
  br i1 %or.cond1068, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = zext i32 %i.eg to i64                   ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %i.a
  %i.er = add nsw i64 %i.eq, %i.ej                ; 2 uses
  %.not838 = icmp sgt i64 %i.er, %i.n
  %i.es = icmp slt i64 %i.er, 1
  %or.cond850.not1071 = or i1 %.not838, %i.es
  %.not839 = icmp slt i64 %i.em, %i.a
  %or.cond851 = select i1 %or.cond850.not1071, i1 true, i1 %.not839
  br i1 %or.cond851, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = add nsw i64 %i.q, %i.ep
  %i.eu = add nsw i64 %i.et, %i.em
  %or.cond1069 = icmp ult i64 %i.eu, %i.n
  br i1 %or.cond1069, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.not841 = icmp eq ptr %.06551257, null
  br i1 %.not841, label %.thread1042, label %.thread1042.sink.split

bb.an:                                            ; preds = %bb.al
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.ek, i64 %i.ep, i1 false)
  br label %.thread1022

bb.ao:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %.27001250, i64 12
  %.not792 = icmp ule ptr %i.ev, %i.o
  %or.cond1335 = select i1 %i.r, i1 %.not792, i1 false
  br i1 %or.cond1335, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not793 = icmp eq ptr %.06551257, null
  br i1 %.not793, label %.thread1042, label %.thread1042.sink.split

bb.aq:                                            ; preds = %bb.ao
  %.val887 = load i32, ptr %i.z, align 1          ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.27001250, i64 8
  %.val886 = load i32, ptr %i.ew, align 1         ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.27001250, i64 16 ; 2 uses
  %i.ey = icmp sgt i32 %.06681254, 95
  br i1 %i.ey, label %.thread1042.sink.split.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ez = add nsw i32 %.06681254, 1               ; 4 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.fa, 36
  %i.fc = tail call ptr @cli_realloc(ptr noundef %.06551257, i64 noundef %i.fb) #6 ; 20 uses
  %.not794 = icmp eq ptr %i.fc, null
  br i1 %.not794, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.not795 = icmp eq ptr %.06551257, null
  br i1 %.not795, label %.thread1042, label %.thread1042.sink.split

bb.at:                                            ; preds = %bb.ar
  %i.fd = sext i32 %.06681254 to i64
  %i.fe = getelementptr inbounds [36 x i8], ptr %i.fc, i64 %i.fd ; 6 uses
  store i32 %.val886, ptr %i.fe, align 4, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 5 uses
  store i32 %.val887, ptr %i.ff, align 4, !tbaa !10
  %i.fg = sub i32 %.06951251, %.val886            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  %spec.select = select i1 %i.fh, i32 %i.fg, i32 %.val887
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %spec.select, ptr %i.fi, align 4, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 0, ptr %i.fj, align 4, !tbaa !17
  %.not796 = icmp eq i32 %.val887, 0
  br i1 %.not796, label %.thread1022, label %bb.au

bb.au:                                            ; preds = %bb.at
end_hunk_0
