Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRMeta?download=true
inline.NumInlined: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@setbfdw:bb.a
  %i.d = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -103, 1) i64 @setbfwbig(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 2
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i16 %3 to i8
  %i.d = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1
  store i8 %i.c, ptr %i.e, align 1, !tbaa !11
  %i.f = lshr i16 %3, 8
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %i.d, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -103, 1) i64 @setbfdwbig(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 4
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %3 to i8
  %i.d = getelementptr i8, ptr %0, i64 %2         ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 3
  store i8 %i.c, ptr %i.e, align 1, !tbaa !11
  %i.f = lshr i32 %3, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr i8, ptr %i.d, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = lshr i32 %3, 16
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr i8, ptr %i.d, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !11
  %i.l = lshr i32 %3, 24
  %i.m = trunc nuw i32 %i.l to i8
  store i8 %i.m, ptr %i.d, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.n
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i64 @BufferCalcIFDSize(ptr noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !10
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp eq i8 %3, 73
  %i.f = add nuw nsw i64 %i.d, 2
  %i.g = icmp ugt i64 %i.f, %1                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %getbfwe.exit.thread, label %getbfwe.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %getbfwe.exit.thread, label %getbfwe.exit.thread204

getbfwe.exit:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.i = load i16, ptr %i.h, align 1              ; 3 uses
  %i.j = zext i16 %i.i to i32
  %i.k = load i32, ptr @SizeofIFDEntry, align 4, !tbaa !10 ; 2 uses
  %i.l = mul i32 %i.k, %i.j
  %i.m = add i32 %i.l, 6                          ; 2 uses
  %.not181 = icmp eq i16 %i.i, 0
  br i1 %.not181, label %._crit_edge, label %.lr.ph.split.us.preheader

getbfwe.exit.thread204:                           ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 %i.d       ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i16
  %i.r = load i8, ptr %i.n, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i16
  %i.t = shl nuw i16 %i.s, 8
  %i.u = or disjoint i16 %i.t, %i.q               ; 3 uses
  %i.v = zext i16 %i.u to i32
  %i.w = load i32, ptr @SizeofIFDEntry, align 4, !tbaa !10 ; 2 uses
  %i.x = mul i32 %i.w, %i.v
  %i.y = add i32 %i.x, 6                          ; 2 uses
  %.not181206 = icmp eq i16 %i.u, 0
  br i1 %.not181206, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %getbfwe.exit.thread204
  %i.z = add i32 %2, 2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %getbfwe.exit
  %i.aa = add i32 %2, 2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %.065177.us = phi i32 [ %.1.us, %bb.k ], [ %i.m, %.lr.ph.split.us.preheader ] ; 4 uses
  %.066176.us = phi i32 [ %i.bg, %bb.k ], [ %i.aa, %.lr.ph.split.us.preheader ] ; 2 uses
  %.068175.us = phi i16 [ %i.bh, %bb.k ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ab = zext i32 %.066176.us to i64             ; 5 uses
  %i.ac = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %1
  br i1 %i.ad, label %getbfwe.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 3 uses
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = add nuw nsw i64 %i.ab, 4
  %i.ah = icmp ugt i64 %i.ag, %1
  br i1 %i.ah, label %getbfwe.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nuw nsw i64 %i.ab, 8
  %i.aj = icmp ugt i64 %i.ai, %1
  %i.ak = add nuw nsw i64 %i.ab, 12
  %i.al = icmp ugt i64 %i.ak, %1
  %or.cond.us = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond.us, label %getbfwe.exit.thread, label %getbfdwe.exit107.us

getbfdwe.exit107.us:                              ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.an = load i16, ptr %i.am, align 1            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ar = load i32, ptr %i.aq, align 1            ; 3 uses
  %i.as = zext nneg i16 %i.an to i64
  %i.at = add i16 %i.an, -13
  %i.au = icmp ult i16 %i.at, -12
  br i1 %i.au, label %getbfwe.exit.thread, label %bb.f

bb.f:                                             ; preds = %getbfdwe.exit107.us
  switch i16 %i.af, label %bb.j [
    i16 -30871, label %bb.i
    i16 -30683, label %bb.h
    i16 -24571, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.ar, i8 noundef zeroext 73, ptr noundef nonnull %i.c) ; 3 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %getbfwe.exit.thread, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ax = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.ar, i8 noundef zeroext 73, ptr noundef nonnull %i.b) ; 3 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %getbfwe.exit.thread, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.az = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.ar, i8 noundef zeroext 73, ptr noundef nonnull %i.a) ; 3 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %getbfwe.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @IFDEntryTypeSizes, i64 %i.as
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = mul i32 %i.bc, %i.ap                    ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 4
  %i.bf = select i1 %i.be, i32 %i.bd, i32 0
  %spec.select.us = add i32 %i.bf, %.065177.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.170.us = phi i64 [ 0, %bb.j ], [ %i.az, %bb.i ], [ %i.ax, %bb.h ], [ %i.av, %bb.g ]
  %.1.us = phi i32 [ %spec.select.us, %bb.j ], [ %.065177.us, %bb.i ], [ %.065177.us, %bb.h ], [ %.065177.us, %bb.g ] ; 2 uses
  %i.bg = add i32 %.066176.us, %i.k
  %i.bh = add nuw i16 %.068175.us, 1              ; 2 uses
  %exitcond185.not = icmp eq i16 %i.bh, %i.i
  br i1 %exitcond185.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.s
  %.065177 = phi i32 [ %.1, %bb.s ], [ %i.y, %.lr.ph.split.preheader ] ; 4 uses
  %.066176 = phi i32 [ %i.cx, %bb.s ], [ %i.z, %.lr.ph.split.preheader ] ; 2 uses
  %.068175 = phi i16 [ %i.cy, %bb.s ], [ 0, %.lr.ph.split.preheader ]
  %i.bi = zext i32 %.066176 to i64                ; 5 uses
  %i.bj = add nuw nsw i64 %i.bi, 2                ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, %1
  br i1 %i.bk, label %getbfwe.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.bl = getelementptr i8, ptr %0, i64 %i.bi     ; 10 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bo = zext i8 %i.bn to i16
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = or disjoint i16 %i.br, %i.bo
  %i.bt = add nuw nsw i64 %i.bi, 4
  %i.bu = icmp ugt i64 %i.bt, %1
  br i1 %i.bu, label %getbfwe.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = add nuw nsw i64 %i.bi, 8
  %i.bw = icmp ugt i64 %i.bv, %1
  %i.bx = add nuw nsw i64 %i.bi, 12
  %i.by = icmp ugt i64 %i.bx, %1
  %or.cond172 = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond172, label %getbfwe.exit.thread, label %getbfdwe.exit107

getbfdwe.exit107:                                 ; preds = %bb.m
  %i.bz = getelementptr i8, ptr %0, i64 %i.bj     ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i16
  %i.cc = shl nuw i16 %i.cb, 8
  %i.cd = getelementptr i8, ptr %i.bz, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = zext i8 %i.ce to i16
  %i.cg = or disjoint i16 %i.cc, %i.cf            ; 2 uses
  %5 = getelementptr i8, ptr %i.bl, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !11
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr i8, ptr %i.bl, i64 7
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = zext i8 %10 to i32
  %12 = or disjoint i32 %8, %11
  %13 = getelementptr i8, ptr %i.bl, i64 5
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or disjoint i32 %12, %16
  %i.ch = getelementptr i8, ptr %i.bl, i64 4
  %18 = load i8, ptr %i.ch, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %17, %20
  %i.ci = getelementptr i8, ptr %i.bl, i64 8
  %22 = getelementptr i8, ptr %i.bl, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %i.bl, i64 10
  %26 = load i8, ptr %25, align 1, !tbaa !11
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %28, %24
  %30 = getelementptr i8, ptr %i.bl, i64 9
  %31 = load i8, ptr %30, align 1, !tbaa !11
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or disjoint i32 %29, %33
  %35 = load i8, ptr %i.ci, align 1, !tbaa !11
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or disjoint i32 %34, %37                  ; 3 uses
  %i.cj = zext nneg i16 %i.cg to i64
  %i.ck = add i16 %i.cg, -13
  %i.cl = icmp ult i16 %i.ck, -12
  br i1 %i.cl, label %getbfwe.exit.thread, label %bb.n

bb.n:                                             ; preds = %getbfdwe.exit107
  switch i16 %i.bs, label %bb.r [
    i16 -30871, label %bb.o
    i16 -30683, label %bb.p
    i16 -24571, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cm = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %38, i8 noundef zeroext %3, ptr noundef nonnull %i.a) ; 3 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %getbfwe.exit.thread, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.co = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %38, i8 noundef zeroext %3, ptr noundef nonnull %i.b) ; 3 uses
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %getbfwe.exit.thread, label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cq = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %38, i8 noundef zeroext %3, ptr noundef nonnull %i.c) ; 3 uses
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %getbfwe.exit.thread, label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @IFDEntryTypeSizes, i64 %i.cj
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = mul i32 %i.ct, %21                      ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, 4
  %i.cw = select i1 %i.cv, i32 %i.cu, i32 0
  %spec.select = add i32 %i.cw, %.065177
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.170 = phi i64 [ 0, %bb.r ], [ %i.cm, %bb.o ], [ %i.co, %bb.p ], [ %i.cq, %bb.q ]
  %.1 = phi i32 [ %spec.select, %bb.r ], [ %.065177, %bb.o ], [ %.065177, %bb.p ], [ %.065177, %bb.q ] ; 2 uses
  %i.cx = add i32 %.066176, %i.w
  %i.cy = add nuw i16 %.068175, 1                 ; 2 uses
  %exitcond.not = icmp eq i16 %i.cy, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.s, %bb.k, %getbfwe.exit.thread204, %getbfwe.exit
  %.069.lcssa = phi i64 [ 0, %getbfwe.exit ], [ 0, %getbfwe.exit.thread204 ], [ %.170.us, %bb.k ], [ %.170, %bb.s ]
  %.065.lcssa = phi i32 [ %i.m, %getbfwe.exit ], [ %i.y, %getbfwe.exit.thread204 ], [ %.1.us, %bb.k ], [ %.1, %bb.s ] ; 2 uses
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %.not = icmp eq i32 %i.cz, 0
  %i.da = and i32 %.065.lcssa, 1
  %i.db = add i32 %i.cz, %i.da
  %i.dc = select i1 %.not, i32 0, i32 %i.db
  %.3 = add i32 %i.dc, %.065.lcssa                ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %.not92 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %.3, 1
  %i.df = add i32 %i.de, %i.dd
  %i.dg = select i1 %.not92, i32 0, i32 %i.df
  %.4 = add i32 %i.dg, %.3                        ; 2 uses
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !10  ; 2 uses
  %.not93 = icmp eq i32 %i.dh, 0
  %i.di = and i32 %.4, 1
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = select i1 %.not93, i32 0, i32 %i.dj
  %.5 = add i32 %i.dk, %.4
  store i32 %.5, ptr %4, align 4, !tbaa !10
  br label %getbfwe.exit.thread

