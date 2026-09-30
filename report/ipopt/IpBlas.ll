Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpBlas?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt9IpBlasDotEiPKdiS1_i(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp sgt i32 %2, 0
  %i.e = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not24 = icmp eq i32 %0, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = sext i32 %2 to i64                       ; 5 uses
  %i.g = sext i32 %4 to i64                       ; 5 uses
  %xtraiter = and i32 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.028.prol = phi double [ %i.j, %.prol.preheader ], [ 0.000000e+00, %.lr.ph ]
  %.01927.prol = phi ptr [ %i.m, %.prol.preheader ], [ %3, %.lr.ph ] ; 2 uses
  %.02026.prol = phi i32 [ %i.k, %.prol.preheader ], [ %0, %.lr.ph ]
  %.02125.prol = phi ptr [ %i.l, %.prol.preheader ], [ %1, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.h = load double, ptr %.02125.prol, align 8, !tbaa !9
  %i.i = load double, ptr %.01927.prol, align 8, !tbaa !9
  %i.j = tail call double @llvm.fmuladd.f64(double %i.h, double %i.i, double %.028.prol) ; 3 uses
  %i.k = add nsw i32 %.02026.prol, -1             ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.02125.prol, i64 %i.f ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.01927.prol, i64 %i.g ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !16

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa.unr = phi double [ poison, %.lr.ph ], [ %i.j, %.prol.preheader ]
  %.028.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.j, %.prol.preheader ]
  %.01927.unr = phi ptr [ %3, %.lr.ph ], [ %i.m, %.prol.preheader ]
  %.02026.unr = phi i32 [ %0, %.lr.ph ], [ %i.k, %.prol.preheader ]
  %.02125.unr = phi ptr [ %1, %.lr.ph ], [ %i.l, %.prol.preheader ]
  %i.n = icmp ult i32 %0, 4
  br i1 %i.n, label %.loopexit, label %.lr.ph.new

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %2, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %4, ptr %i.c, align 4, !tbaa !11
  %i.o = call double @ddot_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.028 = phi double [ %i.ag, %.lr.ph.new ], [ %.028.unr, %.prol.loopexit ]
  %.01927 = phi ptr [ %i.aj, %.lr.ph.new ], [ %.01927.unr, %.prol.loopexit ] ; 2 uses
  %.02026 = phi i32 [ %i.ah, %.lr.ph.new ], [ %.02026.unr, %.prol.loopexit ]
  %.02125 = phi ptr [ %i.ai, %.lr.ph.new ], [ %.02125.unr, %.prol.loopexit ] ; 2 uses
  %i.p = load double, ptr %.02125, align 8, !tbaa !9
  %i.q = load double, ptr %.01927, align 8, !tbaa !9
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double %i.q, double %.028)
  %i.s = getelementptr inbounds [8 x i8], ptr %.02125, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.01927, i64 %i.g ; 2 uses
  %i.u = load double, ptr %i.s, align 8, !tbaa !9
  %i.v = load double, ptr %i.t, align 8, !tbaa !9
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.r)
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.f ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.g ; 2 uses
  %i.z = load double, ptr %i.x, align 8, !tbaa !9
  %i.aa = load double, ptr %i.y, align 8, !tbaa !9
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.aa, double %i.w)
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.f ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.g ; 2 uses
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !9
  %i.af = load double, ptr %i.ad, align 8, !tbaa !9
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.af, double %i.ab) ; 2 uses
  %i.ah = add nsw i32 %.02026, -4                 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.f
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.g
  %.not.3 = icmp eq i32 %i.ah, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !17

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.preheader, %bb.b
  %.018 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ag, %.lr.ph.new ]
  ret double %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt10IpBlasNrm2EiPKdi(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %2, ptr %i.b, align 4, !tbaa !11
  %i.c = call double @dnrm2_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret double %i.c
}

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt10IpBlasAsumEiPKdi(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %2, ptr %i.b, align 4, !tbaa !11
  %i.c = call double @dasum_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret double %i.c
}

