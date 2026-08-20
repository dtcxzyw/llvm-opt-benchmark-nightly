inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzmastate = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"MEWlzma: entering do while loop\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MEWlen: %08x ? %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"contain error! %p %08x ecx: %p [%p]\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"contain error! %p %08x p0: %p [%p]\0A\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"MEW: base (%08x) + PE section RVA (%08x) exceeds max size of unsigned int (%08x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"MEW: section size (%08x) + diff size (%08x) exceeds max size of unsigned int (%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"MEW: Buffer pointer (%08zx) + offset (%08zx) exceeds max size of pointer (%08lx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"MEW: Data reference exceeds size of provided buffer.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"MEW unpacking section %d (%p->%p)\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"Possibly programmer error or hand-crafted PE file, report to clamav team\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"MEW: WTF - please report\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"MEW: Out of memory\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"MEW: Section %i [%d, %d] exceeds destination size %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"MEW: couldn't access lzma 'special' tag\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"MEW: lzma %swas used, unpacking\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"special \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"MEW: lzma initialization data not available!\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"MEW: Rebuilding failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mew_lzma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.lzmastate, align 8          ; 27 uses
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca ptr, align 8                      ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %.not = icmp eq i32 %4, 0                       ; 7 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0415 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0406 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %i.f = load i32, ptr %.0415, align 1, !tbaa !8
  %i.g = sub i32 %i.f, %3
  %i.h = getelementptr inbounds nuw i8, ptr %.0415, i64 4 ; 10 uses
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 17 uses
  %i.k = zext i32 %2 to i64
  %i.l = icmp ult i32 %2, 12                      ; 2 uses
  %i.m = ptrtoint ptr %0 to i64                   ; 54 uses
  %i.n = add i64 %i.k, %i.m                       ; 106 uses
  %i.o = icmp ult i32 %2, 16                      ; 2 uses
  %i.p = icmp ugt i32 %2, 28267
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 38 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 29 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 2664
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 1636
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1604
  br i1 %i.p, label %.split1193.us, label %.split

.split1193.us:                                    ; preds = %bb.c
  %i.v = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.w = icmp ugt i64 %i.n, %i.v
  %i.x = add i64 %i.v, 28268                      ; 2 uses
  %.not512 = icmp ule i64 %i.x, %i.n
  %i.y = icmp ugt i64 %i.x, %i.m
  %or.cond551 = and i1 %.not512, %i.y
  %or.cond552 = and i1 %i.w, %or.cond551
  %or.cond552.fr = freeze i1 %or.cond552
  br i1 %or.cond552.fr, label %.split.us.us.us.preheader, label %.split.us.split

.split.us.us.us.preheader:                        ; preds = %.split1193.us
  %spec.select = select i1 %.not, ptr %i.h, ptr null
  %i.z = getelementptr i8, ptr %i.j, i64 28256
  %i.aa = getelementptr i8, ptr %i.j, i64 28260
  %i.ab = getelementptr i8, ptr %i.j, i64 28264
  br label %.split.us.us.us.outer

bb.d:                                             ; preds = %.split814.us.split.us.us.us, %bb.en
  %.promoted1152.us.us = phi i32 [ 0, %.split814.us.split.us.us.us ], [ %storemerge725.us.us, %bb.en ] ; 21 uses
  %.0443.us.us = phi i32 [ 1, %.split814.us.split.us.us.us ], [ %.5448.us.us, %bb.en ] ; 7 uses
  %.0438.us.us = phi i32 [ 1, %.split814.us.split.us.us.us ], [ %.4442.us.us, %bb.en ] ; 6 uses
  %.0433.us.us = phi i32 [ 0, %.split814.us.split.us.us.us ], [ %.4437.us.us, %bb.en ]
  %.0426.us.us = phi i32 [ 1, %.split814.us.split.us.us.us ], [ %.6432.us.us, %bb.en ] ; 6 uses
  %.0419.us.us = phi i8 [ 0, %.split814.us.split.us.us.us ], [ %.5424.us.us, %bb.en ]
  %.0401.us.us = phi i32 [ 0, %.split814.us.split.us.us.us ], [ %.4405.us.us, %bb.en ] ; 10 uses
  %.0393.us.us = phi i32 [ 1, %.split814.us.split.us.us.us ], [ %.7400.us.us, %bb.en ] ; 7 uses
  %i.ac = and i32 %.promoted1152.us.us, 3         ; 4 uses
  %i.ad = shl nuw nsw i32 %.0401.us.us, 5
  %i.ae = shl nuw nsw i32 %i.ac, 1
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ag ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = add i64 %i.ai, 4                        ; 2 uses
  %.not96.i.us.us = icmp ule i64 %i.aj, %i.n
  %i.ak = icmp ugt i64 %i.aj, %i.m
  %or.cond.i.us.us = and i1 %.not96.i.us.us, %i.ak
  %i.al = icmp ugt i64 %i.n, %i.ai
  %or.cond99.i.us.us = and i1 %i.al, %or.cond.i.us.us
  br i1 %or.cond99.i.us.us, label %bb.e, label %lzma_4862e0.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %5, align 8, !tbaa !9     ; 5 uses
  %.not97.i.us.us = icmp ult ptr %i.am, %0
  br i1 %.not97.i.us.us, label %lzma_4862e0.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  %.not98.i.us.us = icmp ule i64 %i.ao, %i.n
  %i.ap = icmp ugt i64 %i.ao, %i.m
  %or.cond100.i.us.us = and i1 %.not98.i.us.us, %i.ap
  %i.aq = icmp ugt i64 %i.n, %i.an
  %or.cond101.i.us.us = and i1 %i.aq, %or.cond100.i.us.us
  br i1 %or.cond101.i.us.us, label %bb.g, label %lzma_4862e0.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.r, align 8, !tbaa !13  ; 2 uses
  %i.as = lshr i32 %i.ar, 11
  %i.at = load i32, ptr %i.ah, align 1, !tbaa !8  ; 4 uses
  %i.au = and i32 %i.at, 65535                    ; 3 uses
  %i.av = mul i32 %i.au, %i.as                    ; 4 uses
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !14  ; 3 uses
  %i.ax = icmp ult i32 %i.aw, %i.av               ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = sub i32 %i.ar, %i.av
  %i.az = sub nuw i32 %i.aw, %i.av                ; 2 uses
  store i32 %i.az, ptr %i.q, align 4, !tbaa !14
  %i.ba = lshr i32 %i.au, 5
  %i.bb = sub i32 %i.at, %i.ba
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bc = sub nsw i32 2048, %i.au
  %i.bd = lshr i32 %i.bc, 5
  %i.be = add i32 %i.bd, %i.at
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = phi i32 [ %i.az, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %.sink112.i.us.us = phi i32 [ %i.bb, %bb.h ], [ %i.be, %bb.i ]
  %.sink.i.us.us = phi i32 [ %i.ay, %bb.h ], [ %i.av, %bb.i ] ; 4 uses
  %i.bg = and i32 %i.at, -65536
  %i.bh = and i32 %.sink112.i.us.us, 65535
  %i.bi = or disjoint i32 %i.bh, %i.bg
  store i32 %.sink.i.us.us, ptr %i.r, align 8, !tbaa !13
  store i32 %i.bi, ptr %i.ah, align 1, !tbaa !8
  %i.bj = icmp ult i32 %.sink.i.us.us, 16777216
  br i1 %i.bj, label %bb.k, label %lzma_486248.exit.us.us

bb.k:                                             ; preds = %bb.j
  %i.bk = load i8, ptr %i.am, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl i32 %i.bf, 8
  %i.bn = or disjoint i32 %i.bm, %i.bl            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.bp = shl nuw i32 %.sink.i.us.us, 8
  store i32 %i.bn, ptr %i.q, align 4, !tbaa !14
  store ptr %i.bo, ptr %5, align 8, !tbaa !9
  br label %lzma_486248.exit.us.us

lzma_486248.exit.us.us:                           ; preds = %bb.k, %bb.j
  %i.bq = phi i32 [ %i.bn, %bb.k ], [ %i.bf, %bb.j ] ; 7 uses
  %i.br = phi i32 [ %i.bp, %bb.k ], [ %.sink.i.us.us, %bb.j ] ; 5 uses
  %i.bs = phi ptr [ %i.bo, %bb.k ], [ %i.am, %bb.j ] ; 12 uses
  br i1 %i.ax, label %bb.dg, label %bb.l

bb.l:                                             ; preds = %lzma_486248.exit.us.us
  %i.bt = shl nuw nsw i32 %.0401.us.us, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 384 ; 3 uses
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.by = add i64 %i.bx, 4                        ; 2 uses
  %.not96.i580.us.us = icmp ugt i64 %i.by, %i.n
  %i.bz = icmp ule i64 %i.by, %i.m
  %or.cond.i581.us.us.not1529 = or i1 %.not96.i580.us.us, %i.bz
  %i.ca = icmp ule i64 %i.n, %i.bx
  %or.cond99.i582.us.us.not1527 = or i1 %i.ca, %or.cond.i581.us.us.not1529
  %.not97.i583.us.us = icmp ult ptr %i.bs, %0
  %or.cond1519 = select i1 %or.cond99.i582.us.us.not1527, i1 true, i1 %.not97.i583.us.us
  br i1 %or.cond1519, label %lzma_4862e0.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.cc = add i64 %i.cb, 1                        ; 2 uses
  %.not98.i584.us.us = icmp ule i64 %i.cc, %i.n
  %i.cd = icmp ugt i64 %i.cc, %i.m
  %or.cond100.i585.us.us = and i1 %.not98.i584.us.us, %i.cd
  %i.ce = icmp ugt i64 %i.n, %i.cb
  %or.cond101.i586.us.us = and i1 %i.ce, %or.cond100.i585.us.us
  br i1 %or.cond101.i586.us.us, label %bb.n, label %lzma_4862e0.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cf = lshr i32 %i.br, 11
  %i.cg = load i32, ptr %i.bw, align 1, !tbaa !8  ; 4 uses
  %i.ch = and i32 %i.cg, 65535                    ; 3 uses
  %i.ci = mul i32 %i.ch, %i.cf                    ; 4 uses
  %.not723.us.us = icmp ult i32 %i.bq, %i.ci      ; 2 uses
  br i1 %.not723.us.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = sub i32 %i.br, %i.ci
  %i.ck = sub nuw i32 %i.bq, %i.ci                ; 2 uses
  store i32 %i.ck, ptr %i.q, align 4, !tbaa !14
  %i.cl = lshr i32 %i.ch, 5
  %i.cm = sub i32 %i.cg, %i.cl
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cn = sub nsw i32 2048, %i.ch
  %i.co = lshr i32 %i.cn, 5
  %i.cp = add i32 %i.co, %i.cg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cq = phi i32 [ %i.ck, %bb.o ], [ %i.bq, %bb.p ] ; 2 uses
  %.sink112.i587.us.us = phi i32 [ %i.cm, %bb.o ], [ %i.cp, %bb.p ]
  %.sink.i588.us.us = phi i32 [ %i.cj, %bb.o ], [ %i.ci, %bb.p ] ; 4 uses
  %.0.i589.us.us = phi i32 [ 1, %bb.o ], [ 0, %bb.p ]
  %i.cr = and i32 %i.cg, -65536
  %i.cs = and i32 %.sink112.i587.us.us, 65535
  %i.ct = or disjoint i32 %i.cs, %i.cr
  store i32 %.sink.i588.us.us, ptr %i.r, align 8, !tbaa !13
  store i32 %i.ct, ptr %i.bw, align 1, !tbaa !8
  %i.cu = icmp ult i32 %.sink.i588.us.us, 16777216
  br i1 %i.cu, label %bb.r, label %lzma_486248.exit590.us.us

bb.r:                                             ; preds = %bb.q
  %i.cv = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl i32 %i.cq, 8
  %i.cy = or disjoint i32 %i.cx, %i.cw            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.da = shl nuw i32 %.sink.i588.us.us, 8        ; 2 uses
  store i32 %i.cy, ptr %i.q, align 4, !tbaa !14
  store i32 %i.da, ptr %i.r, align 8, !tbaa !13
  store ptr %i.cz, ptr %5, align 8, !tbaa !9
  br label %lzma_486248.exit590.us.us

lzma_486248.exit590.us.us:                        ; preds = %bb.r, %bb.q
  %i.db = phi i32 [ %i.cy, %bb.r ], [ %i.cq, %bb.q ] ; 3 uses
  %i.dc = phi i32 [ %i.da, %bb.r ], [ %.sink.i588.us.us, %bb.q ] ; 2 uses
  %i.dd = phi ptr [ %i.cz, %bb.r ], [ %i.bs, %bb.q ] ; 6 uses
  store i32 %.0.i589.us.us, ptr %i.a, align 4, !tbaa !15
  br i1 %.not723.us.us, label %bb.ba, label %bb.s

bb.s:                                             ; preds = %lzma_486248.exit590.us.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 408 ; 3 uses
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = add i64 %i.df, 4                        ; 2 uses
  %.not96.i618.us.us = icmp ugt i64 %i.dg, %i.n
  %i.dh = icmp ule i64 %i.dg, %i.m
  %or.cond.i619.us.us.not1533 = or i1 %.not96.i618.us.us, %i.dh
  %i.di = icmp ule i64 %i.n, %i.df
  %or.cond99.i620.us.us.not1531 = or i1 %i.di, %or.cond.i619.us.us.not1533
  %.not97.i621.us.us = icmp ult ptr %i.dd, %0
  %or.cond1520 = select i1 %or.cond99.i620.us.us.not1531, i1 true, i1 %.not97.i621.us.us
  br i1 %or.cond1520, label %lzma_4862e0.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dk = add i64 %i.dj, 1                        ; 2 uses
  %.not98.i622.us.us = icmp ule i64 %i.dk, %i.n
  %i.dl = icmp ugt i64 %i.dk, %i.m
  %or.cond100.i623.us.us = and i1 %.not98.i622.us.us, %i.dl
  %i.dm = icmp ugt i64 %i.n, %i.dj
  %or.cond101.i624.us.us = and i1 %i.dm, %or.cond100.i623.us.us
  br i1 %or.cond101.i624.us.us, label %bb.u, label %lzma_4862e0.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.dn = lshr i32 %i.dc, 11
  %i.do = load i32, ptr %i.de, align 1, !tbaa !8  ; 4 uses
  %i.dp = and i32 %i.do, 65535                    ; 3 uses
  %i.dq = mul i32 %i.dp, %i.dn                    ; 4 uses
  %i.dr = icmp ult i32 %i.db, %i.dq               ; 2 uses
  br i1 %i.dr, label %bb.w, label %bb.v
end_hunk_0
begin_hunk_1_@mew_lzma:bb.a
  %.not64.i.us.us = icmp eq i32 %i.tl, 0
  br i1 %.not64.i.us.us, label %.thread.us.us, label %.preheader.split.i594.us.us

.thread.us.us:                                    ; preds = %bb.cq
  store i32 %.245.i.us.us, ptr %i.q, align 4, !tbaa !14
  store i32 %.1.i596.us.us, ptr %i.a, align 4, !tbaa !15
  %i.tm = shl i32 %.1.i596.us.us, 4
  %i.tn = add i32 %i.tm, %i.sn
  br label %.preheader.i600.us.us

.preheader.i600.us.us:                            ; preds = %bb.cm, %.thread.us.us
  %storemerge = phi ptr [ %i.st, %bb.cm ], [ %i.u, %.thread.us.us ] ; 3 uses
  %.promoted1132.us.us = phi i32 [ %i.se, %bb.cm ], [ %.245.i.us.us, %.thread.us.us ]
  %.promoted1131.us.us = phi i32 [ %i.sf, %bb.cm ], [ %.147.i.us.us, %.thread.us.us ]
  %.promoted1130.us.us = phi ptr [ %.promoted1127.us.us, %bb.cm ], [ %i.tk, %.thread.us.us ]
  %.1394691.us.us = phi i32 [ %i.sn, %bb.cm ], [ %i.tn, %.thread.us.us ]
  %i.to = phi i32 [ %i.sk, %bb.cm ], [ 4, %.thread.us.us ]
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !16
  store i32 1, ptr %i.b, align 4, !tbaa !15
  %i.tp = getelementptr inbounds nuw i8, ptr %storemerge, i64 2 ; 2 uses
  %.not.i.us.i6041136.us.us = icmp ult ptr %i.tp, %0
  br i1 %.not.i.us.i6041136.us.us, label %lzma_4862e0.exit.thread, label %.lr.ph.us.us

.preheader.split.us.i602.us.us:                   ; preds = %lzma_486248.exit.us.i615.us.us
  %i.tq = shl i32 %i.vh, 1                        ; 2 uses
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.tr ; 2 uses
  %.not.i.us.i604.us.us = icmp ult ptr %i.ts, %0
  br i1 %.not.i.us.i604.us.us, label %lzma_4862e0.exit.thread, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.i600.us.us, %.preheader.split.us.i602.us.us
  %i.tt = phi ptr [ %i.ts, %.preheader.split.us.i602.us.us ], [ %i.tp, %.preheader.i600.us.us ] ; 4 uses
  %i.tu = phi i32 [ %i.tq, %.preheader.split.us.i602.us.us ], [ 2, %.preheader.i600.us.us ]
  %.0.us.i6031138.us.us = phi i32 [ %i.vl, %.preheader.split.us.i602.us.us ], [ 0, %.preheader.i600.us.us ] ; 2 uses
  %.029.us.i1137.us.us = phi i32 [ %i.vk, %.preheader.split.us.i602.us.us ], [ 0, %.preheader.i600.us.us ]
  %i.tv = phi ptr [ %i.vf, %.preheader.split.us.i602.us.us ], [ %.promoted1130.us.us, %.preheader.i600.us.us ] ; 5 uses
  %i.tw = phi i32 [ %i.ve, %.preheader.split.us.i602.us.us ], [ %.promoted1131.us.us, %.preheader.i600.us.us ] ; 2 uses
  %i.tx = phi i32 [ %i.vd, %.preheader.split.us.i602.us.us ], [ %.promoted1132.us.us, %.preheader.i600.us.us ] ; 3 uses
  %i.ty = ptrtoint ptr %i.tt to i64               ; 2 uses
  %i.tz = add i64 %i.ty, 4                        ; 2 uses
  %.not96.i.us.i605.us.us = icmp ugt i64 %i.tz, %i.n
  %i.ua = icmp ule i64 %i.tz, %i.m
  %or.cond.i.us.i606.us.us.not1273 = or i1 %.not96.i.us.i605.us.us, %i.ua
  %i.ub = icmp ule i64 %i.n, %i.ty
  %or.cond99.i.us.i607.us.us.not1271 = or i1 %i.ub, %or.cond.i.us.i606.us.us.not1273
  %.not97.i.us.i608.us.us = icmp ult ptr %i.tv, %0
  %or.cond1265 = select i1 %or.cond99.i.us.i607.us.us.not1271, i1 true, i1 %.not97.i.us.i608.us.us
  br i1 %or.cond1265, label %lzma_4862e0.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.us.us
  %i.uc = ptrtoint ptr %i.tv to i64               ; 2 uses
  %i.ud = add i64 %i.uc, 1                        ; 2 uses
  %.not98.i.us.i609.us.us = icmp ule i64 %i.ud, %i.n
  %i.ue = icmp ugt i64 %i.ud, %i.m
  %or.cond100.i.us.i610.us.us = and i1 %.not98.i.us.i609.us.us, %i.ue
  %i.uf = icmp ugt i64 %i.n, %i.uc
  %or.cond101.i.us.i611.us.us = and i1 %i.uf, %or.cond100.i.us.i610.us.us
  br i1 %or.cond101.i.us.i611.us.us, label %bb.cs, label %lzma_4862e0.exit.thread

bb.cs:                                            ; preds = %bb.cr
  %i.ug = lshr i32 %i.tw, 11
  %i.uh = load i32, ptr %i.tt, align 1, !tbaa !8  ; 4 uses
  %i.ui = and i32 %i.uh, 65535                    ; 3 uses
  %i.uj = mul i32 %i.ui, %i.ug                    ; 4 uses
  %i.uk = icmp ult i32 %i.tx, %i.uj
  br i1 %i.uk, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ul = sub i32 %i.tw, %i.uj
  %i.um = sub nuw i32 %i.tx, %i.uj                ; 2 uses
  store i32 %i.um, ptr %i.q, align 4, !tbaa !14
  %i.un = lshr i32 %i.ui, 5
  %i.uo = sub i32 %i.uh, %i.un
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.up = sub nsw i32 2048, %i.ui
  %i.uq = lshr i32 %i.up, 5
  %i.ur = add i32 %i.uq, %i.uh
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.us = phi i32 [ %i.um, %bb.ct ], [ %i.tx, %bb.cu ] ; 2 uses
  %.sink112.i.us.i612.us.us = phi i32 [ %i.uo, %bb.ct ], [ %i.ur, %bb.cu ]
  %.sink.i.us.i613.us.us = phi i32 [ %i.ul, %bb.ct ], [ %i.uj, %bb.cu ] ; 4 uses
  %.0.i.us.i614.us.us = phi i32 [ 1, %bb.ct ], [ 0, %bb.cu ] ; 2 uses
  %i.ut = and i32 %i.uh, -65536
  %i.uu = and i32 %.sink112.i.us.i612.us.us, 65535
  %i.uv = or disjoint i32 %i.uu, %i.ut
  store i32 %.sink.i.us.i613.us.us, ptr %i.r, align 8, !tbaa !13
  store i32 %i.uv, ptr %i.tt, align 1, !tbaa !8
  %i.uw = icmp ult i32 %.sink.i.us.i613.us.us, 16777216
  br i1 %i.uw, label %bb.cw, label %lzma_486248.exit.us.i615.us.us

bb.cw:                                            ; preds = %bb.cv
  %i.ux = load i8, ptr %i.tv, align 1, !tbaa !8
  %i.uy = zext i8 %i.ux to i32
  %i.uz = shl i32 %i.us, 8
  %i.va = or disjoint i32 %i.uz, %i.uy            ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tv, i64 1 ; 3 uses
  %i.vc = shl nuw i32 %.sink.i.us.i613.us.us, 8   ; 2 uses
  store i32 %i.va, ptr %i.q, align 4, !tbaa !14
  store i32 %i.vc, ptr %i.r, align 8, !tbaa !13
  store ptr %i.vb, ptr %5, align 8, !tbaa !9
  br label %lzma_486248.exit.us.i615.us.us

lzma_486248.exit.us.i615.us.us:                   ; preds = %bb.cw, %bb.cv
  %i.vd = phi i32 [ %i.va, %bb.cw ], [ %i.us, %bb.cv ]
  %i.ve = phi i32 [ %i.vc, %bb.cw ], [ %.sink.i.us.i613.us.us, %bb.cv ]
  %i.vf = phi ptr [ %i.vb, %bb.cw ], [ %i.tv, %bb.cv ]
  %i.vg = phi ptr [ %i.vb, %bb.cw ], [ %i.tt, %bb.cv ]
  %i.vh = or disjoint i32 %.0.i.us.i614.us.us, %i.tu ; 2 uses
  %i.vi = and i32 %.0.us.i6031138.us.us, 255
  %i.vj = shl nuw i32 %.0.i.us.i614.us.us, %i.vi
  %i.vk = or i32 %i.vj, %.029.us.i1137.us.us      ; 3 uses
  %i.vl = add nuw i32 %.0.us.i6031138.us.us, 1    ; 2 uses
  %exitcond.not.i.us.us = icmp eq i32 %i.vl, %i.to
  br i1 %exitcond.not.i.us.us, label %.split.us.i.us.us, label %.preheader.split.us.i602.us.us

.split.us.i.us.us:                                ; preds = %lzma_486248.exit.us.i615.us.us
  store ptr %i.vg, ptr %i.c, align 8, !tbaa !16
  store i32 %i.vh, ptr %i.b, align 4
  store i32 %i.vk, ptr %i.a, align 4, !tbaa !15
  %i.vm = add i32 %.1394691.us.us, %i.vk
  br label %bb.cx

bb.cx:                                            ; preds = %.split.us.i.us.us, %lzma_486248.exit.us.i.us.us.5
  %.3396.us.us = phi i32 [ %i.vm, %.split.us.i.us.us ], [ %i.sh, %lzma_486248.exit.us.i.us.us.5 ]
  %i.vn = add i32 %.3396.us.us, 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.aw
  %.0449.us.us = phi i32 [ %i.jm, %bb.cx ], [ %i.ip, %bb.aw ] ; 4 uses
  %.3446.us.us = phi i32 [ %.0438.us.us, %bb.cx ], [ %.2445.us.us, %bb.aw ]
  %.2440.us.us = phi i32 [ %.0393.us.us, %bb.cx ], [ %.1439.us.us, %bb.aw ]
  %.4430.us.us = phi i32 [ %.0443.us.us, %bb.cx ], [ %.3429.us.us, %bb.aw ]
  %.1402.us.us = phi i32 [ %i.jj, %bb.cx ], [ %i.ir, %bb.aw ]
  %.5398.us.us = phi i32 [ %i.vn, %bb.cx ], [ %.4397.us.us, %bb.aw ] ; 3 uses
  %.not531.us.us = icmp eq i32 %.5398.us.us, 0
  br i1 %.not531.us.us, label %bb.eo, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vo = add i32 %.0449.us.us, 2                 ; 6 uses
  store ptr %i.ahl, ptr %i.c, align 8, !tbaa !16
  store i32 %.promoted1152.us.us, ptr %i.a, align 4, !tbaa !15
  %i.vp = sub i32 %.promoted1152.us.us, %.5398.us.us ; 9 uses
  %i.vq = sub i32 %i.agv, %.promoted1152.us.us    ; 3 uses
  %i.vr = icmp ult i32 %i.vo, %i.vq
  br i1 %i.vr, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.vs = zext i32 %i.vo to i64                   ; 2 uses
  %i.vt = add i32 %.0449.us.us, 1
  %or.cond559.not.us.us = icmp ult i32 %i.vt, %2
  br i1 %or.cond559.not.us.us, label %bb.db, label %lzma_4862e0.exit.thread

bb.db:                                            ; preds = %bb.da
  %i.vu = zext i32 %i.vp to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.vu
  %i.vw = ptrtoint ptr %i.vv to i64               ; 2 uses
  %i.vx = add i64 %i.vw, %i.vs                    ; 2 uses
  %.not535.us.us = icmp ule i64 %i.vx, %i.n
  %i.vy = icmp ugt i64 %i.vx, %i.m
  %or.cond560.us.us = and i1 %.not535.us.us, %i.vy
  %i.vz = icmp ugt i64 %i.n, %i.vw
  %or.cond561.us.us = and i1 %i.vz, %or.cond560.us.us
  br i1 %or.cond561.us.us, label %bb.dc, label %lzma_4862e0.exit.thread

bb.dc:                                            ; preds = %bb.db
  %i.wa = zext i32 %.promoted1152.us.us to i64
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.wa
  %i.wc = ptrtoint ptr %i.wb to i64               ; 2 uses
  %i.wd = add i64 %i.vs, %i.wc                    ; 2 uses
  %.not537.us.us = icmp ule i64 %i.wd, %i.n
  %i.we = icmp ugt i64 %i.wd, %i.m
  %or.cond562.us.us = and i1 %.not537.us.us, %i.we
  %i.wf = icmp ugt i64 %i.n, %i.wc
  %or.cond563.us.us = and i1 %i.wf, %or.cond562.us.us
  br i1 %or.cond563.us.us, label %bb.dd, label %lzma_4862e0.exit.thread

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %i.wg = zext i32 %i.vq to i64                   ; 2 uses
  %.not538.us.us = icmp eq i32 %i.agv, %.promoted1152.us.us
  %.not539.us.us = icmp ugt i32 %i.vq, %2
  %or.cond564.us.us = or i1 %.not538.us.us, %.not539.us.us
  br i1 %or.cond564.us.us, label %lzma_4862e0.exit.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wh = zext i32 %i.vp to i64                   ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.wh
  %i.wj = ptrtoint ptr %i.wi to i64               ; 2 uses
  %i.wk = add i64 %i.wj, %i.wg                    ; 2 uses
  %.not541.us.us = icmp ule i64 %i.wk, %i.n
  %i.wl = icmp ugt i64 %i.wk, %i.m
  %or.cond565.us.us = and i1 %.not541.us.us, %i.wl
  %i.wm = icmp ugt i64 %i.n, %i.wj
  %or.cond566.us.us = and i1 %i.wm, %or.cond565.us.us
  br i1 %or.cond566.us.us, label %bb.df, label %lzma_4862e0.exit.thread

bb.df:                                            ; preds = %bb.de
  %i.wn = zext i32 %.promoted1152.us.us to i64    ; 8 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.wn
  %i.wp = ptrtoint ptr %i.wo to i64               ; 2 uses
  %i.wq = add i64 %i.wp, %i.wg                    ; 2 uses
  %.not543.us.us = icmp ule i64 %i.wq, %i.n
  %i.wr = icmp ugt i64 %i.wq, %i.m
  %or.cond567.us.us = and i1 %.not543.us.us, %i.wr
  %i.ws = icmp ugt i64 %i.n, %i.wp
  %or.cond568.us.us = and i1 %i.ws, %or.cond567.us.us
  br i1 %or.cond568.us.us, label %iter.check, label %lzma_4862e0.exit.thread

iter.check:                                       ; preds = %bb.df
  %i.wt = add i32 %.promoted1152.us.us, 1
  %umax1603 = tail call i32 @llvm.umax.i32(i32 %i.agv, i32 %i.wt)
  %i.wu = xor i32 %.promoted1152.us.us, -1
  %i.wv = add i32 %umax1603, %i.wu
  %i.ww = freeze i32 %i.wv
  %i.wx = add i32 %.0449.us.us, 1
  %umin1604 = tail call i32 @llvm.umin.i32(i32 %i.ww, i32 %i.wx) ; 3 uses
  %umin1603 = zext i32 %umin1604 to i64
  %6 = add nuw nsw i64 %umin1603, 1               ; 5 uses
  %min.iters.check = icmp ult i32 %umin1604, 3
  br i1 %min.iters.check, label %.preheader736.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.wy = add i32 %.promoted1152.us.us, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.agv, i32 %i.wy)
  %i.wz = xor i32 %.promoted1152.us.us, -1
  %i.xa = add i32 %umax, %i.wz
  %i.xb = freeze i32 %i.xa
  %i.xc = add i32 %.0449.us.us, 1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.xb, i32 %i.xc)
  %i.xd = xor i32 %i.vp, -1
  %i.xe = icmp ugt i32 %umin, %i.xd
  %i.xf = sub nsw i64 %i.wh, %i.wn
  %diff.check = icmp ugt i64 %i.xf, -32
  %or.cond1622 = select i1 %i.xe, i1 true, i1 %diff.check
  br i1 %or.cond1622, label %.preheader736.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check1605 = icmp ult i32 %umin1604, 31
  br i1 %min.iters.check1605, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %7 = and i64 %6, 28
  %n.vec = and i64 %6, 8589934560                 ; 6 uses
  %8 = add nuw nsw i64 %n.vec, %i.wn
  %9 = trunc i64 %n.vec to i32                    ; 2 uses
  %i.xg = add i32 %i.vp, %9
  %i.xh = sub i32 %i.vo, %9
  %invariant.gep = getelementptr i8, ptr %i.ahl, i64 %i.wn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %10 = trunc i64 %index to i32
  %i.xi = add i32 %i.vp, %10
  %i.xj = zext i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.xj ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %wide.load = load <16 x i8>, ptr %i.xk, align 1, !tbaa !8
  %wide.load1606 = load <16 x i8>, ptr %i.xl, align 1, !tbaa !8 ; 2 uses
  %i.xm = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  store <16 x i8> %wide.load, ptr %i.xm, align 1, !tbaa !8
  store <16 x i8> %wide.load1606, ptr %i.xn, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xo = icmp eq i64 %index.next, %n.vec
  br i1 %i.xo, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.xp = extractelement <16 x i8> %wide.load1606, i64 15
  %11 = trunc i64 %n.vec to i32
  %12 = add i32 %.promoted1152.us.us, %11
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.loopexit737.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %7, 0
  br i1 %min.epilog.iters.check, label %.preheader736.us.us.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1608 = and i64 %6, 8589934588             ; 5 uses
  %13 = add nuw nsw i64 %n.vec1608, %i.wn
  %14 = trunc i64 %n.vec1608 to i32               ; 2 uses
  %i.xq = add i32 %i.vp, %14
  %i.xr = sub i32 %i.vo, %14
  %invariant.gep1720 = getelementptr i8, ptr %i.ahl, i64 %i.wn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1609 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1611, %vec.epilog.vector.body ] ; 3 uses
  %15 = trunc i64 %index1609 to i32
  %i.xs = add i32 %i.vp, %15
  %i.xt = zext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.xt
  %wide.load1611 = load <4 x i8>, ptr %i.xu, align 1, !tbaa !8 ; 2 uses
  %i.xv = getelementptr i8, ptr %invariant.gep1720, i64 %index1609
  store <4 x i8> %wide.load1611, ptr %i.xv, align 1, !tbaa !8
  %index.next1611 = add nuw i64 %index1609, 4     ; 2 uses
  %i.xw = icmp eq i64 %index.next1611, %n.vec1608
  br i1 %i.xw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.xx = extractelement <4 x i8> %wide.load1611, i64 3
  %16 = trunc i64 %n.vec1608 to i32
  %17 = add i32 %.promoted1152.us.us, %16
  %cmp.n1613 = icmp eq i64 %6, %n.vec1608
  br i1 %cmp.n1613, label %.loopexit737.us.us, label %.preheader736.us.us.preheader

