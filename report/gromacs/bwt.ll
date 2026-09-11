Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bwt?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [74 x i8] c"/opt-bench/work/gromacs/gromacs/src/external/tng_io/src/compression/bwt.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"BWT cannot pack more than %d values.\0A\00", align 1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Ptngc_bwt_merge_sort_inner(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %4, %3                       ; 4 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %compare_index.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 1
  %i.d = add nsw i32 %i.c, %3                     ; 6 uses
  tail call void @Ptngc_bwt_merge_sort_inner(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.d, ptr noundef %5, ptr noundef %6)
  tail call void @Ptngc_bwt_merge_sort_inner(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.d, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph125.i.preheader, label %compare_index.exit.thread

.lr.ph125.i.preheader:                            ; preds = %bb.b
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.preheader, %bb.f
  %.065124.i = phi i32 [ %i.ax, %bb.f ], [ 0, %.lr.ph125.i.preheader ] ; 2 uses
  %.068123.i = phi i32 [ %.5106.i, %bb.f ], [ undef, %.lr.ph125.i.preheader ] ; 3 uses
  %.072122.i = phi i32 [ %.375105.i, %bb.f ], [ %i.j, %.lr.ph125.i.preheader ] ; 4 uses
  %.076121.i = phi i32 [ %.379104.i, %bb.f ], [ %i.h, %.lr.ph125.i.preheader ] ; 4 uses
  %i.k = sext i32 %.072122.i to i64               ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %5, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 3 uses
  %i.n = lshr i32 %i.m, 8
  %i.o = and i32 %i.m, 255                        ; 3 uses
  %i.p = sext i32 %.076121.i to i64               ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %5, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8    ; 3 uses
  %i.s = lshr i32 %i.r, 8
  %i.t = icmp ugt i32 %i.m, 511
  %i.u = icmp ugt i32 %i.r, 511
  %i.v = and i32 %i.r, 255
  %i.w = icmp eq i32 %i.o, %i.v
  %i.x = and i1 %i.u, %i.w
  %or.cond91.i = select i1 %i.t, i1 %i.x, i1 false
  br i1 %or.cond91.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %.lr.ph125.i
  %.not89118.not.i = icmp eq i32 %i.o, 0
  br i1 %.not89118.not.i, label %.thread108.i, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw nsw i32 %.064120.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.y, %i.o
  br i1 %exitcond.not.i, label %.thread108.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.064120.i = phi i32 [ %i.y, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %.169119.i = phi i32 [ %.270.i, %bb.c ], [ %.068123.i, %.preheader.i ]
  %i.z = add nsw i32 %.064120.i, %.072122.i
  %i.aa = srem i32 %i.z, %1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8  ; 3 uses
  %i.ae = add nsw i32 %.064120.i, %.076121.i
  %i.af = srem i32 %i.ae, %1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8  ; 3 uses
  %.not114.i = icmp ult i32 %i.ad, %i.ai
  %.not115.i = icmp ugt i32 %i.ad, %i.ai
  %..169.i = select i1 %.not115.i, i32 1, i32 %.169119.i
  %.270.i = select i1 %.not114.i, i32 -1, i32 %..169.i ; 3 uses
  %cond2.i = icmp eq i32 %i.ad, %i.ai
  br i1 %cond2.i, label %bb.c, label %compare_index.exit

.thread108.i:                                     ; preds = %bb.c, %.preheader.i
  %.169.lcssa.i = phi i32 [ %.068123.i, %.preheader.i ], [ %.270.i, %bb.c ]
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %i.n) ; 3 uses
  %i.aj = add nsw i32 %spec.select.i, %.072122.i
  %i.ak = srem i32 %i.aj, %1
  %i.al = add nsw i32 %spec.select.i, %.076121.i
  %i.am = srem i32 %i.al, %1
  %i.an = add i32 %.065124.i, -1
  %i.ao = add i32 %i.an, %spec.select.i
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph125.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.k
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8  ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 2 uses
  %i.at = icmp ult i32 %i.aq, %i.as
  br i1 %i.at, label %compare_index.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp ugt i32 %i.aq, %i.as
  br i1 %i.au, label %.lr.ph.preheader, label %.thread98.i

.thread98.i:                                      ; preds = %bb.e
  %i.av = add nsw i32 %.072122.i, 1               ; 2 uses
  %.not.i = icmp slt i32 %i.av, %1
  %spec.store.select.i = select i1 %.not.i, i32 %i.av, i32 0
  %i.aw = add nsw i32 %.076121.i, 1               ; 2 uses
  %.not88.i = icmp slt i32 %i.aw, %1
  %spec.store.select4.i = select i1 %.not88.i, i32 %i.aw, i32 0
  br label %bb.f

bb.f:                                             ; preds = %.thread98.i, %.thread108.i
  %.3107.i = phi i32 [ %.065124.i, %.thread98.i ], [ %i.ao, %.thread108.i ]
  %.5106.i = phi i32 [ %.068123.i, %.thread98.i ], [ %.169.lcssa.i, %.thread108.i ]
  %.375105.i = phi i32 [ %spec.store.select.i, %.thread98.i ], [ %i.ak, %.thread108.i ]
  %.379104.i = phi i32 [ %spec.store.select4.i, %.thread98.i ], [ %i.am, %.thread108.i ]
  %i.ax = add nsw i32 %.3107.i, 1                 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %1
  br i1 %i.ay, label %.lr.ph125.i, label %compare_index.exit.thread, !llvm.loop !12

compare_index.exit:                               ; preds = %.lr.ph.i
  %i.az = icmp sgt i32 %.270.i, 0
  br i1 %i.az, label %.lr.ph.preheader, label %compare_index.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.e, %compare_index.exit
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.0115 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %.1, %bb.o ] ; 6 uses
  %.068113 = phi i32 [ %3, %.lr.ph.preheader ], [ %.169, %bb.o ] ; 5 uses
  %i.ba = icmp eq i32 %.068113, %i.d
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.bb = sext i32 %.0115 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !8
  %i.bf = add nsw i32 %.0115, 1
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph
  %i.bg = icmp eq i32 %.0115, %4
  %i.bh = sext i32 %.068113 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8  ; 3 uses
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !8
  %i.bl = add nsw i32 %.068113, 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bm = sext i32 %.0115 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8  ; 2 uses
  br label %.lr.ph125.i73

