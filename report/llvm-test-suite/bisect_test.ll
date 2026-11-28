Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/bisect_test?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [11 x i8] c"%5d %.15e\0A\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [20 x i8] c"eps2 = %e,  k = %d\0A\00", align 1, !guid !11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @test_matrix(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !19 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 4
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next18, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %3 = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.e = uitofp nneg <2 x i32> %step.add to <2 x double> ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x double> %3, ptr %i.f, align 8, !tbaa !13
  store <2 x double> %i.e, ptr %4, align 8, !tbaa !13
  %5 = fmul nnan <2 x double> %3, %3              ; 2 uses
  %i.g = fmul nnan <2 x double> %i.e, %i.e        ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %6 = fmul <2 x double> %5, %5
  %i.i = fmul <2 x double> %i.g, %i.g
  %7 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x double> %6, ptr %i.h, align 8, !tbaa !13
  store <2 x double> %i.i, ptr %7, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next18 = add <2 x i32> %vec.ind, splat (i32 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19
  %i.k = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  store double %i.l, ptr %i.m, align 8, !tbaa !13
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.o = uitofp nneg i32 %i.n to double           ; 2 uses
  %i.p = fmul nnan double %i.o, %i.o              ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.ph
  %i.r = fmul double %i.p, %i.p
  store double %i.r, ptr %i.q, align 8, !tbaa !13
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader19 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = add nsw i64 %wide.trip.count, -1
  %i.t = icmp eq i64 %indvars.iv.ph, %i.s
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.v, ptr %i.w, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.y = uitofp nneg i32 %i.x to double           ; 2 uses
  %i.z = fmul nnan double %i.y, %i.y              ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ab = fmul double %i.z, %i.z
  store double %i.ab, ptr %i.aa, align 8, !tbaa !13
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ad = uitofp nneg i32 %i.ac to double
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double %i.ad, ptr %i.ae, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ag = uitofp nneg i32 %i.af to double         ; 2 uses
  %i.ah = fmul nnan double %i.ag, %i.ag           ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = fmul double %i.ah, %i.ah
  store double %i.aj, ptr %i.ai, align 8, !tbaa !13
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 !guid !26 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.j = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %i.b) ; 0 uses
  %i.l = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.d) ; 0 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !7
  call void @dallocvector(i32 noundef %i.m, ptr noundef nonnull %i.f) #5
  %i.n = load i32, ptr %i.b, align 4, !tbaa !7
  call void @dallocvector(i32 noundef %i.n, ptr noundef nonnull %i.g) #5
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7
  call void @dallocvector(i32 noundef %i.o, ptr noundef nonnull %i.h) #5
  %i.p = load i32, ptr %i.b, align 4, !tbaa !7
  call void @dallocvector(i32 noundef %i.p, ptr noundef nonnull %i.i) #5
  %i.q = load i32, ptr %i.a, align 4, !tbaa !7
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph16, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.s = load i32, ptr %i.b, align 4, !tbaa !7
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph18, label %._crit_edge19

