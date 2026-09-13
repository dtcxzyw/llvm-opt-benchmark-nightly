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
  %i.a = sub nsw i32 %4, %3                       ; 3 uses
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
  %i.g = getelementptr [4 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = load <2 x i32>, ptr %i.h, align 4, !tbaa !8
  %i.j = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.preheader, %bb.f
  %.065124.i = phi i32 [ %i.bf, %bb.f ], [ 0, %.lr.ph125.i.preheader ] ; 2 uses
  %.068123.i = phi i32 [ %.5106.i, %bb.f ], [ undef, %.lr.ph125.i.preheader ] ; 3 uses
  %i.l = phi <2 x i32> [ %i.be, %bb.f ], [ %i.i, %.lr.ph125.i.preheader ] ; 5 uses
  %i.m = extractelement <2 x i32> %i.l, i64 0
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %5, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8    ; 3 uses
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.p, 255                        ; 3 uses
  %i.s = extractelement <2 x i32> %i.l, i64 1
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %5, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8    ; 3 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = icmp ugt i32 %i.p, 511
  %i.y = icmp ugt i32 %i.v, 511
  %i.z = and i32 %i.v, 255
  %i.aa = icmp eq i32 %i.r, %i.z
  %i.ab = and i1 %i.y, %i.aa
  %or.cond91.i = select i1 %i.x, i1 %i.ab, i1 false
  br i1 %or.cond91.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %.lr.ph125.i
  %.not89118.not.i = icmp eq i32 %i.r, 0
  br i1 %.not89118.not.i, label %.thread108.i, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i32 %.064120.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ac, %i.r
  br i1 %exitcond.not.i, label %.thread108.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.064120.i = phi i32 [ %i.ac, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %.169119.i = phi i32 [ %.270.i, %bb.c ], [ %.068123.i, %.preheader.i ]
  %i.ad = insertelement <2 x i32> poison, i32 %.064120.i, i64 0
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.af = add nsw <2 x i32> %i.ae, %i.l
  %i.ag = srem <2 x i32> %i.af, %i.k              ; 2 uses
  %i.ah = extractelement <2 x i32> %i.ag, i64 0
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 3 uses
  %i.al = extractelement <2 x i32> %i.ag, i64 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %2, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8  ; 3 uses
  %.not114.i = icmp ult i32 %i.ak, %i.ao
  %.not115.i = icmp ugt i32 %i.ak, %i.ao
  %..169.i = select i1 %.not115.i, i32 1, i32 %.169119.i
  %.270.i = select i1 %.not114.i, i32 -1, i32 %..169.i ; 3 uses
  %cond2.i = icmp eq i32 %i.ak, %i.ao
  br i1 %cond2.i, label %bb.c, label %compare_index.exit

.thread108.i:                                     ; preds = %bb.c, %.preheader.i
  %.169.lcssa.i = phi i32 [ %.068123.i, %.preheader.i ], [ %.270.i, %bb.c ]
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.q) ; 2 uses
  %i.ap = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ar = add nsw <2 x i32> %i.aq, %i.l
  %i.as = srem <2 x i32> %i.ar, %i.k
  %i.at = add i32 %.065124.i, -1
  %i.au = add i32 %i.at, %spec.select.i
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph125.i
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8  ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8  ; 2 uses
  %i.az = icmp ult i32 %i.aw, %i.ay
  br i1 %i.az, label %compare_index.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp ugt i32 %i.aw, %i.ay
  br i1 %i.ba, label %.lr.ph.preheader, label %.thread98.i

.thread98.i:                                      ; preds = %bb.e
  %i.bb = add nsw <2 x i32> %i.l, splat (i32 1)   ; 2 uses
  %i.bc = icmp slt <2 x i32> %i.bb, %i.k
  %i.bd = select <2 x i1> %i.bc, <2 x i32> %i.bb, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.thread98.i, %.thread108.i
  %.3107.i = phi i32 [ %.065124.i, %.thread98.i ], [ %i.au, %.thread108.i ]
  %.5106.i = phi i32 [ %.068123.i, %.thread98.i ], [ %.169.lcssa.i, %.thread108.i ]
  %i.be = phi <2 x i32> [ %i.bd, %.thread98.i ], [ %i.as, %.thread108.i ]
  %i.bf = add nsw i32 %.3107.i, 1                 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %1
  br i1 %i.bg, label %.lr.ph125.i, label %compare_index.exit.thread, !llvm.loop !12

compare_index.exit:                               ; preds = %.lr.ph.i
  %i.bh = icmp sgt i32 %.270.i, 0
  br i1 %i.bh, label %.lr.ph.preheader, label %compare_index.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.e, %compare_index.exit
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.0115 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %.1, %bb.o ] ; 6 uses
  %.068113 = phi i32 [ %3, %.lr.ph.preheader ], [ %.169, %bb.o ] ; 5 uses
  %i.bi = icmp eq i32 %.068113, %i.d
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.bj = sext i32 %.0115 to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !8
  %i.bn = add nsw i32 %.0115, 1
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph
  %i.bo = icmp eq i32 %.0115, %4
  %i.bp = sext i32 %.068113 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8  ; 3 uses
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !8
  %i.bt = add nsw i32 %.068113, 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bu = sext i32 %.0115 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8  ; 2 uses
  %i.bx = insertelement <2 x i32> poison, i32 %i.br, i64 0
  %i.by = insertelement <2 x i32> %i.bx, i32 %i.bw, i64 1
  br label %.lr.ph125.i73

