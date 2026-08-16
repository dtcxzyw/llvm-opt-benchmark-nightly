loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @dlarnv_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x double], align 16          ; 23 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds i8, ptr %3, i64 -8 ; 2 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %.not60 = icmp slt i32 %i.d, 1
  br i1 %.not60, label %._crit_edge, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.a
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.loopexit
  %indvars.iv78 = phi i64 [ 1, %.lr.ph63.preheader ], [ %indvars.iv.next79, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv67 = phi i32 [ -1, %.lr.ph63.preheader ], [ %indvars.iv.next68, %.loopexit ] ; 3 uses
  %i.u = shl i64 %indvar, 9
  %scevgep = getelementptr i8, ptr %3, i64 %i.u
  %i.v = load i32, ptr %2, align 4, !tbaa !8      ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.x = sub i32 %i.v, %i.w                       ; 4 uses
  %i.y = call i32 @llvm.smin.i32(i32 %i.x, i32 63) ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  %i.aa = load i32, ptr %0, align 4, !tbaa !8
  %i.ab = icmp eq i32 %i.aa, 3
  %i.ac = zext i1 %i.ab to i32
  %storemerge = shl i32 %i.z, %i.ac
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !8
  call void @dlaruv_(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #5
  %i.ad = load i32, ptr %0, align 4, !tbaa !8
  switch i32 %i.ad, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader48
    i32 3, label %.preheader50
  ]

.preheader50:                                     ; preds = %.lr.ph63
  %.not4552 = icmp slt i32 %i.x, 0
  br i1 %.not4552, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader50
  %i.ae = add i32 %i.v, %indvars.iv67
  %smin = call i32 @llvm.smin.i32(i32 %i.ae, i32 63)
  %i.af = add nsw i32 %smin, 2
  %wide.trip.count = zext i32 %i.af to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv78
  br label %.lr.ph

.preheader48:                                     ; preds = %.lr.ph63
  %.not4654 = icmp slt i32 %i.x, 0
  br i1 %.not4654, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader48
  %i.ag = add i32 %i.v, %indvars.iv67
  %smin72 = call i32 @llvm.smin.i32(i32 %i.ag, i32 63)
  %i.ah = add nsw i32 %smin72, 2
  %wide.trip.count73 = zext i32 %i.ah to i64      ; 2 uses
  %invariant.gep82 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv78 ; 18 uses
  %i.ai = add nsw i64 %wide.trip.count73, -1      ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph56.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i64 %i.ai, 16
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, -16                     ; 6 uses
  %i.ak = or disjoint i64 %n.vec, 1
  %wide.load = load <4 x double>, ptr %i.a, align 16, !tbaa !9
  %wide.load86 = load <4 x double>, ptr %i.f, align 16, !tbaa !9
  %wide.load87 = load <4 x double>, ptr %i.g, align 16, !tbaa !9
  %wide.load88 = load <4 x double>, ptr %i.h, align 16, !tbaa !9
  %i.al = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.am = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load86, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.an = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load87, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.ao = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load88, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.ap = getelementptr i8, ptr %invariant.gep82, i64 32
  %i.aq = getelementptr i8, ptr %invariant.gep82, i64 64
  %i.ar = getelementptr i8, ptr %invariant.gep82, i64 96
  store <4 x double> %i.al, ptr %invariant.gep82, align 8, !tbaa !9
  store <4 x double> %i.am, ptr %i.ap, align 8, !tbaa !9
  store <4 x double> %i.an, ptr %i.aq, align 8, !tbaa !9
  store <4 x double> %i.ao, ptr %i.ar, align 8, !tbaa !9
  %i.as = icmp eq i64 %n.vec, 16
  br i1 %i.as, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x double>, ptr %i.i, align 16, !tbaa !9
  %wide.load86.1 = load <4 x double>, ptr %i.j, align 16, !tbaa !9
  %wide.load87.1 = load <4 x double>, ptr %i.k, align 16, !tbaa !9
  %wide.load88.1 = load <4 x double>, ptr %i.l, align 16, !tbaa !9
  %i.at = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load.1, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.au = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load86.1, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.av = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load87.1, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.aw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load88.1, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.ax = getelementptr i8, ptr %invariant.gep82, i64 128
  %i.ay = getelementptr i8, ptr %invariant.gep82, i64 160
  %i.az = getelementptr i8, ptr %invariant.gep82, i64 192
  %i.ba = getelementptr i8, ptr %invariant.gep82, i64 224
  store <4 x double> %i.at, ptr %i.ax, align 8, !tbaa !9
  store <4 x double> %i.au, ptr %i.ay, align 8, !tbaa !9
  store <4 x double> %i.av, ptr %i.az, align 8, !tbaa !9
  store <4 x double> %i.aw, ptr %i.ba, align 8, !tbaa !9
  %i.bb = icmp eq i64 %n.vec, 32
  br i1 %i.bb, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x double>, ptr %i.m, align 16, !tbaa !9
  %wide.load86.2 = load <4 x double>, ptr %i.n, align 16, !tbaa !9
  %wide.load87.2 = load <4 x double>, ptr %i.o, align 16, !tbaa !9
  %wide.load88.2 = load <4 x double>, ptr %i.p, align 16, !tbaa !9
  %i.bc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load.2, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load86.2, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.be = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load87.2, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load88.2, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bg = getelementptr i8, ptr %invariant.gep82, i64 256
  %i.bh = getelementptr i8, ptr %invariant.gep82, i64 288
  %i.bi = getelementptr i8, ptr %invariant.gep82, i64 320
  %i.bj = getelementptr i8, ptr %invariant.gep82, i64 352
  store <4 x double> %i.bc, ptr %i.bg, align 8, !tbaa !9
  store <4 x double> %i.bd, ptr %i.bh, align 8, !tbaa !9
  store <4 x double> %i.be, ptr %i.bi, align 8, !tbaa !9
  store <4 x double> %i.bf, ptr %i.bj, align 8, !tbaa !9
  %i.bk = icmp eq i64 %n.vec, 48
  br i1 %i.bk, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x double>, ptr %i.q, align 16, !tbaa !9
  %wide.load86.3 = load <4 x double>, ptr %i.r, align 16, !tbaa !9
  %wide.load87.3 = load <4 x double>, ptr %i.s, align 16, !tbaa !9
  %wide.load88.3 = load <4 x double>, ptr %i.t, align 16, !tbaa !9
  %i.bl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load.3, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load86.3, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load87.3, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load88.3, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.bp = getelementptr i8, ptr %invariant.gep82, i64 384
  %i.bq = getelementptr i8, ptr %invariant.gep82, i64 416
  %i.br = getelementptr i8, ptr %invariant.gep82, i64 448
  %i.bs = getelementptr i8, ptr %invariant.gep82, i64 480
  store <4 x double> %i.bl, ptr %i.bp, align 8, !tbaa !9
  store <4 x double> %i.bm, ptr %i.bq, align 8, !tbaa !9
  store <4 x double> %i.bn, ptr %i.br, align 8, !tbaa !9
  store <4 x double> %i.bo, ptr %i.bs, align 8, !tbaa !9
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.ai, -4                    ; 3 uses
  %i.bt = or disjoint i64 %n.vec89, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = or disjoint i64 %index90, 1             ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.a, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %wide.load91 = load <4 x double>, ptr %i.bw, align 16, !tbaa !9
  %i.bx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load91, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.by = getelementptr [8 x i8], ptr %invariant.gep82, i64 %i.bu
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  store <4 x double> %i.bx, ptr %i.bz, align 8, !tbaa !9
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next92, %n.vec89
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.ai, %n.vec89
  br i1 %cmp.n93, label %.loopexit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv69.ph = phi i64 [ 1, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph56

.preheader:                                       ; preds = %.lr.ph63
  %.not4757 = icmp slt i32 %i.x, 0
  br i1 %.not4757, label %.loopexit, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader
  %i.cb = shl nuw nsw i32 %i.y, 3
  %narrow = add nuw nsw i32 %i.cb, 8
  %i.cc = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.cc, i1 false), !tbaa !9
  br label %.loopexit

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph56 ], [ %indvars.iv69.ph, %.lr.ph56.preheader ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv69
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !9
  %i.cg = call double @llvm.fmuladd.f64(double %i.cf, double 2.000000e+00, double -1.000000e+00)
  %gep83 = getelementptr [8 x i8], ptr %invariant.gep82, i64 %indvars.iv69
  %i.ch = getelementptr i8, ptr %gep83, i64 -8
  store double %i.cg, ptr %i.ch, align 8, !tbaa !9
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond74 = icmp eq i64 %indvars.iv.next70, %wide.trip.count73
  br i1 %exitcond74, label %.loopexit, label %.lr.ph56, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.idx = shl i64 %indvars.iv, 4
  %i.ci = getelementptr i8, ptr %i.a, i64 %.idx   ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load double, ptr %i.cj, align 16, !tbaa !9
  %i.cl = call double @log(double noundef %i.ck) #5
  %i.cm = fmul double %i.cl, -2.000000e+00
  %i.cn = call double @sqrt(double noundef %i.cm) #5
  %i.co = getelementptr i8, ptr %i.ci, i64 -8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !9
  %i.cq = fmul double %i.cp, f0x401921FB54442D18
  %i.cr = call double @cos(double noundef %i.cq) #5
  %i.cs = fmul double %i.cn, %i.cr
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ct = getelementptr i8, ptr %gep, i64 -8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph56, %middle.block, %vec.epilog.middle.block, %.lr.ph59.preheader, %.preheader50, %.preheader48, %.preheader, %.lr.ph63
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 64 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next79, %i.e
  %indvars.iv.next68 = add i32 %indvars.iv67, -64
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph63, !llvm.loop !18

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @dlaruv_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

end_hunk_0
