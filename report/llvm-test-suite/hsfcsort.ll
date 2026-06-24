begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @hsfc2sort(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = mul nsw i64 %i.b, 12
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #8 ; 18 uses
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.05872 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  %indvars92 = trunc i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.h, i64 1
  %i.k = fmul <2 x double> %i.j, splat (double f0x41EFFFFFFFE00000)
  %i.l = fptoui <2 x double> %i.k to <2 x i32>
  store <2 x i32> %i.l, ptr %i.a, align 8, !tbaa !4
  %i.m = sext i32 %.05872 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  call void @hsfc2d(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %i.n) #9
  %i.o = add i32 %.05872, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  store i32 %indvars92, ptr %i.q, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = add i32 %.05872, 3
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.a
  %i.s = icmp ugt i32 %5, 2
  br i1 %i.s, label %.loopexit, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b
  %i.t = icmp ugt i32 %5, 2
  br i1 %i.t, label %.lr.ph82.preheader, label %bb.c

.lr.ph82.preheader:                               ; preds = %._crit_edge.thread
  %xtraiter = and i32 %0, 1
  %i.u = icmp eq i32 %0, 1
  br i1 %i.u, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i32 %0, -2
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %.15980 = phi i32 [ 0, %.lr.ph82.preheader.new ], [ %i.ai, %.lr.ph82 ] ; 3 uses
  %.06279 = phi i32 [ 1, %.lr.ph82.preheader.new ], [ %i.ah, %.lr.ph82 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.1, %.lr.ph82 ]
  %i.v = sext i32 %.15980 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.v
  %i.x = sext i32 %.06279 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %4, i64 %i.x
  %i.z = load <2 x i32>, ptr %i.w, align 4, !tbaa !4
  store <2 x i32> %i.z, ptr %i.y, align 4, !tbaa !4
  %i.aa = add i32 %.06279, %5                     ; 2 uses
  %i.ab = add i32 %.15980, 3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ae
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !tbaa !4
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !4
  %i.ah = add i32 %i.aa, %5                       ; 2 uses
  %i.ai = add i32 %.15980, 6                      ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.thread.loopexit106.unr-lcssa, label %.lr.ph82, !llvm.loop !12

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.aj = icmp eq i32 %5, 2
  %i.ak = icmp ne i32 %0, 0
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %.lr.ph78.preheader, label %.loopexit

.lr.ph78.preheader:                               ; preds = %bb.c
  %xtraiter108 = and i32 %0, 1
  %i.al = icmp eq i32 %0, 1
  br i1 %i.al, label %.lr.ph78.epil.preheader, label %.lr.ph78.preheader.new

.lr.ph78.preheader.new:                           ; preds = %.lr.ph78.preheader
  %unroll_iter111 = and i32 %0, -2
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78, %.lr.ph78.preheader.new
  %.26076 = phi i32 [ 0, %.lr.ph78.preheader.new ], [ %i.az, %.lr.ph78 ] ; 3 uses
  %.16375 = phi i32 [ 1, %.lr.ph78.preheader.new ], [ %i.ay, %.lr.ph78 ] ; 3 uses
  %niter112 = phi i32 [ 0, %.lr.ph78.preheader.new ], [ %niter112.next.1, %.lr.ph78 ]
  %i.am = sext i32 %.26076 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sext i32 %.16375 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ap
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !4
  %i.ar = add i32 %.26076, 3
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sext i32 %.16375 to i64
  %i.aw = getelementptr [4 x i8], ptr %4, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !4
  %i.ay = add i32 %.16375, 4                      ; 2 uses
  %i.az = add i32 %.26076, 6                      ; 2 uses
  %niter112.next.1 = add i32 %niter112, 2         ; 2 uses
  %niter112.ncmp.1 = icmp eq i32 %niter112.next.1, %unroll_iter111
  br i1 %niter112.ncmp.1, label %.loopexit.thread.loopexit.unr-lcssa, label %.lr.ph78, !llvm.loop !13

.loopexit.thread.loopexit.unr-lcssa:              ; preds = %.lr.ph78
  %lcmp.mod109.not = icmp eq i32 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.loopexit.thread, label %.lr.ph78.epil.preheader

.lr.ph78.epil.preheader:                          ; preds = %.loopexit.thread.loopexit.unr-lcssa, %.lr.ph78.preheader
  %.26076.epil.init = phi i32 [ 0, %.lr.ph78.preheader ], [ %i.az, %.loopexit.thread.loopexit.unr-lcssa ]
  %.16375.epil.init = phi i32 [ 1, %.lr.ph78.preheader ], [ %i.ay, %.loopexit.thread.loopexit.unr-lcssa ]
  %lcmp.mod110 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod110)
  %i.ba = sext i32 %.26076.epil.init to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sext i32 %.16375.epil.init to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !4
  br label %.loopexit.thread