.lr.ph125.i73:                                    ; preds = %bb.j, %bb.n
  %.065124.i74 = phi i32 [ %i.dt, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %.068123.i75 = phi i32 [ %.5106.i85, %bb.n ], [ undef, %bb.j ] ; 3 uses
  %i.bz = phi <2 x i32> [ %i.ds, %bb.n ], [ %i.by, %bb.j ] ; 5 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 0
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8  ; 3 uses
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = and i32 %i.cd, 255                      ; 3 uses
  %i.cg = extractelement <2 x i32> %i.bz, i64 1
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8  ; 3 uses
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = icmp ugt i32 %i.cd, 511
  %i.cm = icmp ugt i32 %i.cj, 511
  %i.cn = and i32 %i.cj, 255
  %i.co = icmp eq i32 %i.cf, %i.cn
  %i.cp = and i1 %i.cm, %i.co
  %or.cond91.i78 = select i1 %i.cl, i1 %i.cp, i1 false
  br i1 %or.cond91.i78, label %.preheader.i88, label %bb.l

.preheader.i88:                                   ; preds = %.lr.ph125.i73
  %.not89118.not.i89 = icmp eq i32 %i.cf, 0
  br i1 %.not89118.not.i89, label %.thread108.i99, label %.lr.ph.i90

bb.k:                                             ; preds = %.lr.ph.i90
  %i.cq = add nuw nsw i32 %.064120.i91, 1         ; 2 uses
  %exitcond.not.i98 = icmp eq i32 %i.cq, %i.cf
  br i1 %exitcond.not.i98, label %.thread108.i99, label %.lr.ph.i90, !llvm.loop !11

.lr.ph.i90:                                       ; preds = %.preheader.i88, %bb.k
  %.064120.i91 = phi i32 [ %i.cq, %bb.k ], [ 0, %.preheader.i88 ] ; 2 uses
  %.169119.i92 = phi i32 [ %.270.i96, %bb.k ], [ %.068123.i75, %.preheader.i88 ]
  %i.cr = insertelement <2 x i32> poison, i32 %.064120.i91, i64 0
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ct = add nsw <2 x i32> %i.cs, %i.bz
  %i.cu = srem <2 x i32> %i.ct, %i.k              ; 2 uses
  %i.cv = extractelement <2 x i32> %i.cu, i64 0
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8  ; 3 uses
  %i.cz = extractelement <2 x i32> %i.cu, i64 1
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %2, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8  ; 3 uses
  %.not114.i93 = icmp ult i32 %i.cy, %i.dc
  %.not115.i94 = icmp ugt i32 %i.cy, %i.dc
  %..169.i95 = select i1 %.not115.i94, i32 1, i32 %.169119.i92
  %.270.i96 = select i1 %.not114.i93, i32 -1, i32 %..169.i95 ; 3 uses
  %cond2.i97 = icmp eq i32 %i.cy, %i.dc
  br i1 %cond2.i97, label %bb.k, label %compare_index.exit102

.thread108.i99:                                   ; preds = %bb.k, %.preheader.i88
  %.169.lcssa.i100 = phi i32 [ %.068123.i75, %.preheader.i88 ], [ %.270.i96, %bb.k ]
  %spec.select.i101 = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.ce) ; 2 uses
  %i.dd = insertelement <2 x i32> poison, i32 %spec.select.i101, i64 0
  %i.de = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.df = add nsw <2 x i32> %i.de, %i.bz
  %i.dg = srem <2 x i32> %i.df, %i.k
  %i.dh = add i32 %.065124.i74, -1
  %i.di = add i32 %i.dh, %spec.select.i101
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph125.i73
  %i.dj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cb
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8  ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ch
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8  ; 2 uses
  %i.dn = icmp ult i32 %i.dk, %i.dm
  br i1 %i.dn, label %compare_index.exit102.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = icmp ugt i32 %i.dk, %i.dm
  br i1 %i.do, label %compare_index.exit102.thread105, label %.thread98.i79

