Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_lu?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @cs_lu(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !22
  %i.k = tail call ptr @cs_malloc(i32 noundef %i.f, i64 noundef 8) #5 ; 10 uses
  %i.l = shl nsw i32 %i.f, 1
  %i.m = tail call ptr @cs_malloc(i32 noundef %i.l, i64 noundef 4) #5 ; 5 uses
  %i.n = tail call ptr @cs_calloc(i32 noundef 1, i64 noundef 32) #5 ; 5 uses
  %i.o = icmp ne ptr %i.k, null
  %i.p = icmp ne ptr %i.m, null
  %or.cond3 = select i1 %i.o, i1 %i.p, i1 false
  %i.q = icmp ne ptr %i.n, null
  %or.cond5 = select i1 %or.cond3, i1 %i.q, i1 false
  br i1 %or.cond5, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.r = fptosi <2 x double> %i.j to <2 x i32>    ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = tail call ptr @cs_spalloc(i32 noundef %i.f, i32 noundef %i.f, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) #5 ; 10 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !25
  %i.u = extractelement <2 x i32> %i.r, i64 1
  %i.v = tail call ptr @cs_spalloc(i32 noundef %i.f, i32 noundef %i.f, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) #5 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = tail call ptr @cs_malloc(i32 noundef %i.f, i64 noundef 4) #5 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !27
  %i.z = icmp ne ptr %i.t, null
  %i.aa = icmp ne ptr %i.v, null
  %or.cond7 = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = icmp ne ptr %i.x, null
  %or.cond9 = select i1 %or.cond7, i1 %i.ab, i1 false
  br i1 %or.cond9, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %i.ag = icmp sgt i32 %i.f, 0
  br i1 %i.ag, label %.lr.ph246, label %.preheader218

.preheader218:                                    ; preds = %bb.e
  %.not214227 = icmp slt i32 %i.f, 0
  br i1 %.not214227, label %._crit_edge247.thread, label %.preheader

.preheader:                                       ; preds = %.preheader218
  %3 = add nuw nsw i32 %i.f, 1
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, i8 0, i64 %5, i1 false), !tbaa !29
  br label %._crit_edge247.thread

