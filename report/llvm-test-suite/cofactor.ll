Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cofactor?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.cdata_struct = type { ptr, ptr, ptr, ptr, i32, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@cdata = external local_unnamed_addr global %struct.cdata_struct, align 8
@debug = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"BINATE_SPLIT_SELECT: split against %d\0A\00", align 1
@verbose_debug = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cl=%s\0Acr=%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cofactor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 29
  %sext = add i64 %i.h, 8589934592
  %i.i = ashr exact i64 %sext, 29
  %i.j = and i64 %i.i, -8
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 4 uses
  %i.l = load i32, ptr @cube, align 8, !tbaa !15  ; 3 uses
  %i.m = icmp slt i32 %i.l, 33
  %i.n = add nsw i32 %i.l, -1
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.o, 536870908
  %i.q = add nuw nsw i32 %i.p, 8
  %narrow = select i1 %i.m, i32 8, i32 %i.q
  %i.r = zext nneg i32 %narrow to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #9
  %i.t = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.s, i32 noundef %i.l) #10
  %i.u = load ptr, ptr %0, align 8, !tbaa !14
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.w = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.b, ptr noundef %i.v, ptr noundef %1) #10
  %i.x = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.w) #10
  store ptr %i.x, ptr %i.k, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14  ; 5 uses
  %.not79 = icmp eq ptr %i.ab, null
  br i1 %.not79, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.a
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4
  %.fr106 = freeze i32 %i.ac                      ; 5 uses
  %.not61 = icmp eq i32 %.fr106, -1               ; 2 uses
  %i.ad = sext i32 %.fr106 to i64                 ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad ; 3 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8 ; 3 uses
  %i.ag = icmp sgt i32 %.fr106, 1                 ; 2 uses
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8 ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4 ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8
  %.fr = freeze i1 %i.aj
  br i1 %.fr, label %.lr.ph83.split.us.preheader, label %.lr.ph83.split

.lr.ph83.split.us.preheader:                      ; preds = %.lr.ph83
  %i.al = sext i32 %i.ah to i64
  %i.am = sext i32 %i.ai to i64
  %wide.trip.count116 = zext nneg i32 %.fr106 to i64
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %.loopexit.us
  %i.an = phi ptr [ %i.bz, %.loopexit.us ], [ %i.ab, %.lr.ph83.split.us.preheader ] ; 5 uses
  %i.ao = phi ptr [ %i.by, %.loopexit.us ], [ %i.aa, %.lr.ph83.split.us.preheader ] ; 2 uses
  %.05380.us = phi ptr [ %.154.us, %.loopexit.us ], [ %i.y, %.lr.ph83.split.us.preheader ] ; 7 uses
  %.not60.us = icmp eq ptr %i.an, %1
  br i1 %.not60.us, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph83.split.us
  br i1 %.not61, label %.lr.ph78.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ad
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.as = and i32 %i.ar, %i.aq                    ; 2 uses
  %i.at = lshr i32 %i.as, 1
  %i.au = or i32 %i.at, %i.as
  %i.av = xor i32 %i.au, -1
  %i.aw = and i32 %i.af, %i.av
  %.not62.us = icmp eq i32 %i.aw, 0
  br i1 %.not62.us, label %.preheader.us, label %.loopexit.us

