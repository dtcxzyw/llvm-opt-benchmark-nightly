Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/petite?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Petite: Old EP: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Petite: In troubles while attempting to decrypt old EP, using bogus %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Petite: Skipping section %d, Raw: %x, RSize:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Petite: Sections dump:\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Petite: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Petite: Rebuilding failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Petite: maximum number of sections exceeded, giving up.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Petite: probably invalid file\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Petite: Found petite code in sect%d(%x). Let's strip it.\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Petite: Encrypted EP: %x | Array of imports: %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @petite_inflate2x_1to9(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 9 uses
  %i.d = icmp eq i32 %8, 2                        ; 2 uses
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %8, 1
  br i1 %i.e, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink1915 = phi i64 [ 440, %bb.a ], [ 376, %bb.b ]
  %.0802.ph = phi i32 [ 853, %bb.a ], [ 803, %bb.b ]
  %.0801.ph = phi i32 [ 53, %bb.a ], [ 52, %bb.b ]
  %i.f = add i32 %4, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink1915
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.1828 = phi ptr [ null, %bb.b ], [ %i.l, %.sink.split ] ; 2 uses
  %.0802 = phi i32 [ 853, %bb.b ], [ %.0802.ph, %.sink.split ] ; 4 uses
  %.0801 = phi i32 [ 53, %bb.b ], [ %.0801.ph, %.sink.split ] ; 3 uses
  %i.m = icmp ugt i32 %2, 3
  br i1 %i.m, label %.lr.ph1440, label %.thread1189

.lr.ph1440:                                       ; preds = %bb.c
  %i.n = zext i32 %2 to i64                       ; 2 uses
  %i.o = ptrtoint ptr %0 to i64                   ; 23 uses
  %i.p = add i64 %i.n, %i.o                       ; 40 uses
  %i.q = icmp ugt i32 %2, 7                       ; 2 uses
  %.not1501 = icmp eq i32 %4, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 8 uses
  %i.t = zext nneg i32 %.0802 to i64
  %i.u = sub nsw i64 0, %i.t                      ; 3 uses
  %i.v = add nuw nsw i32 %.0801, %.0802
  %i.w = zext nneg i32 %.0801 to i64
  %i.x = sub nsw i64 0, %i.w                      ; 2 uses
  %i.y = icmp ugt i32 %2, 436
  %i.z = add i32 %4, -1
  %i.aa = zext i32 %i.z to i64
  %wide.trip.count = zext i32 %4 to i64
  %.not2069 = icmp ult ptr %.1828, %0
  br i1 %.not2069, label %._crit_edge1441, label %.lr.ph2078

.lr.ph2078:                                       ; preds = %.lr.ph1440, %.thread1169
  %.07921436.fr2077 = phi i32 [ %.6, %.thread1169 ], [ 0, %.lr.ph1440 ] ; 14 uses
  %.282914312076 = phi ptr [ %.5832, %.thread1169 ], [ %.1828, %.lr.ph1440 ] ; 8 uses
  %.082414322075 = phi i32 [ %.2826, %.thread1169 ], [ 0, %.lr.ph1440 ] ; 3 uses
  %.081714332074 = phi i32 [ %.15, %.thread1169 ], [ 0, %.lr.ph1440 ] ; 16 uses
  %.081014342073 = phi i32 [ %.6816, %.thread1169 ], [ 0, %.lr.ph1440 ] ; 15 uses
  %.079714352072 = phi i32 [ %.3800, %.thread1169 ], [ 0, %.lr.ph1440 ] ; 13 uses
  %.078814372071 = phi i32 [ %.3791, %.thread1169 ], [ 0, %.lr.ph1440 ] ; 3 uses
  %.078414382070 = phi ptr [ %.3787, %.thread1169 ], [ null, %.lr.ph1440 ] ; 34 uses
  %i.ab = ptrtoint ptr %.282914312076 to i64      ; 2 uses
  %i.ac = add i64 %i.ab, 4                        ; 2 uses
  %.not914 = icmp ule i64 %i.ac, %i.p
  %i.ad = icmp ugt i64 %i.ac, %i.o
  %or.cond = and i1 %.not914, %i.ad
  %i.ae = icmp ugt i64 %i.p, %i.ab
  %or.cond990 = and i1 %i.ae, %or.cond
  br i1 %or.cond990, label %bb.e, label %._crit_edge1441