.loopexit.thread.loopexit106.unr-lcssa:           ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %.loopexit.thread.loopexit106.unr-lcssa, %.lr.ph82.preheader
  %.15980.epil.init = phi i32 [ 0, %.lr.ph82.preheader ], [ %i.ai, %.loopexit.thread.loopexit106.unr-lcssa ]
  %.06279.epil.init = phi i32 [ 1, %.lr.ph82.preheader ], [ %i.ah, %.loopexit.thread.loopexit106.unr-lcssa ]
  %lcmp.mod107 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod107)
  %i.bf = sext i32 %.15980.epil.init to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bf
  %i.bh = sext i32 %.06279.epil.init to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bh
  %i.bj = load <2 x i32>, ptr %i.bg, align 4, !tbaa !4
  store <2 x i32> %i.bj, ptr %i.bi, align 4, !tbaa !4
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph82.epil.preheader, %.loopexit.thread.loopexit106.unr-lcssa, %.lr.ph78.epil.preheader, %.loopexit.thread.loopexit.unr-lcssa
  call void @qsort(ptr noundef nonnull %i.d, i64 noundef %i.b, i64 noundef 12, ptr noundef nonnull @ui2comp) #9
  br label %.lr.ph87.preheader

.loopexit:                                        ; preds = %._crit_edge, %bb.c
  call void @qsort(ptr noundef %i.d, i64 noundef %i.b, i64 noundef 12, ptr noundef nonnull @ui2comp) #9
  br i1 %.not, label %._crit_edge88, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %min.iters.check = icmp ult i32 %0, 17
  br i1 %min.iters.check, label %.lr.ph87.preheader105, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph87.preheader
  %ident.check = icmp ne i32 %5, 1
  %i.bk = add i32 %0, -715827883
  %i.bl = icmp ult i32 %i.bk, -715827882
  %i.bm = or i1 %ident.check, %i.bl
  br i1 %i.bm, label %.lr.ph87.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i32 %0, 3                       ; 2 uses
  %i.bn = icmp eq i32 %n.mod.vf, 0
  %i.bo = select i1 %i.bn, i32 4, i32 %n.mod.vf
  %n.vec = sub nsw i32 %0, %i.bo                  ; 3 uses
  %i.bp = mul i32 %n.vec, 3
  %i.bq = add i32 %i.bp, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = mul i32 %index, 3                       ; 4 uses
  %i.bs = add i32 %i.br, 5
  %i.bt = add i32 %i.br, 8
  %i.bu = add i32 %i.br, 11
  %i.bv = sext i32 %i.bs to i64
  %i.bw = sext i32 %i.bt to i64
  %i.bx = sext i32 %i.bu to i64
  %i.by = sext i32 %i.br to i64
  %i.bz = getelementptr [4 x i8], ptr %i.d, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bv
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bw
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bx
  %i.ce = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cg = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.ci = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cf, i64 1
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.cg, i64 2
  %i.cl = insertelement <4 x i32> %i.ck, i32 %i.ch, i64 3
  %i.cm = add <4 x i32> %i.cl, %broadcast.splat
  %i.cn = sext i32 %index to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cn
  store <4 x i32> %i.cm, ptr %i.co, align 4, !tbaa !4
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cp = icmp eq i32 %index.next, %n.vec
  br i1 %i.cp, label %.lr.ph87.preheader105, label %vector.body, !llvm.loop !14

