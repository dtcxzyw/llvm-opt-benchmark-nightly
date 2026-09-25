Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/bisect_test?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%5d %.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"eps2 = %e,  k = %d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @test_matrix(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 4
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind17 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next18, %vector.body ] ; 2 uses
  %i.e = uitofp nneg <2 x i32> %vec.ind17 to <2 x double>
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> %i.e, ptr %i.f, align 8, !tbaa !9
  %3 = trunc <2 x i64> %vec.ind to <2 x i32>
  %4 = add <2 x i32> %3, splat (i32 1)
  %i.g = uitofp nneg <2 x i32> %4 to <2 x double> ; 2 uses
  %i.h = fmul nnan <2 x double> %i.g, %i.g        ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.j = fmul <2 x double> %i.h, %i.h
  store <2 x double> %i.j, ptr %i.i, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next18 = add <2 x i32> %vec.ind17, splat (i32 2)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19
  %i.l = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  store double %i.m, ptr %i.n, align 8, !tbaa !9
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = uitofp nneg i32 %i.o to double           ; 2 uses
  %i.q = fmul nnan double %i.p, %i.p              ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.ph
  %i.s = fmul double %i.q, %i.q
  store double %i.s, ptr %i.r, align 8, !tbaa !9
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader19 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = add nsw i64 %wide.trip.count, -1
  %i.u = icmp eq i64 %indvars.iv.ph, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.w, ptr %i.x, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.z = uitofp nneg i32 %i.y to double           ; 2 uses
  %i.aa = fmul nnan double %i.z, %i.z             ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = fmul double %i.aa, %i.aa
  store double %i.ac, ptr %i.ab, align 8, !tbaa !9
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double %i.ae, ptr %i.af, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ah = uitofp nneg i32 %i.ag to double         ; 2 uses
  %i.ai = fmul nnan double %i.ah, %i.ah           ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = fmul double %i.ai, %i.ai
  store double %i.ak, ptr %i.aj, align 8, !tbaa !9
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 {
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
  %.014 = phi i32 [ %i.cn, %._crit_edge ], [ 0, %bb.a ]
  %i.u = load i32, ptr %i.b, align 4, !tbaa !7    ; 7 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !23   ; 6 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !23   ; 11 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 3 uses
  %i.y = icmp sgt i32 %i.u, 0
  br i1 %i.y, label %.lr.ph.preheader.i, label %test_matrix.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph16
  %i.z = ptrtoaddr ptr %i.v to i64
  %wide.trip.count.i = zext nneg i32 %i.u to i64  ; 9 uses
  %min.iters.check41 = icmp eq i32 %i.u, 1
  %i.aa = sub i64 %i.x, %i.z
  %diff.check39 = icmp ugt i64 %i.aa, -16
  %or.cond = select i1 %min.iters.check41, i1 true, i1 %diff.check39
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.preheader.i
  %n.vec43 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next47, %vector.body44 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph42 ], [ %vec.ind.next, %vector.body44 ] ; 2 uses
  %vec.ind46 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph42 ], [ %vec.ind.next48, %vector.body44 ] ; 2 uses
  %i.ab = uitofp nneg <2 x i32> %vec.ind46 to <2 x double>
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index45
  store <2 x double> %i.ab, ptr %i.ac, align 8, !tbaa !9
  %2 = trunc <2 x i64> %vec.ind to <2 x i32>
  %3 = add <2 x i32> %2, splat (i32 1)
  %i.ad = uitofp nneg <2 x i32> %3 to <2 x double> ; 2 uses
  %i.ae = fmul nnan <2 x double> %i.ad, %i.ad     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index45
  %i.ag = fmul <2 x double> %i.ae, %i.ae
  store <2 x double> %i.ag, ptr %i.af, align 8, !tbaa !9
  %index.next47 = add nuw i64 %index45, 2         ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next48 = add <2 x i32> %vec.ind46, splat (i32 2)
  %i.ah = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.ah, label %middle.block49, label %vector.body44, !llvm.loop !15

middle.block49:                                   ; preds = %vector.body44
  %cmp.n50 = icmp eq i64 %n.vec43, %wide.trip.count.i
  br i1 %cmp.n50, label %.lr.ph, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block49
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec43, %middle.block49 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ai = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.ph
  store double %i.aj, ptr %i.ak, align 8, !tbaa !9
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next.i.prol to i32
  %i.am = uitofp nneg i32 %i.al to double         ; 2 uses
  %i.an = fmul nnan double %i.am, %i.am           ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.ph
  %i.ap = fmul double %i.an, %i.an
  store double %i.ap, ptr %i.ao, align 8, !tbaa !9
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aq = add nsw i64 %wide.trip.count.i, -1
  %i.ar = icmp eq i64 %indvars.iv.i.ph, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.at = uitofp nneg i32 %i.as to double
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  store double %i.at, ptr %i.au, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.av = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.aw = uitofp nneg i32 %i.av to double         ; 2 uses
  %i.ax = fmul nnan double %i.aw, %i.aw           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.az = fmul double %i.ax, %i.ax
  store double %i.az, ptr %i.ay, align 8, !tbaa !9
  %i.ba = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  store double %i.bb, ptr %i.bc, align 8, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.be = uitofp nneg i32 %i.bd to double         ; 2 uses
  %i.bf = fmul nnan double %i.be, %i.be           ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.bh = fmul double %i.bf, %i.bf
  store double %i.bh, ptr %i.bg, align 8, !tbaa !9
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.lr.ph, label %.lr.ph.i, !llvm.loop !16

