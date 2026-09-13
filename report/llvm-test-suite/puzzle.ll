Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/puzzle?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@next = internal unnamed_addr global i64 1, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 1, 32768) i32 @rand() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @next, align 8, !tbaa !10
  %i.b = mul i64 %i.a, 1103515245
  %i.c = add i64 %i.b, 12345                      ; 2 uses
  store i64 %i.c, ptr @next, align 8, !tbaa !10
  %i.d = lshr i64 %i.c, 16
  %i.e = trunc i64 %i.d to i32
  %i.f = urem i32 %i.e, 32767
  %i.g = add nuw nsw i32 %i.f, 1
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @srand(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %0 to i64
  store i64 %i.a, ptr @next, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @randInt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %1, %0
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = load i64, ptr @next, align 8, !tbaa !10
  %i.e = mul i64 %i.d, 1103515245
  %i.f = add i64 %i.e, 12345                      ; 2 uses
  store i64 %i.f, ptr @next, align 8, !tbaa !10
  %i.g = lshr i64 %i.f, 16
  %i.h = trunc i64 %i.g to i32
  %i.i = urem i32 %i.h, 32767
  %i.j = add nuw nsw i32 %i.i, 1
  %i.k = uitofp nneg i32 %i.j to double
  %i.l = fmul nnan double %i.k, f0x3F00000000000000
  %i.m = fmul double %i.l, %i.c
  %i.n = fptosi double %i.m to i32                ; 2 uses
  %i.o = icmp eq i32 %i.b, %i.n
  %i.p = add nsw i32 %0, %i.n
  %i.q = sext i1 %i.o to i32
  %i.r = add nsw i32 %i.p, %i.q
  ret i32 %i.r
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @shuffle(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %.not16 = icmp eq i32 %i.a, 0
  br i1 %.not16, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %next.promoted = load i64, ptr @next, align 8
  %i.b = sext i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi i64 [ %i.w, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.c = phi i64 [ %i.g, %.lr.ph ], [ %next.promoted, %.lr.ph.preheader ]
  %i.d = add i64 %.017, 1                         ; 2 uses
  %i.e = uitofp i64 %i.d to double
  %i.f = mul i64 %i.c, 1103515245
  %i.g = add i64 %i.f, 12345                      ; 3 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = trunc i64 %i.h to i32
  %i.j = urem i32 %i.i, 32767
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = fmul nnan double %i.l, f0x3F00000000000000
  %i.n = fmul double %i.m, %i.e
  %i.o = fptosi double %i.n to i32
  %2 = zext nneg i32 %i.o to i64                  ; 2 uses
  %i.p = icmp eq i64 %i.d, %2
  %i.q = sext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = getelementptr [4 x i8], ptr %0, i64 %2
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  store i32 %i.v, ptr %i.r, align 4, !tbaa !8
  store i32 %i.s, ptr %i.u, align 4, !tbaa !8
  %i.w = add i64 %.017, -1                        ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.g, ptr @next, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @createRandomArray(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %0, 1                            ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10 ; 6 uses
  %.not13 = icmp slt i32 %0, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.a to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %vec.ind, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> %step.add, ptr %i.f, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.i, ptr %i.h, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.j = sitofp i32 %0 to double
  %i.k = load i64, ptr @next, align 8, !tbaa !10
  %i.l = mul i64 %i.k, 1103515245
  %i.m = add i64 %i.l, 12345                      ; 3 uses
  store i64 %i.m, ptr @next, align 8, !tbaa !10
  %i.n = lshr i64 %i.m, 16
  %i.o = trunc i64 %i.n to i32
  %i.p = urem i32 %i.o, 32767
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = fmul nnan double %i.r, f0x3F00000000000000
  %i.t = fmul double %i.s, %i.j
  %i.u = fptosi double %i.t to i32                ; 2 uses
  %i.v = icmp eq i32 %0, %i.u
  %i.w = add nsw i32 %i.u, 1
  %i.x = sext i1 %i.v to i32
  %i.y = add nsw i32 %i.w, %i.x
  store i32 %i.y, ptr %i.d, align 4, !tbaa !8
  %.not16.i = icmp eq i32 %0, 0
  br i1 %.not16.i, label %shuffle.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.z = sext i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i64 [ %i.au, %.lr.ph.i ], [ %i.z, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.m, %.lr.ph.preheader.i ]
  %i.ab = add i64 %.017.i, 1                      ; 2 uses
  %i.ac = uitofp i64 %i.ab to double
  %i.ad = mul i64 %i.aa, 1103515245
  %i.ae = add i64 %i.ad, 12345                    ; 3 uses
  %i.af = lshr i64 %i.ae, 16
  %i.ag = trunc i64 %i.af to i32
  %i.ah = urem i32 %i.ag, 32767
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fmul nnan double %i.aj, f0x3F00000000000000
  %i.al = fmul double %i.ak, %i.ac
  %i.am = fptosi double %i.al to i32
  %1 = zext nneg i32 %i.am to i64                 ; 2 uses
  %i.an = icmp eq i64 %i.ab, %1
  %i.ao = sext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.017.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr [4 x i8], ptr %i.d, i64 %1
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.ao ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !8
  %i.au = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i64 %i.ae, ptr @next, align 8, !tbaa !10
  br label %shuffle.exit

shuffle.exit:                                     ; preds = %._crit_edge, %._crit_edge.i
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @findDuplicate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !8
  %wide.load15 = load <4 x i32>, ptr %i.c, align 4, !tbaa !8
  %i.d = xor <4 x i32> %vec.phi, %wide.load
  %i.e = xor <4 x i32> %vec.phi14, %wide.load15
  %i.f = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.g = add <4 x i32> %i.f, splat (i32 1)
  %i.h = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.i = add <4 x i32> %i.h, splat (i32 5)
  %i.j = xor <4 x i32> %i.d, %i.g                 ; 2 uses
  %i.k = xor <4 x i32> %i.e, %i.i                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.012.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 2 uses
  %.012 = phi i32 [ %i.r, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = xor i32 %.012, %i.o
  %i.q = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.r = xor i32 %i.p, %i.q                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.r, %.lr.ph ]
  %i.s = xor i32 %.lcssa, %1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
bb.a:
  store i64 1, ptr @next, align 8, !tbaa !10
  br label %vector.ph24

vector.ph24:                                      ; preds = %bb.a, %bb.b
  %.0715 = phi i32 [ 0, %bb.a ], [ %i.bp, %bb.b ]
  %i.a = tail call noalias dereferenceable_or_null(2000004) ptr @malloc(i64 noundef 2000004) #10 ; 11 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph24
  %index26 = phi i64 [ 0, %vector.ph24 ], [ %index.next29.3, %vector.body25 ] ; 5 uses
  %vec.ind27 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph24 ], [ %vec.ind.next30.3, %vector.body25 ] ; 9 uses
  %step.add28 = add <4 x i32> %vec.ind27, splat (i32 4)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> %vec.ind27, ptr %i.b, align 4, !tbaa !8
  store <4 x i32> %step.add28, ptr %i.c, align 4, !tbaa !8
  %vec.ind.next30 = add <4 x i32> %vec.ind27, splat (i32 8)
  %step.add28.1 = add <4 x i32> %vec.ind27, splat (i32 12)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> %vec.ind.next30, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> %step.add28.1, ptr %i.f, align 4, !tbaa !8
  %vec.ind.next30.1 = add <4 x i32> %vec.ind27, splat (i32 16)
  %step.add28.2 = add <4 x i32> %vec.ind27, splat (i32 20)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store <4 x i32> %vec.ind.next30.1, ptr %i.h, align 4, !tbaa !8
  store <4 x i32> %step.add28.2, ptr %i.i, align 4, !tbaa !8
  %vec.ind.next30.2 = add <4 x i32> %vec.ind27, splat (i32 24)
  %step.add28.3 = add <4 x i32> %vec.ind27, splat (i32 28)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store <4 x i32> %vec.ind.next30.2, ptr %i.k, align 4, !tbaa !8
  store <4 x i32> %step.add28.3, ptr %i.l, align 4, !tbaa !8
  %index.next29.3 = add nuw nsw i64 %index26, 32  ; 2 uses
  %vec.ind.next30.3 = add <4 x i32> %vec.ind27, splat (i32 32)
  %i.m = icmp eq i64 %index.next29.3, 500000
  br i1 %i.m, label %.lr.ph.i, label %vector.body25, !llvm.loop !18

.lr.ph.i:                                         ; preds = %vector.body25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2000000
  store i32 500000, ptr %i.n, align 4, !tbaa !8
  %i.o = load i64, ptr @next, align 8, !tbaa !10
  %i.p = mul i64 %i.o, 1103515245
  %i.q = add i64 %i.p, 12345                      ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = trunc i64 %i.r to i32
  %i.t = urem i32 %i.s, 32767
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fmul nnan double %i.v, f0x3F00000000000000
  %i.x = fmul nnan double %i.w, 5.000000e+05
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = icmp eq i32 %i.y, 500000
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = sext i1 %i.z to i32
  %i.ac = add nsw i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.017.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ 500000, %.lr.ph.i ] ; 3 uses
  %i.ad = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.q, %.lr.ph.i ]
  %i.ae = add nuw nsw i64 %.017.i.i, 1            ; 2 uses
  %i.af = uitofp i64 %i.ae to double
  %i.ag = mul i64 %i.ad, 1103515245
  %i.ah = add i64 %i.ag, 12345                    ; 3 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = urem i32 %i.aj, 32767
  %i.al = add nuw nsw i32 %i.ak, 1
  %i.am = uitofp nneg i32 %i.al to double
  %i.an = fmul nnan double %i.am, f0x3F00000000000000
  %i.ao = fmul double %i.an, %i.af
  %i.ap = fptosi double %i.ao to i32
  %0 = zext nneg i32 %i.ap to i64                 ; 2 uses
  %i.aq = icmp eq i64 %i.ae, %0
  %i.ar = sext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.017.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = getelementptr [4 x i8], ptr %i.a, i64 %0
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ar ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !8
  store i32 %i.at, ptr %i.av, align 4, !tbaa !8
  %i.ax = add nsw i64 %.017.i.i, -1               ; 2 uses
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %createRandomArray.exit, label %.lr.ph.i.i, !llvm.loop !0

createRandomArray.exit:                           ; preds = %.lr.ph.i.i
  store i64 %i.ah, ptr @next, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2000000
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8, %createRandomArray.exit
  %.0614 = phi i32 [ 0, %createRandomArray.exit ], [ %i.bk, %.lr.ph.i8 ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi21 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !8
  %wide.load22 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !8
  %i.bb = xor <4 x i32> %wide.load, %vec.phi
  %i.bc = xor <4 x i32> %wide.load22, %vec.phi21
  %i.bd = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.be = add <4 x i32> %i.bd, splat (i32 1)
  %i.bf = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.bg = add <4 x i32> %i.bf, splat (i32 5)
  %i.bh = xor <4 x i32> %i.bb, %i.be              ; 2 uses
  %i.bi = xor <4 x i32> %i.bc, %i.bg              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.bj = icmp eq i64 %index.next, 500000
  br i1 %i.bj, label %.lr.ph.i8, label %vector.body, !llvm.loop !19

.lr.ph.i8:                                        ; preds = %vector.body
  %i.bk = add nuw nsw i32 %.0614, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, 200
  br i1 %exitcond.not, label %bb.b, label %vector.ph, !llvm.loop !20

bb.b:                                             ; preds = %.lr.ph.i8
  %i.bl = load i32, ptr %i.ay, align 4, !tbaa !8
  %bin.rdx = xor <4 x i32> %i.bi, %i.bh
  %i.bm = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx)
  %i.bn = xor i32 %i.bl, %i.bm
  tail call void @free(ptr noundef nonnull %i.a) #11
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bn) ; 0 uses
  %i.bp = add nuw nsw i32 %.0715, 1               ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bp, 5
  br i1 %exitcond17.not, label %bb.c, label %vector.ph24, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"long long", !6, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11, !13, !12}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
end_hunk_0