.lr.ph87.preheader105:                            ; preds = %vector.body, %vector.scevcheck, %.lr.ph87.preheader
  %.36184.ph = phi i32 [ 2, %vector.scevcheck ], [ 2, %.lr.ph87.preheader ], [ %i.bq, %vector.body ] ; 3 uses
  %.26483.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph87.preheader ], [ %n.vec, %vector.body ] ; 7 uses
  %i.cq = sub i32 %0, %.26483.ph
  %.neg = add i32 %.26483.ph, 1
  %xtraiter113 = and i32 %i.cq, 1
  %lcmp.mod114.not = icmp eq i32 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader105
  %i.cr = sext i32 %.36184.ph to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = add i32 %i.ct, %3
  %i.cv = sext i32 %.26483.ph to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cv
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !4
  %i.cx = add nuw nsw i32 %.26483.ph, 1
  %i.cy = add i32 %.26483.ph, %5
  %i.cz = add i32 %.36184.ph, 3
  br label %.lr.ph87.prol.loopexit

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader105
  %.385.unr = phi i32 [ %.26483.ph, %.lr.ph87.preheader105 ], [ %i.cx, %.lr.ph87.prol ]
  %.36184.unr = phi i32 [ %.36184.ph, %.lr.ph87.preheader105 ], [ %i.cz, %.lr.ph87.prol ]
  %.26483.unr = phi i32 [ %.26483.ph, %.lr.ph87.preheader105 ], [ %i.cy, %.lr.ph87.prol ]
  %i.da = icmp eq i32 %0, %.neg
  br i1 %i.da, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %.385 = phi i32 [ %i.dp, %.lr.ph87 ], [ %.385.unr, %.lr.ph87.prol.loopexit ]
  %.36184 = phi i32 [ %i.dr, %.lr.ph87 ], [ %.36184.unr, %.lr.ph87.prol.loopexit ] ; 3 uses
  %.26483 = phi i32 [ %i.dq, %.lr.ph87 ], [ %.26483.unr, %.lr.ph87.prol.loopexit ] ; 2 uses
  %i.db = sext i32 %.36184 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = add i32 %i.dd, %3
  %i.df = sext i32 %.26483 to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.df
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !4
  %i.dh = add i32 %.26483, %5                     ; 2 uses
  %i.di = add i32 %.36184, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = add i32 %i.dl, %3
  %i.dn = sext i32 %i.dh to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dn
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !4
  %i.dp = add nuw nsw i32 %.385, 2                ; 2 uses
  %i.dq = add i32 %i.dh, %5
  %i.dr = add i32 %.36184, 6
  %exitcond99.not.1 = icmp eq i32 %i.dp, %0
  br i1 %exitcond99.not.1, label %._crit_edge88, label %.lr.ph87, !llvm.loop !17