getbfwe.exit.thread:                              ; preds = %bb.p, %getbfdwe.exit107, %bb.o, %bb.q, %.lr.ph.split, %bb.l, %bb.m, %bb.i, %bb.h, %bb.g, %getbfdwe.exit107.us, %bb.e, %bb.d, %.lr.ph.split.us, %bb.c, %bb.b, %._crit_edge
  %.372 = phi i64 [ %.069.lcssa, %._crit_edge ], [ -103, %bb.c ], [ -103, %bb.b ], [ -1, %getbfdwe.exit107.us ], [ -103, %bb.e ], [ -103, %bb.d ], [ -103, %.lr.ph.split.us ], [ %i.ax, %bb.h ], [ %i.av, %bb.g ], [ %i.az, %bb.i ], [ %i.cq, %bb.q ], [ %i.cm, %bb.o ], [ -1, %getbfdwe.exit107 ], [ %i.co, %bb.p ], [ -103, %.lr.ph.split ], [ -103, %bb.l ], [ -103, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.372
}

; Function Attrs: nounwind uwtable
define i64 @StreamCalcIFDSize(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 11 uses
  %i.b = alloca i8, align 1                       ; 11 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i64 0, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 0, ptr %i.g, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i32 0, ptr %i.h, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i32 0, ptr %i.i, align 4, !tbaa !10
  store i32 0, ptr %2, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = call i64 %i.k(ptr noundef %0, ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %._crit_edge157, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = call i64 %i.p(ptr noundef nonnull %0, i64 noundef %i.n) #8, !inline_history !19
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %.preheader.thread221, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = call i64 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #8, !inline_history !19
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.preheader.thread221, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.e, align 1, !tbaa !11
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.y = call i64 %i.x(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #8, !inline_history !19
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.preheader.thread221, label %bb.e

.preheader.thread221:                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.lr.ph154.preheader

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i8 %i.w to i32
  %i.ab = load i8, ptr %i.e, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.ad, %i.aa            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.af = load i32, ptr @SizeofIFDEntry, align 4, !tbaa !10 ; 2 uses
  %i.ag = mul i32 %i.ae, %i.af
  %i.ah = add i32 %i.ag, 6                        ; 2 uses
  %.not159 = icmp eq i32 %i.ae, 0
  br i1 %.not159, label %.thread210, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ai = add i32 %1, 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ab
  %.058152 = phi i32 [ %i.ah, %.lr.ph ], [ %.1, %bb.ab ] ; 4 uses
  %.059151 = phi i32 [ %i.ai, %.lr.ph ], [ %i.el, %bb.ab ] ; 2 uses
  %.061150 = phi i32 [ 0, %.lr.ph ], [ %i.em, %bb.ab ]
  %i.aj = zext i32 %.059151 to i64                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.al = call i64 %i.ak(ptr noundef nonnull %0, i64 noundef %i.aj) #8, !inline_history !19
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %GetUShort.exit94.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.ao = call i64 %i.an(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 1) #8, !inline_history !19
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %GetUShort.exit94.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.d, align 1, !tbaa !11
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.as = call i64 %i.ar(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 1) #8, !inline_history !19
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %GetUShort.exit94.thread, label %bb.i

GetUShort.exit94.thread:                          ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.lr.ph154.preheader

bb.i:                                             ; preds = %bb.h
  %i.au = zext i8 %i.aq to i16
  %i.av = load i8, ptr %i.d, align 1, !tbaa !11
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw i16 %i.aw, 8
  %i.ay = or disjoint i16 %i.ax, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.az = add nuw nsw i64 %i.aj, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.bb = call i64 %i.ba(ptr noundef nonnull %0, i64 noundef %i.az) #8, !inline_history !19
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %GetUShort.exit96.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.be = call i64 %i.bd(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #8, !inline_history !19
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %GetUShort.exit96.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load i8, ptr %i.c, align 1, !tbaa !11
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.bi = call i64 %i.bh(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #8, !inline_history !19
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %GetUShort.exit96.thread, label %bb.l

GetUShort.exit96.thread:                          ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.lr.ph154.preheader

bb.l:                                             ; preds = %bb.k
  %i.bk = zext i8 %i.bg to i16
  %i.bl = load i8, ptr %i.c, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i16
  %i.bn = shl nuw i16 %i.bm, 8
  %i.bo = or disjoint i16 %i.bn, %i.bk            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.bp = add nuw nsw i64 %i.aj, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.br = call i64 %i.bq(ptr noundef nonnull %0, i64 noundef %i.bp) #8, !inline_history !21
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %GetULong.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.bu = call i64 %i.bt(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #8, !inline_history !21
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %GetULong.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load i8, ptr %i.b, align 1, !tbaa !11
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.by = call i64 %i.bx(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #8, !inline_history !21
  %i.bz = icmp slt i64 %i.by, 0
end_hunk_0
begin_hunk_1_@StreamCalcIFDSize:bb.a

; Function Attrs: nounwind uwtable
define i64 @GetUShort(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call i64 %i.c(ptr noundef %0, i64 noundef %1) #8 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = call i64 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i16
  store i16 %i.k, ptr %2, align 2, !tbaa !9
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.m = call i64 %i.l(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 3 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.a, align 1, !tbaa !11
  %i.p = zext i8 %i.o to i16
  %i.q = shl nuw i16 %i.p, 8
  %i.r = load i16, ptr %2, align 2, !tbaa !9
  %i.s = add i16 %i.q, %i.r
  store i16 %i.s, ptr %2, align 2, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %i.d, %bb.a ], [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @GetULong(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call i64 %i.c(ptr noundef %0, i64 noundef %1) #8 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = call i64 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i32
  store i32 %i.k, ptr %2, align 4, !tbaa !10
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.m = call i64 %i.l(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.a, align 1, !tbaa !11
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = load i32, ptr %2, align 4, !tbaa !10
  %i.s = add i32 %i.q, %i.r
  store i32 %i.s, ptr %2, align 4, !tbaa !10
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.u = call i64 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr %i.a, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = load i32, ptr %2, align 4, !tbaa !10
  %i.aa = add i32 %i.y, %i.z
  store i32 %i.aa, ptr %2, align 4, !tbaa !10
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ac = call i64 %i.ab(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 3 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.a, align 1, !tbaa !11
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = load i32, ptr %2, align 4, !tbaa !10
  %i.ai = add i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %2, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i64 [ %i.ac, %bb.f ], [ %i.d, %bb.a ], [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %i.u, %bb.d ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -9223372036854775808, 1) i64 @BufferCopyIFD(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i32, ptr %6, align 4, !tbaa !10
  %i.c = zext i32 %1 to i64                       ; 12 uses
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp eq i8 %3, 73                        ; 3 uses
  %i.f = add nuw nsw i64 %i.d, 2
  %i.g = icmp samesign ugt i64 %i.f, %i.c         ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %getbfwe.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.i = load i16, ptr %i.h, align 1
  br label %getbfwe.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %getbfwe.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 %i.d       ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i16
  %i.n = load i8, ptr %i.j, align 1, !tbaa !11
  %i.o = zext i8 %i.n to i16
  %i.p = shl nuw i16 %i.o, 8
  %i.q = or disjoint i16 %i.p, %i.m
  br label %getbfwe.exit

getbfwe.exit:                                     ; preds = %bb.e, %bb.c
  %.0301 = phi i16 [ %i.q, %bb.e ], [ %i.i, %bb.c ] ; 4 uses
  %i.r = zext i32 %5 to i64                       ; 18 uses
  %i.s = zext i32 %i.b to i64                     ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = icmp samesign ugt i64 %i.t, %i.r
  br i1 %i.u, label %getbfwe.exit.thread, label %bb.f

bb.f:                                             ; preds = %getbfwe.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %i.s
  store i16 %.0301, ptr %i.v, align 1
  %i.w = load i32, ptr @SizeofIFDEntry, align 4, !tbaa !10 ; 3 uses
  %i.x = zext i16 %.0301 to i32
  %i.y = mul i32 %i.w, %i.x
  %i.z = trunc nuw i64 %i.t to i32                ; 2 uses
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 4 uses
  %i.ac = add i32 %i.aa, 4                        ; 2 uses
  %.not394 = icmp eq i16 %.0301, 0
  br i1 %.not394, label %._crit_edge.thread, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %bb.f
  %i.ad = add i32 %2, 2
  br label %.lr.ph387

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %.thread346
  %.0188386 = phi i32 [ %i.gg, %.thread346 ], [ %i.z, %.lr.ph387.preheader ] ; 6 uses
  %.0190385 = phi i32 [ %i.gf, %.thread346 ], [ %i.ad, %.lr.ph387.preheader ] ; 2 uses
  %.0192384 = phi i32 [ %.1193, %.thread346 ], [ 0, %.lr.ph387.preheader ] ; 10 uses
  %.0195383 = phi i32 [ %.1196, %.thread346 ], [ 0, %.lr.ph387.preheader ] ; 10 uses
  %.0198382 = phi i32 [ %.1199, %.thread346 ], [ 0, %.lr.ph387.preheader ] ; 10 uses
  %.0201381 = phi i16 [ %.1202, %.thread346 ], [ 0, %.lr.ph387.preheader ] ; 10 uses
  %.0204380 = phi i16 [ %.1205, %.thread346 ], [ 0, %.lr.ph387.preheader ] ; 10 uses
  %.0207379 = phi i16 [ %.1208, %.thread346 ], [ 0, %.lr.ph387.preheader ] ; 10 uses
  %.0210378 = phi i16 [ %i.gh, %.thread346 ], [ 0, %.lr.ph387.preheader ]
  %i.ae = phi i32 [ %i.ge, %.thread346 ], [ %i.ac, %.lr.ph387.preheader ] ; 7 uses
  %i.af = zext i32 %.0190385 to i64               ; 11 uses
  %i.ag = add nuw nsw i64 %i.af, 2                ; 3 uses
  %i.ah = icmp samesign ugt i64 %i.ag, %i.c       ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph387
  br i1 %i.ah, label %getbfwe.exit.thread, label %getbfwe.exit246

bb.h:                                             ; preds = %.lr.ph387
  br i1 %i.ah, label %getbfwe.exit.thread, label %getbfwe.exit246.thread306

getbfwe.exit246:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 1            ; 2 uses
  %i.ak = zext i32 %.0188386 to i64               ; 6 uses
  %i.al = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.am = icmp samesign ugt i64 %i.al, %i.r
  br i1 %i.am, label %getbfwe.exit.thread, label %bb.i

getbfwe.exit246.thread306:                        ; preds = %bb.h
  %i.an = getelementptr i8, ptr %0, i64 %i.af     ; 6 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i16
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !11
  %i.as = zext i8 %i.ar to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = or disjoint i16 %i.at, %i.aq            ; 2 uses
  %i.av = zext i32 %.0188386 to i64               ; 6 uses
  %i.aw = add nuw nsw i64 %i.av, 2                ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.aw, %i.r
  br i1 %i.ax, label %getbfwe.exit.thread, label %.thread

.thread:                                          ; preds = %getbfwe.exit246.thread306
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  store i16 %i.au, ptr %i.ay, align 1
  %i.az = add nuw nsw i64 %i.af, 4
  %i.ba = icmp samesign ugt i64 %i.az, %i.c
  %i.bb = add nuw nsw i64 %i.av, 4
  %i.bc = icmp samesign ugt i64 %i.bb, %i.r
  %or.cond363 = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond363, label %getbfwe.exit.thread, label %.thread327

bb.i:                                             ; preds = %getbfwe.exit246
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i16 %i.aj, ptr %i.bd, align 1
  %i.be = add nuw nsw i64 %i.af, 4
  %i.bf = icmp samesign ugt i64 %i.be, %i.c
  br i1 %i.bf, label %getbfwe.exit.thread, label %getbfwe.exit251

getbfwe.exit251:                                  ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.bh = load i16, ptr %i.bg, align 1            ; 2 uses
  %i.bi = add nuw nsw i64 %i.ak, 4
  %i.bj = icmp samesign ugt i64 %i.bi, %i.r
  br i1 %i.bj, label %getbfwe.exit.thread, label %bb.j

.thread327:                                       ; preds = %.thread
  %i.bk = getelementptr i8, ptr %0, i64 %i.ag     ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i16
  %i.bn = shl nuw i16 %i.bm, 8
  %i.bo = getelementptr i8, ptr %i.bk, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i16
  %i.br = or disjoint i16 %i.bn, %i.bq            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %i.aw
  store i16 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %i.af, 8
  %i.bu = icmp samesign ugt i64 %i.bt, %i.c
  br i1 %i.bu, label %getbfwe.exit.thread, label %getbfdwe.exit.thread

bb.j:                                             ; preds = %getbfwe.exit251
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  store i16 %i.bh, ptr %i.bv, align 1
  %i.bw = add nuw nsw i64 %i.af, 8
  %i.bx = icmp samesign ugt i64 %i.bw, %i.c
  br i1 %i.bx, label %getbfwe.exit.thread, label %getbfdwe.exit

getbfdwe.exit:                                    ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bz = load i32, ptr %i.by, align 1            ; 2 uses
  %i.ca = add nuw nsw i64 %i.ak, 8                ; 2 uses
  %i.cb = icmp samesign ugt i64 %i.ca, %i.r
  br i1 %i.cb, label %getbfwe.exit.thread, label %bb.k

getbfdwe.exit.thread:                             ; preds = %.thread327
  %i.cc = add nuw nsw i64 %i.av, 8                ; 2 uses
  %i.cd = icmp samesign ugt i64 %i.cc, %i.r
  br i1 %i.cd, label %getbfwe.exit.thread, label %.thread440

.thread440:                                       ; preds = %getbfdwe.exit.thread
  %7 = getelementptr i8, ptr %i.an, i64 6
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = getelementptr i8, ptr %i.an, i64 7
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = zext i8 %12 to i32
  %14 = or disjoint i32 %10, %13
  %15 = getelementptr i8, ptr %i.an, i64 5
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or disjoint i32 %14, %18
  %i.ce = getelementptr i8, ptr %i.an, i64 4
  %20 = load i8, ptr %i.ce, align 1, !tbaa !11
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 %21, 24
  %23 = or disjoint i32 %19, %22                  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %23, ptr %i.cg, align 1
  %i.ch = add nuw nsw i64 %i.af, 12
  %i.ci = icmp samesign ugt i64 %i.ch, %i.c
  br i1 %i.ci, label %getbfwe.exit.thread, label %bb.m

bb.k:                                             ; preds = %getbfdwe.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.bz, ptr %i.ck, align 1
  %i.cl = add nuw nsw i64 %i.af, 12
  %i.cm = icmp samesign ugt i64 %i.cl, %i.c
  br i1 %i.cm, label %getbfwe.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = add nuw nsw i64 %i.af, 8                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 1
  br label %getbfdwe.exit258

bb.m:                                             ; preds = %.thread440
  %i.cq = add nuw nsw i64 %i.af, 8                ; 2 uses
  %i.cr = getelementptr i8, ptr %0, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cs)
  br label %getbfdwe.exit258

getbfdwe.exit258:                                 ; preds = %bb.m, %bb.l
  %i.cu = phi i64 [ %i.cq, %bb.m ], [ %i.cn, %bb.l ]
  %.0300309312325334437448 = phi i16 [ %i.au, %bb.m ], [ %i.aj, %bb.l ]
  %i.cv = phi i64 [ %i.av, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %.0299326331438446 = phi i16 [ %i.br, %bb.m ], [ %i.bh, %bb.l ] ; 3 uses
  %.1298439444 = phi i32 [ %23, %bb.m ], [ %i.bz, %bb.l ] ; 8 uses
  %i.cw = phi i64 [ %i.cc, %bb.m ], [ %i.ca, %bb.l ] ; 3 uses
  %.0296 = phi i32 [ %i.ct, %bb.m ], [ %i.cp, %bb.l ] ; 4 uses
  %i.cx = add nuw nsw i64 %i.cv, 12
  %i.cy = icmp samesign ugt i64 %i.cx, %i.r
  br i1 %i.cy, label %getbfwe.exit.thread, label %bb.n

bb.n:                                             ; preds = %getbfdwe.exit258
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 %i.cw
  store i32 0, ptr %i.cz, align 1
  %i.da = zext nneg i16 %.0299326331438446 to i64
  %i.db = add i16 %.0299326331438446, -13
  %i.dc = icmp ult i16 %i.db, -12
  br i1 %i.dc, label %getbfwe.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i16 %.0300309312325334437448, label %bb.s [
    i16 -30871, label %bb.p
    i16 -30683, label %bb.q
    i16 -24571, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.dd = trunc i32 %.0188386 to i16
  br label %.thread346

bb.q:                                             ; preds = %bb.o
  %i.de = trunc i32 %.0188386 to i16
  br label %.thread346

bb.r:                                             ; preds = %bb.o
  %i.df = trunc i32 %.0188386 to i16
  br label %.thread346

bb.s:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @IFDEntryTypeSizes, i64 %i.da
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !10 ; 2 uses
  %i.di = mul i32 %i.dh, %.1298439444             ; 6 uses
  %i.dj = icmp ugt i32 %i.di, 4
  br i1 %i.dj, label %bb.t, label %._crit_edge420

._crit_edge420:                                   ; preds = %bb.s
  %i.dk = trunc i64 %i.cu to i32
  %i.dl = trunc nuw i64 %i.cw to i32              ; 2 uses
  %.pre421 = add i32 %i.di, %i.dl
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dm = add nuw nsw i64 %i.cv, 12
  %i.dn = icmp samesign ugt i64 %i.dm, %i.r
  br i1 %i.dn, label %getbfwe.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 %i.cw
  store i32 %i.ae, ptr %i.do, align 1
  %i.dp = add i32 %i.ae, %i.di                    ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge420, %bb.u
  %.pre-phi = phi i32 [ %.pre421, %._crit_edge420 ], [ %i.dp, %bb.u ]
  %i.dq = phi i32 [ %i.ae, %._crit_edge420 ], [ %i.dp, %bb.u ] ; 8 uses
  %.0187 = phi i32 [ %i.dl, %._crit_edge420 ], [ %i.ae, %bb.u ] ; 4 uses
  %.0186 = phi i32 [ %i.dk, %._crit_edge420 ], [ %.0296, %bb.u ] ; 5 uses
  %i.dr = add i32 %.0186, %i.di
  %i.ds = icmp ugt i32 %i.dr, %1
  %i.dt = icmp ugt i32 %.pre-phi, %5
  %i.du = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %i.du, label %getbfwe.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = icmp eq i32 %i.di, %.1298439444
  %or.cond = or i1 %i.e, %i.dv
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dw = zext i32 %.0187 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 %i.dw
  %i.dy = zext i32 %.0186 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %i.dy
  %i.ea = zext i32 %i.di to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.dz, i64 %i.ea, i1 false)
  br label %.thread346

bb.y:                                             ; preds = %bb.w
  switch i32 %i.dh, label %.thread346 [
    i32 2, label %.preheader
    i32 8, label %bb.ac
    i32 4, label %bb.ai
  ]

.preheader:                                       ; preds = %bb.y
  %.not397 = icmp eq i32 %.1298439444, 0
  br i1 %.not397, label %.thread346, label %.lr.ph377

.lr.ph377:                                        ; preds = %.preheader
  %i.eb = zext i32 %.0186 to i64
  %i.ec = zext i32 %.0187 to i64
  %wide.trip.count410 = zext i32 %.1298439444 to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph377, %setbfw.exit261
  %indvars.iv407 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next408, %setbfw.exit261 ] ; 2 uses
  %i.ed = shl nuw nsw i64 %indvars.iv407, 1       ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, %i.eb            ; 2 uses
  %i.ef = add nuw nsw i64 %i.ee, 2
  %i.eg = icmp samesign ugt i64 %i.ef, %i.c
  br i1 %i.eg, label %getbfwbig.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr i8, ptr %0, i64 %i.ee     ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !11
  %i.ek = zext i8 %i.ej to i16
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !11
  %i.em = zext i8 %i.el to i16
  %i.en = shl nuw i16 %i.em, 8
  %i.eo = or disjoint i16 %i.en, %i.ek
  br label %getbfwbig.exit

getbfwbig.exit:                                   ; preds = %bb.z, %bb.aa
  %.0295 = phi i16 [ undef, %bb.z ], [ %i.eo, %bb.aa ]
  %i.ep = add nuw nsw i64 %i.ed, %i.ec            ; 2 uses
  %i.eq = add nuw nsw i64 %i.ep, 2
  %i.er = icmp samesign ugt i64 %i.eq, %i.r
  br i1 %i.er, label %setbfw.exit261, label %bb.ab

bb.ab:                                            ; preds = %getbfwbig.exit
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.ep
  store i16 %.0295, ptr %i.es, align 1
  br label %setbfw.exit261

setbfw.exit261:                                   ; preds = %getbfwbig.exit, %bb.ab
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count410
  br i1 %exitcond411.not, label %.thread346, label %bb.z, !llvm.loop !25

bb.ac:                                            ; preds = %bb.y
  %i.et = icmp eq i16 %.0299326331438446, 12
  br i1 %i.et, label %.preheader364, label %bb.ah

.preheader364:                                    ; preds = %bb.ac
  %.not396 = icmp eq i32 %.1298439444, 0
  br i1 %.not396, label %.thread346, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.preheader364
  %wide.trip.count405 = zext i32 %.1298439444 to i64
  br label %.lr.ph375

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %setbfdw.exit264
  %indvars.iv402 = phi i64 [ 0, %.lr.ph375.preheader ], [ %indvars.iv.next403, %setbfdw.exit264 ] ; 2 uses
  %i.eu = trunc nuw i64 %indvars.iv402 to i32
  %i.ev = shl i32 %i.eu, 3                        ; 2 uses
  %i.ew = add i32 %i.ev, %.0186
  %i.ex = zext i32 %i.ew to i64                   ; 3 uses
  %i.ey = add nuw nsw i64 %i.ex, 4                ; 2 uses
  %i.ez = icmp samesign ugt i64 %i.ey, %i.c
  br i1 %i.ez, label %getbfdwbig.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph375
  %i.fa = getelementptr i8, ptr %0, i64 %i.ex
  %i.fb = load i32, ptr %i.fa, align 1
  %i.fc = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  br label %getbfdwbig.exit

getbfdwbig.exit:                                  ; preds = %.lr.ph375, %bb.ad
  %.0293 = phi i32 [ undef, %.lr.ph375 ], [ %i.fc, %bb.ad ]
  %i.fd = add nuw nsw i64 %i.ex, 8
  %i.fe = icmp samesign ugt i64 %i.fd, %i.c
  br i1 %i.fe, label %getbfdwbig.exit262, label %bb.ae

bb.ae:                                            ; preds = %getbfdwbig.exit
  %i.ff = getelementptr i8, ptr %0, i64 %i.ey
  %i.fg = load i32, ptr %i.ff, align 1
  %i.fh = tail call i32 @llvm.bswap.i32(i32 %i.fg)
  br label %getbfdwbig.exit262

getbfdwbig.exit262:                               ; preds = %getbfdwbig.exit, %bb.ae
  %.0294 = phi i32 [ undef, %getbfdwbig.exit ], [ %i.fh, %bb.ae ]
  %i.fi = add i32 %i.ev, %.0187
  %i.fj = zext i32 %i.fi to i64                   ; 3 uses
  %i.fk = add nuw nsw i64 %i.fj, 4                ; 2 uses
  %i.fl = icmp samesign ugt i64 %i.fk, %i.r
  br i1 %i.fl, label %setbfdw.exit263, label %bb.af

bb.af:                                            ; preds = %getbfdwbig.exit262
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 %i.fj
  store i32 %.0294, ptr %i.fm, align 1
  br label %setbfdw.exit263

setbfdw.exit263:                                  ; preds = %getbfdwbig.exit262, %bb.af
  %i.fn = add nuw nsw i64 %i.fj, 8
  %i.fo = icmp samesign ugt i64 %i.fn, %i.r
  br i1 %i.fo, label %setbfdw.exit264, label %bb.ag

bb.ag:                                            ; preds = %setbfdw.exit263
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 %i.fk
  store i32 %.0293, ptr %i.fp, align 1
  br label %setbfdw.exit264

setbfdw.exit264:                                  ; preds = %setbfdw.exit263, %bb.ag
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
end_hunk_1