._crit_edge1441:                                  ; preds = %.lr.ph2078, %.thread1169, %.lr.ph1440
  %.07841438.lcssa = phi ptr [ null, %.lr.ph1440 ], [ %.078414382070, %.lr.ph2078 ], [ %.3787, %.thread1169 ] ; 2 uses
  %.not915 = icmp eq ptr %.07841438.lcssa, null
  br i1 %.not915, label %.thread1189, label %bb.d

bb.d:                                             ; preds = %._crit_edge1441
  tail call void @free(ptr noundef nonnull %.07841438.lcssa) #6
  br label %.thread1189

bb.e:                                             ; preds = %.lr.ph2078
  %i.af = load i32, ptr %.282914312076, align 1, !tbaa !15 ; 5 uses
  %.not916 = icmp eq i32 %i.af, 0
  br i1 %.not916, label %bb.f, label %bb.am

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp slt i32 %.079714352072, 1
  br i1 %i.ag, label %.thread1189, label %.preheader1226

.preheader1226:                                   ; preds = %bb.f
  %11 = add nsw i32 %.079714352072, -1            ; 2 uses
  %.not1514 = icmp eq i32 %.079714352072, 1
  br i1 %.not1514, label %._crit_edge1453, label %.preheader1225.us.preheader

.preheader1225.us.preheader:                      ; preds = %.preheader1226
  %wide.trip.count1657 = zext nneg i32 %11 to i64
  br label %.preheader1225.us

.preheader1225.us:                                ; preds = %.preheader1225.us.preheader, %..loopexit_crit_edge.us
  %.pre = load i32, ptr %.078414382070, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.preheader1225.us, %bb.i
  %i.ah = phi i32 [ %.pre, %.preheader1225.us ], [ %i.at, %bb.i ] ; 3 uses
  %indvars.iv1654 = phi i64 [ 0, %.preheader1225.us ], [ %indvars.iv.next1655, %bb.i ] ; 2 uses
  %.17551448.us = phi i32 [ 0, %.preheader1225.us ], [ %.2756.us, %bb.i ]
  %indvars.iv.next1655 = add nuw nsw i64 %indvars.iv1654, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv.next1655 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14 ; 3 uses
  %.not933.us = icmp ugt i32 %i.ah, %i.aj
  br i1 %.not933.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv1654 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !17
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  store i32 %i.as, ptr %i.an, align 4, !tbaa !17
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !14
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !16
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi i32 [ %i.ah, %bb.h ], [ %i.aj, %bb.g ]
  %.2756.us = phi i32 [ 1, %bb.h ], [ %.17551448.us, %bb.g ] ; 2 uses
  %exitcond1658.not = icmp eq i64 %indvars.iv.next1655, %wide.trip.count1657
  br i1 %exitcond1658.not, label %..loopexit_crit_edge.us, label %bb.g

..loopexit_crit_edge.us:                          ; preds = %bb.i
  %.not917.us = icmp eq i32 %.2756.us, 0
  br i1 %.not917.us, label %.lr.ph1452.preheader, label %.preheader1225.us

.lr.ph1452.preheader:                             ; preds = %..loopexit_crit_edge.us
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 1) ; 2 uses
  %wide.trip.count1662 = zext nneg i32 %smax to i64 ; 2 uses
  %.pre1719 = load i32, ptr %.078414382070, align 4, !tbaa !14 ; 2 uses
  %xtraiter2241 = and i64 %wide.trip.count1662, 1
  %12 = icmp slt i32 %.079714352072, 3
  br i1 %12, label %.lr.ph1452.epil.preheader, label %.lr.ph1452.preheader.new

.lr.ph1452.preheader.new:                         ; preds = %.lr.ph1452.preheader
  %unroll_iter = and i64 %wide.trip.count1662, 2147483646
  br label %.lr.ph1452