._crit_edge88:                                    ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %.loopexit
  call void @free(ptr noundef %i.d) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @hsfc2d(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @ui2comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %i.a, %i.b
  %i.d = select i1 %i.c, i32 -1, i32 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %.not11 = icmp eq i32 %i.f, %i.h
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %i.f, %i.h
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = phi i32 [ %i.d, %bb.b ], [ %i.j, %bb.d ], [ 0, %bb.c ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @hsfc3sort(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = shl nsw i64 %i.b, 4
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #8 ; 21 uses
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.trip.count = zext i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.08199 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.b ] ; 3 uses
  %indvars126 = trunc i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.g = load double, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load double, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = insertelement <2 x double> poison, double %i.g, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.i, i64 1
  %i.n = fmul <2 x double> %i.m, splat (double f0x41EFFFFFFFE00000)
  %i.o = fptoui <2 x double> %i.n to <2 x i32>
  store <2 x i32> %i.o, ptr %i.a, align 8, !tbaa !4
  %i.p = fmul double %i.k, f0x41EFFFFFFFE00000
  %i.q = fptoui double %i.p to i32
  store i32 %i.q, ptr %i.e, align 8, !tbaa !4
  %i.r = sext i32 %.08199 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r
  call void @hsfc3d(ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %i.s) #9
  %i.t = or disjoint i32 %.08199, 3
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.u
  store i32 %indvars126, ptr %i.v, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = add i32 %.08199, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.a
  %or.cond141 = icmp ugt i32 %6, 2
  br i1 %or.cond141, label %.loopexit, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b
  %i.x = icmp ugt i32 %6, 3
  br i1 %i.x, label %.lr.ph114.preheader, label %.thread

.lr.ph114.preheader:                              ; preds = %._crit_edge.thread
  %xtraiter149 = and i32 %0, 1
  %i.y = icmp eq i32 %0, 1
  br i1 %i.y, label %.lr.ph114.epil.preheader, label %.lr.ph114.preheader.new

.lr.ph114.preheader.new:                          ; preds = %.lr.ph114.preheader
  %unroll_iter152 = and i32 %0, -2
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114, %.lr.ph114.preheader.new
  %.182112 = phi i32 [ 0, %.lr.ph114.preheader.new ], [ %i.as, %.lr.ph114 ] ; 3 uses
  %.086111 = phi i32 [ 1, %.lr.ph114.preheader.new ], [ %i.ar, %.lr.ph114 ] ; 2 uses
  %niter153 = phi i32 [ 0, %.lr.ph114.preheader.new ], [ %niter153.next.1, %.lr.ph114 ]
  %i.z = sext i32 %.182112 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z ; 2 uses
  %i.ab = sext i32 %.086111 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ab ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.aa, align 4, !tbaa !4
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr i8, ptr %i.ac, i64 8
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %i.ah = add i32 %.086111, %6                    ; 2 uses
  %i.ai = sext i32 %.182112 to i64
  %i.aj = getelementptr [4 x i8], ptr %i.d, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load <2 x i32>, ptr %i.ak, align 4, !tbaa !4
  store <2 x i32> %i.an, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr i8, ptr %i.aj, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr i8, ptr %i.am, i64 8
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.ar = add i32 %i.ah, %6                       ; 2 uses
  %i.as = add i32 %.182112, 8                     ; 2 uses
  %niter153.next.1 = add i32 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i32 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %.loopexit.thread.loopexit146.unr-lcssa, label %.lr.ph114, !llvm.loop !19

.thread:                                          ; preds = %._crit_edge.thread
  %i.at = icmp eq i32 %6, 3
  br i1 %i.at, label %.lr.ph110.preheader, label %bb.c

.lr.ph110.preheader:                              ; preds = %.thread
  %xtraiter = and i32 %0, 1
  %i.au = icmp eq i32 %0, 1
  br i1 %i.au, label %.lr.ph110.epil.preheader, label %.lr.ph110.preheader.new

.lr.ph110.preheader.new:                          ; preds = %.lr.ph110.preheader
  %unroll_iter = and i32 %0, -2
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110, %.lr.ph110.preheader.new
  %.283108 = phi i32 [ 0, %.lr.ph110.preheader.new ], [ %i.bi, %.lr.ph110 ] ; 3 uses
  %.187107 = phi i32 [ 1, %.lr.ph110.preheader.new ], [ %i.bh, %.lr.ph110 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph110.preheader.new ], [ %niter.next.1, %.lr.ph110 ]
  %i.av = sext i32 %.283108 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.av
  %i.ax = sext i32 %.187107 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ax
  %i.az = load <2 x i32>, ptr %i.aw, align 4, !tbaa !4
  store <2 x i32> %i.az, ptr %i.ay, align 4, !tbaa !4
  %i.ba = add i32 %.187107, 3
  %i.bb = sext i32 %.283108 to i64
  %i.bc = getelementptr [4 x i8], ptr %i.d, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = sext i32 %i.ba to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.be
  %i.bg = load <2 x i32>, ptr %i.bd, align 4, !tbaa !4
  store <2 x i32> %i.bg, ptr %i.bf, align 4, !tbaa !4
  %i.bh = add i32 %.187107, 6                     ; 2 uses
  %i.bi = add i32 %.283108, 8                     ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.thread.loopexit147.unr-lcssa, label %.lr.ph110, !llvm.loop !20

bb.c:                                             ; preds = %._crit_edge, %.thread
  %i.bj = icmp samesign ugt i32 %6, 1
  %i.bk = icmp ne i32 %0, 0
  %or.cond = and i1 %i.bj, %i.bk
  br i1 %or.cond, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %bb.c
  %xtraiter154 = and i32 %0, 1
  %i.bl = icmp eq i32 %0, 1
  br i1 %i.bl, label %.lr.ph106.epil.preheader, label %.lr.ph106.preheader.new

.lr.ph106.preheader.new:                          ; preds = %.lr.ph106.preheader
  %unroll_iter157 = and i32 %0, -2
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106, %.lr.ph106.preheader.new
  %.384104 = phi i32 [ 0, %.lr.ph106.preheader.new ], [ %i.bz, %.lr.ph106 ] ; 3 uses
  %.288103 = phi i32 [ 1, %.lr.ph106.preheader.new ], [ %i.by, %.lr.ph106 ] ; 3 uses
  %niter158 = phi i32 [ 0, %.lr.ph106.preheader.new ], [ %niter158.next.1, %.lr.ph106 ]
  %i.bm = sext i32 %.384104 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = sext i32 %.288103 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !4
  %i.br = sext i32 %.384104 to i64
  %i.bs = getelementptr [4 x i8], ptr %i.d, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = sext i32 %.288103 to i64
  %i.bw = getelementptr [4 x i8], ptr %5, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store i32 %i.bu, ptr %i.bx, align 4, !tbaa !4
  %i.by = add i32 %.288103, 4                     ; 2 uses
  %i.bz = add i32 %.384104, 8                     ; 2 uses
  %niter158.next.1 = add i32 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i32 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %.loopexit.thread.loopexit.unr-lcssa, label %.lr.ph106, !llvm.loop !21

.loopexit.thread.loopexit.unr-lcssa:              ; preds = %.lr.ph106
  %lcmp.mod155.not = icmp eq i32 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.loopexit.thread, label %.lr.ph106.epil.preheader

.lr.ph106.epil.preheader:                         ; preds = %.loopexit.thread.loopexit.unr-lcssa, %.lr.ph106.preheader
  %.384104.epil.init = phi i32 [ 0, %.lr.ph106.preheader ], [ %i.bz, %.loopexit.thread.loopexit.unr-lcssa ]
  %.288103.epil.init = phi i32 [ 1, %.lr.ph106.preheader ], [ %i.by, %.loopexit.thread.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.ca = sext i32 %.384104.epil.init to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = sext i32 %.288103.epil.init to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cd
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !4
  br label %.loopexit.thread

.loopexit.thread.loopexit146.unr-lcssa:           ; preds = %.lr.ph114
  %lcmp.mod150.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.loopexit.thread, label %.lr.ph114.epil.preheader

.lr.ph114.epil.preheader:                         ; preds = %.loopexit.thread.loopexit146.unr-lcssa, %.lr.ph114.preheader
  %.182112.epil.init = phi i32 [ 0, %.lr.ph114.preheader ], [ %i.as, %.loopexit.thread.loopexit146.unr-lcssa ]
  %.086111.epil.init = phi i32 [ 1, %.lr.ph114.preheader ], [ %i.ar, %.loopexit.thread.loopexit146.unr-lcssa ]
  %lcmp.mod151 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.cf = sext i32 %.182112.epil.init to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cf ; 2 uses
  %i.ch = sext i32 %.086111.epil.init to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ch ; 2 uses
  %i.cj = load <2 x i32>, ptr %i.cg, align 4, !tbaa !4
  store <2 x i32> %i.cj, ptr %i.ci, align 4, !tbaa !4
  %i.ck = getelementptr i8, ptr %i.cg, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr i8, ptr %i.ci, i64 8
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  br label %.loopexit.thread

.loopexit.thread.loopexit147.unr-lcssa:           ; preds = %.lr.ph110
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph110.epil.preheader

.lr.ph110.epil.preheader:                         ; preds = %.loopexit.thread.loopexit147.unr-lcssa, %.lr.ph110.preheader
  %.283108.epil.init = phi i32 [ 0, %.lr.ph110.preheader ], [ %i.bi, %.loopexit.thread.loopexit147.unr-lcssa ]
  %.187107.epil.init = phi i32 [ 1, %.lr.ph110.preheader ], [ %i.bh, %.loopexit.thread.loopexit147.unr-lcssa ]
  %lcmp.mod148 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.cn = sext i32 %.283108.epil.init to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cn
  %i.cp = sext i32 %.187107.epil.init to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cp
  %i.cr = load <2 x i32>, ptr %i.co, align 4, !tbaa !4
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !4
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph110.epil.preheader, %.loopexit.thread.loopexit147.unr-lcssa, %.lr.ph114.epil.preheader, %.loopexit.thread.loopexit146.unr-lcssa, %.lr.ph106.epil.preheader, %.loopexit.thread.loopexit.unr-lcssa
  call void @qsort(ptr noundef nonnull %i.d, i64 noundef %i.b, i64 noundef 16, ptr noundef nonnull @ui3comp) #9
  br label %.lr.ph119.preheader

.loopexit:                                        ; preds = %._crit_edge, %bb.c
  call void @qsort(ptr noundef %i.d, i64 noundef %i.b, i64 noundef 16, ptr noundef nonnull @ui3comp) #9
  br i1 %.not, label %._crit_edge120, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %min.iters.check = icmp ult i32 %0, 17
  br i1 %min.iters.check, label %.lr.ph119.preheader145, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph119.preheader
  %ident.check = icmp ne i32 %6, 1
  %i.cs = add i32 %0, -536870913
  %i.ct = icmp ult i32 %i.cs, -536870912
  %i.cu = or i1 %ident.check, %i.ct
  br i1 %i.cu, label %.lr.ph119.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i32 %0, 3                       ; 2 uses
  %i.cv = icmp eq i32 %n.mod.vf, 0
  %i.cw = select i1 %i.cv, i32 4, i32 %n.mod.vf
  %n.vec = sub nsw i32 %0, %i.cw                  ; 3 uses
  %i.cx = shl i32 %n.vec, 2
  %i.cy = or disjoint i32 %i.cx, 3
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = shl i32 %index, 2                       ; 4 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %i.d, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 12
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr [4 x i8], ptr %i.d, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 28
  %i.dg = sext i32 %i.cz to i64
  %i.dh = getelementptr [4 x i8], ptr %i.d, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 44
  %i.dj = sext i32 %i.cz to i64
  %i.dk = getelementptr [4 x i8], ptr %i.d, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 60
  %i.dm = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.dn = load i32, ptr %i.df, align 4, !tbaa !4
  %i.do = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dp = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dq = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %i.dr = insertelement <4 x i32> %i.dq, i32 %i.dn, i64 1
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 2
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 3
  %i.du = add <4 x i32> %i.dt, %broadcast.splat
  %i.dv = sext i32 %index to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dv
  store <4 x i32> %i.du, ptr %i.dw, align 4, !tbaa !4
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.dx = icmp eq i32 %index.next, %n.vec
  br i1 %i.dx, label %.lr.ph119.preheader145, label %vector.body, !llvm.loop !22

.lr.ph119.preheader145:                           ; preds = %vector.body, %vector.scevcheck, %.lr.ph119.preheader
  %.485116.ph = phi i32 [ 3, %vector.scevcheck ], [ 3, %.lr.ph119.preheader ], [ %i.cy, %vector.body ] ; 3 uses
  %.389115.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph119.preheader ], [ %n.vec, %vector.body ] ; 7 uses
  %i.dy = sub i32 %0, %.389115.ph
  %.neg = add i32 %.389115.ph, 1
  %xtraiter159 = and i32 %i.dy, 1
  %lcmp.mod160.not = icmp eq i32 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.lr.ph119.prol.loopexit, label %.lr.ph119.prol

.lr.ph119.prol:                                   ; preds = %.lr.ph119.preheader145
  %i.dz = sext i32 %.485116.ph to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = add i32 %i.eb, %4
  %i.ed = sext i32 %.389115.ph to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ed
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !4
  %i.ef = add nuw nsw i32 %.389115.ph, 1
  %i.eg = add i32 %.389115.ph, %6
  %i.eh = add i32 %.485116.ph, 4
  br label %.lr.ph119.prol.loopexit

.lr.ph119.prol.loopexit:                          ; preds = %.lr.ph119.prol, %.lr.ph119.preheader145
  %.4117.unr = phi i32 [ %.389115.ph, %.lr.ph119.preheader145 ], [ %i.ef, %.lr.ph119.prol ]
  %.485116.unr = phi i32 [ %.485116.ph, %.lr.ph119.preheader145 ], [ %i.eh, %.lr.ph119.prol ]
  %.389115.unr = phi i32 [ %.389115.ph, %.lr.ph119.preheader145 ], [ %i.eg, %.lr.ph119.prol ]
  %i.ei = icmp eq i32 %0, %.neg
  br i1 %i.ei, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119
  %.4117 = phi i32 [ %i.ex, %.lr.ph119 ], [ %.4117.unr, %.lr.ph119.prol.loopexit ]
  %.485116 = phi i32 [ %i.ez, %.lr.ph119 ], [ %.485116.unr, %.lr.ph119.prol.loopexit ] ; 3 uses
  %.389115 = phi i32 [ %i.ey, %.lr.ph119 ], [ %.389115.unr, %.lr.ph119.prol.loopexit ] ; 2 uses
  %i.ej = sext i32 %.485116 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = add i32 %i.el, %4
  %i.en = sext i32 %.389115 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %5, i64 %i.en
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !4
  %i.ep = add i32 %.389115, %6                    ; 2 uses
  %i.eq = add i32 %.485116, 4
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = add i32 %i.et, %4
  %i.ev = sext i32 %i.ep to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ev
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !4
  %i.ex = add nuw nsw i32 %.4117, 2               ; 2 uses
  %i.ey = add i32 %i.ep, %6
  %i.ez = add i32 %.485116, 8
  %exitcond136.not.1 = icmp eq i32 %i.ex, %0
  br i1 %exitcond136.not.1, label %._crit_edge120, label %.lr.ph119, !llvm.loop !23

._crit_edge120:                                   ; preds = %.lr.ph119.prol.loopexit, %.lr.ph119, %.loopexit
  call void @free(ptr noundef %i.d) #9
  ret void
}

declare void @hsfc3d(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @ui3comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %i.a, %i.b
  %i.d = select i1 %i.c, i32 -1, i32 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %.not17 = icmp eq i32 %i.f, %i.h
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %i.f, %i.h
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %.not18 = icmp eq i32 %i.l, %i.n
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i32 %i.l, %i.n
  %i.p = select i1 %i.o, i32 -1, i32 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b
  %i.q = phi i32 [ %i.d, %bb.b ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ 0, %bb.e ]
  ret i32 %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11, !15}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11, !15, !16}
!23 = distinct !{!23, !11, !15}
end_hunk_0