.lr.ph125.i73:                                    ; preds = %bb.j, %bb.n
  %.065124.i74 = phi i32 [ %i.dc, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %.068123.i75 = phi i32 [ %.5106.i85, %bb.n ], [ undef, %bb.j ] ; 3 uses
  %.072122.i76 = phi i32 [ %.375105.i86, %bb.n ], [ %i.bj, %bb.j ] ; 4 uses
  %.076121.i77 = phi i32 [ %.379104.i87, %bb.n ], [ %i.bo, %bb.j ] ; 4 uses
  %i.bp = sext i32 %.072122.i76 to i64            ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8  ; 3 uses
  %i.bs = lshr i32 %i.br, 8
  %i.bt = and i32 %i.br, 255                      ; 3 uses
  %i.bu = sext i32 %.076121.i77 to i64            ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8  ; 3 uses
  %i.bx = lshr i32 %i.bw, 8
  %i.by = icmp ugt i32 %i.br, 511
  %i.bz = icmp ugt i32 %i.bw, 511
  %i.ca = and i32 %i.bw, 255
  %i.cb = icmp eq i32 %i.bt, %i.ca
  %i.cc = and i1 %i.bz, %i.cb
  %or.cond91.i78 = select i1 %i.by, i1 %i.cc, i1 false
  br i1 %or.cond91.i78, label %.preheader.i88, label %bb.l

.preheader.i88:                                   ; preds = %.lr.ph125.i73
  %.not89118.not.i89 = icmp eq i32 %i.bt, 0
  br i1 %.not89118.not.i89, label %.thread108.i99, label %.lr.ph.i90

bb.k:                                             ; preds = %.lr.ph.i90
  %i.cd = add nuw nsw i32 %.064120.i91, 1         ; 2 uses
  %exitcond.not.i98 = icmp eq i32 %i.cd, %i.bt
  br i1 %exitcond.not.i98, label %.thread108.i99, label %.lr.ph.i90, !llvm.loop !11

.lr.ph.i90:                                       ; preds = %.preheader.i88, %bb.k
  %.064120.i91 = phi i32 [ %i.cd, %bb.k ], [ 0, %.preheader.i88 ] ; 3 uses
  %.169119.i92 = phi i32 [ %.270.i96, %bb.k ], [ %.068123.i75, %.preheader.i88 ]
  %i.ce = add nsw i32 %.064120.i91, %.072122.i76
  %i.cf = srem i32 %i.ce, %1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8  ; 3 uses
  %i.cj = add nsw i32 %.064120.i91, %.076121.i77
  %i.ck = srem i32 %i.cj, %1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8  ; 3 uses
  %.not114.i93 = icmp ult i32 %i.ci, %i.cn
  %.not115.i94 = icmp ugt i32 %i.ci, %i.cn
  %..169.i95 = select i1 %.not115.i94, i32 1, i32 %.169119.i92
  %.270.i96 = select i1 %.not114.i93, i32 -1, i32 %..169.i95 ; 3 uses
  %cond2.i97 = icmp eq i32 %i.ci, %i.cn
  br i1 %cond2.i97, label %bb.k, label %compare_index.exit102

.thread108.i99:                                   ; preds = %bb.k, %.preheader.i88
  %.169.lcssa.i100 = phi i32 [ %.068123.i75, %.preheader.i88 ], [ %.270.i96, %bb.k ]
  %spec.select.i101 = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.bs) ; 3 uses
  %i.co = add nsw i32 %spec.select.i101, %.072122.i76
  %i.cp = srem i32 %i.co, %1
  %i.cq = add nsw i32 %spec.select.i101, %.076121.i77
  %i.cr = srem i32 %i.cq, %1
  %i.cs = add i32 %.065124.i74, -1
  %i.ct = add i32 %i.cs, %spec.select.i101
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph125.i73
  %i.cu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bp
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8  ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8  ; 2 uses
  %i.cy = icmp ult i32 %i.cv, %i.cx
  br i1 %i.cy, label %compare_index.exit102.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp ugt i32 %i.cv, %i.cx
  br i1 %i.cz, label %compare_index.exit102.thread105, label %.thread98.i79