.lr.ph1452:                                       ; preds = %bb.l, %.lr.ph1452.preheader.new
  %i.au = phi i32 [ %.pre1719, %.lr.ph1452.preheader.new ], [ %i.bf, %bb.l ]
  %indvars.iv1659 = phi i64 [ 0, %.lr.ph1452.preheader.new ], [ %indvars.iv.next1660.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1452.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.av = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv1659
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %indvars.iv.next1660 = or disjoint i64 %indvars.iv1659, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv.next1660
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14 ; 2 uses
  %i.ba = sub i32 %i.az, %i.au                    ; 2 uses
  %.not932 = icmp eq i32 %i.ax, %i.ba
  br i1 %.not932, label %.lr.ph1452.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph1452
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !17
  br label %.lr.ph1452.1

.lr.ph1452.1:                                     ; preds = %.lr.ph1452, %bb.j
  %i.bb = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv.next1660
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !17
  %indvars.iv.next1660.1 = add nuw nsw i64 %indvars.iv1659, 2 ; 3 uses
  %i.be = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv.next1660.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.bg = sub i32 %i.bf, %i.az                    ; 2 uses
  %.not932.1 = icmp eq i32 %i.bd, %i.bg
  br i1 %.not932.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph1452.1
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph1452.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1453.loopexit.unr-lcssa, label %.lr.ph1452

._crit_edge1453.loopexit.unr-lcssa:               ; preds = %bb.l
  %lcmp.mod2242.not = icmp eq i64 %xtraiter2241, 0
  br i1 %lcmp.mod2242.not, label %._crit_edge1453, label %.lr.ph1452.epil.preheader

.lr.ph1452.epil.preheader:                        ; preds = %._crit_edge1453.loopexit.unr-lcssa, %.lr.ph1452.preheader
  %.epil.init = phi i32 [ %.pre1719, %.lr.ph1452.preheader ], [ %i.bf, %._crit_edge1453.loopexit.unr-lcssa ]
  %indvars.iv1659.epil.init = phi i64 [ 0, %.lr.ph1452.preheader ], [ %indvars.iv.next1660.1, %._crit_edge1453.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2243 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod2243)
  %i.bh = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv1659.epil.init
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv1659.epil.init
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = sub i32 %i.bm, %.epil.init              ; 2 uses
  %.not932.epil = icmp eq i32 %i.bj, %i.bn
  br i1 %.not932.epil, label %._crit_edge1453, label %bb.m

bb.m:                                             ; preds = %.lr.ph1452.epil.preheader
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !17
  br label %._crit_edge1453

._crit_edge1453:                                  ; preds = %._crit_edge1453.loopexit.unr-lcssa, %bb.m, %.lr.ph1452.epil.preheader, %.preheader1226
  %.not918 = icmp eq i32 %.081714332074, 0
  br i1 %.not918, label %bb.z, label %bb.n

bb.n:                                             ; preds = %._crit_edge1453
  %i.bo = add i32 %6, 5                           ; 2 uses
  %i.bp = add i32 %i.bo, %5
  %i.bq = zext i32 %.081014342073 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  br i1 %i.d, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.n
  %.not9201486 = icmp ult i32 %.081014342073, %1
  br i1 %.not9201486, label %.critedge, label %.lr.ph1491

.lr.ph1491:                                       ; preds = %.preheader
  %.not1516 = icmp eq i32 %.07921436.fr2077, 0
  %i.bs = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.aa ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph1491, %.critedge10
  %.07421490 = phi ptr [ %i.br, %.lr.ph1491 ], [ %i.ca, %.critedge10 ] ; 3 uses
  %.07461489 = phi i32 [ 0, %.lr.ph1491 ], [ %.1747.lcssa, %.critedge10 ] ; 2 uses
  %.07501488 = phi i32 [ %i.bp, %.lr.ph1491 ], [ %.1751.lcssa, %.critedge10 ] ; 3 uses
  %.18181487 = phi i32 [ %.081714332074, %.lr.ph1491 ], [ %.2819.lcssa, %.critedge10 ] ; 3 uses
  %i.bt = ptrtoint ptr %.07421490 to i64          ; 2 uses
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %.not921 = icmp ule i64 %i.bu, %i.p
  %i.bv = icmp ugt i64 %i.bu, %i.o
  %or.cond991 = and i1 %.not921, %i.bv
  %i.bw = icmp ugt i64 %i.p, %i.bt
  %or.cond992 = and i1 %i.bw, %or.cond991
  br i1 %or.cond992, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %.07421490, align 1, !tbaa !15 ; 2 uses
  %.not922 = icmp eq i32 %i.bx, 0
  br i1 %.not922, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.c, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.07421490, i64 4 ; 2 uses
  %.not9231454 = icmp slt i64 %i.by, %i.a
  br i1 %.not9231454, label %.critedge, label %.lr.ph1460

.lr.ph1460:                                       ; preds = %bb.q
  br i1 %.not1516, label %.lr.ph1460.split.us, label %.lr.ph1460.split

.lr.ph1460.split.us:                              ; preds = %.lr.ph1460
  %i.cb = icmp ugt i32 %.07501488, -1074785481
  %i.cc = sext i1 %i.cb to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph1460.split.us
  %.07411458.us = phi ptr [ %i.bz, %.lr.ph1460.split.us ], [ %i.ci, %bb.t ] ; 3 uses
  %.28191455.us = phi i32 [ %.18181487, %.lr.ph1460.split.us ], [ %i.cn, %bb.t ] ; 2 uses
  %i.cd = ptrtoint ptr %.07411458.us to i64       ; 2 uses
  %i.ce = add i64 %i.cd, 4                        ; 2 uses
  %.not924.us = icmp ule i64 %i.ce, %i.p
  %i.cf = icmp ugt i64 %i.ce, %i.o
  %or.cond993.us = and i1 %.not924.us, %i.cf
  %i.cg = icmp ugt i64 %i.p, %i.cd
  %or.cond994.us = and i1 %i.cg, %or.cond993.us
  br i1 %or.cond994.us, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ch = load i32, ptr %.07411458.us, align 1, !tbaa !15
  %.not925.us = icmp eq i32 %i.ch, 0
  br i1 %.not925.us, label %.critedge10, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.07411458.us, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.ck = add i32 %i.cj, %5
  %i.cl = icmp ult i32 %i.ck, -1074785481
  %i.cm = sext i1 %i.cl to i32
  %spec.select.us = add i32 %.28191455.us, %i.cc
  %.4821.us = add i32 %spec.select.us, %i.cm      ; 2 uses
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %.4821.us, i32 %.4821.us, i32 29)
  %.not923.us = icmp ult ptr %i.ci, %0
  br i1 %.not923.us, label %.critedge, label %bb.r

