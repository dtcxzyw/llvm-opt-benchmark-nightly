Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dspgst?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DSPGST\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Nonunit\00", align 1
@c__1 = internal global i32 1, align 4
@c_b9 = internal global double -1.000000e+00, align 8
@c_b11 = internal global double 1.000000e+00, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1

; Function Attrs: nounwind uwtable
define void @dspgst_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 36 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca double, align 8                   ; 8 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.h = getelementptr inbounds i8, ptr %4, i64 -8 ; 9 uses
  %i.i = getelementptr inbounds i8, ptr %3, i64 -8 ; 10 uses
  store i32 0, ptr %5, align 4, !tbaa !8
  %i.j = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #4
  %i.k = load i32, ptr %0, align 4, !tbaa !8
  %i.l = add i32 %i.k, -4
  %or.cond = icmp ult i32 %i.l, -3
  br i1 %or.cond, label %.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 0                     ; 3 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %.not172 = icmp eq i32 %i.m, 0
  br i1 %.not172, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr %2, align 4, !tbaa !8      ; 8 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pr = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %.not173 = icmp eq i32 %.pr, 0
  br i1 %.not173, label %bb.f, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.c, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.c ], [ -3, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %i.p = phi i32 [ %.pr, %bb.e ], [ %.sink, %.thread.sink.split ]
  %i.q = sub nsw i32 0, %i.p
  store i32 %i.q, ptr %i.a, align 4, !tbaa !8
  %i.r = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %0, align 4, !tbaa !8
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.d, align 4, !tbaa !8
  %.not180192 = icmp eq i32 %i.n, 0
  br i1 %.not180192, label %.loopexit, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.h, %.lr.ph195
  %.0163194 = phi i32 [ %i.v, %.lr.ph195 ], [ 0, %bb.h ] ; 2 uses
  %storemerge179193 = phi i32 [ %i.ap, %.lr.ph195 ], [ 1, %bb.h ]
  %i.u = add nsw i32 %.0163194, 1
  %i.v = add nsw i32 %.0163194, %storemerge179193 ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !9 ; 2 uses
  %i.z = sext i32 %i.u to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.z ; 4 uses
  call void @dtpsv_(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef nonnull %i.aa, ptr noundef nonnull @c__1) #4
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !8
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !8
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.z ; 2 uses
  call void @dspmv_(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b9, ptr noundef %3, ptr noundef nonnull %i.ad, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b11, ptr noundef nonnull %i.aa, ptr noundef nonnull @c__1) #4
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !8
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.b, align 4, !tbaa !8
  %i.ag = fdiv double 1.000000e+00, %i.y
  store double %i.ag, ptr %i.c, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.aa, ptr noundef nonnull @c__1) #4
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !8
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !8
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !9
  %i.al = call double @ddot_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ad, ptr noundef nonnull @c__1) #4
  %i.am = fsub double %i.ak, %i.al
  %i.an = fdiv double %i.am, %i.y
  store double %i.an, ptr %i.aj, align 8, !tbaa !9
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1                    ; 2 uses
  store i32 %i.ap, ptr %i.d, align 4, !tbaa !8
  %.not180.not = icmp slt i32 %i.ao, %i.n
  br i1 %.not180.not, label %.lr.ph195, label %.loopexit, !llvm.loop !11

bb.i:                                             ; preds = %bb.g
  %.not178196 = icmp eq i32 %i.n, 0
  br i1 %.not178196, label %.loopexit, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.i, %bb.k
  %.0198 = phi i32 [ %i.ar, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %.0165197 = phi i32 [ %i.br, %bb.k ], [ 1, %bb.i ] ; 9 uses
  %i.aq = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %reass.sub200 = sub i32 %.0198, %.0165197
  %6 = add i32 %reass.sub200, 1
  %i.ar = add i32 %6, %i.aq                       ; 2 uses
  %i.as = sext i32 %.0198 to i64                  ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.as ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !9
  %i.av = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.as
  %i.aw = load double, ptr %i.av, align 8, !tbaa !9 ; 3 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fdiv double %i.au, %i.ax                ; 2 uses
  store double %i.ay, ptr %i.at, align 8, !tbaa !9
  %i.az = icmp slt i32 %.0165197, %i.aq
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph199
  %i.ba = sub nsw i32 %i.aq, %.0165197
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !8
  %i.bb = fdiv double 1.000000e+00, %i.aw
  store double %i.bb, ptr %i.c, align 8, !tbaa !9
  %7 = add nsw i32 %.0198, 1
  %i.bc = sext i32 %7 to i64                      ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bc ; 5 uses
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bd, ptr noundef nonnull @c__1) #4
  %i.be = fmul double %i.ay, -5.000000e-01
  store double %i.be, ptr %i.e, align 8, !tbaa !9
  %i.bf = load i32, ptr %2, align 4, !tbaa !8
  %i.bg = sub nsw i32 %i.bf, %.0165197
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !8
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bc ; 3 uses
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bd, ptr noundef nonnull @c__1) #4
  %i.bi = load i32, ptr %2, align 4, !tbaa !8
  %i.bj = sub nsw i32 %i.bi, %.0165197
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !8
  %i.bk = sext i32 %i.ar to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bk
  call void @dspr2_(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b9, ptr noundef nonnull %i.bd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bl) #4
  %i.bm = load i32, ptr %2, align 4, !tbaa !8
  %i.bn = sub nsw i32 %i.bm, %.0165197
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !8
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bd, ptr noundef nonnull @c__1) #4
  %i.bo = load i32, ptr %2, align 4, !tbaa !8
  %i.bp = sub nsw i32 %i.bo, %.0165197
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !8
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bk
  call void @dtpsv_(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bd, ptr noundef nonnull @c__1) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph199
  %i.br = add nuw nsw i32 %.0165197, 1
  %.not178.not = icmp slt i32 %.0165197, %i.n
  br i1 %.not178.not, label %.lr.ph199, label %.loopexit, !llvm.loop !13

