inline.NumInlined: 38
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @kissat_reset_only_analyzed_literals(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not11 = icmp eq ptr %i.d, %i.f
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load i32, ptr %.012, align 4, !tbaa !61
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.f
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !62

.critedge.loopexit:                               ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.n = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.d, %bb.a ]
  store ptr %i.n, ptr %i.e, align 8, !tbaa !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @kissat_analyze(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !64, !range !65, !noundef !66
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !67, !range !65, !noundef !66
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3992
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !69, !range !65, !noundef !66
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = sub i64 %i.i, %i.p
  store i64 %i.i, ptr %i.o, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.s = uitofp i64 %i.q to double
  tail call void @kissat_update_smooth(ptr noundef nonnull %0, ptr noundef nonnull %i.r, double noundef %i.s) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 816        ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 21 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4088 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3912 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4208 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.de, %bb.d
  %.028 = phi ptr [ %1, %bb.d ], [ %.1, %bb.de ]  ; 14 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !8   ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.028, i64 12 ; 15 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !73 ; 4 uses
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.bc, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i
  %.not154.i = icmp eq i32 %i.bb, 0
  br i1 %.not154.i, label %.loopexit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.critedge.i
  %.0104159.i = phi i32 [ %.2145.i, %.critedge.i ], [ -1, %bb.e ] ; 2 uses
  %.0118158.i = phi ptr [ %i.bs, %.critedge.i ], [ %i.az, %bb.e ] ; 2 uses
  %.0119157.i = phi i32 [ %.1120144.i, %.critedge.i ], [ -1, %bb.e ] ; 3 uses
  %.0122156.i = phi i32 [ %.1123143.i, %.critedge.i ], [ 0, %bb.e ]
  %.0125155.i = phi i32 [ %.1126142.i, %.critedge.i ], [ -1, %bb.e ] ; 8 uses
  %i.be = load i32, ptr %.0118158.i, align 4, !tbaa !61 ; 2 uses
  %i.bf = lshr i32 %i.be, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !74 ; 5 uses
  %i.bj = icmp eq i32 %.0125155.i, -1
  %i.bk = icmp ult i32 %.0125155.i, %i.bi
  %or.cond.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bl = icmp eq i32 %.0104159.i, -1
  %i.bm = tail call i32 @llvm.umax.i32(i32 %.0104159.i, i32 %i.bi)
  %.1.i = select i1 %i.bl, i32 %i.bi, i32 %i.bm   ; 3 uses
  %i.bn = icmp eq i32 %.0125155.i, %i.bi
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i = add i32 %.0122156.i, %i.bo     ; 4 uses
  %i.bp = icmp ugt i32 %spec.select.i, 1
  br i1 %i.bp, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.bq = load i32, ptr %i.u, align 8, !tbaa !76
  %i.br = icmp eq i32 %.0125155.i, %i.bq
  br i1 %i.br, label %._crit_edge.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f, %.lr.ph.i
  %.2145.i = phi i32 [ %.1.i, %bb.f ], [ %.1.i, %bb.g ], [ %.0125155.i, %.lr.ph.i ] ; 2 uses
  %.1120144.i = phi i32 [ %.0119157.i, %bb.f ], [ %.0119157.i, %bb.g ], [ %i.be, %.lr.ph.i ] ; 2 uses
  %.1123143.i = phi i32 [ %spec.select.i, %bb.f ], [ %spec.select.i, %bb.g ], [ 1, %.lr.ph.i ] ; 2 uses
  %.1126142.i = phi i32 [ %.0125155.i, %bb.f ], [ %.0125155.i, %bb.g ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0118158.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !77

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.g
  %.0125.lcssa.ph.i = phi i32 [ %.1126142.i, %.critedge.i ], [ %.0125155.i, %bb.g ] ; 6 uses
  %.0119.lcssa.ph.i = phi i32 [ %.1120144.i, %.critedge.i ], [ %.0119157.i, %bb.g ] ; 3 uses
  %.2124.ph.i = phi i32 [ %.1123143.i, %.critedge.i ], [ %spec.select.i, %bb.g ]
  %.3.ph.i = phi i32 [ %.2145.i, %.critedge.i ], [ %.1.i, %bb.g ] ; 3 uses
  %i.bt = icmp ugt i32 %.2124.ph.i, 1             ; 3 uses
  %.not131.i = icmp eq i32 %.0125.lcssa.ph.i, 0
  br i1 %.not131.i, label %.thread, label %bb.h

.thread:                                          ; preds = %._crit_edge.i
  store i8 1, ptr %i.b, align 1, !tbaa !64
  br label %one_literal_on_conflict_level.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !76
  %i.bv = icmp ult i32 %.0125.lcssa.ph.i, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @kissat_backtrack_after_conflict(ptr noundef nonnull %0, i32 noundef %.0125.lcssa.ph.i) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bw = icmp ugt i32 %i.bb, 2
  br i1 %i.bw, label %.lr.ph173.preheader.i, label %.loopexit.i

.lr.ph173.preheader.i:                            ; preds = %bb.j
  %i.bx = ptrtoint ptr %.028 to i64               ; 2 uses
  %i.by = load i32, ptr %i.az, align 4, !tbaa !61 ; 5 uses
  %i.bz = lshr i32 %i.by, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !74
  br label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %bb.l, %.lr.ph173.preheader.i
  %indvars.iv181.i = phi i64 [ 1, %.lr.ph173.preheader.i ], [ %indvars.iv.next182.i, %bb.l ] ; 4 uses
  %.0107170.i = phi i32 [ %i.cc, %.lr.ph173.preheader.i ], [ %.1108.ph.i, %bb.l ] ; 2 uses
  %.0109169.i = phi i32 [ %i.by, %.lr.ph173.preheader.i ], [ %.1110.ph.i, %bb.l ]
  %.0112168.i = phi i32 [ 0, %.lr.ph173.preheader.i ], [ %.1113.ph.i, %bb.l ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv181.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !61 ; 3 uses
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !74 ; 3 uses
  %.not132.i = icmp ult i32 %.0107170.i, %i.ci
  br i1 %.not132.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph173.i
  %i.cj = icmp eq i32 %i.ci, %.0125.lcssa.ph.i
  %i.ck = trunc nuw i64 %indvars.iv181.i to i32   ; 2 uses
  br i1 %i.cj, label %._crit_edge174.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph173.i
  %.1113.ph.i = phi i32 [ %i.ck, %bb.k ], [ %.0112168.i, %.lr.ph173.i ] ; 4 uses
  %.1110.ph.i = phi i32 [ %i.ce, %bb.k ], [ %.0109169.i, %.lr.ph173.i ] ; 2 uses
  %.1108.ph.i = phi i32 [ %i.ci, %bb.k ], [ %.0107170.i, %.lr.ph173.i ]
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %.not196.i = icmp eq i64 %indvars.iv.next182.i, %i.bc
  br i1 %.not196.i, label %._crit_edge174.i, label %.lr.ph173.i, !llvm.loop !78

._crit_edge174.i:                                 ; preds = %bb.l
  %i.cl = zext i32 %.1113.ph.i to i64
  %i.cm = icmp eq i32 %.1113.ph.i, 0
  br i1 %i.cm, label %.lr.ph173.preheader.1.i, label %._crit_edge174.thread.i

._crit_edge174.thread.i:                          ; preds = %bb.k, %._crit_edge174.i
  %i.cn = phi i64 [ %i.cl, %._crit_edge174.i ], [ %indvars.iv181.i, %bb.k ] ; 2 uses
  %.2111.ph227.i = phi i32 [ %.1110.ph.i, %._crit_edge174.i ], [ %i.ce, %bb.k ] ; 3 uses
  %.2114.ph226.i = phi i32 [ %.1113.ph.i, %._crit_edge174.i ], [ %i.ck, %bb.k ]
  %.not197.i = icmp eq i32 %.2114.ph226.i, 1
  br i1 %.not197.i, label %.critedge136.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge174.thread.i
  %.val137.i = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.co = ptrtoint ptr %.val137.i to i64
  %i.cp = sub i64 %i.bx, %i.co
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.ct = zext i32 %i.by to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  tail call void @kissat_remove_blocking_watch(ptr noundef %0, ptr noundef %i.cu, i32 noundef %i.cr) #8
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cn
  store i32 %i.by, ptr %i.cv, align 4, !tbaa !61
  store i32 %.2111.ph227.i, ptr %i.az, align 4, !tbaa !61
  %i.cw = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !61
  %i.cy = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.cz = zext i32 %.2111.ph227.i to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = and i32 %i.cx, 2147483647
  tail call fastcc void @kissat_push_vectors(ptr noundef %0, ptr noundef %i.da, i32 noundef %i.db)
  %i.dc = and i32 %i.cr, 2147483647
  tail call fastcc void @kissat_push_vectors(ptr noundef %0, ptr noundef %i.da, i32 noundef %i.dc)
  br label %.lr.ph173.preheader.1.i

.critedge136.i:                                   ; preds = %._crit_edge174.thread.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cn
  store i32 %i.by, ptr %i.dd, align 4, !tbaa !61
  store i32 %.2111.ph227.i, ptr %i.az, align 4, !tbaa !61
  br label %.lr.ph173.preheader.1.i

.lr.ph173.preheader.1.i:                          ; preds = %.critedge136.i, %bb.m, %._crit_edge174.i
  %i.de = getelementptr inbounds nuw i8, ptr %.028, i64 16 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !61 ; 5 uses
  %i.dg = lshr i32 %i.df, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !74
  br label %.lr.ph173.1.i

.lr.ph173.1.i:                                    ; preds = %bb.o, %.lr.ph173.preheader.1.i
  %indvars.iv181.1.i = phi i64 [ 2, %.lr.ph173.preheader.1.i ], [ %indvars.iv.next182.1.i, %bb.o ] ; 3 uses
  %.0107170.1.i = phi i32 [ %i.dj, %.lr.ph173.preheader.1.i ], [ %.1108.ph.1.i, %bb.o ] ; 2 uses
  %.0109169.1.i = phi i32 [ %i.df, %.lr.ph173.preheader.1.i ], [ %.1110.ph.1.i, %bb.o ]
  %.0112168.1.i = phi i32 [ 1, %.lr.ph173.preheader.1.i ], [ %.1113.ph.1.i, %bb.o ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv181.1.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !61 ; 3 uses
  %i.dm = lshr i32 %i.dl, 1
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !74 ; 3 uses
  %.not132.1.i = icmp ult i32 %.0107170.1.i, %i.dp
  br i1 %.not132.1.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph173.1.i
  %i.dq = icmp eq i32 %i.dp, %.0125.lcssa.ph.i
  %i.dr = trunc nuw i64 %indvars.iv181.1.i to i32 ; 2 uses
  br i1 %i.dq, label %._crit_edge174.1.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph173.1.i
  %.1113.ph.1.i = phi i32 [ %i.dr, %bb.n ], [ %.0112168.1.i, %.lr.ph173.1.i ] ; 2 uses
  %.1110.ph.1.i = phi i32 [ %i.dl, %bb.n ], [ %.0109169.1.i, %.lr.ph173.1.i ] ; 2 uses
  %.1108.ph.1.i = phi i32 [ %i.dp, %bb.n ], [ %.0107170.1.i, %.lr.ph173.1.i ]
  %indvars.iv.next182.1.i = add nuw nsw i64 %indvars.iv181.1.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next182.1.i, %i.bc
  br i1 %exitcond, label %._crit_edge174.1.i, label %.lr.ph173.1.i, !llvm.loop !78

._crit_edge174.1.i:                               ; preds = %bb.o, %bb.n
  %.2114.ph.1.i = phi i32 [ %.1113.ph.1.i, %bb.o ], [ %i.dr, %bb.n ] ; 2 uses
  %.2111.ph.1.i = phi i32 [ %.1110.ph.1.i, %bb.o ], [ %i.dl, %bb.n ] ; 3 uses
  %i.ds = zext i32 %.2114.ph.1.i to i64           ; 2 uses
  switch i32 %.2114.ph.1.i, label %.split.i [
    i32 1, label %.loopexit.i
    i32 0, label %.critedge136.1.i
  ]

.critedge136.1.i:                                 ; preds = %._crit_edge174.1.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ds
  store i32 %i.df, ptr %i.dt, align 4, !tbaa !61
  store i32 %.2111.ph.1.i, ptr %i.de, align 4, !tbaa !61
  br i1 %i.bt, label %bb.r, label %.loopexit.thread.i

.split.i:                                         ; preds = %._crit_edge174.1.i
  %.val137.1.i = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.du = ptrtoint ptr %.val137.1.i to i64
  %i.dv = sub i64 %i.bx, %i.du
  %i.dw = lshr exact i64 %i.dv, 3
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.dz = zext i32 %i.df to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dz
  tail call void @kissat_remove_blocking_watch(ptr noundef %0, ptr noundef %i.ea, i32 noundef %i.dx) #8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ds
  store i32 %i.df, ptr %i.eb, align 4, !tbaa !61
  store i32 %.2111.ph.1.i, ptr %i.de, align 4, !tbaa !61
  %i.ec = load i32, ptr %i.az, align 4, !tbaa !61
  %i.ed = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.ee = zext i32 %.2111.ph.1.i to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.eg = and i32 %i.ec, 2147483647
  tail call fastcc void @kissat_push_vectors(ptr noundef %0, ptr noundef %i.ef, i32 noundef %i.eg)
  %i.eh = and i32 %i.dx, 2147483647
  tail call fastcc void @kissat_push_vectors(ptr noundef %0, ptr noundef %i.ef, i32 noundef %i.eh)
  br i1 %i.bt, label %bb.r, label %.loopexit.thread.i

.loopexit.i:                                      ; preds = %._crit_edge174.1.i, %bb.j
  br i1 %i.bt, label %bb.r, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.e, %.loopexit.i, %.split.i, %.critedge136.1.i
  %.0119.lcssa205214221232.i = phi i32 [ %.0119.lcssa.ph.i, %.critedge136.1.i ], [ %.0119.lcssa.ph.i, %.loopexit.i ], [ %.0119.lcssa.ph.i, %.split.i ], [ -1, %bb.e ] ; 3 uses
  %.3207212223231.i = phi i32 [ %.3.ph.i, %.critedge136.1.i ], [ %.3.ph.i, %.loopexit.i ], [ %.3.ph.i, %.split.i ], [ -1, %bb.e ]
  %i.ei = tail call i32 @kissat_determine_new_level(ptr noundef %0, i32 noundef %.3207212223231.i) #8
  tail call void @kissat_backtrack_after_conflict(ptr noundef %0, i32 noundef %i.ei) #8
  %i.ej = icmp eq i32 %i.bb, 2
  br i1 %i.ej, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.thread.i
  %i.ek = load i32, ptr %i.az, align 4, !tbaa !61
  %i.el = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.em = load i32, ptr %i.el, align 4, !tbaa !61
  %i.en = xor i32 %i.ek, %i.em
  %i.eo = xor i32 %i.en, %.0119.lcssa205214221232.i
  tail call void @kissat_assign_binary(ptr noundef %0, i32 noundef %.0119.lcssa205214221232.i, i32 noundef %i.eo) #8
  br label %one_literal_on_conflict_level.exit

bb.q:                                             ; preds = %.loopexit.thread.i
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.ep = ptrtoint ptr %.028 to i64
  %i.eq = ptrtoint ptr %.val.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 3
  %i.et = trunc i64 %i.es to i32
  tail call void @kissat_assign_reference(ptr noundef %0, i32 noundef %.0119.lcssa205214221232.i, i32 noundef %i.et, ptr noundef %.028) #8
  br label %one_literal_on_conflict_level.exit

bb.r:                                             ; preds = %.loopexit.i, %.split.i, %.critedge136.1.i
  %cond = icmp eq i32 %.0125.lcssa.ph.i, 1
  br i1 %cond, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !82
  %i.ex = xor i32 %i.ew, 1                        ; 4 uses
  %i.ey = load ptr, ptr %i.t, align 8, !tbaa !8   ; 4 uses
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !84
  %i.fa = load i32, ptr %i.ba, align 4, !tbaa !73 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %.idx.i35 = shl nuw nsw i64 %i.fb, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i35
  %.not143.i = icmp eq i32 %i.fa, 0
  br i1 %.not143.i, label %.critedge.i38.preheader, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.s, %bb.w
  %.0107145.i = phi ptr [ %i.fs, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %.0110144.i = phi i32 [ %.1111.i, %bb.w ], [ 0, %bb.s ] ; 2 uses
  %i.fd = load i32, ptr %.0107145.i, align 4, !tbaa !61 ; 2 uses
  %i.fe = icmp eq i32 %i.fd, %i.ex
  br i1 %i.fe, label %.critedge.thread.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i36
  %i.ff = lshr i32 %i.fd, 1                       ; 2 uses
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fg ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !74
  %.not119.i = icmp eq i32 %i.fi, 0
  br i1 %.not119.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 4
  %i.fl = or i8 %i.fk, 1
  store i8 %i.fl, ptr %i.fj, align 4
  %i.fm = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 2 uses
  %i.fn = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %bb.v, label %kissat_push_analyzed.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, i64 noundef 4) #8
  %.pre.i.i = load ptr, ptr %i.aa, align 8, !tbaa !60
  br label %kissat_push_analyzed.exit.i

kissat_push_analyzed.exit.i:                      ; preds = %bb.v, %bb.u
  %i.fp = phi ptr [ %.pre.i.i, %bb.v ], [ %i.fm, %bb.u ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store ptr %i.fq, ptr %i.aa, align 8, !tbaa !60
  store i32 %i.ff, ptr %i.fp, align 4, !tbaa !61
  %i.fr = add i32 %.0110144.i, 1
  br label %bb.w

bb.w:                                             ; preds = %kissat_push_analyzed.exit.i, %bb.t
  %.1111.i = phi i32 [ %i.fr, %kissat_push_analyzed.exit.i ], [ %.0110144.i, %bb.t ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0107145.i, i64 4 ; 2 uses
  %.not.i37 = icmp eq ptr %i.fs, %i.fc
  br i1 %.not.i37, label %.critedge.i38.preheader, label %.lr.ph.i36, !llvm.loop !86

.critedge.i38.preheader:                          ; preds = %bb.w, %bb.s
  %.2112.i.ph = phi i32 [ 0, %bb.s ], [ %.1111.i, %bb.w ]
  br label %.critedge.i38

.critedge.i38:                                    ; preds = %.critedge.i38.preheader, %.critedge4.i
  %.0114.i = phi ptr [ %i.ft, %.critedge4.i ], [ %i.ez, %.critedge.i38.preheader ]
  %.2112.i = phi i32 [ %i.ia, %.critedge4.i ], [ %.2112.i.ph, %.critedge.i38.preheader ] ; 5 uses
  %.0108.i = phi i32 [ %.1109.i, %.critedge4.i ], [ -1, %.critedge.i38.preheader ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.critedge.i38
  %.1115.i = phi ptr [ %.0114.i, %.critedge.i38 ], [ %i.ft, %bb.x ]
  %i.ft = getelementptr inbounds i8, ptr %.1115.i, i64 -4 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !61 ; 3 uses
  %i.fv = lshr i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.fw ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i8, ptr %i.fy, align 4             ; 2 uses
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %bb.y, label %bb.x, !llvm.loop !87

bb.y:                                             ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gc = icmp eq i32 %.2112.i, 1
  br i1 %i.gc, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gd = xor i32 %i.fu, 1                        ; 2 uses
  %i.ge = load ptr, ptr %i.ad, align 8, !tbaa !88 ; 2 uses
  %i.gf = load ptr, ptr %i.ae, align 8, !tbaa !89
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i64 noundef 4) #8
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !88
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gh = phi ptr [ %.pre.i, %bb.aa ], [ %i.ge, %bb.z ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store ptr %i.gi, ptr %i.ad, align 8, !tbaa !88
  store i32 %i.gd, ptr %i.gh, align 4, !tbaa !61
  %.pre160.i = load i8, ptr %i.gb, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.gj = phi i8 [ %.pre160.i, %bb.ab ], [ %i.fz, %bb.y ]
  %.1109.i = phi i32 [ %i.gd, %bb.ab ], [ %.0108.i, %bb.y ] ; 2 uses
  %i.gk = and i8 %i.gj, 2
  %.not120.i = icmp eq i8 %i.gk, 0
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !90 ; 3 uses
  br i1 %.not120.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not123.i = icmp eq i32 %i.gm, %i.ex
  br i1 %.not123.i, label %.critedge.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gn = lshr i32 %i.gm, 1                       ; 2 uses
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 4             ; 2 uses
  %i.gs = trunc i8 %i.gr to i1
  br i1 %i.gs, label %.critedge4.i, label %bb.af
end_hunk_0
begin_hunk_1_@kissat_analyze:bb.a
  %i.li = add i64 %.1302.i.i, 1                   ; 7 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !61 ; 3 uses
  %i.ll = icmp ult i32 %i.lk, %i.lg
  br i1 %i.ll, label %bb.bi, label %.preheader339.i.i.preheader, !llvm.loop !110

.preheader339.i.i.preheader:                      ; preds = %bb.bi
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.li ; 2 uses
  br label %.preheader339.i.i

.preheader339.i.i:                                ; preds = %.preheader339.i.i.preheader, %.preheader339.i.i
  %.1300.i.i = phi i64 [ %i.ln, %.preheader339.i.i ], [ %.0299.i.i, %.preheader339.i.i.preheader ] ; 2 uses
  %i.ln = add i64 %.1300.i.i, -1                  ; 5 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !61 ; 2 uses
  %i.lq = icmp uge i32 %i.lg, %i.lp
  %i.lr = icmp eq i64 %.1300.i.i, %i.lh
  %or.cond.i.i = or i1 %i.lr, %i.lq
  br i1 %or.cond.i.i, label %bb.bj, label %.preheader339.i.i, !llvm.loop !111

bb.bj:                                            ; preds = %.preheader339.i.i
  %.not330.i.i = icmp ult i64 %i.li, %i.ln
  br i1 %.not330.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ln
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !61
  store i32 %i.lk, ptr %i.ls, align 4, !tbaa !61
  br label %bb.bh

bb.bl:                                            ; preds = %bb.bj
  %i.lt = load i32, ptr %i.ku, align 4, !tbaa !61
  store i32 %i.lt, ptr %i.lm, align 4, !tbaa !61
  store i32 %i.lk, ptr %i.ku, align 4, !tbaa !61
  %i.lu = sub i64 %i.li, %.0295.i.i
  %i.lv = sub i64 %.0303.i.i, %i.li
  %i.lw = icmp ult i64 %i.lu, %i.lv               ; 4 uses
  %i.lx = add i64 %.1302.i.i, 2                   ; 2 uses
  %.1302..0303.i.i = select i1 %i.lw, i64 %.1302.i.i, i64 %.0303.i.i ; 2 uses
  %.0295..i.i = select i1 %i.lw, i64 %.0295.i.i, i64 %i.lx ; 2 uses
  %..0295.i.i = select i1 %i.lw, i64 %i.lx, i64 %.0295.i.i ; 3 uses
  %.0303..1302.i.i = select i1 %i.lw, i64 %.0303.i.i, i64 %.1302.i.i ; 3 uses
  %i.ly = sub i64 %.1302..0303.i.i, %.0295..i.i
  %i.lz = icmp ugt i64 %i.ly, 10
  br i1 %i.lz, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.ma = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.mb = load ptr, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i64 noundef 8) #8
  %.pre398.i.i = load ptr, ptr %i.aq, align 8, !tbaa !112
  %.pre399.i.i = load ptr, ptr %i.ar, align 8, !tbaa !113
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.md = phi ptr [ %.pre399.i.i, %bb.bn ], [ %i.mb, %bb.bm ]
  %i.me = phi ptr [ %.pre398.i.i, %bb.bn ], [ %i.ma, %bb.bm ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 3 uses
  store ptr %i.mf, ptr %i.aq, align 8, !tbaa !112
  store i64 %..0295.i.i, ptr %i.me, align 8, !tbaa !114
  %i.mg = icmp eq ptr %i.mf, %i.md
  br i1 %i.mg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i64 noundef 8) #8
  %.pre400.i.i = load ptr, ptr %i.aq, align 8, !tbaa !112
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.mh = phi ptr [ %.pre400.i.i, %bb.bp ], [ %i.mf, %bb.bo ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store ptr %i.mi, ptr %i.aq, align 8, !tbaa !112
  store i64 %.0303..1302.i.i, ptr %i.mh, align 8, !tbaa !114
  br label %.preheader340.i.i.backedge

bb.br:                                            ; preds = %bb.bl
  %i.mj = sub i64 %.0303..1302.i.i, %..0295.i.i
  %i.mk = icmp ugt i64 %i.mj, 10
  br i1 %i.mk, label %.preheader340.i.i.backedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ml = load ptr, ptr %i.ap, align 8, !tbaa !115
  %i.mm = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 3 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %.lr.ph381.i.i.preheader, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mo = getelementptr inbounds i8, ptr %i.mm, i64 -8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !114
  %i.mq = getelementptr inbounds i8, ptr %i.mm, i64 -16 ; 2 uses
  store ptr %i.mq, ptr %i.aq, align 8, !tbaa !112
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !114
  br label %.preheader340.i.i.backedge

.preheader340.i.i.backedge:                       ; preds = %bb.bt, %bb.br, %bb.bq
  %.0303.i.i.be = phi i64 [ %i.mp, %bb.bt ], [ %.0303..1302.i.i, %bb.br ], [ %.1302..0303.i.i, %bb.bq ]
  %.0295.i.i.be = phi i64 [ %i.mr, %bb.bt ], [ %..0295.i.i, %bb.br ], [ %.0295..i.i, %bb.bq ]
  br label %.preheader340.i.i

.preheader.i.i:                                   ; preds = %bb.bw
  %.not332387.i.i = icmp eq i64 %i.kc, 8
  br i1 %.not332387.i.i, label %sort_levels.exit.i, label %.lr.ph389.preheader.i.i

.lr.ph389.preheader.i.i:                          ; preds = %.preheader.i.i
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.kg, i64 2)
  %i.ms = add i64 %umax.i.i, -1                   ; 3 uses
  %xtraiter289 = and i64 %i.ms, 1
  %i.mt = icmp ult i64 %i.kd, 4
  br i1 %i.mt, label %.lr.ph389.i.i.epil.preheader, label %.lr.ph389.preheader.i.i.new

.lr.ph389.preheader.i.i.new:                      ; preds = %.lr.ph389.preheader.i.i
  %unroll_iter293 = and i64 %i.ms, -2
  br label %.lr.ph389.i.i

.lr.ph381.i.i:                                    ; preds = %.lr.ph381.i.i.prol.loopexit, %bb.bw
  %.0292380.i.i = phi i64 [ %i.nf, %bb.bw ], [ %.0292380.i.i.unr, %.lr.ph381.i.i.prol.loopexit ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.0292380.i.i ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !61 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mu, i64 -4     ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !61 ; 2 uses
  %i.my = icmp ult i32 %i.mv, %i.mx
  br i1 %i.my, label %bb.bu, label %.lr.ph381.i.i.1

bb.bu:                                            ; preds = %.lr.ph381.i.i
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !61
  store i32 %i.mx, ptr %i.mu, align 4, !tbaa !61
  br label %.lr.ph381.i.i.1

.lr.ph381.i.i.1:                                  ; preds = %bb.bu, %.lr.ph381.i.i
  %i.mz = getelementptr [4 x i8], ptr %i.jz, i64 %.0292380.i.i ; 2 uses
  %i.na = getelementptr i8, ptr %i.mz, i64 -4     ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !61 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mz, i64 -8     ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !61 ; 2 uses
  %i.ne = icmp ult i32 %i.nb, %i.nd
  br i1 %i.ne, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph381.i.i.1
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !61
  store i32 %i.nd, ptr %i.na, align 4, !tbaa !61
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph381.i.i.1
  %i.nf = add nsw i64 %.0292380.i.i, -2           ; 2 uses
  %.not331.i.i.1 = icmp eq i64 %i.nf, 0
  br i1 %.not331.i.i.1, label %.preheader.i.i, label %.lr.ph381.i.i, !llvm.loop !116

.lr.ph389.i.i:                                    ; preds = %._crit_edge385.i.i.1, %.lr.ph389.preheader.i.i.new
  %.0291388.i.i = phi i64 [ 2, %.lr.ph389.preheader.i.i.new ], [ %i.of, %._crit_edge385.i.i.1 ] ; 4 uses
  %niter294 = phi i64 [ 0, %.lr.ph389.preheader.i.i.new ], [ %niter294.next.1, %._crit_edge385.i.i.1 ]
  %i.ng = getelementptr [4 x i8], ptr %i.jz, i64 %.0291388.i.i ; 4 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !61 ; 3 uses
  %i.ni = getelementptr i8, ptr %i.ng, i64 -4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !61 ; 2 uses
  %i.nk = icmp ult i32 %i.nh, %i.nj
  br i1 %i.nk, label %.lr.ph384.i.i, label %._crit_edge385.i.i

.lr.ph384.i.i:                                    ; preds = %.lr.ph389.i.i, %.lr.ph384.i.i
  %i.nl = phi i32 [ %i.nq, %.lr.ph384.i.i ], [ %i.nj, %.lr.ph389.i.i ]
  %i.nm = phi ptr [ %i.no, %.lr.ph384.i.i ], [ %i.ng, %.lr.ph389.i.i ]
  %.0290382.i.i = phi i64 [ %i.nn, %.lr.ph384.i.i ], [ %.0291388.i.i, %.lr.ph389.i.i ]
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !61
  %i.nn = add i64 %.0290382.i.i, -1               ; 2 uses
  %i.no = getelementptr [4 x i8], ptr %i.jz, i64 %i.nn ; 3 uses
  %i.np = getelementptr i8, ptr %i.no, i64 -4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !61 ; 2 uses
  %i.nr = icmp ult i32 %i.nh, %i.nq
  br i1 %i.nr, label %.lr.ph384.i.i, label %._crit_edge385.i.i, !llvm.loop !117

._crit_edge385.i.i:                               ; preds = %.lr.ph384.i.i, %.lr.ph389.i.i
  %.lcssa.i.i = phi ptr [ %i.ng, %.lr.ph389.i.i ], [ %i.no, %.lr.ph384.i.i ]
  store i32 %i.nh, ptr %.lcssa.i.i, align 4, !tbaa !61
  %i.ns = or disjoint i64 %.0291388.i.i, 1        ; 2 uses
  %i.nt = getelementptr [4 x i8], ptr %i.jz, i64 %i.ns ; 4 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !61 ; 3 uses
  %i.nv = getelementptr i8, ptr %i.nt, i64 -4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !61 ; 2 uses
  %i.nx = icmp ult i32 %i.nu, %i.nw
  br i1 %i.nx, label %.lr.ph384.i.i.1, label %._crit_edge385.i.i.1

.lr.ph384.i.i.1:                                  ; preds = %._crit_edge385.i.i, %.lr.ph384.i.i.1
  %i.ny = phi i32 [ %i.od, %.lr.ph384.i.i.1 ], [ %i.nw, %._crit_edge385.i.i ]
  %i.nz = phi ptr [ %i.ob, %.lr.ph384.i.i.1 ], [ %i.nt, %._crit_edge385.i.i ]
  %.0290382.i.i.1 = phi i64 [ %i.oa, %.lr.ph384.i.i.1 ], [ %i.ns, %._crit_edge385.i.i ]
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !61
  %i.oa = add i64 %.0290382.i.i.1, -1             ; 2 uses
  %i.ob = getelementptr [4 x i8], ptr %i.jz, i64 %i.oa ; 3 uses
  %i.oc = getelementptr i8, ptr %i.ob, i64 -4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !61 ; 2 uses
  %i.oe = icmp ult i32 %i.nu, %i.od
  br i1 %i.oe, label %.lr.ph384.i.i.1, label %._crit_edge385.i.i.1, !llvm.loop !117

._crit_edge385.i.i.1:                             ; preds = %.lr.ph384.i.i.1, %._crit_edge385.i.i
  %.lcssa.i.i.1 = phi ptr [ %i.nt, %._crit_edge385.i.i ], [ %i.ob, %.lr.ph384.i.i.1 ]
  store i32 %i.nu, ptr %.lcssa.i.i.1, align 4, !tbaa !61
  %i.of = add nuw i64 %.0291388.i.i, 2            ; 2 uses
  %niter294.next.1 = add nuw i64 %niter294, 2     ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %sort_levels.exit.i.loopexit.unr-lcssa, label %.lr.ph389.i.i, !llvm.loop !118

bb.bx:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not326348.i.i = icmp eq ptr %i.jy, %i.jz
  br label %bb.bz

bb.by:                                            ; preds = %.loopexit341.i.i
  %i.og = icmp eq ptr %.2281.i.i, %.3285.i.i
  br i1 %i.og, label %bb.cg, label %bb.ch

bb.bz:                                            ; preds = %.loopexit341.i.i, %bb.bx
  %.0263376.i.i = phi i64 [ 0, %bb.bx ], [ %i.rb, %.loopexit341.i.i ] ; 3 uses
  %.0264374.i.i = phi i32 [ 255, %bb.bx ], [ %i.rc, %.loopexit341.i.i ] ; 3 uses
  %.0265373.i.i = phi i32 [ -1, %bb.bx ], [ %.3.i.i, %.loopexit341.i.i ] ; 5 uses
  %.0267372.i.i = phi i32 [ 0, %bb.bx ], [ %.3270.i.i, %.loopexit341.i.i ] ; 5 uses
  %.0271371.i.i = phi i1 [ false, %bb.bx ], [ true, %.loopexit341.i.i ] ; 4 uses
  %.0275370.i.i = phi i32 [ 255, %bb.bx ], [ %.1276.i.i, %.loopexit341.i.i ] ; 2 uses
  %.0277369.i.i = phi i32 [ 0, %bb.bx ], [ %.1278.i.i, %.loopexit341.i.i ] ; 3 uses
  %.0279368.i.i = phi ptr [ %i.jz, %bb.bx ], [ %.2281.i.i, %.loopexit341.i.i ] ; 8 uses
  %.0282367.i.i = phi ptr [ null, %bb.bx ], [ %.3285.i.i, %.loopexit341.i.i ] ; 5 uses
  %.0286366.i.i = phi ptr [ null, %bb.bx ], [ %.3289.i.i, %.loopexit341.i.i ] ; 6 uses
  br i1 %.0271371.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.oh = xor i32 %.0267372.i.i, %.0265373.i.i
  %i.oi = and i32 %i.oh, %.0264374.i.i
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %.loopexit341.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ok = zext nneg i32 %.0277369.i.i to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ok
  %reass.sub.i.i = add nuw nsw i32 %.0275370.i.i, 1
  %i.om = sub nsw i32 %reass.sub.i.i, %.0277369.i.i
  %i.on = zext i32 %i.om to i64
  %i.oo = shl nuw nsw i64 %i.on, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ol, i8 0, i64 %i.oo, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %.0279368.i.i, i64 %i.kc ; 2 uses
  %.pre401.i.i = trunc nuw nsw i64 %.0263376.i.i to i32 ; 6 uses
  br i1 %.not326348.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i42

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i42
  %i.oq = trunc nuw i8 %.1262.i.i to i1           ; 2 uses
  %i.or = lshr i32 %.2.i.i, %.pre401.i.i
  %i.os = and i32 %i.or, 255                      ; 5 uses
  %i.ot = lshr i32 %.2269.i.i, %.pre401.i.i       ; 2 uses
  %i.ou = and i32 %i.ot, 255                      ; 4 uses
  br i1 %.0271371.i.i, label %bb.cd, label %bb.cc

._crit_edge.thread.i.i:                           ; preds = %bb.cb
  %i.ov = lshr i32 %.0265373.i.i, %.pre401.i.i
  %i.ow = and i32 %i.ov, 255
  %i.ox = lshr i32 %.0267372.i.i, %.pre401.i.i
  %i.oy = and i32 %i.ox, 255
  br label %.loopexit341.i.i

.lr.ph.i.i42:                                     ; preds = %bb.cb, %.lr.ph.i.i42
  %.0259353.i.i = phi ptr [ %i.pk, %.lr.ph.i.i42 ], [ %.0279368.i.i, %bb.cb ] ; 2 uses
  %.0260352.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i42 ], [ 0, %bb.cb ] ; 2 uses
  %.0261351.i.i = phi i8 [ %.1262.i.i, %.lr.ph.i.i42 ], [ 1, %bb.cb ] ; 2 uses
  %.1266350.i.i = phi i32 [ %.2.i.i, %.lr.ph.i.i42 ], [ %.0265373.i.i, %bb.cb ]
  %.1268349.i.i = phi i32 [ %.2269.i.i, %.lr.ph.i.i42 ], [ %.0267372.i.i, %bb.cb ]
  %i.oz = load i32, ptr %.0259353.i.i, align 4, !tbaa !61 ; 3 uses
  %i.pa = select i1 %.0271371.i.i, i32 0, i32 %i.oz
  %.2269.i.i = or i32 %i.pa, %.1268349.i.i        ; 6 uses
  %i.pb = select i1 %.0271371.i.i, i32 -1, i32 %i.oz
  %.2.i.i = and i32 %i.pb, %.1266350.i.i          ; 6 uses
  %i.pc = lshr i32 %i.oz, %.pre401.i.i
  %i.pd = and i32 %i.pc, 255                      ; 3 uses
  %i.pe = trunc nuw i8 %.0261351.i.i to i1
  %i.pf = icmp samesign ugt i32 %.0260352.i.i, %i.pd
  %or.cond334.i.i = select i1 %i.pe, i1 %i.pf, i1 false ; 2 uses
  %.1262.i.i = select i1 %or.cond334.i.i, i8 0, i8 %.0261351.i.i ; 2 uses
  %.1.i.i = select i1 %or.cond334.i.i, i32 %.0260352.i.i, i32 %i.pd
  %i.pg = zext nneg i32 %i.pd to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pg ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !114
  %i.pj = add i64 %i.pi, 1
  store i64 %i.pj, ptr %i.ph, align 8, !tbaa !114
  %i.pk = getelementptr inbounds nuw i8, ptr %.0259353.i.i, i64 4 ; 2 uses
  %.not326.i.i = icmp eq ptr %i.pk, %i.op
  br i1 %.not326.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i42, !llvm.loop !119

bb.cc:                                            ; preds = %._crit_edge.i.i
  %i.pl = xor i32 %.2.i.i, %.2269.i.i
  %i.pm = and i32 %i.pl, %.0264374.i.i
  %i.pn = icmp eq i32 %i.pm, 0
  %or.cond338.i.i = select i1 %i.pn, i1 true, i1 %i.oq
  br i1 %or.cond338.i.i, label %.loopexit341.i.i, label %bb.ce

bb.cd:                                            ; preds = %._crit_edge.i.i
  br i1 %i.oq, label %.loopexit341.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.not327356.i.i = icmp samesign ugt i32 %i.os, %i.ou
  br i1 %.not327356.i.i, label %._crit_edge361.i.i, label %.lr.ph360.preheader.i.i

.lr.ph360.preheader.i.i:                          ; preds = %bb.ce
  %i.po = zext nneg i32 %i.os to i64              ; 4 uses
  %i.pp = and i32 %i.ot, 255
  %i.pq = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.pr = add nuw nsw i64 %i.pq, 1
  %i.ps = sub nsw i64 %i.pr, %i.po                ; 2 uses
  %i.pt = sub nsw i64 %i.pq, %i.po
  %xtraiter = and i64 %i.ps, 3                    ; 3 uses
  %i.pu = icmp ult i64 %i.pt, 3
  br i1 %i.pu, label %.lr.ph360.i.i.epil.preheader, label %.lr.ph360.preheader.i.i.new

.lr.ph360.preheader.i.i.new:                      ; preds = %.lr.ph360.preheader.i.i
  %unroll_iter = and i64 %i.ps, -4
  br label %.lr.ph360.i.i

._crit_edge361.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph360.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge361.i.i, label %.lr.ph360.i.i.epil.preheader

.lr.ph360.i.i.epil.preheader:                     ; preds = %._crit_edge361.i.i.loopexit.unr-lcssa, %.lr.ph360.preheader.i.i
  %.0257358.i.i.epil.init = phi i64 [ %i.po, %.lr.ph360.preheader.i.i ], [ %i.qo, %._crit_edge361.i.i.loopexit.unr-lcssa ]
  %.0258357.i.i.epil.init = phi i64 [ 0, %.lr.ph360.preheader.i.i ], [ %i.qn, %._crit_edge361.i.i.loopexit.unr-lcssa ]
  %lcmp.mod286 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod286)
  br label %.lr.ph360.i.i.epil

.lr.ph360.i.i.epil:                               ; preds = %.lr.ph360.i.i.epil, %.lr.ph360.i.i.epil.preheader
  %.0257358.i.i.epil = phi i64 [ %i.py, %.lr.ph360.i.i.epil ], [ %.0257358.i.i.epil.init, %.lr.ph360.i.i.epil.preheader ] ; 2 uses
  %.0258357.i.i.epil = phi i64 [ %i.px, %.lr.ph360.i.i.epil ], [ %.0258357.i.i.epil.init, %.lr.ph360.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph360.i.i.epil ], [ 0, %.lr.ph360.i.i.epil.preheader ]
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0257358.i.i.epil ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !114
  store i64 %.0258357.i.i.epil, ptr %i.pv, align 8, !tbaa !114
  %i.px = add i64 %i.pw, %.0258357.i.i.epil
  %i.py = add nuw nsw i64 %.0257358.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge361.i.i, label %.lr.ph360.i.i.epil, !llvm.loop !120

._crit_edge361.i.i:                               ; preds = %._crit_edge361.i.i.loopexit.unr-lcssa, %.lr.ph360.i.i.epil, %bb.ce
  %.not328.i.i = icmp eq ptr %.0286366.i.i, null
  br i1 %.not328.i.i, label %bb.cf, label %.lr.ph365.preheader.i.i

.lr.ph360.i.i:                                    ; preds = %.lr.ph360.i.i, %.lr.ph360.preheader.i.i.new
  %.0257358.i.i = phi i64 [ %i.po, %.lr.ph360.preheader.i.i.new ], [ %i.qo, %.lr.ph360.i.i ] ; 5 uses
  %.0258357.i.i = phi i64 [ 0, %.lr.ph360.preheader.i.i.new ], [ %i.qn, %.lr.ph360.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph360.preheader.i.i.new ], [ %niter.next.3, %.lr.ph360.i.i ]
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0257358.i.i ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !114
  store i64 %.0258357.i.i, ptr %i.pz, align 8, !tbaa !114
  %i.qb = add i64 %i.qa, %.0258357.i.i            ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0257358.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !114
  store i64 %i.qb, ptr %i.qd, align 8, !tbaa !114
  %i.qf = add i64 %i.qe, %i.qb                    ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0257358.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !114
  store i64 %i.qf, ptr %i.qh, align 8, !tbaa !114
  %i.qj = add i64 %i.qi, %i.qf                    ; 2 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0257358.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !114
  store i64 %i.qj, ptr %i.ql, align 8, !tbaa !114
  %i.qn = add i64 %i.qm, %i.qj                    ; 2 uses
  %i.qo = add nuw nsw i64 %.0257358.i.i, 4        ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge361.i.i.loopexit.unr-lcssa, label %.lr.ph360.i.i, !llvm.loop !122

bb.cf:                                            ; preds = %._crit_edge361.i.i
  %i.qp = tail call ptr @kissat_malloc(ptr noundef %0, i64 noundef %i.kc) #8 ; 2 uses
  br label %.lr.ph365.preheader.i.i

.lr.ph365.preheader.i.i:                          ; preds = %bb.cf, %._crit_edge361.i.i
  %.1287.i.i = phi ptr [ %.0286366.i.i, %._crit_edge361.i.i ], [ %i.qp, %bb.cf ]
  %.1283.i.i = phi ptr [ %.0282367.i.i, %._crit_edge361.i.i ], [ %i.qp, %bb.cf ] ; 2 uses
  %i.qq = icmp eq ptr %.0279368.i.i, %i.jz
  %i.qr = select i1 %i.qq, ptr %.1283.i.i, ptr %i.jz ; 2 uses
  br label %.lr.ph365.i.i

.lr.ph365.i.i:                                    ; preds = %.lr.ph365.i.i, %.lr.ph365.preheader.i.i
  %.0256363.i.i = phi ptr [ %i.ra, %.lr.ph365.i.i ], [ %.0279368.i.i, %.lr.ph365.preheader.i.i ] ; 2 uses
  %i.qs = load i32, ptr %.0256363.i.i, align 4, !tbaa !61 ; 2 uses
  %i.qt = lshr i32 %i.qs, %.pre401.i.i
  %i.qu = and i32 %i.qt, 255
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qv ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !114 ; 2 uses
  %i.qy = add i64 %i.qx, 1
  store i64 %i.qy, ptr %i.qw, align 8, !tbaa !114
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.qx
  store i32 %i.qs, ptr %i.qz, align 4, !tbaa !61
  %i.ra = getelementptr inbounds nuw i8, ptr %.0256363.i.i, i64 4 ; 2 uses
  %.not329.i.i = icmp eq ptr %i.ra, %i.op
  br i1 %.not329.i.i, label %.loopexit341.i.i, label %.lr.ph365.i.i, !llvm.loop !123

.loopexit341.i.i:                                 ; preds = %.lr.ph365.i.i, %bb.cd, %bb.cc, %._crit_edge.thread.i.i, %bb.ca
  %.3289.i.i = phi ptr [ %.0286366.i.i, %bb.ca ], [ %.0286366.i.i, %bb.cc ], [ %.0286366.i.i, %bb.cd ], [ %.0286366.i.i, %._crit_edge.thread.i.i ], [ %.1287.i.i, %.lr.ph365.i.i ] ; 3 uses
  %.3285.i.i = phi ptr [ %.0282367.i.i, %bb.ca ], [ %.0282367.i.i, %bb.cc ], [ %.0282367.i.i, %bb.cd ], [ %.0282367.i.i, %._crit_edge.thread.i.i ], [ %.1283.i.i, %.lr.ph365.i.i ] ; 3 uses
  %.2281.i.i = phi ptr [ %.0279368.i.i, %bb.ca ], [ %.0279368.i.i, %bb.cc ], [ %.0279368.i.i, %bb.cd ], [ %.0279368.i.i, %._crit_edge.thread.i.i ], [ %i.qr, %.lr.ph365.i.i ] ; 2 uses
  %.1278.i.i = phi i32 [ %.0277369.i.i, %bb.ca ], [ %i.os, %bb.cc ], [ %i.os, %bb.cd ], [ %i.ow, %._crit_edge.thread.i.i ], [ %i.os, %.lr.ph365.i.i ]
  %.1276.i.i = phi i32 [ %.0275370.i.i, %bb.ca ], [ %i.ou, %bb.cc ], [ %i.ou, %bb.cd ], [ %i.oy, %._crit_edge.thread.i.i ], [ %i.ou, %.lr.ph365.i.i ]
  %.3270.i.i = phi i32 [ %.0267372.i.i, %bb.ca ], [ %.2269.i.i, %bb.cc ], [ %.2269.i.i, %bb.cd ], [ %.0267372.i.i, %._crit_edge.thread.i.i ], [ %.2269.i.i, %.lr.ph365.i.i ]
  %.3.i.i = phi i32 [ %.0265373.i.i, %bb.ca ], [ %.2.i.i, %bb.cc ], [ %.2.i.i, %bb.cd ], [ %.0265373.i.i, %._crit_edge.thread.i.i ], [ %.2.i.i, %.lr.ph365.i.i ]
  %i.rb = add nuw nsw i64 %.0263376.i.i, 8
  %i.rc = shl i32 %.0264374.i.i, 8
  %i.rd = icmp samesign ult i64 %.0263376.i.i, 24
  br i1 %i.rd, label %bb.bz, label %bb.by, !llvm.loop !124

bb.cg:                                            ; preds = %bb.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jz, ptr align 4 %.3285.i.i, i64 %i.kc, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.by
  %.not.i.i43 = icmp eq ptr %.3289.i.i, null
  br i1 %.not.i.i43, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @kissat_free(ptr noundef %0, ptr noundef nonnull %.3289.i.i, i64 noundef %i.kc) #8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %sort_levels.exit.i

sort_levels.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge385.i.i.1
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod291.not, label %sort_levels.exit.i, label %.lr.ph389.i.i.epil.preheader

.lr.ph389.i.i.epil.preheader:                     ; preds = %sort_levels.exit.i.loopexit.unr-lcssa, %.lr.ph389.preheader.i.i
  %.0291388.i.i.epil.init = phi i64 [ 2, %.lr.ph389.preheader.i.i ], [ %i.of, %sort_levels.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod292 = trunc i64 %i.ms to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.re = getelementptr [4 x i8], ptr %i.jz, i64 %.0291388.i.i.epil.init ; 4 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !61 ; 3 uses
  %i.rg = getelementptr i8, ptr %i.re, i64 -4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !61 ; 2 uses
  %i.ri = icmp ult i32 %i.rf, %i.rh
  br i1 %i.ri, label %.lr.ph384.i.i.epil, label %._crit_edge385.i.i.epil

.lr.ph384.i.i.epil:                               ; preds = %.lr.ph389.i.i.epil.preheader, %.lr.ph384.i.i.epil
  %i.rj = phi i32 [ %i.ro, %.lr.ph384.i.i.epil ], [ %i.rh, %.lr.ph389.i.i.epil.preheader ]
  %i.rk = phi ptr [ %i.rm, %.lr.ph384.i.i.epil ], [ %i.re, %.lr.ph389.i.i.epil.preheader ]
  %.0290382.i.i.epil = phi i64 [ %i.rl, %.lr.ph384.i.i.epil ], [ %.0291388.i.i.epil.init, %.lr.ph389.i.i.epil.preheader ]
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !61
  %i.rl = add i64 %.0290382.i.i.epil, -1          ; 2 uses
  %i.rm = getelementptr [4 x i8], ptr %i.jz, i64 %i.rl ; 3 uses
  %i.rn = getelementptr i8, ptr %i.rm, i64 -4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !61 ; 2 uses
  %i.rp = icmp ult i32 %i.rf, %i.ro
  br i1 %i.rp, label %.lr.ph384.i.i.epil, label %._crit_edge385.i.i.epil, !llvm.loop !117

._crit_edge385.i.i.epil:                          ; preds = %.lr.ph384.i.i.epil, %.lr.ph389.i.i.epil.preheader
  %.lcssa.i.i.epil = phi ptr [ %i.re, %.lr.ph389.i.i.epil.preheader ], [ %i.rm, %.lr.ph384.i.i.epil ]
  store i32 %i.rf, ptr %.lcssa.i.i.epil, align 4, !tbaa !61
  br label %sort_levels.exit.i

sort_levels.exit.i:                               ; preds = %.lr.ph381.i.i.prol.loopexit, %._crit_edge385.i.i.epil, %sort_levels.exit.i.loopexit.unr-lcssa, %bb.cj, %.preheader.i.i, %bb.ay
  %i.rq = load ptr, ptr %i.x, align 8, !tbaa !81  ; 3 uses
  %i.rr = load ptr, ptr %i.aj, align 8, !tbaa !99 ; 3 uses
  %i.rs = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 3 uses
  %.not80.i = icmp eq ptr %i.rs, %i.rr            ; 2 uses
  br i1 %.not80.i, label %._crit_edge.i46, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %sort_levels.exit.i, %.lr.ph.i44
  %.082.i = phi i32 [ %i.rz, %.lr.ph.i44 ], [ 1, %sort_levels.exit.i ] ; 2 uses
  %.06481.i = phi ptr [ %i.rt, %.lr.ph.i44 ], [ %i.rs, %sort_levels.exit.i ]
  %i.rt = getelementptr inbounds i8, ptr %.06481.i, i64 -4 ; 3 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !61
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %i.rq, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 12 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !101
  store i32 %.082.i, ptr %i.rx, align 4, !tbaa !101
  %i.rz = add i32 %i.ry, %.082.i
  %.not.i45 = icmp eq ptr %i.rt, %i.rr
  br i1 %.not.i45, label %._crit_edge.i46, label %.lr.ph.i44, !llvm.loop !125

._crit_edge.i46:                                  ; preds = %.lr.ph.i44, %sort_levels.exit.i
  %i.sa = load ptr, ptr %i.ad, align 8, !tbaa !88 ; 3 uses
  %i.sb = load ptr, ptr %i.y, align 8, !tbaa !92  ; 3 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd                    ; 2 uses
  %i.sf = load ptr, ptr %i.at, align 8, !tbaa !88 ; 2 uses
  %i.sg = load ptr, ptr %i.as, align 8, !tbaa !92 ; 3 uses
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = icmp ult i64 %i.sj, %i.se
  br i1 %i.sk, label %.lr.ph84.i, label %._crit_edge85.i

.lr.ph84.i:                                       ; preds = %._crit_edge.i46, %bb.cl
  %i.sl = phi ptr [ %i.sp, %bb.cl ], [ %i.sg, %._crit_edge.i46 ]
  %i.sm = phi ptr [ %i.sr, %bb.cl ], [ %i.sf, %._crit_edge.i46 ] ; 2 uses
  %i.sn = load ptr, ptr %i.au, align 8, !tbaa !89
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph84.i
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i64 noundef 4) #8
  %.pre.i47 = load ptr, ptr %i.at, align 8, !tbaa !88
  %.pre106.i = load ptr, ptr %i.as, align 8, !tbaa !92
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph84.i
  %i.sp = phi ptr [ %.pre106.i, %bb.ck ], [ %i.sl, %.lr.ph84.i ] ; 3 uses
  %i.sq = phi ptr [ %.pre.i47, %bb.ck ], [ %i.sm, %.lr.ph84.i ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 3 uses
  store ptr %i.sr, ptr %i.at, align 8, !tbaa !88
  store i32 -1, ptr %i.sq, align 4, !tbaa !61
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.sp to i64
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = icmp ult i64 %i.su, %i.se
  br i1 %i.sv, label %.lr.ph84.i, label %._crit_edge85.i, !llvm.loop !126

._crit_edge85.i:                                  ; preds = %bb.cl, %._crit_edge.i46
  %.lcssa.i = phi ptr [ %i.sg, %._crit_edge.i46 ], [ %i.sp, %bb.cl ] ; 2 uses
  %i.sw = load i32, ptr %i.sb, align 4, !tbaa !61
  store i32 %i.sw, ptr %.lcssa.i, align 4, !tbaa !61
  %i.sx = load ptr, ptr %i.t, align 8, !tbaa !8
  %.06687.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 4 ; 2 uses
  %.not6888.i = icmp eq ptr %.06687.i, %i.sa
  br i1 %.not6888.i, label %._crit_edge92.i, label %.lr.ph91.i

._crit_edge92.i:                                  ; preds = %.lr.ph91.i, %._crit_edge85.i
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %i.y, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !127
  store <3 x ptr> %.sroa.0.0.copyload, ptr %i.as, align 8
  br i1 %.not80.i, label %sort_deduced_clause.exit, label %.lr.ph97.i

.lr.ph91.i:                                       ; preds = %._crit_edge85.i, %.lr.ph91.i
  %.06689.i = phi ptr [ %.066.i, %.lr.ph91.i ], [ %.06687.i, %._crit_edge85.i ] ; 2 uses
  %i.sy = load i32, ptr %.06689.i, align 4, !tbaa !61 ; 2 uses
  %i.sz = lshr i32 %i.sy, 1
  %i.ta = zext nneg i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.sx, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !74
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [16 x i8], ptr %i.rq, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 12 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !101 ; 2 uses
  %i.th = add i32 %i.tg, 1
  store i32 %i.th, ptr %i.tf, align 4, !tbaa !101
  %i.ti = zext i32 %i.tg to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.i, i64 %i.ti
  store i32 %i.sy, ptr %i.tj, align 4, !tbaa !61
  %.066.i = getelementptr inbounds nuw i8, ptr %.06689.i, i64 4 ; 2 uses
  %.not68.i = icmp eq ptr %.066.i, %i.sa
  br i1 %.not68.i, label %._crit_edge92.i, label %.lr.ph91.i, !llvm.loop !129

.lr.ph97.i:                                       ; preds = %._crit_edge92.i, %.lr.ph97.i
  %.195.i = phi i32 [ %i.tp, %.lr.ph97.i ], [ 1, %._crit_edge92.i ]
  %.16594.i = phi ptr [ %i.tk, %.lr.ph97.i ], [ %i.rs, %._crit_edge92.i ]
  %i.tk = getelementptr inbounds i8, ptr %.16594.i, i64 -4 ; 3 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !61
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [16 x i8], ptr %i.rq, i64 %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 12 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !101 ; 2 uses
  %i.tq = sub i32 %i.tp, %.195.i
  store i32 %i.tq, ptr %i.to, align 4, !tbaa !101
  %.not69.i = icmp eq ptr %i.tk, %i.rr
  br i1 %.not69.i, label %sort_deduced_clause.exit, label %.lr.ph97.i, !llvm.loop !130

end_hunk_1