.lr.ph1460.split:                                 ; preds = %.lr.ph1460, %bb.y
  %.07411458 = phi ptr [ %i.cs, %bb.y ], [ %i.bz, %.lr.ph1460 ] ; 3 uses
  %.17471457 = phi i32 [ %.3749, %bb.y ], [ %.07461489, %.lr.ph1460 ] ; 4 uses
  %.17511456 = phi i32 [ %.2752, %bb.y ], [ %.07501488, %.lr.ph1460 ] ; 5 uses
  %.28191455 = phi i32 [ %i.df, %bb.y ], [ %.18181487, %.lr.ph1460 ] ; 2 uses
  %i.co = ptrtoint ptr %.07411458 to i64          ; 2 uses
  %i.cp = add i64 %i.co, 4                        ; 2 uses
  %.not924 = icmp ule i64 %i.cp, %i.p
  %i.cq = icmp ugt i64 %i.cp, %i.o
  %or.cond993 = and i1 %.not924, %i.cq
  %i.cr = icmp ugt i64 %i.p, %i.co
  %or.cond994 = and i1 %i.cr, %or.cond993
  br i1 %or.cond994, label %bb.u, label %.critedge

bb.u:                                             ; preds = %.lr.ph1460.split
  %i.cs = getelementptr inbounds nuw i8, ptr %.07411458, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.07411458, align 1, !tbaa !15 ; 2 uses
  %.not925 = icmp eq i32 %i.ct, 0
  br i1 %.not925, label %.critedge10, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cv = add nsw i32 %.17471457, -1
  %i.cw = icmp slt i32 %.17471457, 1
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = add i32 %.17511456, 5                   ; 2 uses
  %i.cy = and i32 %i.cx, 7
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.2752 = phi i32 [ %i.cx, %bb.x ], [ %.17511456, %bb.w ], [ %.17511456, %bb.v ] ; 2 uses
  %.3749 = phi i32 [ %i.cy, %bb.x ], [ %i.cv, %bb.w ], [ %.17471457, %bb.v ]
  %.0740 = phi i32 [ %.17511456, %bb.x ], [ -1074785481, %bb.w ], [ -1074785481, %bb.v ] ; 2 uses
  %i.cz = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.da = add i32 %i.cz, %5
  %i.db = icmp ult i32 %i.da, %.0740
  %i.dc = sext i1 %i.db to i32
  %i.dd = icmp ult i32 %.0740, %.2752
  %i.de = sext i1 %i.dd to i32
  %spec.select = add i32 %.28191455, %i.de
  %.4821 = add i32 %spec.select, %i.dc            ; 2 uses
  %i.df = tail call i32 @llvm.fshl.i32(i32 %.4821, i32 %.4821, i32 29)
  %.not923 = icmp ult ptr %i.cs, %0
  br i1 %.not923, label %.critedge, label %.lr.ph1460.split