.preheader736.us.us.preheader:                    ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.wn, %vector.scevcheck ], [ %i.wn, %iter.check ], [ %8, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  %.ph1631 = phi i32 [ %i.vp, %vector.scevcheck ], [ %i.vp, %iter.check ], [ %i.xg, %vec.epilog.iter.check ], [ %i.xq, %vec.epilog.middle.block ]
  %.1450.us.us.ph = phi i32 [ %i.vo, %vector.scevcheck ], [ %i.vo, %iter.check ], [ %i.xh, %vec.epilog.iter.check ], [ %i.xr, %vec.epilog.middle.block ]
  br label %.preheader736.us.us

.preheader736.us.us:                              ; preds = %.preheader736.us.us.preheader, %.preheader736.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader736.us.us ], [ %indvars.iv.ph, %.preheader736.us.us.preheader ] ; 2 uses
  %i.xy = phi i32 [ %i.yc, %.preheader736.us.us ], [ %.ph1631, %.preheader736.us.us.preheader ] ; 2 uses
  %.1450.us.us = phi i32 [ %i.yd, %.preheader736.us.us ], [ %.1450.us.us.ph, %.preheader736.us.us.preheader ]
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !8   ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %indvars.iv
  store i8 %i.yb, ptr %18, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.yc = add i32 %i.xy, 1
  %i.yd = add i32 %.1450.us.us, -1                ; 2 uses
  %i.ye = icmp ne i32 %i.yd, 0
  %19 = icmp ugt i32 %i.agv, %indvars
  %or.cond570.us.us = select i1 %i.ye, i1 %19, i1 false
  br i1 %or.cond570.us.us, label %.preheader736.us.us, label %.loopexit737.us.us, !llvm.loop !22