.lr.ph246:                                        ; preds = %bb.e
  %i.ah = zext nneg i32 %i.f to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.ai, i1 false), !tbaa !22
  %i.aj = zext nneg i32 %i.f to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 -1, i64 %i.ak, i1 false), !tbaa !29
  %i.al = add nuw i32 %i.f, 1
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, i8 0, i64 %i.an, i1 false), !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.not217 = icmp eq ptr %i.h, null
  %wide.trip.count266 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %wide.trip.count261 = zext nneg i32 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph246, %._crit_edge241
  %indvars.iv263 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next264, %._crit_edge241 ] ; 5 uses
  %.0245 = phi i32 [ 0, %.lr.ph246 ], [ %i.cx, %._crit_edge241 ] ; 3 uses
  %.0184244 = phi i32 [ 0, %.lr.ph246 ], [ %.2186, %._crit_edge241 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv263
  store i32 %.0184244, ptr %i.as, align 4, !tbaa !29
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv263
  store i32 %.0245, ptr %i.at, align 4, !tbaa !29
  %i.au = add nsw i32 %.0184244, %i.f
  %i.av = load i32, ptr %i.t, align 8, !tbaa !30  ; 2 uses
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = shl nsw i32 %i.av, 1
  %i.ay = add nsw i32 %i.ax, %i.f
  %i.az = tail call i32 @cs_sprealloc(ptr noundef nonnull %i.t, i32 noundef %i.ay) #5
  %.not215 = icmp eq i32 %i.az, 0
  br i1 %.not215, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = add nsw i32 %.0245, %i.f
  %i.bb = load i32, ptr %i.v, align 8, !tbaa !30  ; 2 uses
  %i.bc = icmp sgt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = shl nsw i32 %i.bb, 1
  %i.be = add nsw i32 %i.bd, %i.f
  %i.bf = tail call i32 @cs_sprealloc(ptr noundef nonnull %i.v, i32 noundef %i.be) #5
  %.not216 = icmp eq i32 %i.bf, 0
  br i1 %.not216, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv263 to i32 ; 3 uses
  br i1 %.not217, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv263
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bn = phi i32 [ %i.bm, %bb.k ], [ %i.bk, %bb.j ] ; 3 uses
  %i.bo = tail call i32 @cs_spsolve(ptr noundef nonnull %i.t, ptr noundef nonnull %0, i32 noundef %i.bn, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k, ptr noundef nonnull %i.x, i32 noundef 1) #5 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, %i.f
  br i1 %i.bp, label %.lr.ph234.preheader, label %.sink.split

.lr.ph234.preheader:                              ; preds = %bb.l
  %i.bq = sext i32 %i.bo to i64
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph234.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.1233 = phi i32 [ %.0245, %.lr.ph234.preheader ], [ %.2, %bb.p ] ; 4 uses
  %.0194231 = phi i32 [ -1, %.lr.ph234.preheader ], [ %.1195, %bb.p ] ; 2 uses
  %.0197230 = phi double [ -1.000000e+00, %.lr.ph234.preheader ], [ %.1198, %bb.p ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !29 ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph234
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bt
  %i.by = load double, ptr %i.bx, align 8, !tbaa !22
  %i.bz = tail call double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.ca = fcmp ogt double %i.bz, %.0197230
  br i1 %i.ca, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph234
  %i.cb = sext i32 %.1233 to i64                  ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cb
  store i32 %i.bv, ptr %i.cc, align 4, !tbaa !29
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bt
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !22
  %i.cf = add nsw i32 %.1233, 1
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cb
  store double %i.ce, ptr %i.cg, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.1198 = phi double [ %i.bz, %bb.n ], [ %.0197230, %bb.m ], [ %.0197230, %bb.o ] ; 3 uses
  %.1195 = phi i32 [ %i.bs, %bb.n ], [ %.0194231, %bb.m ], [ %.0194231, %bb.o ] ; 4 uses
  %.2 = phi i32 [ %.1233, %bb.n ], [ %.1233, %bb.m ], [ %i.cf, %bb.o ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph234, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.p
  %i.ch = icmp eq i32 %.1195, -1
  %i.ci = fcmp ole double %.1198, 0.000000e+00
  %or.cond11 = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond11, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.cj = sext i32 %i.bn to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %.lr.ph240.preheader

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cj
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = tail call double @llvm.fabs.f64(double %i.co)
  %i.cq = fmul double %2, %.1198
  %i.cr = fcmp ult double %i.cp, %i.cq
  %spec.select = select i1 %i.cr, i32 %.1195, i32 %i.bn
  br label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %bb.r, %bb.q
  %.2196 = phi i32 [ %.1195, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %i.cs = sext i32 %.2196 to i64                  ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22 ; 2 uses
  %i.cv = sext i32 %.2 to i64                     ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cv
  store i32 %i.bk, ptr %i.cw, align 4, !tbaa !29
  %i.cx = add nsw i32 %.2, 1                      ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cv
  store double %i.cu, ptr %i.cy, align 8, !tbaa !22
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cs
  store i32 %i.bk, ptr %i.cz, align 4, !tbaa !29
  %i.da = sext i32 %.0184244 to i64               ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.da
  store i32 %.2196, ptr %i.db, align 4, !tbaa !29
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.da
  store double 1.000000e+00, ptr %i.dc, align 8, !tbaa !22
  %i.dd = add nsw i32 %.0184244, 1
  %i.de = sext i32 %i.bo to i64
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %bb.t
  %indvars.iv258 = phi i64 [ %i.de, %.lr.ph240.preheader ], [ %indvars.iv.next259, %bb.t ] ; 2 uses
  %.1185238 = phi i32 [ %i.dd, %.lr.ph240.preheader ], [ %.2186, %bb.t ] ; 3 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv258
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29 ; 2 uses
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !29
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph240
  %i.dl = sext i32 %.1185238 to i64               ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.dl
  store i32 %i.dg, ptr %i.dm, align 4, !tbaa !29
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dh
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = fdiv double %i.do, %i.cu
  %i.dq = add nsw i32 %.1185238, 1
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.dl
  store double %i.dp, ptr %i.dr, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph240
  %.2186 = phi i32 [ %i.dq, %bb.s ], [ %.1185238, %.lr.ph240 ] ; 6 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dh
  store double 0.000000e+00, ptr %i.ds, align 8, !tbaa !22
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge241, label %.lr.ph240, !llvm.loop !9

._crit_edge241:                                   ; preds = %bb.t
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count266
  br i1 %exitcond267.not, label %._crit_edge247, label %bb.f, !llvm.loop !10
end_hunk_0