declare double @dasum_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt11IpBlasIamaxEiPKdi(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %2, ptr %i.b, align 4, !tbaa !11
  %i.c = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.c
}

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %2, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %4, ptr %i.c, align 4, !tbaa !11
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not2026 = icmp eq i32 %0, 0
  br i1 %.not2026, label %.loopexit, label %.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.e = sext i32 %4 to i64                       ; 9 uses
  %.pre = load double, ptr %1, align 8, !tbaa !9  ; 9 uses
  %xtraiter = and i32 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.125.prol = phi i32 [ %i.f, %.prol.preheader ], [ %0, %.lr.ph ]
  %.11824.prol = phi ptr [ %i.g, %.prol.preheader ], [ %3, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  store double %.pre, ptr %.11824.prol, align 8, !tbaa !9
  %i.f = add nsw i32 %.125.prol, -1               ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %.11824.prol, i64 %i.e ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.125.unr = phi i32 [ %0, %.lr.ph ], [ %i.f, %.prol.preheader ]
  %.11824.unr = phi ptr [ %3, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %i.h = icmp ult i32 %0, 8
  br i1 %i.h, label %.loopexit, label %.lr.ph.new

.preheader:                                       ; preds = %bb.c
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %.lr.ph29.preheader, label %.lr.ph

.lr.ph29.preheader:                               ; preds = %.preheader
  %.pre31 = load double, ptr %1, align 8, !tbaa !9 ; 2 uses
  %i.i = zext i32 %0 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph29.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.preheader
  %n.vec = and i64 %i.i, 4294967292               ; 4 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %0, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %3, i64 %i.l
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.n  ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !9
  store <2 x double> %broadcast.splat, ptr %i.o, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %.lr.ph29.preheader37

.lr.ph29.preheader37:                             ; preds = %.lr.ph29.preheader, %middle.block
  %.028.ph = phi i32 [ %0, %.lr.ph29.preheader ], [ %i.k, %middle.block ]
  %.01727.ph = phi ptr [ %3, %.lr.ph29.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader37, %.lr.ph29
  %.028 = phi i32 [ %i.q, %.lr.ph29 ], [ %.028.ph, %.lr.ph29.preheader37 ]
  %.01727 = phi ptr [ %i.r, %.lr.ph29 ], [ %.01727.ph, %.lr.ph29.preheader37 ] ; 2 uses
  store double %.pre31, ptr %.01727, align 8, !tbaa !9
  %i.q = add nsw i32 %.028, -1                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01727, i64 8
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph29, !llvm.loop !20

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.125 = phi i32 [ %i.z, %.lr.ph.new ], [ %.125.unr, %.prol.loopexit ]
  %.11824 = phi ptr [ %i.aa, %.lr.ph.new ], [ %.11824.unr, %.prol.loopexit ] ; 2 uses
  store double %.pre, ptr %.11824, align 8, !tbaa !9
  %i.s = getelementptr inbounds [8 x i8], ptr %.11824, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.e ; 2 uses
  store double %.pre, ptr %i.y, align 8, !tbaa !9
  %i.z = add nsw i32 %.125, -8                    ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.e
  %.not.7 = icmp eq i32 %i.z, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph.new, !llvm.loop !21

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph29, %middle.block, %bb.c, %bb.b
  ret void
}

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !9
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %0, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %3, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %5, ptr %i.d, align 4, !tbaa !11
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not2026 = icmp eq i32 %0, 0
  br i1 %.not2026, label %.loopexit, label %.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.f = sext i32 %5 to i64                       ; 5 uses
  %xtraiter = and i32 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.125.prol = phi i32 [ %i.j, %.prol.preheader ], [ %0, %.lr.ph ]
  %.11824.prol = phi ptr [ %i.k, %.prol.preheader ], [ %4, %.lr.ph ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.g = load double, ptr %2, align 8, !tbaa !9
  %i.h = load double, ptr %.11824.prol, align 8, !tbaa !9
  %i.i = tail call double @llvm.fmuladd.f64(double %1, double %i.g, double %i.h)
  store double %i.i, ptr %.11824.prol, align 8, !tbaa !9
  %i.j = add nsw i32 %.125.prol, -1               ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.11824.prol, i64 %i.f ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !22

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.125.unr = phi i32 [ %0, %.lr.ph ], [ %i.j, %.prol.preheader ]
  %.11824.unr = phi ptr [ %4, %.lr.ph ], [ %i.k, %.prol.preheader ]
  %i.l = icmp ult i32 %0, 4
  br i1 %i.l, label %.loopexit, label %.lr.ph.new

.preheader:                                       ; preds = %bb.c
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %.lr.ph29.preheader, label %.lr.ph

.lr.ph29.preheader:                               ; preds = %.preheader
  %i.m = zext i32 %0 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph29.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph29.preheader
  %i.n = add i32 %0, -1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr i8, ptr %4, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = getelementptr i8, ptr %2, i64 8
  %bound0 = icmp ult ptr %4, %i.s
  %bound1 = icmp ult ptr %2, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph29.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4294967292               ; 4 uses
  %i.t = trunc nuw i64 %n.vec to i32
  %i.u = sub i32 %0, %i.t
  %i.v = shl nuw nsw i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %4, i64 %i.v
  %i.x = load double, ptr %2, align 8, !tbaa !9, !alias.scope !30
  %broadcast.splatinsert37 = insertelement <2 x double> poison, double %i.x, i64 0
  %broadcast.splat38 = shufflevector <2 x double> %broadcast.splatinsert37, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 3 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !31, !noalias !30
  %wide.load36 = load <2 x double>, ptr %i.z, align 8, !tbaa !9, !alias.scope !31, !noalias !30
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %broadcast.splat38, <2 x double> %wide.load)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %broadcast.splat38, <2 x double> %wide.load36)
  store <2 x double> %i.aa, ptr %next.gep, align 8, !tbaa !9, !alias.scope !31, !noalias !30
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !9, !alias.scope !31, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.loopexit, label %.lr.ph29.preheader40

.lr.ph29.preheader40:                             ; preds = %vector.memcheck, %.lr.ph29.preheader, %middle.block
  %.028.ph = phi i32 [ %0, %vector.memcheck ], [ %0, %.lr.ph29.preheader ], [ %i.u, %middle.block ] ; 4 uses
  %.01727.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph29.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %i.ad = add nsw i32 %.028.ph, -1
  %xtraiter42 = and i32 %.028.ph, 3               ; 2 uses
  %lcmp.mod43.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph29.prol.loopexit, label %.lr.ph29.prol

.lr.ph29.prol:                                    ; preds = %.lr.ph29.preheader40, %.lr.ph29.prol
  %.028.prol = phi i32 [ %i.ah, %.lr.ph29.prol ], [ %.028.ph, %.lr.ph29.preheader40 ]
  %.01727.prol = phi ptr [ %i.ai, %.lr.ph29.prol ], [ %.01727.ph, %.lr.ph29.preheader40 ] ; 3 uses
  %prol.iter44 = phi i32 [ %prol.iter44.next, %.lr.ph29.prol ], [ 0, %.lr.ph29.preheader40 ]
  %i.ae = load double, ptr %2, align 8, !tbaa !9
  %i.af = load double, ptr %.01727.prol, align 8, !tbaa !9
  %i.ag = tail call double @llvm.fmuladd.f64(double %1, double %i.ae, double %i.af)
  store double %i.ag, ptr %.01727.prol, align 8, !tbaa !9
  %i.ah = add nsw i32 %.028.prol, -1              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01727.prol, i64 8 ; 2 uses
  %prol.iter44.next = add i32 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i32 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph29.prol.loopexit, label %.lr.ph29.prol, !llvm.loop !27

.lr.ph29.prol.loopexit:                           ; preds = %.lr.ph29.prol, %.lr.ph29.preheader40
  %.028.unr = phi i32 [ %.028.ph, %.lr.ph29.preheader40 ], [ %i.ah, %.lr.ph29.prol ]
  %.01727.unr = phi ptr [ %.01727.ph, %.lr.ph29.preheader40 ], [ %i.ai, %.lr.ph29.prol ]
  %i.aj = icmp ult i32 %i.ad, 3
  br i1 %i.aj, label %.loopexit, label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.prol.loopexit, %.lr.ph29
  %.028 = phi i32 [ %i.az, %.lr.ph29 ], [ %.028.unr, %.lr.ph29.prol.loopexit ]
  %.01727 = phi ptr [ %i.ba, %.lr.ph29 ], [ %.01727.unr, %.lr.ph29.prol.loopexit ] ; 6 uses
  %i.ak = load double, ptr %2, align 8, !tbaa !9
  %i.al = load double, ptr %.01727, align 8, !tbaa !9
  %i.am = tail call double @llvm.fmuladd.f64(double %1, double %i.ak, double %i.al)
  store double %i.am, ptr %.01727, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.01727, i64 8 ; 2 uses
  %i.ao = load double, ptr %2, align 8, !tbaa !9
  %i.ap = load double, ptr %i.an, align 8, !tbaa !9
  %i.aq = tail call double @llvm.fmuladd.f64(double %1, double %i.ao, double %i.ap)
  store double %i.aq, ptr %i.an, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %.01727, i64 16 ; 2 uses
  %i.as = load double, ptr %2, align 8, !tbaa !9
  %i.at = load double, ptr %i.ar, align 8, !tbaa !9
  %i.au = tail call double @llvm.fmuladd.f64(double %1, double %i.as, double %i.at)
  store double %i.au, ptr %i.ar, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %.01727, i64 24 ; 2 uses
  %i.aw = load double, ptr %2, align 8, !tbaa !9
  %i.ax = load double, ptr %i.av, align 8, !tbaa !9
  %i.ay = tail call double @llvm.fmuladd.f64(double %1, double %i.aw, double %i.ax)
  store double %i.ay, ptr %i.av, align 8, !tbaa !9
  %i.az = add nsw i32 %.028, -4                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01727, i64 32
  %.not20.3 = icmp eq i32 %i.az, 0
  br i1 %.not20.3, label %.loopexit, label %.lr.ph29, !llvm.loop !28

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.125 = phi i32 [ %i.bq, %.lr.ph.new ], [ %.125.unr, %.prol.loopexit ]
  %.11824 = phi ptr [ %i.br, %.lr.ph.new ], [ %.11824.unr, %.prol.loopexit ] ; 3 uses
  %i.bb = load double, ptr %2, align 8, !tbaa !9
  %i.bc = load double, ptr %.11824, align 8, !tbaa !9
  %i.bd = tail call double @llvm.fmuladd.f64(double %1, double %i.bb, double %i.bc)
  store double %i.bd, ptr %.11824, align 8, !tbaa !9
  %i.be = getelementptr inbounds [8 x i8], ptr %.11824, i64 %i.f ; 3 uses
  %i.bf = load double, ptr %2, align 8, !tbaa !9
  %i.bg = load double, ptr %i.be, align 8, !tbaa !9
  %i.bh = tail call double @llvm.fmuladd.f64(double %1, double %i.bf, double %i.bg)
  store double %i.bh, ptr %i.be, align 8, !tbaa !9
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.f ; 3 uses
  %i.bj = load double, ptr %2, align 8, !tbaa !9
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !9
  %i.bl = tail call double @llvm.fmuladd.f64(double %1, double %i.bj, double %i.bk)
  store double %i.bl, ptr %i.bi, align 8, !tbaa !9
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.f ; 3 uses
  %i.bn = load double, ptr %2, align 8, !tbaa !9
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !9
  %i.bp = tail call double @llvm.fmuladd.f64(double %1, double %i.bn, double %i.bo)
  store double %i.bp, ptr %i.bm, align 8, !tbaa !9
  %i.bq = add nsw i32 %.125, -4                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.f
  %.not.3 = icmp eq i32 %i.bq, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !29

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph29.prol.loopexit, %.lr.ph29, %middle.block, %bb.c, %bb.b
  ret void
}

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasScalEidPdi(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %0, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %3, ptr %i.c, align 4, !tbaa !11
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void
}

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasGemvEbiidPKdiS1_idPdi(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  store double %8, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %2, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %1, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %5, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %7, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 %10, ptr %i.g, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.h, align 1, !tbaa !15
  call void @dgemv_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef %6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %i.g, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasSymvEidPKdiS1_idPdi(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  store double %1, ptr %i.a, align 8, !tbaa !9
  store double %6, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %0, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %3, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %5, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %8, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i8 76, ptr %i.g, align 1, !tbaa !15
  call void @dsymv_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef %7, ptr noundef nonnull %i.f, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dsymv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasGemmEbbiiidPKdiS1_idPdi(i1 noundef zeroext %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, double noundef %10, ptr noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  store double %5, ptr %i.a, align 8, !tbaa !9
  store double %10, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %2, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %3, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %4, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %7, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 %9, ptr %i.g, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  store i32 %12, ptr %i.h, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.i, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %storemerge10 = select i1 %1, i8 84, i8 78
  store i8 %storemerge10, ptr %i.j, align 1, !tbaa !15
  call void @dgemm_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %i.f, ptr noundef %8, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef %11, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasSyrkEbiidPKdidPdi(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  store double %6, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %1, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %2, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %5, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 %8, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i8 76, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %. = select i1 %0, i8 84, i8 78
  store i8 %., ptr %i.h, align 1, !tbaa !15
  call void @dsyrk_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef %7, ptr noundef nonnull %i.f, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

declare void @dsyrk_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt10IpBlasTrsmEbiidPKdiPdi(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  store double %3, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %1, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %2, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %5, ptr %i.d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
end_hunk_0
