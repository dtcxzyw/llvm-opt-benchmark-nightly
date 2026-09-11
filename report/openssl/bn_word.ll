Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_word?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @BN_mod_word(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4294967296
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @BN_dup(ptr noundef %0) #4 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @BN_div_word(ptr noundef nonnull %i.c, i64 noundef %1)
  tail call void @BN_free(ptr noundef nonnull %i.c) #4
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.i = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.j = zext nneg i32 %i.g to i64                ; 4 uses
  %xtraiter = and i64 %i.j, 1
  %2 = icmp eq i32 %i.g, 1
  br i1 %2, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.new ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.new ], [ %i.r, %bb.f ]
  %.02125 = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %3 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv
  %4 = getelementptr i8, ptr %3, i64 -8
  %5 = load i64, ptr %4, align 8, !tbaa !14       ; 2 uses
  %6 = tail call i64 @llvm.fshl.i64(i64 %indvars.iv.a, i64 %5, i64 32)
  %7 = urem i64 %6, %1
  %8 = shl nuw i64 %7, 32
  %9 = and i64 %5, 4294967295
  %10 = or disjoint i64 %8, %9
  %11 = urem i64 %10, %1
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = tail call i64 @llvm.fshl.i64(i64 %11, i64 %i.l, i64 32)
  %i.n = urem i64 %i.m, %1
  %i.o = shl nuw i64 %i.n, 32
  %i.p = and i64 %i.l, 4294967295
  %i.q = or disjoint i64 %i.o, %i.p
  %i.r = urem i64 %i.q, %1                        ; 3 uses
  %niter.next.1 = add i64 %.02125, 2              ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !18

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %.loopexit.loopexit.unr-lcssa ]
  %.02125.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.r, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %12 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %13 = getelementptr i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 8, !tbaa !14     ; 2 uses
  %15 = tail call i64 @llvm.fshl.i64(i64 %.02125.epil.init, i64 %14, i64 32)
  %16 = urem i64 %15, %1
  %17 = shl nuw i64 %16, 32
  %18 = and i64 %14, 4294967295
  %19 = or disjoint i64 %17, %18
  %20 = urem i64 %19, %1
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.d, %bb.c, %bb.a
  %.1 = phi i64 [ -1, %bb.c ], [ -1, %bb.a ], [ %i.e, %bb.d ], [ 0, %bb.e ], [ %i.r, %.loopexit.loopexit.unr-lcssa ], [ %20, %.epil.preheader ]
  ret i64 %.1
}

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @BN_div_word(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_num_bits_word(i64 noundef %1) #4
  %i.e = sub nsw i32 64, %i.d                     ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = shl i64 %1, %i.f                         ; 2 uses
  %i.h = tail call i32 @BN_lshift(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %i.e) #4
  %.not36 = icmp eq i32 %i.h, 0
  br i1 %.not36, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %thread-pre-split

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.k = zext nneg i32 %i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03338 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.q, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.o = tail call i64 @bn_div_words(i64 noundef %.03338, i64 noundef %i.n, i64 noundef %i.g) #4 ; 2 uses
  %i.p = mul i64 %i.o, %i.g
  %i.q = sub i64 %i.n, %i.p                       ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store i64 %i.o, ptr %i.s, align 8, !tbaa !14
  %i.t = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %.pre41 = load i32, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %i.u = icmp sgt i32 %.pre41, 0
  br i1 %i.u, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %0, align 8, !tbaa !12
  %i.w = zext nneg i32 %.pre41 to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e
  %i.ab = lshr i64 %i.q, %i.f
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i32 %.pre41, -1                 ; 2 uses
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.f, %._crit_edge
  %.033.lcssa46 = phi i64 [ %i.q, %._crit_edge ], [ %i.q, %bb.f ], [ 0, %bb.d ]
  %i.ad = phi i32 [ %.pre41, %._crit_edge ], [ %i.ac, %bb.f ], [ %i.i, %bb.d ]
  %i.ae = lshr i64 %.033.lcssa46, %i.f            ; 2 uses
  %.not37 = icmp eq i32 %i.ad, 0
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %thread-pre-split
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.af, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.thread, %thread-pre-split, %bb.g, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.b ], [ %i.ae, %bb.g ], [ %i.ae, %thread-pre-split ], [ %i.ab, %thread-pre-split.thread ]
  ret i64 %.0
}