.critedge10:                                      ; preds = %bb.u, %bb.s
  %.2819.lcssa = phi i32 [ %.28191455.us, %bb.s ], [ %.28191455, %bb.u ]
  %.1751.lcssa = phi i32 [ %.07501488, %bb.s ], [ %.17511456, %bb.u ]
  %.1747.lcssa = phi i32 [ %.07461489, %bb.s ], [ %.17471457, %bb.u ]
  %.not920 = icmp ult ptr %i.ca, %0
  br i1 %.not920, label %.critedge, label %bb.o

.critedge.thread:                                 ; preds = %bb.p, %bb.n
  %.68231139 = phi i32 [ %.081714332074, %bb.n ], [ %.18181487, %bb.p ]
  %i.dg = add i32 %.68231139, %i.bo               ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %i.dg) #6
  br label %bb.z

.critedge:                                        ; preds = %bb.q, %bb.o, %.critedge10, %bb.y, %.lr.ph1460.split, %bb.r, %bb.t, %.preheader
  %i.dh = load i32, ptr %.078414382070, align 4, !tbaa !14 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.dh) #6
  br label %bb.z

bb.z:                                             ; preds = %.critedge.thread, %.critedge, %._crit_edge1453
  %.8 = phi i32 [ 0, %._crit_edge1453 ], [ %i.dg, %.critedge.thread ], [ %i.dh, %.critedge ]
  %wide.trip.count1689 = zext nneg i32 %.079714352072 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.078414382070, i64 8 ; 2 uses
  store i32 0, ptr %i.di, align 4, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.078414382070, i64 12 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16 ; 4 uses
  %.not928.peel = icmp eq i32 %i.dk, 0
  br i1 %.not928.peel, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %.not929.peel = icmp ugt i32 %i.dk, %2
  br i1 %.not929.peel, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = add i64 %i.o, %i.dl                     ; 2 uses
  %.not931.peel = icmp ule i64 %i.dm, %i.p
  %i.dn = icmp ugt i64 %i.dm, %i.o
  %or.cond995.peel = and i1 %.not931.peel, %i.dn
  %i.do = icmp ugt i64 %i.p, %i.o
  %or.cond996.peel = and i1 %i.do, %or.cond995.peel
  br i1 %or.cond996.peel, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load i32, ptr %.078414382070, align 4, !tbaa !14
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.dr, i64 %i.dl, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa, %bb.ab
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0, i32 noundef %i.dk) #6
  store i32 0, ptr %i.di, align 4, !tbaa !18
end_hunk_0
begin_hunk_1_@petite_inflate2x_1to9:bb.a
  %i.ok = add i32 %.47691420, -8                  ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %i.oj, i64 %i.mq
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !15
  store i8 %i.om, ptr %i.oj, align 1, !tbaa !15
  %i.on = getelementptr inbounds nuw i8, ptr %.17821419, i64 8 ; 2 uses
  %.not978.7 = icmp eq i32 %i.ok, 0
  br i1 %.not978.7, label %.loopexit1228, label %.lr.ph1421, !llvm.loop !12

.loopexit1228:                                    ; preds = %.lr.ph1421.prol.loopexit, %.lr.ph1421, %middle.block, %vec.epilog.middle.block, %bb.cc
  %.61119 = phi ptr [ %i.iy, %bb.cc ], [ %.51118, %middle.block ], [ %.51118, %vec.epilog.middle.block ], [ %.51118, %.lr.ph1421 ], [ %.51118, %.lr.ph1421.prol.loopexit ]
  %.61108 = phi i8 [ %.016.i, %bb.cc ], [ %.5, %middle.block ], [ %.5, %vec.epilog.middle.block ], [ %.5, %.lr.ph1421 ], [ %.5, %.lr.ph1421.prol.loopexit ]
  %.2783 = phi ptr [ %i.jc, %bb.cc ], [ %i.mz, %middle.block ], [ %i.ng, %vec.epilog.middle.block ], [ %.lcssa2114.unr, %.lr.ph1421.prol.loopexit ], [ %i.on, %.lr.ph1421 ] ; 2 uses
  %.1780 = phi i32 [ %i.jd, %bb.cc ], [ %i.mj, %middle.block ], [ %i.mj, %vec.epilog.middle.block ], [ %i.mj, %.lr.ph1421 ], [ %i.mj, %.lr.ph1421.prol.loopexit ] ; 2 uses
  %.2773 = phi i32 [ %.07711428, %bb.cc ], [ %.1772, %middle.block ], [ %.1772, %vec.epilog.middle.block ], [ %.1772, %.lr.ph1421 ], [ %.1772, %.lr.ph1421.prol.loopexit ]
  %.not951 = icmp eq i32 %.1780, 0
  br i1 %.not951, label %._crit_edge, label %.lr.ph1429

