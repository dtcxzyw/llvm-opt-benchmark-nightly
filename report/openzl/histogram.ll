Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/histogram?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @ZL_Histogram_create(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = shl nuw nsw i64 %i.a, 2
  %i.c = add nuw nsw i64 %i.b, 24
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10 ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.f, align 4, !tbaa !14
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.g, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %0, ptr %i.h, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ZL_Histogram_init(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 4, !tbaa !14
  store i32 0, ptr %0, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.d, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @ZL_Histogram_destroy(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  tail call void @free(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ZL_Histogram_count(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %5, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @ZS_HIST_countFast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #11
  %i.c = trunc i64 %i.b to i32
  br label %ZS_Histogram_count16.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !18
  %i.e = add i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.g, i1 false)
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %bb.d, label %.preheader53.i.preheader

.preheader53.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %4, 1
  %i.i = icmp eq i64 %4, 1
  br i1 %i.i, label %.preheader53.i.epil.preheader, label %.preheader53.i.preheader.new

.preheader53.i.preheader.new:                     ; preds = %.preheader53.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %.preheader53.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !18
  store i32 0, ptr %2, align 4, !tbaa !18
  br label %ZS_Histogram_count16.exit

.unr-lcssa:                                       ; preds = %.preheader53.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.preheader53.i.epil.preheader

.preheader53.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader53.i.preheader
  %.04455.i.epil.init = phi i64 [ 0, %.preheader53.i.preheader ], [ %i.ay, %.unr-lcssa ]
  %.04554.i.epil.init = phi i32 [ 0, %.preheader53.i.preheader ], [ %spec.select.i.1, %.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.04455.i.epil.init
  %i.k = load i16, ptr %i.j, align 2, !tbaa !20   ; 2 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !18
  %i.p = zext i16 %i.k to i32
  %spec.select.i.epil = tail call i32 @llvm.umax.i32(i32 %.04554.i.epil.init, i32 %i.p)
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.preheader53.i.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %.unr-lcssa ], [ %spec.select.i.epil, %.preheader53.i.epil.preheader ] ; 5 uses
  %i.q = zext nneg i32 %spec.select.i.lcssa to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  %i.t = zext i32 %i.s to i64
  %i.u = icmp eq i64 %4, %i.t
  br i1 %i.u, label %bb.f, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.e
  %i.v = add nuw nsw i32 %spec.select.i.lcssa, 1
  %wide.trip.count.i = zext nneg i32 %i.v to i64  ; 3 uses
  %min.iters.check = icmp samesign ult i32 %spec.select.i.lcssa, 7
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 131064     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !18 ; 2 uses
  %wide.load15 = load <4 x i32>, ptr %i.x, align 4, !tbaa !18 ; 2 uses
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi13) ; 2 uses
  %i.z = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load15, <4 x i32> %vec.phi14) ; 2 uses
  %i.aa = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.ab = icmp ne <4 x i32> %wide.load15, zeroinitializer
  %i.ac = zext <4 x i1> %i.aa to <4 x i32>
  %i.ad = zext <4 x i1> %i.ab to <4 x i32>
  %i.ae = add <4 x i32> %vec.phi, %i.ac           ; 2 uses
  %i.af = add <4 x i32> %vec.phi12, %i.ad         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.y, <4 x i32> %i.z)
  %i.ai = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %.04157.i.ph = phi i32 [ 0, %.preheader.preheader.i ], [ %i.ah, %middle.block ]
  %.04256.i.ph = phi i32 [ 0, %.preheader.preheader.i ], [ %i.ai, %middle.block ]
  br label %.preheader.i

.preheader53.i:                                   ; preds = %.preheader53.i, %.preheader53.i.preheader.new
  %.04455.i = phi i64 [ 0, %.preheader53.i.preheader.new ], [ %i.ay, %.preheader53.i ] ; 3 uses
  %.04554.i = phi i32 [ 0, %.preheader53.i.preheader.new ], [ %spec.select.i.1, %.preheader53.i ]
  %niter = phi i64 [ 0, %.preheader53.i.preheader.new ], [ %niter.next.1, %.preheader53.i ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.04455.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !20 ; 2 uses
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !18
  %i.ap = zext i16 %i.ak to i32
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.04554.i, i32 %i.ap)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.04455.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !20 ; 2 uses
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !18
  %i.ax = zext i16 %i.as to i32
  %spec.select.i.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i, i32 %i.ax) ; 3 uses
  %i.ay = add nuw i64 %.04455.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader53.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  store i32 %spec.select.i.lcssa, ptr %1, align 4, !tbaa !18
  store i32 1, ptr %2, align 4, !tbaa !18
  %i.az = load i32, ptr %i.r, align 4, !tbaa !18
  br label %ZS_Histogram_count16.exit