bb.dg:                                            ; preds = %lzma_486248.exit.us.us
  %i.yf = lshr i8 %.0419.us.us, 4
  %narrow.us.us = mul nuw nsw i8 %i.yf, 3
  %i.yg = zext nneg i8 %narrow.us.us to i64
  %i.yh = shl nuw nsw i64 %i.yg, 9
  %i.yi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.yh ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 3692 ; 5 uses
  store ptr %i.yj, ptr %i.c, align 8, !tbaa !16
  %i.yk = icmp ugt i32 %.0401.us.us, 3
  br i1 %i.yk, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.yl = icmp ugt i32 %.0401.us.us, 9
  br i1 %i.yl, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ym = add nsw i32 %.0401.us.us, -3
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.yn = add nsw i32 %.0401.us.us, -6
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dg
  %.2403.us.us = phi i32 [ %i.yn, %bb.dj ], [ %i.ym, %bb.di ], [ 0, %bb.dg ]
  %i.yo = icmp eq i32 %.0433.us.us, 0
  br i1 %i.yo, label %.lr.ph1178.us.us.preheader, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yp = sub i32 %.promoted1152.us.us, %.0393.us.us ; 2 uses
  %i.yq = zext i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.yq ; 2 uses
  %i.ys = ptrtoint ptr %i.yr to i64               ; 2 uses
  %i.yt = add i64 %i.ys, 1                        ; 2 uses
  %.not517.us.us = icmp ule i64 %i.yt, %i.n
  %i.yu = icmp ugt i64 %i.yt, %i.m
  %or.cond571.us.us = and i1 %.not517.us.us, %i.yu
  %i.yv = icmp ugt i64 %i.n, %i.ys
  %or.cond572.us.us = and i1 %i.yv, %or.cond571.us.us
  br i1 %or.cond572.us.us, label %bb.dm, label %lzma_4862e0.exit.thread