.thread98.i79:                                    ; preds = %bb.m
  %i.dp = add nsw <2 x i32> %i.bz, splat (i32 1)  ; 2 uses
  %i.dq = icmp slt <2 x i32> %i.dp, %i.k
  %i.dr = select <2 x i1> %i.dq, <2 x i32> %i.dp, <2 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %.thread98.i79, %.thread108.i99
  %.3107.i84 = phi i32 [ %.065124.i74, %.thread98.i79 ], [ %i.di, %.thread108.i99 ]
  %.5106.i85 = phi i32 [ %.068123.i75, %.thread98.i79 ], [ %.169.lcssa.i100, %.thread108.i99 ]
  %i.ds = phi <2 x i32> [ %i.dr, %.thread98.i79 ], [ %i.dg, %.thread108.i99 ]
  %i.dt = add nsw i32 %.3107.i84, 1               ; 2 uses
  %i.du = icmp slt i32 %i.dt, %1
  br i1 %i.du, label %.lr.ph125.i73, label %compare_index.exit102.thread, !llvm.loop !12

compare_index.exit102:                            ; preds = %.lr.ph.i90
  %i.dv = icmp sgt i32 %.270.i96, 0
  br i1 %i.dv, label %compare_index.exit102.thread105, label %compare_index.exit102.thread

compare_index.exit102.thread105:                  ; preds = %bb.m, %compare_index.exit102
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bw, ptr %i.dw, align 4, !tbaa !8
  %i.dx = add nsw i32 %.0115, 1
  br label %bb.o

compare_index.exit102.thread:                     ; preds = %bb.l, %bb.n, %compare_index.exit102
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.br, ptr %i.dy, align 4, !tbaa !8
  %i.dz = add nsw i32 %.068113, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %compare_index.exit102.thread105, %compare_index.exit102.thread, %bb.i
  %.169 = phi i32 [ %i.d, %bb.g ], [ %i.bt, %bb.i ], [ %.068113, %compare_index.exit102.thread105 ], [ %i.dz, %compare_index.exit102.thread ]
  %.1 = phi i32 [ %i.bn, %bb.g ], [ %4, %bb.i ], [ %i.dx, %compare_index.exit102.thread105 ], [ %.0115, %compare_index.exit102.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.o
  %i.ea = sext i32 %3 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ea
  %i.ec = shl nuw nsw i64 %wide.trip.count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eb, ptr nonnull align 4 %6, i64 %i.ec, i1 false)
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