.loopexit:                                        ; preds = %.preheader.i, %middle.block
  %spec.select52.i.lcssa = phi i32 [ %i.ai, %middle.block ], [ %spec.select52.i, %.preheader.i ]
  %.1.i.lcssa = phi i32 [ %i.ah, %middle.block ], [ %.1.i, %.preheader.i ]
  store i32 %spec.select.i.lcssa, ptr %1, align 4, !tbaa !18
  store i32 %.1.i.lcssa, ptr %2, align 4, !tbaa !18
  br label %ZS_Histogram_count16.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.04157.i = phi i32 [ %.1.i, %.preheader.i ], [ %.04157.i.ph, %.preheader.i.preheader ]
  %.04256.i = phi i32 [ %spec.select52.i, %.preheader.i ], [ %.04256.i.ph, %.preheader.i.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18 ; 2 uses
  %spec.select52.i = tail call i32 @llvm.umax.i32(i32 %i.bb, i32 %.04256.i) ; 2 uses
  %.not51.i = icmp ne i32 %i.bb, 0
  %i.bc = zext i1 %.not51.i to i32
  %.1.i = add i32 %.04157.i, %i.bc                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond60.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !25

ZS_Histogram_count16.exit:                        ; preds = %.loopexit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.d ], [ %i.az, %bb.f ], [ %spec.select52.i.lcssa, %.loopexit ]
  ret i32 %.0
}

declare i64 @ZS_HIST_countFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @ZL_Histogram_build(ptr noundef initializes((0, 4), (12, 16)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.a, ptr %i.b, align 4, !tbaa !13
  %i.c = trunc i64 %2 to i32
  store i32 %i.c, ptr %0, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @ZS_HIST_countFast(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %2) #11
  %i.i = trunc i64 %i.h to i32
  br label %ZL_Histogram_count.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 4, !tbaa !18
  %i.k = add i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.m, i1 false)
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.d, label %.preheader53.i.i.preheader

.preheader53.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i64 %2, 1
  %i.o = icmp eq i64 %2, 1
  br i1 %i.o, label %.preheader53.i.i.epil.preheader, label %.preheader53.i.i.preheader.new

.preheader53.i.i.preheader.new:                   ; preds = %.preheader53.i.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.preheader53.i.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !18
  store i32 0, ptr %i.f, align 4, !tbaa !18
  br label %ZL_Histogram_count.exit

.unr-lcssa:                                       ; preds = %.preheader53.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.preheader53.i.i.epil.preheader

.preheader53.i.i.epil.preheader:                  ; preds = %.unr-lcssa, %.preheader53.i.i.preheader
  %.04455.i.i.epil.init = phi i64 [ 0, %.preheader53.i.i.preheader ], [ %i.be, %.unr-lcssa ]
  %.04554.i.i.epil.init = phi i32 [ 0, %.preheader53.i.i.preheader ], [ %spec.select.i.i.1, %.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04455.i.i.epil.init
  %i.q = load i16, ptr %i.p, align 2, !tbaa !20   ; 2 uses
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !18
  %i.v = zext i16 %i.q to i32
  %spec.select.i.i.epil = tail call i32 @llvm.umax.i32(i32 %.04554.i.i.epil.init, i32 %i.v)
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.preheader53.i.i.epil.preheader
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.1, %.unr-lcssa ], [ %spec.select.i.i.epil, %.preheader53.i.i.epil.preheader ] ; 5 uses
  %i.w = zext nneg i32 %spec.select.i.i.lcssa to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp eq i64 %2, %i.z
  br i1 %i.aa, label %bb.f, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.ab = add nuw nsw i32 %spec.select.i.i.lcssa, 1
  %wide.trip.count.i.i = zext nneg i32 %i.ab to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %spec.select.i.i.lcssa, 7
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 131064   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %wide.load13 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.ae = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi11) ; 2 uses
  %i.af = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load13, <4 x i32> %vec.phi12) ; 2 uses
  %i.ag = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.ah = icmp ne <4 x i32> %wide.load13, zeroinitializer
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = add <4 x i32> %vec.phi, %i.ai           ; 2 uses
  %i.al = add <4 x i32> %vec.phi10, %i.aj         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ae, <4 x i32> %i.af)
  %i.ao = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.preheader.preheader.i.i ], [ %n.vec, %middle.block ]
  %.04157.i.i.ph = phi i32 [ 0, %.preheader.preheader.i.i ], [ %i.an, %middle.block ]
  %.04256.i.i.ph = phi i32 [ 0, %.preheader.preheader.i.i ], [ %i.ao, %middle.block ]
  br label %.preheader.i.i