.lr.ph16:                                         ; preds = %bb.a, %._crit_edge
  %.014 = phi i32 [ %i.cm, %._crit_edge ], [ 0, %bb.a ]
  %i.u = load i32, ptr %i.b, align 4, !tbaa !7    ; 7 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !29   ; 6 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !29   ; 11 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 3 uses
  %i.y = icmp sgt i32 %i.u, 0
  br i1 %i.y, label %.lr.ph.preheader.i, label %test_matrix.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph16
  %i.z = ptrtoaddr ptr %i.v to i64
  %wide.trip.count.i = zext nneg i32 %i.u to i64  ; 9 uses
  %min.iters.check46 = icmp ult i32 %i.u, 4
  %i.aa = sub i64 %i.x, %i.z
  %diff.check48 = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check46, i1 true, i1 %diff.check48
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %.lr.ph.preheader.i
  %n.vec50 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next53, %vector.body51 ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph49 ], [ %vec.ind.next55, %vector.body51 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %2 = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.ab = uitofp nneg <2 x i32> %step.add to <2 x double> ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index52 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %2, ptr %i.ac, align 8, !tbaa !13
  store <2 x double> %i.ab, ptr %3, align 8, !tbaa !13
  %4 = fmul nnan <2 x double> %2, %2              ; 2 uses
  %i.ad = fmul nnan <2 x double> %i.ab, %i.ab     ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index52 ; 2 uses
  %5 = fmul <2 x double> %4, %4
  %i.af = fmul <2 x double> %i.ad, %i.ad
  %6 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %5, ptr %i.ae, align 8, !tbaa !13
  store <2 x double> %i.af, ptr %6, align 8, !tbaa !13
  %index.next53 = add nuw i64 %index52, 4         ; 2 uses
  %vec.ind.next55 = add <2 x i32> %vec.ind, splat (i32 4)
  %i.ag = icmp eq i64 %index.next53, %n.vec50
  br i1 %i.ag, label %middle.block56, label %vector.body51, !llvm.loop !20

middle.block56:                                   ; preds = %vector.body51
  %cmp.n57 = icmp eq i64 %n.vec50, %wide.trip.count.i
  br i1 %cmp.n57, label %.lr.ph, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block56
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec50, %middle.block56 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ah = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.ph
  store double %i.ai, ptr %i.aj, align 8, !tbaa !13
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i.prol to i32
  %i.al = uitofp nneg i32 %i.ak to double         ; 2 uses
  %i.am = fmul nnan double %i.al, %i.al           ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.ph
  %i.ao = fmul double %i.am, %i.am
  store double %i.ao, ptr %i.an, align 8, !tbaa !13
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ap = add nsw i64 %wide.trip.count.i, -1
  %i.aq = icmp eq i64 %indvars.iv.i.ph, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  store double %i.as, ptr %i.at, align 8, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.av = uitofp nneg i32 %i.au to double         ; 2 uses
  %i.aw = fmul nnan double %i.av, %i.av           ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ay = fmul double %i.aw, %i.aw
  store double %i.ay, ptr %i.ax, align 8, !tbaa !13
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ba = uitofp nneg i32 %i.az to double
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !13
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.bd = uitofp nneg i32 %i.bc to double         ; 2 uses
  %i.be = fmul nnan double %i.bd, %i.bd           ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.bg = fmul double %i.be, %i.be
  store double %i.bg, ptr %i.bf, align 8, !tbaa !13
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.lr.ph, label %.lr.ph.i, !llvm.loop !21

test_matrix.exit:                                 ; preds = %.lr.ph16
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !29
  %.pre24 = load ptr, ptr %i.i, align 8, !tbaa !29
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block56
  %.pre26 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 8 uses
  %.pre2427 = load ptr, ptr %i.i, align 8, !tbaa !29 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  %min.iters.check = icmp ult i32 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.pre242737 = ptrtoaddr ptr %.pre2427 to i64    ; 2 uses
  %.pre2638 = ptrtoaddr ptr %.pre26 to i64        ; 2 uses
  %i.bh = sub i64 %.pre2638, %.pre242737
  %diff.check = icmp ugt i64 %i.bh, -32
  %i.bi = sub i64 %i.x, %.pre2638
  %diff.check39 = icmp ugt i64 %i.bi, -32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  %i.bj = sub i64 %i.x, %.pre242737
  %diff.check40 = icmp ugt i64 %i.bj, -32
  %conflict.rdx41 = or i1 %conflict.rdx, %diff.check40
  br i1 %conflict.rdx41, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <2 x double>, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %wide.load42 = load <2 x double>, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bm = fmul <2 x double> %wide.load, %wide.load
  %i.bn = fmul <2 x double> %wide.load42, %wide.load42
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x double> %i.bm, ptr %i.bo, align 8, !tbaa !13
  store <2 x double> %i.bn, ptr %i.bp, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x double> zeroinitializer, ptr %i.bq, align 8, !tbaa !13
  store <2 x double> zeroinitializer, ptr %i.br, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter59 = and i64 %wide.trip.count.i, 1
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.ph
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %indvars.iv.ph
  store double %i.bv, ptr %i.bw, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !13
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.by = add nsw i64 %wide.trip.count.i, -1
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.by
  br i1 %i.bz, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cc = fmul double %i.cb, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %indvars.iv
  store double %i.cc, ptr %i.cd, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ce, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 2 uses
  %i.ch = fmul double %i.cg, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %indvars.iv.next
  store double %i.ch, ptr %i.ci, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %test_matrix.exit
  %.pre2431 = phi ptr [ %.pre24, %test_matrix.exit ], [ %.pre2427, %middle.block ], [ %.pre2427, %scalar.ph ], [ %.pre2427, %scalar.ph.prol.loopexit ]
  %.pre29 = phi ptr [ %.pre, %test_matrix.exit ], [ %.pre26, %middle.block ], [ %.pre26, %scalar.ph ], [ %.pre26, %scalar.ph.prol.loopexit ] ; 2 uses
  store double 0.000000e+00, ptr %.pre29, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !13
  %i.ck = load double, ptr %i.d, align 8, !tbaa !13
  %i.cl = getelementptr inbounds i8, ptr %.pre2431, i64 -8
  call void @dbisect(ptr noundef %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %.pre29, i32 noundef %i.u, i32 noundef 1, i32 noundef %i.u, double noundef %i.ck, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cl) #5
  %i.cm = add nuw nsw i32 %.014, 1                ; 2 uses
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !7
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph16, label %.preheader, !llvm.loop !24

.lr.ph18:                                         ; preds = %.preheader, %.lr.ph18
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph18 ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 3 uses
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv21
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13
  %i.cs = trunc nuw nsw i64 %indvars.iv.next22 to i32
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cs, double noundef %i.cr) ; 0 uses
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !7
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next22, %i.cv
  br i1 %i.cw, label %.lr.ph18, label %._crit_edge19, !llvm.loop !25

._crit_edge19:                                    ; preds = %.lr.ph18, %.preheader
  %i.cx = load double, ptr %i.e, align 8, !tbaa !13
  %i.cy = load i32, ptr %i.c, align 4, !tbaa !7
  %i.cz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.cx, i32 noundef %i.cy) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3
end_hunk_0