bb.dm:                                            ; preds = %bb.dl
  %i.yw = load i8, ptr %i.yr, align 1, !tbaa !8   ; 3 uses
  %i.yx = zext i8 %i.yw to i32
  %i.yy = and i32 %i.yp, -256
  %i.yz = or disjoint i32 %i.yy, %i.yx
  store i32 %i.yz, ptr %i.a, align 4, !tbaa !15
  %i.za = lshr i8 %i.yw, 7
  %i.zb = zext nneg i8 %i.za to i32               ; 2 uses
  %i.zc = shl nuw nsw i32 %i.zb, 9
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 514 ; 4 uses
  store ptr %i.zf, ptr %i.c, align 8, !tbaa !16
  %i.zg = ptrtoint ptr %i.zf to i64               ; 2 uses
  %i.zh = add i64 %i.zg, 4                        ; 2 uses
  %.not96.i.i.us.us = icmp ugt i64 %i.zh, %i.n
  %i.zi = icmp ule i64 %i.zh, %i.m
  %or.cond.i.i.us.us.not1549 = or i1 %.not96.i.i.us.us, %i.zi
  %i.zj = icmp ule i64 %i.n, %i.zg
  %or.cond99.i.i.us.us.not1547 = or i1 %i.zj, %or.cond.i.i.us.us.not1549
  %.not97.i.i.us.us = icmp ult ptr %i.bs, %0
  %or.cond1524 = select i1 %or.cond99.i.i.us.us.not1547, i1 true, i1 %.not97.i.i.us.us
  br i1 %or.cond1524, label %lzma_4862e0.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zk = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.zl = add i64 %i.zk, 1                        ; 2 uses
  %.not98.i.i.us.us = icmp ule i64 %i.zl, %i.n
  %i.zm = icmp ugt i64 %i.zl, %i.m
  %or.cond100.i.i.us.us = and i1 %.not98.i.i.us.us, %i.zm
  %i.zn = icmp ugt i64 %i.n, %i.zk
  %or.cond101.i.i.us.us = and i1 %i.zn, %or.cond100.i.i.us.us
  br i1 %or.cond101.i.i.us.us, label %bb.do, label %lzma_4862e0.exit.thread