.preheader53.i.i:                                 ; preds = %.preheader53.i.i, %.preheader53.i.i.preheader.new
  %.04455.i.i = phi i64 [ 0, %.preheader53.i.i.preheader.new ], [ %i.be, %.preheader53.i.i ] ; 3 uses
  %.04554.i.i = phi i32 [ 0, %.preheader53.i.i.preheader.new ], [ %spec.select.i.i.1, %.preheader53.i.i ]
  %niter = phi i64 [ 0, %.preheader53.i.i.preheader.new ], [ %niter.next.1, %.preheader53.i.i ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04455.i.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !20 ; 2 uses
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !18
  %i.av = zext i16 %i.aq to i32
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %.04554.i.i, i32 %i.av)
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04455.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !20 ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !18
  %i.bd = zext i16 %i.ay to i32
  %spec.select.i.i.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i, i32 %i.bd) ; 3 uses
  %i.be = add nuw i64 %.04455.i.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader53.i.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  store i32 %spec.select.i.i.lcssa, ptr %i.e, align 4, !tbaa !18
  store i32 1, ptr %i.f, align 4, !tbaa !18
  br label %ZL_Histogram_count.exit

.loopexit:                                        ; preds = %.preheader.i.i, %middle.block
  %spec.select52.i.i.lcssa = phi i32 [ %i.ao, %middle.block ], [ %spec.select52.i.i, %.preheader.i.i ]
  %.1.i.i.lcssa = phi i32 [ %i.an, %middle.block ], [ %.1.i.i, %.preheader.i.i ]
  store i32 %spec.select.i.i.lcssa, ptr %i.e, align 4, !tbaa !18
  store i32 %.1.i.i.lcssa, ptr %i.f, align 4, !tbaa !18
  br label %ZL_Histogram_count.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ %indvars.iv.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.04157.i.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ %.04157.i.i.ph, %.preheader.i.i.preheader ]
  %.04256.i.i = phi i32 [ %spec.select52.i.i, %.preheader.i.i ], [ %.04256.i.i.ph, %.preheader.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18 ; 2 uses
  %spec.select52.i.i = tail call i32 @llvm.umax.i32(i32 %i.bg, i32 %.04256.i.i) ; 2 uses
  %.not51.i.i = icmp ne i32 %i.bg, 0
  %i.bh = zext i1 %.not51.i.i to i32
  %.1.i.i = add i32 %.04157.i.i, %i.bh            ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond60.not.i.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !27

ZL_Histogram_count.exit:                          ; preds = %bb.b, %bb.d, %bb.f, %.loopexit
  %.0.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.d ], [ %i.y, %bb.f ], [ %spec.select52.i.i.lcssa, %.loopexit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.i, ptr %i.bi, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !21}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20}
!13 = !{!12, !9, i64 12}
!14 = !{!12, !9, i64 8}
!15 = !{!12, !9, i64 0}
!16 = !{!12, !9, i64 16}
!17 = !{!12, !9, i64 4}
!18 = !{!9, !9, i64 0}
!19 = !{!"short", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !21, !22, !23}
!25 = distinct !{!25, !21, !23, !22}
!26 = distinct !{!26, !21, !22, !23}
!27 = distinct !{!27, !21, !23, !22}
end_hunk_0