._crit_edge:                                      ; preds = %.loopexit1228, %bb.bv
  %.0781.lcssa = phi ptr [ %i.ih, %bb.bv ], [ %.2783, %.loopexit1228 ] ; 3 uses
  %.not952 = icmp eq i32 %i.gn, 0
  br i1 %.not952, label %bb.dw, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge
  %i.oo = load i32, ptr %i.gt, align 4, !tbaa !16 ; 2 uses
  %i.op = icmp ugt i32 %i.oo, %.0802
  br i1 %i.op, label %bb.di, label %.critedge1028

bb.di:                                            ; preds = %bb.dh
  %i.oq = getelementptr inbounds i8, ptr %.0781.lcssa, i64 %i.u ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 84 ; 3 uses
  %.not953 = icmp ult ptr %i.or, %0
  br i1 %.not953, label %.critedge1028, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.os = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.ot = add i64 %i.os, 8                        ; 2 uses
  %.not954 = icmp ule i64 %i.ot, %i.p
  %i.ou = icmp ugt i64 %i.ot, %i.o
  %or.cond1024 = and i1 %.not954, %i.ou
  %i.ov = icmp ugt i64 %i.p, %i.os
  %or.cond1025 = and i1 %i.ov, %or.cond1024
  br i1 %or.cond1025, label %bb.dk, label %.critedge1028

bb.dk:                                            ; preds = %bb.dj
  %i.ow = load i32, ptr %i.or, align 1, !tbaa !15
  %i.ox = icmp eq i32 %i.ow, 1683931187
  br i1 %i.ox, label %bb.dl, label %.critedge1028

bb.dl:                                            ; preds = %bb.dk
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.oz = load i32, ptr %i.oy, align 1, !tbaa !15
  %.not1215 = icmp eq i32 %i.oz, 462100619
  br i1 %.not1215, label %.thread1165, label %.critedge1028

.critedge1028:                                    ; preds = %bb.dj, %bb.dk, %bb.di, %bb.dh, %bb.dl
  %i.pa = icmp ugt i32 %i.oo, %i.v
  br i1 %i.pa, label %bb.dm, label %bb.dw

bb.dm:                                            ; preds = %.critedge1028
  %i.pb = getelementptr inbounds i8, ptr %.0781.lcssa, i64 %i.u ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 84
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 %i.x ; 3 uses
  %.not956 = icmp ult ptr %i.pd, %0
  br i1 %.not956, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pe = ptrtoint ptr %i.pd to i64               ; 2 uses
  %i.pf = add i64 %i.pe, 8                        ; 2 uses
  %.not957 = icmp ule i64 %i.pf, %i.p
  %i.pg = icmp ugt i64 %i.pf, %i.o
  %or.cond1029 = and i1 %.not957, %i.pg
  %i.ph = icmp ugt i64 %i.p, %i.pe
  %or.cond1030 = and i1 %i.ph, %or.cond1029
  br i1 %or.cond1030, label %bb.do, label %bb.dw

bb.do:                                            ; preds = %bb.dn
  %i.pi = load i32, ptr %i.pd, align 1, !tbaa !15
  %i.pj = icmp eq i32 %i.pi, 1683931187
  br i1 %i.pj, label %bb.dp, label %bb.dw

bb.dp:                                            ; preds = %bb.do
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 88
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 %i.x
  %i.pm = load i32, ptr %i.pl, align 1, !tbaa !15
  %.not1216 = icmp eq i32 %i.pm, 462100619
  br i1 %.not1216, label %.thread1165, label %bb.dw

.thread1165:                                      ; preds = %bb.dl, %bb.dp
  %.11168 = phi i32 [ %.0801, %bb.dp ], [ 0, %bb.dl ] ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %.0781.lcssa, i64 %i.u ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 15
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 7
  %i.pq = zext nneg i32 %.11168 to i64
  %i.pr = sub nsw i64 0, %i.pq                    ; 5 uses
  %i.ps = getelementptr inbounds i8, ptr %i.pp, i64 %i.pr ; 3 uses
  %.not959 = icmp ult ptr %i.ps, %0
  br i1 %.not959, label %bb.dw, label %bb.dq