declare void @BN_free(ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #1

declare i32 @BN_lshift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @bn_div_words(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @BN_add_word(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.critedge42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @BN_is_zero(ptr noundef %0) #4
  %.not37 = icmp eq i32 %i.a, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef %1) #4
  br label %.critedge42

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %.not38 = icmp eq i32 %i.d, 0
  br i1 %.not38, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 6 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not54 = icmp slt i32 %i.f, 1
  br i1 %exitcond.not54, label %.critedge, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %.preheader
  %i.g = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = add i64 %i.h, %1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !14
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.e, label %.critedge42, !llvm.loop !20

bb.e:                                             ; preds = %.lr.ph.peel
  %exitcond.not.peel = icmp eq i32 %i.f, 1
  br i1 %exitcond.not.peel, label %.critedge, label %.lr.ph.preheader.peel.newph

.lr.ph.preheader.peel.newph:                      ; preds = %bb.e
  %i.k = load ptr, ptr %0, align 8, !tbaa !12
  br label %.lr.ph

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.l = tail call i32 @BN_sub_word(ptr noundef nonnull %0, i64 noundef %1) ; 2 uses
  %i.m = tail call i32 @BN_is_zero(ptr noundef nonnull %0) #4
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %bb.g, label %.critedge42

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.c, align 8, !tbaa !16
  %.not41 = icmp eq i32 %i.n, 0
  %i.o = zext i1 %.not41 to i32
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %.critedge42

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph.preheader.peel.newph, %bb.h
  %indvars.iv55 = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.lr.ph.preheader.peel.newph ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv55 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1                          ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !14
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %.critedge42, !llvm.loop !20

.critedge:                                        ; preds = %bb.e, %bb.h, %.preheader
  %.03346.lcssa = phi i64 [ %1, %.preheader ], [ 1, %bb.h ], [ 1, %bb.e ]
  %i.t = icmp sgt i32 %i.f, -1
  br i1 %i.t, label %bb.i, label %.critedge42

bb.i:                                             ; preds = %.critedge
  %i.u = add nuw nsw i32 %i.f, 1
  %i.v = tail call ptr @bn_wexpand(ptr noundef nonnull %0, i32 noundef %i.u) #4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge42, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.e, align 8, !tbaa !11
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.e, align 8, !tbaa !11
  %i.z = load ptr, ptr %0, align 8, !tbaa !12
  %i.aa = zext nneg i32 %i.f to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store i64 %.03346.lcssa, ptr %i.ab, align 8, !tbaa !14
  br label %.critedge42

.critedge42:                                      ; preds = %.lr.ph.peel, %.lr.ph, %.critedge, %bb.j, %bb.i, %bb.f, %bb.g, %bb.a, %bb.c
  %.034 = phi i32 [ %i.b, %bb.c ], [ 1, %bb.a ], [ %i.l, %bb.f ], [ 0, %bb.i ], [ %i.l, %bb.g ], [ 1, %.critedge ], [ 1, %bb.j ], [ 1, %.lr.ph ], [ 1, %.lr.ph.peel ]
  ret i32 %.034
}

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare i32 @BN_set_word(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @BN_sub_word(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @BN_is_zero(ptr noundef %0) #4
  %.not43 = icmp eq i32 %i.a, 0
  br i1 %.not43, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef %1) #4 ; 2 uses
  %.not46 = icmp eq i32 %i.b, 0
  br i1 %.not46, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BN_set_negative(ptr noundef %0, i32 noundef 1) #4
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %.not44 = icmp eq i32 %i.d, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.e = tail call i32 @BN_add_word(ptr noundef nonnull %0, i64 noundef %1)
  store i32 1, ptr %i.c, align 8, !tbaa !16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = icmp eq i32 %i.g, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !12    ; 6 uses
  %.pre59 = load i64, ptr %.pre, align 8, !tbaa !14 ; 5 uses
  %i.i = icmp ult i64 %.pre59, %1
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = sub nuw i64 %1, %.pre59
  store i64 %i.j, ptr %.pre, align 8, !tbaa !14
  store i32 1, ptr %i.c, align 8, !tbaa !16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not4548 = icmp ult i64 %.pre59, %1
  br i1 %.not4548, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.k = sub i64 %.pre59, %1
  store i64 %i.k, ptr %.pre, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not45.peel = icmp eq i64 %i.m, 0
  br i1 %.not45.peel, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit.loopexit:                    ; preds = %.lr.ph
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %._crit_edge.loopexit.loopexit, %bb.i
  %.038.lcssa = phi i64 [ %1, %bb.i ], [ 1, %._crit_edge.loopexit.loopexit ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ %i.n, %._crit_edge.loopexit.loopexit ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.lcssa47 = phi ptr [ %.pre, %bb.i ], [ %i.t, %._crit_edge.loopexit.loopexit ], [ %i.l, %.lr.ph.preheader ]
  %.lcssa = phi i64 [ %.pre59, %bb.i ], [ %i.u, %._crit_edge.loopexit.loopexit ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.o = sub nuw i64 %.lcssa, %.038.lcssa
  store i64 %i.o, ptr %.lcssa47, align 8, !tbaa !14
  %i.p = icmp eq i64 %.lcssa, %.038.lcssa
  %i.q = add nsw i32 %i.g, -1
  %i.r = icmp eq i32 %.0.lcssa, %i.q
  %or.cond66 = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond66, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %i.s = phi ptr [ %i.t, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  store i64 -1, ptr %i.s, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %.not45 = icmp eq i64 %i.u, 0
  br i1 %.not45, label %.lr.ph, label %._crit_edge.loopexit.loopexit, !llvm.loop !22

bb.j:                                             ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr %i.f, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.c, %bb.d, %bb.a, %bb.h, %bb.f
  %.039 = phi i32 [ 1, %bb.a ], [ %i.e, %bb.f ], [ 1, %bb.h ], [ 0, %bb.c ], [ %i.b, %bb.d ], [ 1, %bb.j ], [ 1, %._crit_edge ]
  ret i32 %.039
}

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_set_negative(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_mul_word(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @BN_zero_ex(ptr noundef nonnull %0) #4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = tail call i64 @bn_mul_words(ptr noundef %i.d, ptr noundef %i.d, i32 noundef %i.b, i64 noundef %1) #4 ; 2 uses
  %.not17 = icmp eq i64 %i.e, 0
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.a, align 8, !tbaa !11
  %i.g = add nsw i32 %i.f, 1
  %i.h = tail call ptr @bn_wexpand(ptr noundef nonnull %0, i32 noundef %i.g) #4
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  %i.k = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !11
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  store i64 %i.e, ptr %i.n, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.f, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #1

declare i64 @bn_mul_words(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"bignum_st", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!11 = !{!10, !5, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!10, !5, i64 16}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15, !17}
!22 = distinct !{!22, !17}
end_hunk_0