bb.do:                                            ; preds = %bb.dn
  %i.zo = lshr i32 %i.br, 11
  %i.zp = load i32, ptr %i.zf, align 1, !tbaa !8  ; 4 uses
  %i.zq = and i32 %i.zp, 65535                    ; 3 uses
  %i.zr = mul i32 %i.zq, %i.zo                    ; 4 uses
  %i.zs = icmp ult i32 %i.bq, %i.zr
  br i1 %i.zs, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.zt = sub i32 %i.br, %i.zr
  %i.zu = sub nuw i32 %i.bq, %i.zr                ; 2 uses
  store i32 %i.zu, ptr %i.q, align 4, !tbaa !14
  %i.zv = lshr i32 %i.zq, 5
  %i.zw = sub i32 %i.zp, %i.zv
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.zx = sub nsw i32 2048, %i.zq
  %i.zy = lshr i32 %i.zx, 5
  %i.zz = add i32 %i.zy, %i.zp
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.aaa = phi i32 [ %i.zu, %bb.dp ], [ %i.bq, %bb.dq ] ; 2 uses
  %.sink112.i.i.us.us = phi i32 [ %i.zw, %bb.dp ], [ %i.zz, %bb.dq ]
  %.sink.i.i.us.us = phi i32 [ %i.zt, %bb.dp ], [ %i.zr, %bb.dq ] ; 4 uses
  %.0.i.i.us.us = phi i32 [ 1, %bb.dp ], [ 0, %bb.dq ] ; 2 uses
  %i.aab = and i32 %i.zp, -65536
  %i.aac = and i32 %.sink112.i.i.us.us, 65535
  %i.aad = or disjoint i32 %i.aac, %i.aab
  store i32 %.sink.i.i.us.us, ptr %i.r, align 8, !tbaa !13
  store i32 %i.aad, ptr %i.zf, align 1, !tbaa !8
  %i.aae = icmp ult i32 %.sink.i.i.us.us, 16777216
  br i1 %i.aae, label %bb.ds, label %lzma_486248.exit.i.us.us

bb.ds:                                            ; preds = %bb.dr
  %i.aaf = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.aag = zext i8 %i.aaf to i32
  %i.aah = shl i32 %i.aaa, 8
  %i.aai = or disjoint i32 %i.aah, %i.aag         ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  store ptr %i.aaj, ptr %i.c, align 8, !tbaa !16
  %i.aak = shl nuw i32 %.sink.i.i.us.us, 8
  store i32 %i.aai, ptr %i.q, align 4, !tbaa !14
  store ptr %i.aaj, ptr %5, align 8, !tbaa !9
  br label %lzma_486248.exit.i.us.us

lzma_486248.exit.i.us.us:                         ; preds = %bb.ds, %bb.dr
  %.promoted1159.us.us = phi i32 [ %i.aai, %bb.ds ], [ %i.aaa, %bb.dr ] ; 2 uses
  %.promoted1158.us.us = phi ptr [ %i.aaj, %bb.ds ], [ %i.bs, %bb.dr ] ; 2 uses
  %i.aal = phi i32 [ %i.aak, %bb.ds ], [ %.sink.i.i.us.us, %bb.dr ] ; 2 uses
  %i.aam = or disjoint i32 %.0.i.i.us.us, 2       ; 2 uses
  %i.aan = icmp eq i32 %.0.i.i.us.us, %i.zb
  br i1 %i.aan, label %.lr.ph1163.us.us, label %.lr.ph96.i.us.us.preheader

.lr.ph.i.us.us:                                   ; preds = %lzma_486248.exit71.i.us.us
  %i.aao = icmp ugt i32 %.05193.i1161.us.us, 127
  br i1 %i.aao, label %.sink.split, label %.lr.ph1163.us.us

.lr.ph1163.us.us:                                 ; preds = %lzma_486248.exit.i.us.us, %.lr.ph.i.us.us
  %.05594.i1162.us.us.in = phi i8 [ %.05594.i1162.us.us, %.lr.ph.i.us.us ], [ %i.yw, %lzma_486248.exit.i.us.us ]
  %.05193.i1161.us.us = phi i32 [ %i.ack, %.lr.ph.i.us.us ], [ %i.aam, %lzma_486248.exit.i.us.us ] ; 4 uses
  %i.aap = phi i32 [ %i.aci, %.lr.ph.i.us.us ], [ %i.aal, %lzma_486248.exit.i.us.us ] ; 2 uses
  %i.aaq = phi ptr [ %i.acg, %.lr.ph.i.us.us ], [ %.promoted1158.us.us, %lzma_486248.exit.i.us.us ] ; 5 uses
  %i.aar = phi i32 [ %i.acf, %.lr.ph.i.us.us ], [ %.promoted1159.us.us, %lzma_486248.exit.i.us.us ] ; 3 uses
  %.05594.i1162.us.us = shl i8 %.05594.i1162.us.us.in, 1 ; 2 uses
  %i.aas = lshr i8 %.05594.i1162.us.us, 7
  %i.aat = zext nneg i8 %i.aas to i32             ; 2 uses
  %i.aau = shl nuw nsw i32 %i.aat, 8
  %i.aav = add nuw nsw i32 %i.aau, 256
  %i.aaw = add nuw nsw i32 %i.aav, %.05193.i1161.us.us
  %i.aax = shl nuw nsw i32 %i.aaw, 1
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.aay ; 4 uses
  %i.aba = ptrtoint ptr %i.aaz to i64             ; 2 uses
  %i.abb = add i64 %i.aba, 4                      ; 2 uses
  %.not96.i61.i.us.us = icmp ugt i64 %i.abb, %i.n
  %i.abc = icmp ule i64 %i.abb, %i.m
  %or.cond.i62.i.us.us.not1277 = or i1 %.not96.i61.i.us.us, %i.abc
  %i.abd = icmp ule i64 %i.n, %i.aba
  %or.cond99.i63.i.us.us.not1275 = or i1 %i.abd, %or.cond.i62.i.us.us.not1277
  %.not97.i64.i.us.us = icmp ult ptr %i.aaq, %0
  %or.cond1263 = select i1 %or.cond99.i63.i.us.us.not1275, i1 true, i1 %.not97.i64.i.us.us
  br i1 %or.cond1263, label %lzma_4862e0.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph1163.us.us
  %i.abe = ptrtoint ptr %i.aaq to i64             ; 2 uses
  %i.abf = add i64 %i.abe, 1                      ; 2 uses
  %.not98.i65.i.us.us = icmp ule i64 %i.abf, %i.n
  %i.abg = icmp ugt i64 %i.abf, %i.m
  %or.cond100.i66.i.us.us = and i1 %.not98.i65.i.us.us, %i.abg
  %i.abh = icmp ugt i64 %i.n, %i.abe
  %or.cond101.i67.i.us.us = and i1 %i.abh, %or.cond100.i66.i.us.us
  br i1 %or.cond101.i67.i.us.us, label %bb.du, label %lzma_4862e0.exit.thread