.thread98.i79:                                    ; preds = %bb.m
  %i.da = add nsw i32 %.072122.i76, 1             ; 2 uses
  %.not.i80 = icmp slt i32 %i.da, %1
  %spec.store.select.i81 = select i1 %.not.i80, i32 %i.da, i32 0
  %i.db = add nsw i32 %.076121.i77, 1             ; 2 uses
  %.not88.i82 = icmp slt i32 %i.db, %1
  %spec.store.select4.i83 = select i1 %.not88.i82, i32 %i.db, i32 0
  br label %bb.n

bb.n:                                             ; preds = %.thread98.i79, %.thread108.i99
  %.3107.i84 = phi i32 [ %.065124.i74, %.thread98.i79 ], [ %i.ct, %.thread108.i99 ]
  %.5106.i85 = phi i32 [ %.068123.i75, %.thread98.i79 ], [ %.169.lcssa.i100, %.thread108.i99 ]
  %.375105.i86 = phi i32 [ %spec.store.select.i81, %.thread98.i79 ], [ %i.cp, %.thread108.i99 ]
  %.379104.i87 = phi i32 [ %spec.store.select4.i83, %.thread98.i79 ], [ %i.cr, %.thread108.i99 ]
  %i.dc = add nsw i32 %.3107.i84, 1               ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %1
  br i1 %i.dd, label %.lr.ph125.i73, label %compare_index.exit102.thread, !llvm.loop !12