bb.l:                                             ; preds = %bb.f
  %.not175188 = icmp eq i32 %i.n, 0               ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not175188, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bs = zext nneg i32 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.1187 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bv, %.lr.ph ] ; 2 uses
  %i.bt = add nuw nsw i32 %.1187, 1
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  %i.bv = add nuw nsw i32 %.1187, %i.bu           ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bw
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !9
  store double %i.ca, ptr %i.g, align 8, !tbaa !9
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %i.cc = add nsw i32 %i.cb, -1                   ; 5 uses
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !8
  %i.cd = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cd ; 5 uses
  call void @dtpmv_(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef nonnull %i.ce, ptr noundef nonnull @c__1) #4
  %i.cf = fmul double %i.by, 5.000000e-01
  store double %i.cf, ptr %i.e, align 8, !tbaa !9
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cd ; 3 uses
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ce, ptr noundef nonnull @c__1) #4
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !8
  call void @dspr2_(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b11, ptr noundef nonnull %i.ce, ptr noundef nonnull @c__1, ptr noundef nonnull %i.cg, ptr noundef nonnull @c__1, ptr noundef %3) #4
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !8
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ce, ptr noundef nonnull @c__1) #4
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ce, ptr noundef nonnull @c__1) #4
  %i.ch = load double, ptr %i.g, align 8, !tbaa !9 ; 2 uses
  %i.ci = fmul double %i.ch, %i.ch
  %i.cj = fmul double %i.by, %i.ci
  store double %i.cj, ptr %i.bx, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not176.not = icmp samesign ult i64 %indvars.iv, %i.bs
  br i1 %.not176.not, label %.lr.ph, label %.loopexit, !llvm.loop !14

bb.n:                                             ; preds = %bb.l
  br i1 %.not175188, label %.loopexit, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.n, %.lr.ph191
  %.1164190 = phi i32 [ %i.cn, %.lr.ph191 ], [ 1, %bb.n ] ; 3 uses
  %i.ck = phi i32 [ %i.dj, %.lr.ph191 ], [ 1, %bb.n ] ; 7 uses
  %i.cl = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %reass.sub = sub i32 %.1164190, %i.ck
  %i.cm = add i32 %reass.sub, 1
  %i.cn = add i32 %i.cm, %i.cl                    ; 2 uses
  %i.co = sext i32 %.1164190 to i64               ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.co ; 3 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !9
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.co ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9 ; 2 uses
  store double %i.cs, ptr %i.f, align 8, !tbaa !9
  %i.ct = sub nsw i32 %i.cl, %i.ck
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !8
  %i.cu = add nsw i32 %.1164190, 1
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cv ; 2 uses
  %i.cy = call double @ddot_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cw, ptr noundef nonnull @c__1, ptr noundef nonnull %i.cx, ptr noundef nonnull @c__1) #4
  %i.cz = call double @llvm.fmuladd.f64(double %i.cq, double %i.cs, double %i.cy)
  store double %i.cz, ptr %i.cp, align 8, !tbaa !9
  %i.da = load i32, ptr %2, align 4, !tbaa !8
  %i.db = sub nsw i32 %i.da, %i.ck
  store i32 %i.db, ptr %i.b, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.cw, ptr noundef nonnull @c__1) #4
  %i.dc = load i32, ptr %2, align 4, !tbaa !8
  %i.dd = sub nsw i32 %i.dc, %i.ck
  store i32 %i.dd, ptr %i.b, align 4, !tbaa !8
  %i.de = sext i32 %i.cn to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.de
  call void @dspmv_(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b11, ptr noundef nonnull %i.df, ptr noundef nonnull %i.cx, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b11, ptr noundef nonnull %i.cw, ptr noundef nonnull @c__1) #4
  %i.dg = load i32, ptr %2, align 4, !tbaa !8
  %i.dh = add i32 %i.dg, 1
  %i.di = sub i32 %i.dh, %i.ck
  store i32 %i.di, ptr %i.b, align 4, !tbaa !8
  call void @dtpmv_(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull @c__1) #4
  %i.dj = add nuw nsw i32 %i.ck, 1
  %.not175.not = icmp slt i32 %i.ck, %i.n
  br i1 %.not175.not, label %.lr.ph191, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph191, %.lr.ph195, %bb.k, %bb.m, %bb.n, %bb.h, %bb.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dtpsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dspmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dspr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtpmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
end_hunk_0