bb.du:                                            ; preds = %bb.dt
  %i.abi = lshr i32 %i.aap, 11
  %i.abj = load i32, ptr %i.aaz, align 1, !tbaa !8 ; 4 uses
  %i.abk = and i32 %i.abj, 65535                  ; 3 uses
  %i.abl = mul i32 %i.abk, %i.abi                 ; 4 uses
  %i.abm = icmp ult i32 %i.aar, %i.abl
  br i1 %i.abm, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abn = sub i32 %i.aap, %i.abl
  %i.abo = sub nuw i32 %i.aar, %i.abl             ; 2 uses
  store i32 %i.abo, ptr %i.q, align 4, !tbaa !14
  %i.abp = lshr i32 %i.abk, 5
  %i.abq = sub i32 %i.abj, %i.abp
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.abr = sub nsw i32 2048, %i.abk
  %i.abs = lshr i32 %i.abr, 5
  %i.abt = add i32 %i.abs, %i.abj
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.abu = phi i32 [ %i.abo, %bb.dv ], [ %i.aar, %bb.dw ] ; 2 uses
  %.sink112.i68.i.us.us = phi i32 [ %i.abq, %bb.dv ], [ %i.abt, %bb.dw ]
  %.sink.i69.i.us.us = phi i32 [ %i.abn, %bb.dv ], [ %i.abl, %bb.dw ] ; 4 uses
  %.0.i70.i.us.us = phi i32 [ 1, %bb.dv ], [ 0, %bb.dw ] ; 2 uses
  %i.abv = and i32 %i.abj, -65536
end_hunk_1
begin_hunk_2_@mew_lzma:bb.a
bb.ea:                                            ; preds = %bb.dz
  %i.adb = lshr i32 %i.acp, 11
  %i.adc = load i32, ptr %i.acs, align 1, !tbaa !8 ; 4 uses
  %i.add = and i32 %i.adc, 65535                  ; 3 uses
  %i.ade = mul i32 %i.add, %i.adb                 ; 4 uses
  %i.adf = icmp ult i32 %i.acn, %i.ade
  br i1 %i.adf, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.adg = sub i32 %i.acp, %i.ade
  %i.adh = sub nuw i32 %i.acn, %i.ade             ; 2 uses
  store i32 %i.adh, ptr %i.q, align 4, !tbaa !14
  %i.adi = lshr i32 %i.add, 5
  %i.adj = sub i32 %i.adc, %i.adi
  %i.adk = or disjoint i32 %i.acq, 1
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.adl = sub nsw i32 2048, %i.add
  %i.adm = lshr i32 %i.adl, 5
  %i.adn = add i32 %i.adm, %i.adc
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.ado = phi i32 [ %i.adh, %bb.eb ], [ %i.acn, %bb.ec ] ; 2 uses
  %.sink112.i81.i.us.us = phi i32 [ %i.adj, %bb.eb ], [ %i.adn, %bb.ec ]
  %.sink.i82.i.us.us = phi i32 [ %i.adg, %bb.eb ], [ %i.ade, %bb.ec ] ; 4 uses
  %.0.i83.i.us.us = phi i32 [ %i.adk, %bb.eb ], [ %i.acq, %bb.ec ] ; 3 uses
  %i.adp = and i32 %i.adc, -65536
  %i.adq = and i32 %.sink112.i81.i.us.us, 65535
  %i.adr = or disjoint i32 %i.adq, %i.adp
  store i32 %.sink.i82.i.us.us, ptr %i.r, align 8, !tbaa !13
  store i32 %i.adr, ptr %i.acs, align 1, !tbaa !8
  %i.ads = icmp ult i32 %.sink.i82.i.us.us, 16777216
  br i1 %i.ads, label %bb.ee, label %lzma_486248.exit84.i.us.us

bb.ee:                                            ; preds = %bb.ed
  %i.adt = load i8, ptr %i.aco, align 1, !tbaa !8
  %i.adu = zext i8 %i.adt to i32
  %i.adv = shl i32 %i.ado, 8
  %i.adw = or disjoint i32 %i.adv, %i.adu         ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.aco, i64 1 ; 3 uses
  %i.ady = shl nuw i32 %.sink.i82.i.us.us, 8      ; 2 uses
  store i32 %i.adw, ptr %i.q, align 4, !tbaa !14
  store i32 %i.ady, ptr %i.r, align 8, !tbaa !13
  store ptr %i.adx, ptr %5, align 8, !tbaa !9
  br label %lzma_486248.exit84.i.us.us

lzma_486248.exit84.i.us.us:                       ; preds = %bb.ee, %bb.ed
  %i.adz = phi i32 [ %i.adw, %bb.ee ], [ %i.ado, %bb.ed ]
  %i.aea = phi ptr [ %i.adx, %bb.ee ], [ %i.aco, %bb.ed ]
  %i.aeb = phi ptr [ %i.adx, %bb.ee ], [ %i.acs, %bb.ed ]
  %i.aec = phi i32 [ %i.ady, %bb.ee ], [ %.sink.i82.i.us.us, %bb.ed ]
  %i.aed = icmp ult i32 %.0.i83.i.us.us, 256
  br i1 %i.aed, label %.lr.ph96.i.us.us, label %.sink.split

.lr.ph1178.us.us.preheader:                       ; preds = %bb.dk
  store i32 1, ptr %i.a, align 4, !tbaa !15
  %i.aee = getelementptr inbounds nuw i8, ptr %i.yi, i64 3694 ; 2 uses
  %i.aef = ptrtoint ptr %i.aee to i64             ; 2 uses
  %i.aeg = add i64 %i.aef, 4                      ; 2 uses
  %.not96.i670.us.us1597 = icmp ugt i64 %i.aeg, %i.n
  %i.aeh = icmp ule i64 %i.aeg, %i.m
  %or.cond.i671.us.us.not15531598 = or i1 %.not96.i670.us.us1597, %i.aeh
  %i.aei = icmp ule i64 %i.n, %i.aef
  %or.cond99.i672.us.us.not15511599 = or i1 %i.aei, %or.cond.i671.us.us.not15531598
  %.not97.i673.us.us1600 = icmp ult ptr %i.bs, %0
  %or.cond15251601 = select i1 %or.cond99.i672.us.us.not15511599, i1 true, i1 %.not97.i673.us.us1600
  br i1 %or.cond15251601, label %lzma_4862e0.exit.thread, label %.lr.ph1602

.lr.ph1178.us.us:                                 ; preds = %bb.ek
  %i.aej = shl nuw nsw i32 %.0.i679.us.us, 1      ; 2 uses
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.aek ; 2 uses
  %i.aem = ptrtoint ptr %i.ael to i64             ; 2 uses
  %i.aen = add i64 %i.aem, 4                      ; 2 uses
  %.not96.i670.us.us = icmp ugt i64 %i.aen, %i.n
  %i.aeo = icmp ule i64 %i.aen, %i.m
  %or.cond.i671.us.us.not1553 = or i1 %.not96.i670.us.us, %i.aeo
  %i.aep = icmp ule i64 %i.n, %i.aem
  %or.cond99.i672.us.us.not1551 = or i1 %i.aep, %or.cond.i671.us.us.not1553
  %.not97.i673.us.us = icmp ult ptr %i.afz, %0
  %or.cond1525 = select i1 %or.cond99.i672.us.us.not1551, i1 true, i1 %.not97.i673.us.us
  br i1 %or.cond1525, label %lzma_4862e0.exit.thread, label %.lr.ph1602

.lr.ph1602:                                       ; preds = %.lr.ph1178.us.us.preheader, %.lr.ph1178.us.us
  %i.aeq = phi i32 [ %i.aej, %.lr.ph1178.us.us ], [ 2, %.lr.ph1178.us.us.preheader ] ; 2 uses
  %i.aer = phi ptr [ %i.ael, %.lr.ph1178.us.us ], [ %i.aee, %.lr.ph1178.us.us.preheader ] ; 3 uses
  %i.aes = phi ptr [ %i.afz, %.lr.ph1178.us.us ], [ %i.bs, %.lr.ph1178.us.us.preheader ] ; 4 uses
  %i.aet = phi i32 [ %i.afy, %.lr.ph1178.us.us ], [ %i.br, %.lr.ph1178.us.us.preheader ] ; 2 uses
  %i.aeu = phi i32 [ %i.afx, %.lr.ph1178.us.us ], [ %i.bq, %.lr.ph1178.us.us.preheader ] ; 3 uses
  %i.aev = ptrtoint ptr %i.aes to i64             ; 2 uses
  %i.aew = add i64 %i.aev, 1                      ; 2 uses
  %.not98.i674.us.us = icmp ule i64 %i.aew, %i.n
  %i.aex = icmp ugt i64 %i.aew, %i.m
  %or.cond100.i675.us.us = and i1 %.not98.i674.us.us, %i.aex
  %i.aey = icmp ugt i64 %i.n, %i.aev
  %or.cond101.i676.us.us = and i1 %i.aey, %or.cond100.i675.us.us
  br i1 %or.cond101.i676.us.us, label %bb.ef, label %lzma_4862e0.exit.thread