test_matrix.exit:                                 ; preds = %.lr.ph16
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !23
  %.pre24 = load ptr, ptr %i.i, align 8, !tbaa !23
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block49
  %.pre26 = load ptr, ptr %i.h, align 8, !tbaa !23 ; 8 uses
  %.pre2427 = load ptr, ptr %i.i, align 8, !tbaa !23 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  %min.iters.check = icmp ult i32 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.pre242732 = ptrtoaddr ptr %.pre2427 to i64    ; 2 uses
  %.pre2633 = ptrtoaddr ptr %.pre26 to i64        ; 2 uses
  %i.bi = sub i64 %.pre2633, %.pre242732
  %diff.check = icmp ugt i64 %i.bi, -32
  %i.bj = sub i64 %i.x, %.pre2633
  %diff.check34 = icmp ugt i64 %i.bj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check34
  %i.bk = sub i64 %i.x, %.pre242732
  %diff.check35 = icmp ugt i64 %i.bk, -32
  %conflict.rdx36 = or i1 %conflict.rdx, %diff.check35
  br i1 %conflict.rdx36, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <2 x double>, ptr %i.bl, align 8, !tbaa !9 ; 2 uses
  %wide.load37 = load <2 x double>, ptr %i.bm, align 8, !tbaa !9 ; 2 uses
  %i.bn = fmul <2 x double> %wide.load, %wide.load
  %i.bo = fmul <2 x double> %wide.load37, %wide.load37
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x double> %i.bn, ptr %i.bp, align 8, !tbaa !9
  store <2 x double> %i.bo, ptr %i.bq, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x double> zeroinitializer, ptr %i.br, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.bs, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter52 = and i64 %wide.trip.count.i, 1
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.ph
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !9 ; 2 uses
  %i.bw = fmul double %i.bv, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %indvars.iv.ph
  store double %i.bw, ptr %i.bx, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !9
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bz = add nsw i64 %wide.trip.count.i, -1
  %i.ca = icmp eq i64 %indvars.iv.ph, %i.bz
  br i1 %i.ca, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !9 ; 2 uses
  %i.cd = fmul double %i.cc, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %indvars.iv
  store double %i.cd, ptr %i.ce, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.cf, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9 ; 2 uses
  %i.ci = fmul double %i.ch, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.pre26, i64 %indvars.iv.next
  store double %i.ci, ptr %i.cj, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.pre2427, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %test_matrix.exit
  %.pre2431 = phi ptr [ %.pre24, %test_matrix.exit ], [ %.pre2427, %middle.block ], [ %.pre2427, %scalar.ph ], [ %.pre2427, %scalar.ph.prol.loopexit ]
  %.pre29 = phi ptr [ %.pre, %test_matrix.exit ], [ %.pre26, %middle.block ], [ %.pre26, %scalar.ph ], [ %.pre26, %scalar.ph.prol.loopexit ] ; 2 uses
  store double 0.000000e+00, ptr %.pre29, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !9
  %i.cl = load double, ptr %i.d, align 8, !tbaa !9
  %i.cm = getelementptr inbounds i8, ptr %.pre2431, i64 -8
  call void @dbisect(ptr noundef %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %.pre29, i32 noundef %i.u, i32 noundef 1, i32 noundef %i.u, double noundef %i.cl, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cm) #5
  %i.cn = add nuw nsw i32 %.014, 1                ; 2 uses
  %i.co = load i32, ptr %i.a, align 4, !tbaa !7
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph16, label %.preheader, !llvm.loop !19

.lr.ph18:                                         ; preds = %.preheader, %.lr.ph18
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph18 ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 3 uses
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv21
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9
  %i.ct = trunc nuw nsw i64 %indvars.iv.next22 to i32
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ct, double noundef %i.cs) ; 0 uses
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !7
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next22, %i.cw
  br i1 %i.cx, label %.lr.ph18, label %._crit_edge19, !llvm.loop !20

._crit_edge19:                                    ; preds = %.lr.ph18, %.preheader
  %i.cy = load double, ptr %i.e, align 8, !tbaa !9
  %i.cz = load i32, ptr %i.c, align 4, !tbaa !7
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.cy, i32 noundef %i.cz) ; 0 uses
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

end_hunk_0