bb.dq:                                            ; preds = %.thread1165
  %i.pt = ptrtoint ptr %i.ps to i64               ; 2 uses
  %i.pu = add i64 %i.pt, 8                        ; 2 uses
  %.not960 = icmp ule i64 %i.pu, %i.p
  %i.pv = icmp ugt i64 %i.pu, %i.o
  %or.cond1035 = and i1 %.not960, %i.pv
  %i.pw = icmp ugt i64 %i.p, %i.pt
  %or.cond1036 = and i1 %i.pw, %or.cond1035
  br i1 %or.cond1036, label %bb.dr, label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.px = load i32, ptr %i.ps, align 1, !tbaa !15 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 11
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 1, !tbaa !15
  %i.qb = load i32, ptr %i.gs, align 4, !tbaa !14
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef %.079714352072, i32 noundef %i.qb) #6
  %i.qc = xor i32 %i.qa, %i.px
  %i.qd = icmp eq i32 %i.qc, 1953408297
  %or.cond72 = and i1 %i.y, %i.qd
  br i1 %or.cond72, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.qe = getelementptr inbounds i8, ptr %i.po, i64 %i.pr ; 3 uses
  %.not961 = icmp ult ptr %i.qe, %0
  br i1 %.not961, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qf = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qg = add i64 %i.qf, 437                      ; 2 uses
  %.not962 = icmp ule i64 %i.qg, %i.p
  %i.qh = icmp ugt i64 %i.qg, %i.o
  %or.cond1037 = and i1 %.not962, %i.qh
  %i.qi = icmp ugt i64 %i.p, %i.qf
  %or.cond1038 = and i1 %i.qi, %or.cond1037
  br i1 %or.cond1038, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pn, i64 289
  %i.qk = getelementptr inbounds i8, ptr %i.qj, i64 %i.pr
  %i.ql = load i32, ptr %i.qk, align 1, !tbaa !15 ; 2 uses
  %i.qm = load i32, ptr %i.qe, align 1, !tbaa !15
  %i.qn = xor i32 %i.px, %i.qm
  %i.qo = xor i32 %i.qn, -1654234710              ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pn, i64 448
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 %i.pr
  %i.qr = load i32, ptr %i.qq, align 1, !tbaa !15
  %i.qs = icmp ne i32 %i.qr, -1869574000
  %i.qt = zext i1 %i.qs to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.qo, i32 noundef %i.ql) #6
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr
  %.10 = phi i32 [ %i.qo, %bb.du ], [ %.081714332074, %bb.ds ], [ %.081714332074, %bb.dr ], [ %.081714332074, %bb.dt ]
  %.1811 = phi i32 [ %i.ql, %bb.du ], [ %.081014342073, %bb.ds ], [ %.081014342073, %bb.dr ], [ %.081014342073, %bb.dt ]
  %.1793 = phi i32 [ %i.qt, %bb.du ], [ %.07921436.fr2077, %bb.ds ], [ %.07921436.fr2077, %bb.dr ], [ %.07921436.fr2077, %bb.dt ]
  %i.qu = load i32, ptr %i.gt, align 4, !tbaa !16
  %i.qv = add nuw nsw i32 %.11168, %.0802
  %i.qw = sub i32 %i.qu, %i.qv
  store i32 %i.qw, ptr %i.gt, align 4, !tbaa !16
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dp, %.thread1165, %bb.dq, %bb.dv, %.critedge1028, %bb.dm, %bb.do, %bb.dn, %._crit_edge
  %.12 = phi i32 [ %.081714332074, %._crit_edge ], [ %.10, %bb.dv ], [ %.081714332074, %bb.dp ], [ %.081714332074, %.thread1165 ], [ %.081714332074, %bb.dq ], [ %.081714332074, %.critedge1028 ], [ %.081714332074, %bb.dm ], [ %.081714332074, %bb.do ], [ %.081714332074, %bb.dn ]
  %.3813 = phi i32 [ %.081014342073, %._crit_edge ], [ %.1811, %bb.dv ], [ %.081014342073, %bb.dp ], [ %.081014342073, %.thread1165 ], [ %.081014342073, %bb.dq ], [ %.081014342073, %.critedge1028 ], [ %.081014342073, %bb.dm ], [ %.081014342073, %bb.do ], [ %.081014342073, %bb.dn ]
  %.3795 = phi i32 [ %.07921436.fr2077, %._crit_edge ], [ %.1793, %bb.dv ], [ %.07921436.fr2077, %bb.dp ], [ %.07921436.fr2077, %.thread1165 ], [ %.07921436.fr2077, %bb.dq ], [ %.07921436.fr2077, %.critedge1028 ], [ %.07921436.fr2077, %bb.dm ], [ %.07921436.fr2077, %bb.do ], [ %.07921436.fr2077, %bb.dn ]
  %i.qx = add nsw i32 %.078814372071, 1
  %i.qy = freeze i32 %.3795
  br label %.thread1169

