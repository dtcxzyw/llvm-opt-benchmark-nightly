Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lolwut?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lolwutCommand:bb.a
bb.u:                                             ; preds = %bb.s, %bb.t, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @lolwut5Command(ptr noundef) local_unnamed_addr #2

declare void @lolwut6Command(ptr noundef) local_unnamed_addr #2

declare void @lolwut8Command(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @lwCreateCanvas(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 4 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !20
  %i.c = sext i32 %0 to i64
  %i.d = sext i32 %1 to i64
  %i.e = mul nsw i64 %i.d, %i.c                   ; 2 uses
  %i.f = tail call noalias ptr @zmalloc(i64 noundef %i.e) #15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !21
  %i.h = trunc i32 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 %i.h, i64 %i.e, i1 false)
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @lwFreeCanvas(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @zfree(ptr noundef %i.b) #13
  tail call void @zfree(ptr noundef %0) #13
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i32 %3 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = mul nuw nsw i32 %i.b, %2
  %i.k = add nuw nsw i32 %i.j, %1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 %i.g, ptr %i.m, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -128, 128) i32 @lwGetPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = mul nuw nsw i32 %i.b, %2
  %i.j = add nuw nsw i32 %i.i, %1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = sext i8 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawLine(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = sub nsw i32 %3, %1
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 3 uses
  %i.c = sub nsw i32 %4, %2
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 3 uses
  %i.e = icmp slt i32 %1, %3
  %i.f = select i1 %i.e, i32 1, i32 -1
  %i.g = icmp slt i32 %2, %4
  %i.h = select i1 %i.g, i32 1, i32 -1
  %i.i = sub nsw i32 %i.b, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = trunc i32 %5 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = sub nsw i32 0, %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.032 = phi i32 [ %2, %bb.a ], [ %.133, %bb.f ] ; 5 uses
  %.030 = phi i32 [ %1, %bb.a ], [ %.131, %bb.f ] ; 5 uses
  %.0 = phi i32 [ %i.i, %bb.a ], [ %.2, %bb.f ]   ; 2 uses
  %i.n = icmp slt i32 %.030, 0
  br i1 %i.n, label %lwDrawPixel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.p = icmp sge i32 %.030, %i.o
  %i.q = icmp slt i32 %.032, 0
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %lwDrawPixel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.j, align 4, !tbaa !20
  %.not.i = icmp slt i32 %.032, %i.r
  br i1 %.not.i, label %bb.e, label %lwDrawPixel.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.t = mul nuw nsw i32 %i.o, %.032
  %i.u = add nuw nsw i32 %i.t, %.030
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 %i.k, ptr %i.w, align 1, !tbaa !13
  br label %lwDrawPixel.exit

lwDrawPixel.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.x = icmp eq i32 %.030, %3
  %i.y = icmp eq i32 %.032, %4
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %lwDrawPixel.exit
  %i.z = shl nsw i32 %.0, 1                       ; 2 uses
  %i.aa = icmp sgt i32 %i.z, %i.m                 ; 2 uses
  %i.ab = select i1 %i.aa, i32 %i.f, i32 0
  %.131 = add nsw i32 %i.ab, %.030
  %i.ac = select i1 %i.aa, i32 %i.d, i32 0
  %.1 = sub i32 %.0, %i.ac
  %i.ad = icmp slt i32 %i.z, %i.b                 ; 2 uses
  %i.ae = select i1 %i.ad, i32 %i.h, i32 0
  %.133 = add nsw i32 %i.ae, %.032
  %i.af = select i1 %i.ad, i32 %i.b, i32 0
  %.2 = add nsw i32 %.1, %i.af
  br label %bb.b

bb.g:                                             ; preds = %lwDrawPixel.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawSquare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #9 {
lwDrawLine.exit.preheader:
  %sincos.sin = alloca double, align 8            ; 8 uses
  %sincos.cos = alloca double, align 8            ; 8 uses
  %i.a = fpext float %3 to double
  %i.b = fdiv double %i.a, f0x3FF6A09E667A35E6
  %i.c = fptrunc double %i.b to float
  %i.d = tail call float @llvm.round.f32(float %i.c)
  %i.e = fpext float %4 to double
  %i.f = fadd double %i.e, f0x3FE921FB54442D18
  %i.g = fpext float %i.d to double               ; 8 uses
  %i.h = sitofp i32 %1 to double                  ; 4 uses
  %i.i = sitofp i32 %2 to double                  ; 4 uses
  %.022 = fptrunc double %i.f to float
  %i.j = fpext float %.022 to double              ; 2 uses
  call void @sincos(double %i.j, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  %6 = call double @llvm.fmuladd.f64(double %sin, double %i.g, double %i.h)
  %7 = call double @llvm.round.f64(double %6)
  %8 = fptosi double %7 to i32                    ; 6 uses
  %9 = call double @llvm.fmuladd.f64(double %cos, double %i.g, double %i.i)
  %10 = call double @llvm.round.f64(double %9)
  %i.k = fptosi double %10 to i32                 ; 6 uses
  %i.l = fadd double %i.j, f0x3FF921FB54442D18
  %.022.1 = fptrunc double %i.l to float
  %i.m = fpext float %.022.1 to double            ; 2 uses
  call void @sincos(double %i.m, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin.1 = load double, ptr %sincos.sin, align 8
  %cos.1 = load double, ptr %sincos.cos, align 8
  %11 = call double @llvm.fmuladd.f64(double %sin.1, double %i.g, double %i.h)
  %12 = call double @llvm.round.f64(double %11)
  %13 = fptosi double %12 to i32                  ; 6 uses
  %14 = call double @llvm.fmuladd.f64(double %cos.1, double %i.g, double %i.i)
  %15 = call double @llvm.round.f64(double %14)
  %i.n = fptosi double %15 to i32                 ; 6 uses
  %i.o = fadd double %i.m, f0x3FF921FB54442D18
  %.022.2 = fptrunc double %i.o to float
  %i.p = fpext float %.022.2 to double            ; 2 uses
  call void @sincos(double %i.p, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin.2 = load double, ptr %sincos.sin, align 8
  %cos.2 = load double, ptr %sincos.cos, align 8
  %16 = call double @llvm.fmuladd.f64(double %sin.2, double %i.g, double %i.h)
  %17 = call double @llvm.round.f64(double %16)
  %18 = fptosi double %17 to i32                  ; 6 uses
  %19 = call double @llvm.fmuladd.f64(double %cos.2, double %i.g, double %i.i)
  %20 = call double @llvm.round.f64(double %19)
  %i.q = fptosi double %20 to i32                 ; 6 uses
  %i.r = fadd double %i.p, f0x3FF921FB54442D18
  %.022.3 = fptrunc double %i.r to float
  %i.s = fpext float %.022.3 to double
  call void @sincos(double %i.s, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin.3 = load double, ptr %sincos.sin, align 8
  %cos.3 = load double, ptr %sincos.cos, align 8
  %21 = call double @llvm.fmuladd.f64(double %sin.3, double %i.g, double %i.h)
  %22 = call double @llvm.round.f64(double %21)
  %23 = fptosi double %22 to i32                  ; 6 uses
  %24 = call double @llvm.fmuladd.f64(double %cos.3, double %i.g, double %i.i)
  %25 = call double @llvm.round.f64(double %24)
  %i.t = fptosi double %25 to i32                 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.v = trunc i32 %5 to i8                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = sub nsw i32 %13, %8
  %26 = call i32 @llvm.abs.i32(i32 %i.x, i1 true) ; 3 uses
  %i.y = sub nsw i32 %i.n, %i.k
  %27 = call i32 @llvm.abs.i32(i32 %i.y, i1 true) ; 3 uses
  %i.z = icmp slt i32 %8, %13
  %i.aa = select i1 %i.z, i32 1, i32 -1
  %i.ab = icmp slt i32 %i.k, %i.n
  %i.ac = select i1 %i.ab, i32 1, i32 -1
  %i.ad = sub nsw i32 %26, %27
  %i.ae = sub nsw i32 0, %27
  br label %bb.p

lwDrawLine.exit.loopexit:                         ; preds = %lwDrawPixel.exit.i
  %i.af = sub nsw i32 %18, %13
  %28 = call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 3 uses
  %i.ag = sub nsw i32 %i.q, %i.n
  %29 = call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 3 uses
  %i.ah = icmp slt i32 %13, %18
  %i.ai = select i1 %i.ah, i32 1, i32 -1
  %i.aj = icmp slt i32 %i.n, %i.q
  %i.ak = select i1 %i.aj, i32 1, i32 -1
  %i.al = sub nsw i32 %28, %29
  %i.am = sub nsw i32 0, %29
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %lwDrawLine.exit.loopexit
  %.032.i.1 = phi i32 [ %i.n, %lwDrawLine.exit.loopexit ], [ %.133.i.1, %bb.e ] ; 5 uses
  %.030.i.1 = phi i32 [ %13, %lwDrawLine.exit.loopexit ], [ %.131.i.1, %bb.e ] ; 5 uses
  %.0.i.1 = phi i32 [ %i.al, %lwDrawLine.exit.loopexit ], [ %.2.i.1, %bb.e ] ; 2 uses
  %i.an = icmp slt i32 %.030.i.1, 0
  br i1 %i.an, label %lwDrawPixel.exit.i.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ap = icmp sge i32 %.030.i.1, %i.ao
  %i.aq = icmp slt i32 %.032.i.1, 0
  %or.cond.i.i.1 = or i1 %i.aq, %i.ap
  br i1 %or.cond.i.i.1, label %lwDrawPixel.exit.i.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %i.u, align 4, !tbaa !20
  %.not.i.i.1 = icmp slt i32 %.032.i.1, %i.ar
  br i1 %.not.i.i.1, label %bb.d, label %lwDrawPixel.exit.i.1

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.at = mul nuw nsw i32 %i.ao, %.032.i.1
  %i.au = add nuw nsw i32 %i.at, %.030.i.1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  store i8 %i.v, ptr %i.aw, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i.1

lwDrawPixel.exit.i.1:                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ax = icmp eq i32 %.030.i.1, %18
  %i.ay = icmp eq i32 %.032.i.1, %i.q
  %or.cond.i.1 = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.1, label %lwDrawLine.exit.loopexit.1, label %bb.e

bb.e:                                             ; preds = %lwDrawPixel.exit.i.1
  %i.az = shl nsw i32 %.0.i.1, 1                  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, %i.am               ; 2 uses
  %i.bb = select i1 %i.ba, i32 %i.ai, i32 0
  %.131.i.1 = add nsw i32 %i.bb, %.030.i.1
  %i.bc = select i1 %i.ba, i32 %29, i32 0
  %.1.i.1 = sub i32 %.0.i.1, %i.bc
  %i.bd = icmp slt i32 %i.az, %28                 ; 2 uses
  %i.be = select i1 %i.bd, i32 %i.ak, i32 0
  %.133.i.1 = add nsw i32 %i.be, %.032.i.1
  %i.bf = select i1 %i.bd, i32 %28, i32 0
  %.2.i.1 = add nsw i32 %.1.i.1, %i.bf
  br label %bb.a

lwDrawLine.exit.loopexit.1:                       ; preds = %lwDrawPixel.exit.i.1
  %i.bg = sub nsw i32 %23, %18
  %30 = call i32 @llvm.abs.i32(i32 %i.bg, i1 true) ; 3 uses
  %i.bh = sub nsw i32 %i.t, %i.q
  %31 = call i32 @llvm.abs.i32(i32 %i.bh, i1 true) ; 3 uses
  %i.bi = icmp slt i32 %18, %23
  %i.bj = select i1 %i.bi, i32 1, i32 -1
  %i.bk = icmp slt i32 %i.q, %i.t
  %i.bl = select i1 %i.bk, i32 1, i32 -1
  %i.bm = sub nsw i32 %30, %31
  %i.bn = sub nsw i32 0, %31
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %lwDrawLine.exit.loopexit.1
  %.032.i.2 = phi i32 [ %i.q, %lwDrawLine.exit.loopexit.1 ], [ %.133.i.2, %bb.j ] ; 5 uses
  %.030.i.2 = phi i32 [ %18, %lwDrawLine.exit.loopexit.1 ], [ %.131.i.2, %bb.j ] ; 5 uses
  %.0.i.2 = phi i32 [ %i.bm, %lwDrawLine.exit.loopexit.1 ], [ %.2.i.2, %bb.j ] ; 2 uses
  %i.bo = icmp slt i32 %.030.i.2, 0
  br i1 %i.bo, label %lwDrawPixel.exit.i.2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bq = icmp sge i32 %.030.i.2, %i.bp
  %i.br = icmp slt i32 %.032.i.2, 0
  %or.cond.i.i.2 = or i1 %i.br, %i.bq
  br i1 %or.cond.i.i.2, label %lwDrawPixel.exit.i.2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.u, align 4, !tbaa !20
  %.not.i.i.2 = icmp slt i32 %.032.i.2, %i.bs
  br i1 %.not.i.i.2, label %bb.i, label %lwDrawPixel.exit.i.2

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.bu = mul nuw nsw i32 %i.bp, %.032.i.2
  %i.bv = add nuw nsw i32 %i.bu, %.030.i.2
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  store i8 %i.v, ptr %i.bx, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i.2

lwDrawPixel.exit.i.2:                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.by = icmp eq i32 %.030.i.2, %23
  %i.bz = icmp eq i32 %.032.i.2, %i.t
  %or.cond.i.2 = and i1 %i.bz, %i.by
  br i1 %or.cond.i.2, label %lwDrawLine.exit.loopexit.2, label %bb.j

bb.j:                                             ; preds = %lwDrawPixel.exit.i.2
  %i.ca = shl nsw i32 %.0.i.2, 1                  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, %i.bn               ; 2 uses
  %i.cc = select i1 %i.cb, i32 %i.bj, i32 0
  %.131.i.2 = add nsw i32 %i.cc, %.030.i.2
  %i.cd = select i1 %i.cb, i32 %31, i32 0
  %.1.i.2 = sub i32 %.0.i.2, %i.cd
  %i.ce = icmp slt i32 %i.ca, %30                 ; 2 uses
  %i.cf = select i1 %i.ce, i32 %i.bl, i32 0
  %.133.i.2 = add nsw i32 %i.cf, %.032.i.2
  %i.cg = select i1 %i.ce, i32 %30, i32 0
  %.2.i.2 = add nsw i32 %.1.i.2, %i.cg
  br label %bb.f

lwDrawLine.exit.loopexit.2:                       ; preds = %lwDrawPixel.exit.i.2
  %i.ch = sub nsw i32 %8, %23
  %32 = call i32 @llvm.abs.i32(i32 %i.ch, i1 true) ; 3 uses
  %i.ci = sub nsw i32 %i.k, %i.t
  %33 = call i32 @llvm.abs.i32(i32 %i.ci, i1 true) ; 3 uses
  %i.cj = icmp slt i32 %23, %8
  %i.ck = select i1 %i.cj, i32 1, i32 -1
  %i.cl = icmp slt i32 %i.t, %i.k
  %i.cm = select i1 %i.cl, i32 1, i32 -1
  %i.cn = sub nsw i32 %32, %33
  %i.co = sub nsw i32 0, %33
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %lwDrawLine.exit.loopexit.2
  %.032.i.3 = phi i32 [ %i.t, %lwDrawLine.exit.loopexit.2 ], [ %.133.i.3, %bb.o ] ; 5 uses
  %.030.i.3 = phi i32 [ %23, %lwDrawLine.exit.loopexit.2 ], [ %.131.i.3, %bb.o ] ; 5 uses
  %.0.i.3 = phi i32 [ %i.cn, %lwDrawLine.exit.loopexit.2 ], [ %.2.i.3, %bb.o ] ; 2 uses
  %i.cp = icmp slt i32 %.030.i.3, 0
  br i1 %i.cp, label %lwDrawPixel.exit.i.3, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.cr = icmp sge i32 %.030.i.3, %i.cq
  %i.cs = icmp slt i32 %.032.i.3, 0
  %or.cond.i.i.3 = or i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.3, label %lwDrawPixel.exit.i.3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.u, align 4, !tbaa !20
  %.not.i.i.3 = icmp slt i32 %.032.i.3, %i.ct
  br i1 %.not.i.i.3, label %bb.n, label %lwDrawPixel.exit.i.3

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.cv = mul nuw nsw i32 %i.cq, %.032.i.3
  %i.cw = add nuw nsw i32 %i.cv, %.030.i.3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  store i8 %i.v, ptr %i.cy, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i.3

lwDrawPixel.exit.i.3:                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.cz = icmp eq i32 %.030.i.3, %8
  %i.da = icmp eq i32 %.032.i.3, %i.k
  %or.cond.i.3 = and i1 %i.da, %i.cz
  br i1 %or.cond.i.3, label %lwDrawLine.exit.loopexit.3, label %bb.o

bb.o:                                             ; preds = %lwDrawPixel.exit.i.3
  %i.db = shl nsw i32 %.0.i.3, 1                  ; 2 uses
  %i.dc = icmp sgt i32 %i.db, %i.co               ; 2 uses
  %i.dd = select i1 %i.dc, i32 %i.ck, i32 0
  %.131.i.3 = add nsw i32 %i.dd, %.030.i.3
  %i.de = select i1 %i.dc, i32 %33, i32 0
  %.1.i.3 = sub i32 %.0.i.3, %i.de
  %i.df = icmp slt i32 %i.db, %32                 ; 2 uses
  %i.dg = select i1 %i.df, i32 %i.cm, i32 0
  %.133.i.3 = add nsw i32 %i.dg, %.032.i.3
  %i.dh = select i1 %i.df, i32 %32, i32 0
  %.2.i.3 = add nsw i32 %.1.i.3, %i.dh
  br label %bb.k

lwDrawLine.exit.loopexit.3:                       ; preds = %lwDrawPixel.exit.i.3
  ret void

bb.p:                                             ; preds = %bb.t, %lwDrawLine.exit.preheader
  %.032.i = phi i32 [ %i.k, %lwDrawLine.exit.preheader ], [ %.133.i, %bb.t ] ; 5 uses
  %.030.i = phi i32 [ %8, %lwDrawLine.exit.preheader ], [ %.131.i, %bb.t ] ; 5 uses
  %.0.i = phi i32 [ %i.ad, %lwDrawLine.exit.preheader ], [ %.2.i, %bb.t ] ; 2 uses
  %i.di = icmp slt i32 %.030.i, 0
  br i1 %i.di, label %lwDrawPixel.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.dk = icmp sge i32 %.030.i, %i.dj
  %i.dl = icmp slt i32 %.032.i, 0
  %or.cond.i.i = or i1 %i.dl, %i.dk
  br i1 %or.cond.i.i, label %lwDrawPixel.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load i32, ptr %i.u, align 4, !tbaa !20
  %.not.i.i = icmp slt i32 %.032.i, %i.dm
  br i1 %.not.i.i, label %bb.s, label %lwDrawPixel.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dn = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.do = mul nuw nsw i32 %i.dj, %.032.i
  %i.dp = add nuw nsw i32 %i.do, %.030.i
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dq
  store i8 %i.v, ptr %i.dr, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i

lwDrawPixel.exit.i:                               ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ds = icmp eq i32 %.030.i, %13
  %i.dt = icmp eq i32 %.032.i, %i.n
  %or.cond.i = and i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %lwDrawLine.exit.loopexit, label %bb.t

bb.t:                                             ; preds = %lwDrawPixel.exit.i
  %i.du = shl nsw i32 %.0.i, 1                    ; 2 uses
  %i.dv = icmp sgt i32 %i.du, %i.ae               ; 2 uses
  %i.dw = select i1 %i.dv, i32 %i.aa, i32 0
  %.131.i = add nsw i32 %i.dw, %.030.i
  %i.dx = select i1 %i.dv, i32 %27, i32 0
  %.1.i = sub i32 %.0.i, %i.dx
  %i.dy = icmp slt i32 %i.du, %26                 ; 2 uses
  %i.dz = select i1 %i.dy, i32 %i.ac, i32 0
  %.133.i = add nsw i32 %i.dz, %.032.i
  %i.ea = select i1 %i.dy, i32 %26, i32 0
  %.2.i = add nsw i32 %.1.i, %i.ea
  br label %bb.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"lwCanvas", !11, i64 0, !11, i64 4, !17, i64 8}
!19 = !{!18, !11, i64 0}
!20 = !{!18, !11, i64 4}
!21 = !{!18, !17, i64 8}
!22 = !{!"short", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS10connection", !16, i64 0}
!25 = !{!"p1 _ZTS7redisDb", !16, i64 0}
!26 = !{!"p1 _ZTS11redisObject", !16, i64 0}
!27 = !{!"any p2 pointer", !16, i64 0}
!28 = !{!"p2 _ZTS11redisObject", !27, i64 0}
!29 = !{!"p1 _ZTS14pendingCommand", !16, i64 0}
!30 = !{!"pendingCommandList", !29, i64 0, !29, i64 8, !11, i64 16, !11, i64 20}
!31 = !{!"p1 _ZTS14deferredObject", !16, i64 0}
!32 = !{!"p1 _ZTS12redisCommand", !16, i64 0}
!33 = !{!"p1 _ZTS4list", !16, i64 0}
!34 = !{!"long long", !10, i64 0}
!35 = !{!"p1 _ZTS9dictEntry", !16, i64 0}
!36 = !{!"p2 _ZTS14pendingCommand", !27, i64 0}
!37 = !{!"multiState", !36, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !14, i64 24, !11, i64 32}
!38 = !{!"p1 _ZTS4dict", !16, i64 0}
!39 = !{!"blockingState", !11, i64 0, !34, i64 8, !11, i64 16, !38, i64 24, !11, i64 32, !11, i64 36, !34, i64 40, !16, i64 48, !16, i64 56, !14, i64 64}
!40 = !{!"p1 _ZTS8listNode", !16, i64 0}
!41 = !{!"p1 _ZTS3rax", !16, i64 0}
!42 = !{!"listNode", !40, i64 0, !40, i64 8, !16, i64 16}
!43 = !{!"p1 _ZTS13payloadHeader", !16, i64 0}
!44 = !{!"p1 _ZTS7asmTask", !16, i64 0}
!45 = !{!"client", !14, i64 0, !14, i64 8, !24, i64 16, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !11, i64 28, !25, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !17, i64 64, !14, i64 72, !14, i64 80, !11, i64 88, !28, i64 96, !11, i64 104, !11, i64 108, !28, i64 112, !14, i64 120, !30, i64 128, !29, i64 152, !31, i64 160, !11, i64 168, !28, i64 176, !11, i64 184, !11, i64 188, !32, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !16, i64 224, !11, i64 232, !11, i64 236, !14, i64 240, !33, i64 248, !34, i64 256, !33, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !11, i64 296, !11, i64 300, !35, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !34, i64 336, !34, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !14, i64 368, !14, i64 376, !17, i64 384, !34, i64 392, !34, i64 400, !34, i64 408, !34, i64 416, !34, i64 424, !34, i64 432, !34, i64 440, !34, i64 448, !34, i64 456, !34, i64 464, !34, i64 472, !10, i64 480, !11, i64 524, !17, i64 528, !11, i64 536, !11, i64 540, !14, i64 544, !37, i64 552, !39, i64 592, !34, i64 664, !33, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !17, i64 704, !17, i64 712, !40, i64 720, !40, i64 728, !40, i64 736, !16, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !14, i64 784, !41, i64 792, !14, i64 800, !11, i64 808, !40, i64 816, !16, i64 824, !40, i64 832, !14, i64 840, !40, i64 848, !14, i64 856, !40, i64 864, !14, i64 872, !42, i64 880, !42, i64 904, !14, i64 928, !14, i64 936, !14, i64 944, !34, i64 952, !14, i64 960, !14, i64 968, !17, i64 976, !10, i64 984, !43, i64 992, !34, i64 1000, !34, i64 1008, !34, i64 1016, !44, i64 1024, !17, i64 1032, !10, i64 1040}
!46 = !{!45, !11, i64 88}
!47 = !{!45, !28, i64 96}
!48 = !{!26, !26, i64 0}
!49 = !{!"redisObject", !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 3, !11, i64 4, !11, i64 5, !16, i64 8}
!50 = !{!49, !16, i64 8}
end_hunk_0