compare_index.exit102:                            ; preds = %.lr.ph.i90
  %i.de = icmp sgt i32 %.270.i96, 0
  br i1 %i.de, label %compare_index.exit102.thread105, label %compare_index.exit102.thread

compare_index.exit102.thread105:                  ; preds = %bb.m, %compare_index.exit102
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bo, ptr %i.df, align 4, !tbaa !8
  %i.dg = add nsw i32 %.0115, 1
  br label %bb.o

compare_index.exit102.thread:                     ; preds = %bb.l, %bb.n, %compare_index.exit102
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bj, ptr %i.dh, align 4, !tbaa !8
  %i.di = add nsw i32 %.068113, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %compare_index.exit102.thread105, %compare_index.exit102.thread, %bb.i
  %.169 = phi i32 [ %i.d, %bb.g ], [ %i.bl, %bb.i ], [ %.068113, %compare_index.exit102.thread105 ], [ %i.di, %compare_index.exit102.thread ]
  %.1 = phi i32 [ %i.bf, %bb.g ], [ %4, %bb.i ], [ %i.dg, %compare_index.exit102.thread105 ], [ %.0115, %compare_index.exit102.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.o
  %i.dj = sext i32 %3 to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dj
  %7 = zext nneg i32 %i.a to i64
  %i.dl = shl nuw nsw i64 %7, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dk, ptr nonnull align 4 %6, i64 %i.dl, i1 false)
  br label %compare_index.exit.thread

compare_index.exit.thread:                        ; preds = %bb.d, %bb.f, %bb.b, %compare_index.exit, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @Ptngc_comp_to_bwt(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nsw i32 %1, 1                        ; 6 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 170) #10 ; 13 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 171) #10 ; 8 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.i = icmp sgt i32 %1, 16777215
  br i1 %i.i, label %bb.b, label %.preheader156

.preheader156:                                    ; preds = %bb.a
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %iter.check, label %._crit_edge208.thread

iter.check:                                       ; preds = %.preheader156
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp ult i32 %1, 32
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <8 x i32> %vec.ind, ptr %i.l, align 4, !tbaa !8
  store <8 x i32> %step.add, ptr %i.m, align 4, !tbaa !8
  store <8 x i32> %step.add.2, ptr %i.n, align 4, !tbaa !8
  store <8 x i32> %step.add.3, ptr %i.o, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph207.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec299 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.q = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind301 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next303, %vec.epilog.vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index300
  store <8 x i32> %vec.ind301, ptr %i.r, align 4, !tbaa !8
  %index.next302 = add nuw i64 %index300, 8       ; 2 uses
  %vec.ind.next303 = add <8 x i32> %vec.ind301, splat (i32 8)
  %i.s = icmp eq i64 %index.next302, %n.vec299
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n304 = icmp eq i64 %n.vec299, %wide.trip.count
  br i1 %cmp.n304, label %.lr.ph207.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec299, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.1, i32 noundef 16777215) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph207.preheader, label %.lr.ph, !llvm.loop !16

._crit_edge208.thread:                            ; preds = %.preheader156
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.f, i1 false)
  tail call void @Ptngc_bwt_merge_sort_inner(ptr noundef %i.d, i32 noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %i.g, ptr noundef %i.h)
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %._crit_edge219