.thread1169:                                      ; preds = %bb.bj, %bb.dw, %bb.az
  %.5832 = phi ptr [ %i.gl, %bb.dw ], [ %i.gc, %bb.az ], [ %i.gl, %bb.bj ] ; 2 uses
  %.2826 = phi i32 [ %.082414322075, %bb.dw ], [ %i.fh, %bb.az ], [ %.082414322075, %bb.bj ]
  %.15 = phi i32 [ %.12, %bb.dw ], [ %.081714332074, %bb.az ], [ %.081714332074, %bb.bj ]
  %.6816 = phi i32 [ %.3813, %bb.dw ], [ %.081014342073, %bb.az ], [ %.081014342073, %bb.bj ]
  %.3800 = phi i32 [ %i.gn, %bb.dw ], [ %.079714352072, %bb.az ], [ %i.gn, %bb.bj ]
  %.6 = phi i32 [ %i.qy, %bb.dw ], [ %.07921436.fr2077, %bb.az ], [ %.07921436.fr2077, %bb.bj ]
  %.3791 = phi i32 [ %i.qx, %bb.dw ], [ 0, %bb.az ], [ %.078814372071, %bb.bj ]
  %.3787 = phi ptr [ %i.gq, %bb.dw ], [ %.078414382070, %bb.az ], [ %i.gq, %bb.bj ] ; 2 uses
  %.not = icmp ult ptr %.5832, %0
  br i1 %.not, label %._crit_edge1441, label %.lr.ph2078

.thread1189:                                      ; preds = %bb.c, %bb.bf, %.loopexit1231.thread, %doubledl.exit.thread, %doubledl.exit1046.thread, %bb.cf, %doubledl.exit1053.thread, %doubledl.exit1060.thread, %bb.co, %doubledl.exit1067.thread, %doubledl.exit1074.thread, %bb.dg, %doubledl.exit1081.thread, %doubledl.exit1088.thread, %bb.cb, %bb.bu, %bb.bh, %bb.bc, %bb.bd, %bb.bi, %bb.ay, %bb.at, %bb.aq, %bb.al, %bb.f, %bb.d, %._crit_edge1441, %bb.ak, %bb.as, %bb.ax, %bb.ap
  %.48371201 = phi i32 [ 1, %bb.ap ], [ 1, %bb.ay ], [ 1, %bb.at ], [ 1, %bb.aq ], [ 0, %bb.al ], [ 1, %bb.ak ], [ 1, %bb.d ], [ 1, %._crit_edge1441 ], [ 1, %bb.f ], [ 1, %bb.as ], [ 1, %bb.ax ], [ 1, %bb.bi ], [ 1, %bb.bd ], [ 1, %bb.bc ], [ 1, %bb.bh ], [ 1, %bb.bu ], [ 1, %bb.cb ], [ 1, %doubledl.exit1088.thread ], [ 1, %doubledl.exit1081.thread ], [ 1, %bb.dg ], [ 1, %doubledl.exit1074.thread ], [ 1, %doubledl.exit1067.thread ], [ 1, %bb.co ], [ 1, %doubledl.exit1060.thread ], [ 1, %doubledl.exit1053.thread ], [ 1, %bb.cf ], [ 1, %doubledl.exit1046.thread ], [ 1, %doubledl.exit.thread ], [ 1, %.loopexit1231.thread ], [ 1, %bb.bf ], [ 1, %bb.c ]
  ret i32 %.48371201
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !20, !21}
!10 = distinct !{!10, !20, !21}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !20}
!13 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!14 = !{!13, !5, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!13, !5, i64 12}
!17 = !{!13, !5, i64 4}
!18 = !{!13, !5, i64 8}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