bb.d:                                             ; preds = %.lr.ph.us
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.lr.ph78.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.d
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %bb.d ], [ 1, %.preheader.us ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv113
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv113
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = and i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = or i32 %i.bc, %i.bb
  %i.be = and i32 %i.bd, 1431655765
  %.not63.us = icmp eq i32 %i.be, 1431655765
  br i1 %.not63.us, label %bb.d, label %.loopexit.us

.lr.ph78.us:                                      ; preds = %bb.d, %.preheader.us, %bb.b
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !17
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph78.us, %bb.g
  %indvars.iv122 = phi i64 [ %i.al, %.lr.ph78.us ], [ %indvars.iv.next123, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv122
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv122
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv122
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %.not6473.us = icmp sgt i32 %i.bm, %i.bk
  br i1 %.not6473.us, label %.loopexit.us, label %.lr.ph75.us.preheader

.lr.ph75.us.preheader:                            ; preds = %bb.e
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add i32 %i.bk, 1
  br label %.lr.ph75.us

bb.f:                                             ; preds = %.lr.ph75.us
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next119 to i32
  %exitcond121.not = icmp eq i32 %i.bo, %lftr.wideiv
  br i1 %exitcond121.not, label %.loopexit.us, label %.lr.ph75.us

.lr.ph75.us:                                      ; preds = %.lr.ph75.us.preheader, %bb.f
  %indvars.iv118 = phi i64 [ %i.bn, %.lr.ph75.us.preheader ], [ %indvars.iv.next119, %bb.f ] ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv118
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv118
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = and i32 %i.bs, %i.bq
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv118
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = and i32 %i.bt, %i.bv
  %.not65.us = icmp eq i32 %i.bw, 0
  br i1 %.not65.us, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph75.us
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next123, %i.am
  br i1 %i.bx, label %bb.e, label %._crit_edge.us

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.e, %bb.f, %._crit_edge.us, %bb.c, %.lr.ph83.split.us
  %.154.us = phi ptr [ %i.ca, %._crit_edge.us ], [ %.05380.us, %bb.c ], [ %.05380.us, %.lr.ph83.split.us ], [ %.05380.us, %bb.f ], [ %.05380.us, %bb.e ], [ %.05380.us, %.lr.ph.us ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %.not.us = icmp eq ptr %i.bz, null
  br i1 %.not.us, label %._crit_edge84, label %.lr.ph83.split.us

.preheader.us:                                    ; preds = %bb.c
  br i1 %i.ag, label %.lr.ph.us, label %.lr.ph78.us

._crit_edge.us:                                   ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.05380.us, i64 8
  store ptr %i.an, ptr %.05380.us, align 8, !tbaa !14
  br label %.loopexit.us

.lr.ph83.split:                                   ; preds = %.lr.ph83
  br i1 %.not61, label %.lr.ph83.split.split.us, label %.lr.ph83.split.split

.lr.ph83.split.split.us:                          ; preds = %.lr.ph83.split, %bb.i
  %i.cb = phi ptr [ %i.cf, %bb.i ], [ %i.ab, %.lr.ph83.split ] ; 2 uses
  %i.cc = phi ptr [ %i.ce, %bb.i ], [ %i.aa, %.lr.ph83.split ] ; 2 uses
  %.05380.us85 = phi ptr [ %.154.us87, %bb.i ], [ %i.y, %.lr.ph83.split ] ; 3 uses
  %.not60.us86 = icmp eq ptr %i.cb, %1
  br i1 %.not60.us86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph83.split.split.us
  %i.cd = getelementptr inbounds nuw i8, ptr %.05380.us85, i64 8
  store ptr %i.cb, ptr %.05380.us85, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph83.split.split.us
  %.154.us87 = phi ptr [ %i.cd, %bb.h ], [ %.05380.us85, %.lr.ph83.split.split.us ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !14 ; 2 uses
  %.not.us88 = icmp eq ptr %i.cf, null
  br i1 %.not.us88, label %._crit_edge84, label %.lr.ph83.split.split.us

.lr.ph83.split.split:                             ; preds = %.lr.ph83.split
  br i1 %i.ag, label %.lr.ph83.split.split.split.us.preheader, label %.lr.ph83.split.split.split

.lr.ph83.split.split.split.us.preheader:          ; preds = %.lr.ph83.split.split
  %wide.trip.count = zext nneg i32 %.fr106 to i64
  br label %.lr.ph83.split.split.split.us

.lr.ph83.split.split.split.us:                    ; preds = %.lr.ph83.split.split.split.us.preheader, %.loopexit71.us100
  %i.cg = phi ptr [ %i.cz, %.loopexit71.us100 ], [ %i.ab, %.lr.ph83.split.split.split.us.preheader ] ; 4 uses
  %i.ch = phi ptr [ %i.cy, %.loopexit71.us100 ], [ %i.aa, %.lr.ph83.split.split.split.us.preheader ] ; 2 uses
  %.05380.us91 = phi ptr [ %.154.us96, %.loopexit71.us100 ], [ %i.y, %.lr.ph83.split.split.split.us.preheader ] ; 5 uses
  %.not60.us92 = icmp eq ptr %i.cg, %1
  br i1 %.not60.us92, label %.loopexit71.us100, label %bb.j

bb.j:                                             ; preds = %.lr.ph83.split.split.split.us
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ad
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.cl = and i32 %i.ck, %i.cj                    ; 2 uses
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = or i32 %i.cm, %i.cl
  %i.co = xor i32 %i.cn, -1
  %i.cp = and i32 %i.af, %i.co
  %.not62.us93 = icmp eq i32 %i.cp, 0
  br i1 %.not62.us93, label %.preheader.us98, label %.loopexit71.us100

bb.k:                                             ; preds = %.preheader.us98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit70_crit_edge.us102, label %.preheader.us98

.preheader.us98:                                  ; preds = %bb.j, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %bb.j ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = and i32 %i.ct, %i.cr                    ; 2 uses
  %i.cv = lshr i32 %i.cu, 1
  %i.cw = or i32 %i.cv, %i.cu
  %i.cx = and i32 %i.cw, 1431655765
  %.not63.us95 = icmp eq i32 %i.cx, 1431655765
  br i1 %.not63.us95, label %bb.k, label %.loopexit71.us100

.loopexit71.us100:                                ; preds = %.preheader.us98, %..loopexit70_crit_edge.us102, %bb.j, %.lr.ph83.split.split.split.us
  %.154.us96 = phi ptr [ %i.da, %..loopexit70_crit_edge.us102 ], [ %.05380.us91, %bb.j ], [ %.05380.us91, %.lr.ph83.split.split.split.us ], [ %.05380.us91, %.preheader.us98 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cz = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %.not.us97 = icmp eq ptr %i.cz, null
  br i1 %.not.us97, label %._crit_edge84, label %.lr.ph83.split.split.split.us

..loopexit70_crit_edge.us102:                     ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %.05380.us91, i64 8
  store ptr %i.cg, ptr %.05380.us91, align 8, !tbaa !14
  br label %.loopexit71.us100

.lr.ph83.split.split.split:                       ; preds = %.lr.ph83.split.split, %bb.m
  %i.db = phi ptr [ %i.dn, %bb.m ], [ %i.ab, %.lr.ph83.split.split ] ; 3 uses
  %i.dc = phi ptr [ %i.dm, %bb.m ], [ %i.aa, %.lr.ph83.split.split ] ; 2 uses
  %.05380 = phi ptr [ %.154, %bb.m ], [ %i.y, %.lr.ph83.split.split ] ; 4 uses
  %.not60 = icmp eq ptr %i.db, %1
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph83.split.split.split
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ad
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.dg = and i32 %i.df, %i.de                    ; 2 uses
  %i.dh = lshr i32 %i.dg, 1
  %i.di = or i32 %i.dh, %i.dg
  %i.dj = xor i32 %i.di, -1
  %i.dk = and i32 %i.af, %i.dj
  %.not62 = icmp eq i32 %i.dk, 0
  br i1 %.not62, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %.05380, i64 8
  store ptr %i.db, ptr %.05380, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader, %.lr.ph83.split.split.split
  %.154 = phi ptr [ %i.dl, %.preheader ], [ %.05380, %bb.l ], [ %.05380, %.lr.ph83.split.split.split ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dn = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.dn, null
  br i1 %.not, label %._crit_edge84, label %.lr.ph83.split.split.split

._crit_edge84:                                    ; preds = %bb.m, %.loopexit71.us100, %bb.i, %.loopexit.us, %bb.a
  %.053.lcssa = phi ptr [ %i.y, %bb.a ], [ %.154.us87, %bb.i ], [ %.154.us96, %.loopexit71.us100 ], [ %.154.us, %.loopexit.us ], [ %.154, %bb.m ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 8
  store ptr null, ptr %.053.lcssa, align 8, !tbaa !14
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !14
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare ptr @set_or(...) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #2

declare ptr @set_diff(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @scofactor(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !18
  %i.e = sext i32 %2 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !17
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.e
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = shl i64 %i.o, 29
  %sext = add i64 %i.p, 8589934592
  %i.q = ashr exact i64 %sext, 29
  %i.r = and i64 %i.q, -8
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #9 ; 4 uses
  %i.t = load i32, ptr @cube, align 8, !tbaa !15  ; 3 uses
  %i.u = icmp slt i32 %i.t, 33
  %i.v = add nsw i32 %i.t, -1
  %i.w = lshr i32 %i.v, 3
  %i.x = and i32 %i.w, 536870908
  %i.y = add nuw nsw i32 %i.x, 8
  %narrow = select i1 %i.u, i32 8, i32 %i.y
  %i.z = zext nneg i32 %narrow to i64
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #9
  %i.ab = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.aa, i32 noundef %i.t) #10
  %i.ac = load ptr, ptr %0, align 8, !tbaa !14
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.ae = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.c, ptr noundef %i.ad, ptr noundef %1) #10
  %i.af = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ae) #10
  store ptr %i.af, ptr %i.s, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !19
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.e
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.c, ptr noundef %i.aj, ptr noundef %1) #10 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %.not37 = icmp eq ptr %i.am, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = sext i32 %i.g to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.j)
  %i.ap = add i32 %smax, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.aq = phi ptr [ %i.az, %.loopexit ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %i.ar = phi ptr [ %i.ay, %.loopexit ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.03038 = phi ptr [ %.2, %.loopexit ], [ %i.ag, %.lr.ph.preheader ] ; 4 uses
  %.not34 = icmp eq ptr %i.aq, %1
  br i1 %.not34, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = and i32 %i.av, %i.at
  %.not35 = icmp eq i32 %i.aw, 0
  br i1 %.not35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.03038, i64 8
  store ptr %i.aq, ptr %.03038, align 8, !tbaa !14
  br label %.loopexit

bb.c:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ap, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.c, %bb.b, %.lr.ph
  %.2 = phi ptr [ %.03038, %.lr.ph ], [ %i.ax, %bb.b ], [ %.03038, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.030.lcssa = phi ptr [ %i.ag, %bb.a ], [ %.2, %.loopexit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.030.lcssa, i64 8
  store ptr null, ptr %.030.lcssa, align 8, !tbaa !14
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !14
  ret ptr %i.s
}

declare ptr @set_and(...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @massive_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @cdata, align 8, !tbaa !20 ; 6 uses
  %i.b = load i32, ptr @cube, align 8, !tbaa !15  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.a, i8 0, i64 %i.e, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.not205 = icmp eq ptr %i.i, null
  br i1 %.not205, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph207

.loopexit200:                                     ; preds = %bb.br, %.lr.ph207
  %i.k = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.l = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge208, label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %.loopexit200
  %i.m = phi ptr [ %i.l, %.loopexit200 ], [ %i.i, %.lr.ph207.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.k, %.loopexit200 ], [ %i.j, %.lr.ph207.preheader ] ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.p = and i32 %i.o, 1023
  %.not225 = icmp eq i32 %i.p, 0
  br i1 %.not225, label %.loopexit200, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %.lr.ph207
  %i.q = and i32 %i.o, 1023
  %i.r = zext nneg i32 %i.q to i64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.br
  %indvars.iv = phi i64 [ %i.r, %.lr.ph204.preheader ], [ %indvars.iv.next, %bb.br ] ; 6 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = or i32 %i.x, %i.v
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.t, %i.z                      ; 37 uses
  %.not163 = icmp eq i32 %i.aa, 0
  br i1 %.not163, label %bb.br, label %bb.b

bb.b:                                             ; preds = %.lr.ph204
  %.idx = shl i64 %indvars.iv, 7
  %i.ab = getelementptr i8, ptr %i.a, i64 %.idx   ; 32 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -128   ; 2 uses
  %i.ad = icmp ugt i32 %i.aa, 16777215
  br i1 %i.ad, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp slt i32 %i.aa, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %i.ab, i64 -4     ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = and i32 %i.aa, 1073741824
  %.not164 = icmp eq i32 %i.ai, 0
  br i1 %.not164, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = and i32 %i.aa, 536870912
  %.not165 = icmp eq i32 %i.am, 0
  br i1 %.not165, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.ab, i64 -12    ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = and i32 %i.aa, 268435456
  %.not166 = icmp eq i32 %i.aq, 0
  br i1 %.not166, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.ab, i64 -16    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = and i32 %i.aa, 134217728
  %.not167 = icmp eq i32 %i.au, 0
  br i1 %.not167, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.ab, i64 -20    ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = and i32 %i.aa, 67108864
  %.not168 = icmp eq i32 %i.ay, 0
  br i1 %.not168, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
end_hunk_0
begin_hunk_1_@massive_count:bb.a
  %i.hy = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !24
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next232, %i.hz
  br i1 %i.ia, label %bb.bs, label %._crit_edge223

._crit_edge223:                                   ; preds = %bb.bz, %._crit_edge208
  %.0146.lcssa = phi i32 [ -1, %._crit_edge208 ], [ %.1147, %bb.bz ]
  store i32 %.0146.lcssa, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 40), align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @binate_split_select(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 40), align 8, !tbaa !28 ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !29
  %i.c = sext i32 %i.a to i64                     ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !19
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %1, ptr noundef %i.g, ptr noundef %i.j) #10 ; 0 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !19
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %2, ptr noundef %i.l, ptr noundef %i.o) #10 ; 0 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !30
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.c
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 8 uses
  %.not48 = icmp sgt i32 %i.s, %i.e
  br i1 %.not48, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = add i32 %i.e, 1
  %i.u = sub i32 %i.t, %i.s                       ; 3 uses
  %xtraiter = and i32 %i.u, 1
  %i.v = icmp eq i32 %i.e, %i.s
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.u, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.03849 = phi i32 [ %i.s, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = ashr i32 %.03849, 5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %i.f, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = and i32 %.03849, 31
  %i.ac = xor i32 %i.aa, -1
  %i.ad = lshr i32 %i.ac, %i.ab
  %i.ae = and i32 %i.ad, 1
  %spec.select = add nuw nsw i32 %i.ae, %.050
  %i.af = add i32 %.03849, 1                      ; 2 uses
  %i.ag = ashr i32 %i.af, 5
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.f, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.af, 31
  %i.am = xor i32 %i.ak, -1
  %i.an = lshr i32 %i.am, %i.al
  %i.ao = and i32 %i.an, 1
  %spec.select.1 = add nuw nsw i32 %i.ao, %spec.select ; 3 uses
  %i.ap = add i32 %.03849, 2                      ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.unr-lcssa ]
  %.03849.epil.init = phi i32 [ %i.s, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.aq = ashr i32 %.03849.epil.init, 5
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = and i32 %.03849.epil.init, 31
  %i.aw = xor i32 %i.au, -1
  %i.ax = lshr i32 %i.aw, %i.av
  %i.ay = and i32 %i.ax, 1
  %spec.select.epil = add nuw nsw i32 %i.ay, %.050.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  %i.az = lshr i32 %spec.select.lcssa, 1          ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %.preheader, label %.lr.ph54

.preheader:                                       ; preds = %bb.c, %bb.a, %._crit_edge
  %.139.lcssa = phi i32 [ %i.s, %._crit_edge ], [ %i.s, %bb.a ], [ %i.bm, %bb.c ] ; 2 uses
  %.not4256 = icmp sgt i32 %.139.lcssa, %i.e
  br i1 %.not4256, label %._crit_edge59, label %.lr.ph58

.lr.ph54:                                         ; preds = %._crit_edge, %bb.c
  %.252 = phi i32 [ %.3, %bb.c ], [ %i.az, %._crit_edge ] ; 2 uses
  %.13951 = phi i32 [ %i.bm, %bb.c ], [ %i.s, %._crit_edge ] ; 3 uses
  %i.ba = ashr i32 %.13951, 5
  %i.bb = add nsw i32 %i.ba, 1
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = and i32 %.13951, 31
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = and i32 %i.be, %i.bg
  %.not46 = icmp eq i32 %i.bh, 0
  br i1 %.not46, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph54
  %i.bi = add nsw i32 %.252, -1
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = or i32 %i.bk, %i.bg
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %bb.b
  %.3 = phi i32 [ %.252, %.lr.ph54 ], [ %i.bi, %bb.b ] ; 2 uses
  %i.bm = add nsw i32 %.13951, 1                  ; 2 uses
  %i.bn = icmp sgt i32 %.3, 0
  br i1 %i.bn, label %.lr.ph54, label %.preheader

.lr.ph58:                                         ; preds = %.preheader, %bb.e
  %.24057 = phi i32 [ %i.bz, %bb.e ], [ %.139.lcssa, %.preheader ] ; 4 uses
  %i.bo = ashr i32 %.24057, 5
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = and i32 %.24057, 31
  %i.bu = shl nuw i32 1, %i.bt                    ; 2 uses
  %i.bv = and i32 %i.bs, %i.bu
  %.not45 = icmp eq i32 %i.bv, 0
  br i1 %.not45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph58
  %i.bw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = or i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph58, %bb.d
  %i.bz = add i32 %.24057, 1
  %exitcond60.not = icmp eq i32 %.24057, %i.e
  br i1 %exitcond60.not, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %bb.e, %.preheader
  %i.ca = load i32, ptr @debug, align 4, !tbaa !4
  %i.cb = and i32 %i.ca, %3
  %.not43 = icmp eq i32 %i.cb, 0
  br i1 %.not43, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge59
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.a) ; 0 uses
  %i.cd = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not44 = icmp eq i32 %i.cd, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = tail call ptr (ptr, ...) @pc1(ptr noundef %1) #10
  %i.cf = tail call ptr (ptr, ...) @pc2(ptr noundef %2) #10
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.ce, ptr noundef %i.cf) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge59
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @pc1(...) local_unnamed_addr #2

declare ptr @pc2(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cube1list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = add nsw i32 %i.b, 3
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 4 uses
  %i.g = load i32, ptr @cube, align 8, !tbaa !15  ; 3 uses
  %i.h = icmp slt i32 %i.g, 33
  %i.i = add nsw i32 %i.g, -1
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 536870908
  %i.l = add nuw nsw i32 %i.k, 8
  %narrow = select i1 %i.h, i32 8, i32 %i.l
  %i.m = zext nneg i32 %narrow to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #9
  %i.o = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %i.g) #10
  store ptr %i.o, ptr %i.f, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !31
  %i.t = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.s                   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %.idx = shl nuw nsw i64 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.x = icmp sgt i32 %i.u, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.y = sext i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi ptr [ %i.p, %.lr.ph ], [ %i.z, %bb.b ] ; 2 uses
  %.01719 = phi ptr [ %i.r, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %.01719, ptr %.020, align 8, !tbaa !14
  %i.aa = getelementptr inbounds [4 x i8], ptr %.01719, i64 %i.y ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.w
  br i1 %i.ab, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.p, %bb.a ], [ %i.z, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store ptr null, ptr %.0.lcssa, align 8, !tbaa !14
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !14
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cube2list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = add i32 %i.b, 3
  %i.f = add i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #9 ; 4 uses
  %i.j = load i32, ptr @cube, align 8, !tbaa !15  ; 3 uses
  %i.k = icmp slt i32 %i.j, 33
  %i.l = add nsw i32 %i.j, -1
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 536870908
  %i.o = add nuw nsw i32 %i.n, 8
  %narrow = select i1 %i.k, i32 8, i32 %i.o
  %i.p = zext nneg i32 %narrow to i64
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #9
  %i.r = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.q, i32 noundef %i.j) #10
  store ptr %i.r, ptr %i.i, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !31
  %i.w = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %.idx = shl nuw nsw i64 %i.y, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ab = sext i32 %i.w to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi ptr [ %i.s, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %.02831 = phi ptr [ %i.u, %.lr.ph ], [ %i.ad, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  store ptr %.02831, ptr %.032, align 8, !tbaa !14
  %i.ad = getelementptr inbounds [4 x i8], ptr %.02831, i64 %i.ab ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.s, %bb.a ], [ %i.ac, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !31
  %i.ai = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx39 = shl nuw nsw i64 %i.ak, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx39
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %._crit_edge
  %i.an = sext i32 %i.ai to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph36, %bb.c
  %.134 = phi ptr [ %.0.lcssa, %.lr.ph36 ], [ %i.ao, %bb.c ] ; 2 uses
  %.12933 = phi ptr [ %i.ag, %.lr.ph36 ], [ %i.ap, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 2 uses
  store ptr %.12933, ptr %.134, align 8, !tbaa !14
  %i.ap = getelementptr inbounds [4 x i8], ptr %.12933, i64 %i.an ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.al
  br i1 %i.aq, label %bb.c, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.c, %._crit_edge
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ao, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  store ptr null, ptr %.1.lcssa, align 8, !tbaa !14
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !14
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cube3list(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = add i32 %i.b, 3
  %i.h = add i32 %i.g, %i.d
  %i.i = add i32 %i.h, %i.f
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #9 ; 4 uses
  %i.m = load i32, ptr @cube, align 8, !tbaa !15  ; 3 uses
  %i.n = icmp slt i32 %i.m, 33
  %i.o = add nsw i32 %i.m, -1
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.p, 536870908
  %i.r = add nuw nsw i32 %i.q, 8
  %narrow = select i1 %i.n, i32 8, i32 %i.r
  %i.s = zext nneg i32 %narrow to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #9
  %i.u = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.t, i32 noundef %i.m) #10
  store ptr %i.u, ptr %i.l, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34   ; 2 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !31
  %i.z = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx = shl nuw nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ae = sext i32 %i.z to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.045 = phi ptr [ %i.v, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %.04044 = phi ptr [ %i.x, %.lr.ph ], [ %i.ag, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.045, i64 8 ; 2 uses
  store ptr %.04044, ptr %.045, align 8, !tbaa !14
  %i.ag = getelementptr inbounds [4 x i8], ptr %.04044, i64 %i.ae ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.ac
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.v, %bb.a ], [ %i.af, %bb.b ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !31
  %i.al = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ak                ; 2 uses
  %i.an = sext i32 %i.am to i64
  %.idx58 = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx58
  %i.ap = icmp sgt i32 %i.am, 0
  br i1 %i.ap, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %._crit_edge
  %i.aq = sext i32 %i.al to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph49, %bb.c
  %.147 = phi ptr [ %.0.lcssa, %.lr.ph49 ], [ %i.ar, %bb.c ] ; 2 uses
  %.14146 = phi ptr [ %i.aj, %.lr.ph49 ], [ %i.as, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.147, i64 8 ; 2 uses
  store ptr %.14146, ptr %.147, align 8, !tbaa !14
  %i.as = getelementptr inbounds [4 x i8], ptr %.14146, i64 %i.aq ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.ao
  br i1 %i.at, label %bb.c, label %._crit_edge50

._crit_edge50:                                    ; preds = %bb.c, %._crit_edge
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ar, %bb.c ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34 ; 2 uses
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !31
  %i.ax = load i32, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.aw                ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %.idx59 = shl nuw nsw i64 %i.az, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx59
  %i.bb = icmp sgt i32 %i.ay, 0
  br i1 %i.bb, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %._crit_edge50
  %i.bc = sext i32 %i.ax to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph55, %bb.d
  %.253 = phi ptr [ %.1.lcssa, %.lr.ph55 ], [ %i.bd, %bb.d ] ; 2 uses
  %.24252 = phi ptr [ %i.av, %.lr.ph55 ], [ %i.be, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.253, i64 8 ; 2 uses
  store ptr %.24252, ptr %.253, align 8, !tbaa !14
  %i.be = getelementptr inbounds [4 x i8], ptr %.24252, i64 %i.bc ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.ba
  br i1 %i.bf, label %bb.d, label %._crit_edge56

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge50
  %.2.lcssa = phi ptr [ %.1.lcssa, %._crit_edge50 ], [ %i.bd, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  store ptr null, ptr %.2.lcssa, align 8, !tbaa !14
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !14
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cubeunlist(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -3
  %i.j = load i32, ptr @cube, align 8, !tbaa !15
  %i.k = tail call ptr (i64, i32, ...) @sf_new(i64 noundef %i.i, i32 noundef %i.j) #10 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not25 = icmp eq ptr %i.m, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv28 = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next29, %.loopexit ] ; 2 uses
  %i.q = phi ptr [ %i.m, %.lr.ph ], [ %i.bi, %.loopexit ] ; 4 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !35
  %i.s = add nsw i64 %indvars.iv28, -2
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.u ; 4 uses
  %i.w = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.x = and i32 %i.w, 1023
  %i.y = load i32, ptr %i.v, align 4, !tbaa !4
  %i.z = and i32 %i.y, -1024
  %i.aa = or disjoint i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !4
  %i.ab = and i32 %i.w, 1023                      ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 5 uses
  %i.ad = icmp ne i32 %i.ab, 0
  %.neg = sext i1 %i.ad to i64
  %i.ae = add nuw nsw i64 %i.ac, 1
  %i.af = add nsw i64 %i.ae, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.ag = shl i64 %indvar, 2
  %i.ah = ptrtoaddr ptr %i.q to i64
  %i.ai = mul i64 %i.ag, %i.t
  %i.aj = add i64 %i.ai, %i.p                     ; 2 uses
  %i.ak = sub i64 %i.aj, %i.ah
  %diff.check = icmp ugt i64 %i.ak, -32
  %i.al = sub i64 %i.aj, %i.b
  %diff.check32 = icmp ugt i64 %i.al, -32
  %conflict.rdx = or i1 %diff.check, %diff.check32
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.am = sub nsw i64 %i.ac, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 %i.ac, %index                   ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -12
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %wide.load33 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -12
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -28
  %wide.load34 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %wide.load35 = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %i.au = or <4 x i32> %wide.load34, %wide.load
  %i.av = or <4 x i32> %wide.load35, %wide.load33
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.an ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  store <4 x i32> %i.au, ptr %i.ax, align 4, !tbaa !4
  store <4 x i32> %i.av, ptr %i.ay, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %bb.b ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = or i32 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bg = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bg, label %scalar.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
end_hunk_1