.lr.ph207.preheader:                              ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.f, i1 false)
  %wide.trip.count237 = zext nneg i32 %1 to i64   ; 3 uses
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %bb.l
  %indvars.iv234 = phi i64 [ 0, %.lr.ph207.preheader ], [ %indvars.iv.next235, %bb.l ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv234 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.preheader152.preheader, label %bb.l

.preheader152.preheader:                          ; preds = %.lr.ph207
  %i.z = trunc nuw nsw i64 %indvars.iv234 to i32  ; 2 uses
  br label %.preheader151

.preheader154:                                    ; preds = %.loopexit, %.split.us
  %.5260 = phi i32 [ %.2170.us, %.split.us ], [ %.5, %.loopexit ] ; 4 uses
  %.5116259 = phi i32 [ %.2113169.us, %.split.us ], [ %.5116, %.loopexit ] ; 3 uses
  %i.aa = icmp slt i32 %.5260, %.5116259
  br i1 %i.aa, label %.lr.ph201.preheader, label %.critedge.thread

.lr.ph201.preheader:                              ; preds = %.preheader154
  %i.ab = trunc nuw nsw i64 %indvars.iv234 to i32
  br label %.lr.ph201

.preheader151:                                    ; preds = %.preheader151.backedge, %.preheader152.preheader
  %.1196 = phi i32 [ 0, %.preheader152.preheader ], [ %.1196.be, %.preheader151.backedge ] ; 3 uses
  %.1112195 = phi i32 [ -1, %.preheader152.preheader ], [ %.1112195.be, %.preheader151.backedge ] ; 3 uses
  %.1120194 = phi i32 [ 16, %.preheader152.preheader ], [ %.1120194.be, %.preheader151.backedge ] ; 14 uses
  %i.ac = icmp slt i32 %.1120194, %i.a
  br i1 %i.ac, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader151
  %i.ad = icmp sgt i32 %.1120194, 0
  br i1 %i.ad, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.g
  %.2170.us = phi i32 [ %.4.ph.us, %bb.g ], [ %.1196, %.preheader.lr.ph ] ; 4 uses
  %.2113169.us = phi i32 [ %.4115.ph.us, %bb.g ], [ %.1112195, %.preheader.lr.ph ] ; 5 uses
  %.0125168.us = phi i32 [ %i.at, %bb.g ], [ %.1120194, %.preheader.lr.ph ] ; 3 uses
  %i.ae = add nsw i32 %.0125168.us, %i.z
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0117166.us = phi i32 [ 0, %.preheader.us ], [ %i.ap, %bb.d ] ; 3 uses
  %i.af = add nuw nsw i32 %.0117166.us, %i.z
  %i.ag = urem i32 %i.af, %1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = add nsw i32 %i.ae, %.0117166.us
  %i.al = srem i32 %i.ak, %1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %.not138.us = icmp eq i32 %i.aj, %i.ao
  br i1 %.not138.us, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c
  %i.ap = add nuw nsw i32 %.0117166.us, 1         ; 2 uses
  %exitcond233.not = icmp eq i32 %i.ap, %.1120194
  br i1 %exitcond233.not, label %..critedge141_crit_edge.us, label %bb.c, !llvm.loop !17

bb.e:                                             ; preds = %..critedge141_crit_edge.us
  %i.aq = icmp eq i32 %spec.select.us, %.2113169.us
  %i.ar = icmp slt i32 %.1120194, %.2170.us
  %or.cond.us = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %..critedge141_crit_edge.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4115.ph.us = phi i32 [ %.2113169.us, %bb.e ], [ %spec.select.us, %bb.f ] ; 2 uses
  %.4.ph.us = phi i32 [ %.2170.us, %bb.e ], [ %.1120194, %bb.f ] ; 2 uses
  %i.as = icmp slt i32 %i.at, %i.a
  br i1 %i.as, label %.preheader.us, label %.loopexit, !llvm.loop !18

..critedge141_crit_edge.us:                       ; preds = %bb.d
  %i.at = add nuw nsw i32 %.0125168.us, %.1120194 ; 4 uses
  %i.au = icmp sgt i32 %i.at, %i.a
  %spec.select.us = select i1 %i.au, i32 %.0125168.us, i32 %i.at ; 3 uses
end_hunk_0