bb.ef:                                            ; preds = %.lr.ph1602
  %i.aez = lshr i32 %i.aet, 11
  %i.afa = load i32, ptr %i.aer, align 1, !tbaa !8 ; 4 uses
  %i.afb = and i32 %i.afa, 65535                  ; 3 uses
  %i.afc = mul i32 %i.afb, %i.aez                 ; 4 uses
  %i.afd = icmp ult i32 %i.aeu, %i.afc
  br i1 %i.afd, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.afe = sub i32 %i.aet, %i.afc
  %i.aff = sub nuw i32 %i.aeu, %i.afc             ; 2 uses
  store i32 %i.aff, ptr %i.q, align 4, !tbaa !14
  %i.afg = lshr i32 %i.afb, 5
  %i.afh = sub i32 %i.afa, %i.afg
  %i.afi = or disjoint i32 %i.aeq, 1
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.afj = sub nsw i32 2048, %i.afb
  %i.afk = lshr i32 %i.afj, 5
  %i.afl = add i32 %i.afk, %i.afa
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.afm = phi i32 [ %i.aff, %bb.eg ], [ %i.aeu, %bb.eh ] ; 2 uses
  %.sink112.i677.us.us = phi i32 [ %i.afh, %bb.eg ], [ %i.afl, %bb.eh ]
  %.sink.i678.us.us = phi i32 [ %i.afe, %bb.eg ], [ %i.afc, %bb.eh ] ; 4 uses
  %.0.i679.us.us = phi i32 [ %i.afi, %bb.eg ], [ %i.aeq, %bb.eh ] ; 3 uses
  %i.afn = and i32 %i.afa, -65536
  %i.afo = and i32 %.sink112.i677.us.us, 65535
  %i.afp = or disjoint i32 %i.afo, %i.afn
  store i32 %.sink.i678.us.us, ptr %i.r, align 8, !tbaa !13
  store i32 %i.afp, ptr %i.aer, align 1, !tbaa !8
  %i.afq = icmp ult i32 %.sink.i678.us.us, 16777216
  br i1 %i.afq, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.afr = load i8, ptr %i.aes, align 1, !tbaa !8
  %i.afs = zext i8 %i.afr to i32
  %i.aft = shl i32 %i.afm, 8
  %i.afu = or disjoint i32 %i.aft, %i.afs         ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aes, i64 1 ; 3 uses
  %i.afw = shl nuw i32 %.sink.i678.us.us, 8       ; 2 uses
  store i32 %i.afu, ptr %i.q, align 4, !tbaa !14
  store i32 %i.afw, ptr %i.r, align 8, !tbaa !13
  store ptr %i.afv, ptr %5, align 8, !tbaa !9
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.afx = phi i32 [ %i.afu, %bb.ej ], [ %i.afm, %bb.ei ]
  %i.afy = phi i32 [ %i.afw, %bb.ej ], [ %.sink.i678.us.us, %bb.ei ]
  %i.afz = phi ptr [ %i.afv, %bb.ej ], [ %i.aes, %bb.ei ] ; 2 uses
  %i.aga = phi ptr [ %i.afv, %bb.ej ], [ %i.aer, %bb.ei ]
  %i.agb = icmp ult i32 %.0.i679.us.us, 256
  br i1 %i.agb, label %.lr.ph1178.us.us, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i.us.us, %lzma_486248.exit84.i.us.us, %bb.ek
  %.sink = phi ptr [ %i.aga, %bb.ek ], [ %i.aeb, %lzma_486248.exit84.i.us.us ], [ %i.ach, %.lr.ph.i.us.us ]
  %.3422.in.us.us.ph = phi i32 [ %.0.i679.us.us, %bb.ek ], [ %.0.i83.i.us.us, %lzma_486248.exit84.i.us.us ], [ %i.ack, %.lr.ph.i.us.us ]
  store ptr %.sink, ptr %i.c, align 8
  br label %bb.el

bb.el:                                            ; preds = %.sink.split, %.preheader.i681.us.us
  %.3422.in.us.us = phi i32 [ %i.ack, %.preheader.i681.us.us ], [ %.3422.in.us.us.ph, %.sink.split ]
  store i32 %.promoted1152.us.us, ptr %i.b, align 4, !tbaa !15
  %i.agc = zext i32 %.promoted1152.us.us to i64
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.agc ; 2 uses
  %i.age = ptrtoint ptr %i.agd to i64             ; 2 uses
  %i.agf = add i64 %i.age, 1                      ; 2 uses
  %.not519.us.us = icmp ule i64 %i.agf, %i.n
  %i.agg = icmp ugt i64 %i.agf, %i.m
  %or.cond573.us.us = and i1 %.not519.us.us, %i.agg
  %i.agh = icmp ugt i64 %i.n, %i.age
  %or.cond574.us.us = and i1 %i.agh, %or.cond573.us.us
  br i1 %or.cond574.us.us, label %bb.em, label %lzma_4862e0.exit.thread

bb.em:                                            ; preds = %bb.el
  %i.agi = add i32 %.promoted1152.us.us, 1
  %.3422.us.us = trunc i32 %.3422.in.us.us to i8  ; 2 uses
  store i8 %.3422.us.us, ptr %i.agd, align 1, !tbaa !8
  br label %bb.en

bb.en:                                            ; preds = %.loopexit737.us.us, %bb.em, %bb.az
  %storemerge725.us.us = phi i32 [ %i.ji, %bb.az ], [ %i.agi, %bb.em ], [ %.lcssa1581, %.loopexit737.us.us ] ; 3 uses
  %.5448.us.us = phi i32 [ %.0443.us.us, %bb.az ], [ %.0443.us.us, %bb.em ], [ %.3446.us.us, %.loopexit737.us.us ]
  %.4442.us.us = phi i32 [ %.0438.us.us, %bb.az ], [ %.0438.us.us, %bb.em ], [ %.2440.us.us, %.loopexit737.us.us ]
  %.4437.us.us = phi i32 [ 1, %bb.az ], [ 0, %bb.em ], [ 1, %.loopexit737.us.us ]
  %.6432.us.us = phi i32 [ %.0426.us.us, %bb.az ], [ %.0426.us.us, %bb.em ], [ %.4430.us.us, %.loopexit737.us.us ]
  %.5424.us.us = phi i8 [ %i.jb, %bb.az ], [ %.3422.us.us, %bb.em ], [ %.lcssa1582, %.loopexit737.us.us ]
  %.4405.us.us = phi i32 [ %i.it, %bb.az ], [ %.2403.us.us, %bb.em ], [ %.1402.us.us, %.loopexit737.us.us ]
  %.7400.us.us = phi i32 [ %.0393.us.us, %bb.az ], [ %.0393.us.us, %bb.em ], [ %.5398.us.us, %.loopexit737.us.us ]
  store i32 %storemerge725.us.us, ptr %i.a, align 4, !tbaa !15
  %i.agj = icmp ult i32 %storemerge725.us.us, %i.agv
  br i1 %i.agj, label %bb.d, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.cy
  br i1 %.not, label %.split.us.us.us, label %.split1218.us

.loopexit737.us.us:                               ; preds = %.preheader736.us.us, %vec.epilog.middle.block, %middle.block
  %.lcssa1582 = phi i8 [ %i.xx, %vec.epilog.middle.block ], [ %i.xp, %middle.block ], [ %i.yb, %.preheader736.us.us ]
  %.lcssa1581 = phi i32 [ %17, %vec.epilog.middle.block ], [ %12, %middle.block ], [ %indvars, %.preheader736.us.us ] ; 2 uses
  store i32 %.lcssa1581, ptr %i.b, align 4, !tbaa !15
  br label %bb.en

.preheader.split.i594.preheader.us.us:            ; preds = %bb.cl
  %i.agk = add nsw i32 %i.sj, -5                  ; 2 uses
  store i32 %i.agk, ptr %i.b, align 4, !tbaa !15
  br label %.preheader.split.i594.us.us

.split.us.us.us:                                  ; preds = %.split.us.us.us.outer, %bb.eo
  %.2417.us.us.us.us = phi ptr [ %i.aho, %bb.eo ], [ %.2417.us.us.us.us.ph, %.split.us.us.us.outer ] ; 4 uses
  %.2409.us.us.us.us = phi ptr [ %i.aho, %bb.eo ], [ %.2409.us.us.us.us.ph, %.split.us.us.us.outer ] ; 4 uses
  br i1 %.not, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %.split.us.us.us
  %.not509.us.us.us.us = icmp ult ptr %.2417.us.us.us.us, %0
  %or.cond731.us.us.us.us = select i1 %i.l, i1 true, i1 %.not509.us.us.us.us
  br i1 %or.cond731.us.us.us.us, label %lzma_4862e0.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.agl = ptrtoint ptr %.2417.us.us.us.us to i64 ; 2 uses
  %i.agm = add i64 %i.agl, 12                     ; 2 uses
  %.not510.us.us.us.us = icmp ule i64 %i.agm, %i.n
  %i.agn = icmp ugt i64 %i.agm, %i.m
  %or.cond548.us.us.us.us = and i1 %.not510.us.us.us.us, %i.agn
  %i.ago = icmp ugt i64 %i.n, %i.agl
  %or.cond549.us.us.us.us = and i1 %i.ago, %or.cond548.us.us.us.us
  br i1 %or.cond549.us.us.us.us, label %thread-pre-split.us.us.us.us, label %lzma_4862e0.exit.thread

thread-pre-split.us.us.us.us:                     ; preds = %bb.eq
  %.pr.us.us.us.us = load i32, ptr %.2417.us.us.us.us, align 1, !tbaa !8
  br label %.preheader741.us.us.us.us

bb.er:                                            ; preds = %.split.us.us.us
  %.not507.us.us.us.us = icmp ult ptr %.2409.us.us.us.us, %0
  %or.cond730.us.us.us.us = select i1 %i.o, i1 true, i1 %.not507.us.us.us.us
  br i1 %or.cond730.us.us.us.us, label %lzma_4862e0.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.agp = ptrtoint ptr %.2409.us.us.us.us to i64 ; 2 uses
  %i.agq = add i64 %i.agp, 16                     ; 2 uses
  %.not508.us.us.us.us = icmp ule i64 %i.agq, %i.n
  %i.agr = icmp ugt i64 %i.agq, %i.m
  %or.cond.us.us.us.us = and i1 %.not508.us.us.us.us, %i.agr
  %i.ags = icmp ugt i64 %i.n, %i.agp
  %or.cond547.us.us.us.us = and i1 %i.ags, %or.cond.us.us.us.us
  br i1 %or.cond547.us.us.us.us, label %bb.et, label %lzma_4862e0.exit.thread

bb.et:                                            ; preds = %bb.es
  %i.agt = load i32, ptr %.2409.us.us.us.us, align 1, !tbaa !8 ; 2 uses
  %i.agu = icmp eq i32 %i.agt, 0
  br i1 %i.agu, label %lzma_4862e0.exit.thread, label %.preheader741.us.us.us.us

.preheader741.us.us.us.us:                        ; preds = %bb.et, %thread-pre-split.us.us.us.us
  %i.agv = phi i32 [ %.pr.us.us.us.us, %thread-pre-split.us.us.us.us ], [ %i.agt, %bb.et ] ; 7 uses
  %.3418.us.us.us.us = phi ptr [ %.2417.us.us.us.us, %thread-pre-split.us.us.us.us ], [ %.2409.us.us.us.us, %bb.et ] ; 5 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.3418.us.us.us.us, i64 4
  %i.agx = load i32, ptr %i.agw, align 1, !tbaa !8
  %i.agy = getelementptr inbounds nuw i8, ptr %.3418.us.us.us.us, i64 8
  %i.agz = load i32, ptr %i.agy, align 1, !tbaa !8
  br label %vector.body1618

vector.body1618:                                  ; preds = %vector.body1618.3, %.preheader741.us.us.us.us
  %index1619 = phi i64 [ 0, %.preheader741.us.us.us.us ], [ %index.next1620.3, %vector.body1618.3 ] ; 6 uses
  %i.aha = shl nuw nsw i64 %index1619, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.aha ; 2 uses
  %i.ahb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 67109888), ptr %next.gep, align 1, !tbaa !8
  store <4 x i32> splat (i32 67109888), ptr %i.ahb, align 1, !tbaa !8
  %index.next1620 = shl i64 %index1619, 2
  %i.ahc = getelementptr i8, ptr %i.j, i64 %index.next1620 ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.ahc, i64 32
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 48
  store <4 x i32> splat (i32 67109888), ptr %next.gep.1, align 1, !tbaa !8
  store <4 x i32> splat (i32 67109888), ptr %i.ahd, align 1, !tbaa !8
  %index.next1620.1 = shl i64 %index1619, 2
  %i.ahe = getelementptr i8, ptr %i.j, i64 %index.next1620.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.ahe, i64 64
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 80
  store <4 x i32> splat (i32 67109888), ptr %next.gep.2, align 1, !tbaa !8
  store <4 x i32> splat (i32 67109888), ptr %i.ahf, align 1, !tbaa !8
  %i.ahg = icmp eq i64 %index1619, 7040
  br i1 %i.ahg, label %scalar.ph, label %vector.body1618.3

vector.body1618.3:                                ; preds = %vector.body1618
  %index.next1620.2 = shl i64 %index1619, 2
  %i.ahh = getelementptr i8, ptr %i.j, i64 %index.next1620.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.ahh, i64 96
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 112
  store <4 x i32> splat (i32 67109888), ptr %next.gep.3, align 1, !tbaa !8
  store <4 x i32> splat (i32 67109888), ptr %i.ahi, align 1, !tbaa !8
  %index.next1620.3 = add nuw nsw i64 %index1619, 32
  br label %vector.body1618

scalar.ph:                                        ; preds = %vector.body1618
  store i32 67109888, ptr %i.z, align 1, !tbaa !8
  store i32 67109888, ptr %i.aa, align 1, !tbaa !8
  store i32 67109888, ptr %i.ab, align 1, !tbaa !8
  %i.ahj = sub i32 %i.agx, %3
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ahk ; 18 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.3418.us.us.us.us, i64 13 ; 3 uses
  %i.ahn = zext i32 %i.agz to i64
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %i.ahn ; 4 uses
  %.not513.us.us.us.us = icmp ult ptr %i.ahm, %0
  br i1 %.not513.us.us.us.us, label %lzma_4862e0.exit.thread, label %bb.eu

bb.eu:                                            ; preds = %scalar.ph
  %i.ahp = ptrtoint ptr %i.ahm to i64             ; 2 uses
  %i.ahq = add i64 %i.ahp, 5                      ; 2 uses
  %.not514.us.us.us.us = icmp ule i64 %i.ahq, %i.n
  %i.ahr = icmp ugt i64 %i.ahq, %i.m
  %or.cond553.us.us.us.us = and i1 %.not514.us.us.us.us, %i.ahr
  %i.ahs = icmp ugt i64 %i.n, %i.ahp
  %or.cond554.us.us.us.us = and i1 %i.ahs, %or.cond553.us.us.us.us
  br i1 %or.cond554.us.us.us.us, label %bb.ev, label %lzma_4862e0.exit.thread

bb.ev:                                            ; preds = %bb.eu
  %i.aht = getelementptr inbounds nuw i8, ptr %.3418.us.us.us.us, i64 14
  %i.ahu = load i32, ptr %i.aht, align 1, !tbaa !8
  %i.ahv = tail call i32 @llvm.bswap.i32(i32 %i.ahu)
  store i32 %i.ahv, ptr %i.q, align 4, !tbaa !14
  store i32 -1, ptr %i.r, align 8, !tbaa !13
  %i.ahw = getelementptr inbounds nuw i8, ptr %.3418.us.us.us.us, i64 18
  store ptr %i.ahw, ptr %5, align 8, !tbaa !9
  store i32 0, ptr %i.b, align 4, !tbaa !15
  %i.ahx = icmp eq i32 %i.agv, 0
  br i1 %i.ahx, label %.split.us.us.us.outer.loopexit, label %.split814.us.split.us.us.us

.split.us.us.us.outer.loopexit:                   ; preds = %bb.ev
  %spec.select550.us.us.us.us.le1723 = select i1 %.not, ptr %.1412.us.us.us.us.ph, ptr %i.ahl
  br label %.split.us.us.us.outer

.split.us.us.us.outer:                            ; preds = %.split.us.us.us.outer.loopexit, %.split.us.us.us.preheader
  %.2417.us.us.us.us.ph = phi ptr [ %i.h, %.split.us.us.us.preheader ], [ %i.aho, %.split.us.us.us.outer.loopexit ]
  %.1412.us.us.us.us.ph = phi ptr [ null, %.split.us.us.us.preheader ], [ %spec.select550.us.us.us.us.le1723, %.split.us.us.us.outer.loopexit ]
  %.2409.us.us.us.us.ph = phi ptr [ %spec.select, %.split.us.us.us.preheader ], [ %i.aho, %.split.us.us.us.outer.loopexit ]
  br label %.split.us.us.us

.split814.us.split.us.us.us:                      ; preds = %bb.ev
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #7
  br label %bb.d

.split.us.split:                                  ; preds = %.split1193.us
  %.not507.us = icmp ult ptr %i.h, %0             ; 2 uses
  br i1 %.not, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %.split.us.split
  br i1 %.not507.us, label %lzma_4862e0.exit.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ahy = ptrtoint ptr %i.h to i64               ; 2 uses
  %i.ahz = add i64 %i.ahy, 12                     ; 2 uses
  %.not510.us = icmp ule i64 %i.ahz, %i.n
  %i.aia = icmp ugt i64 %i.ahz, %i.m
  %or.cond548.us = and i1 %.not510.us, %i.aia
  %i.aib = icmp ugt i64 %i.n, %i.ahy
  %or.cond549.us = and i1 %i.aib, %or.cond548.us
  br i1 %or.cond549.us, label %thread-pre-split.us, label %lzma_4862e0.exit.thread

bb.ey:                                            ; preds = %.split.us.split
  br i1 %.not507.us, label %lzma_4862e0.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aic = ptrtoint ptr %i.h to i64               ; 2 uses
  %i.aid = add i64 %i.aic, 16                     ; 2 uses
  %.not508.us = icmp ule i64 %i.aid, %i.n
  %i.aie = icmp ugt i64 %i.aid, %i.m
  %or.cond.us = and i1 %.not508.us, %i.aie
  %i.aif = icmp ugt i64 %i.n, %i.aic
  %or.cond547.us = and i1 %i.aif, %or.cond.us
  br i1 %or.cond547.us, label %bb.fa, label %lzma_4862e0.exit.thread

bb.fa:                                            ; preds = %bb.ez
  %i.aig = load i32, ptr %i.h, align 1, !tbaa !8
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %lzma_4862e0.exit.thread, label %thread-pre-split.us

thread-pre-split.us:                              ; preds = %bb.fd, %bb.ff, %bb.ex, %bb.fa
  br label %lzma_4862e0.exit.thread

.split:                                           ; preds = %bb.c
  %.not507 = icmp ult ptr %i.h, %0                ; 2 uses
  br i1 %.not, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %.split
  %or.cond730 = select i1 %i.o, i1 true, i1 %.not507
  br i1 %or.cond730, label %lzma_4862e0.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aii = ptrtoint ptr %i.h to i64               ; 2 uses
  %i.aij = add i64 %i.aii, 16                     ; 2 uses
  %.not508 = icmp ule i64 %i.aij, %i.n
  %i.aik = icmp ugt i64 %i.aij, %i.m
  %or.cond = and i1 %.not508, %i.aik
  %i.ail = icmp ugt i64 %i.n, %i.aii
  %or.cond547 = and i1 %i.ail, %or.cond
  br i1 %or.cond547, label %bb.fd, label %lzma_4862e0.exit.thread

bb.fd:                                            ; preds = %bb.fc
  %i.aim = load i32, ptr %i.h, align 1, !tbaa !8
end_hunk_2
