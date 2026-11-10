Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_test_fuzzer?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SDLTest_RandomSint32BoundaryValue:bb.a
.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.i = add nsw i64 %..i, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %i.j, align 16
  br label %.loopexit.thread.i

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.k = add nsw i64 %..i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = add nsw i64 %.53.i, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.53.i, ptr %i.o, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp sgt i64 %..i, -2147483648
  br i1 %.not.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i64 %..i, -1
  store i64 %i.p, ptr %i.a, align 16
  %i.q = icmp slt i64 %.53.i, 2147483647
  br i1 %i.q, label %bb.g, label %.thread.i

.thread:                                          ; preds = %bb.e
  %i.r = icmp slt i64 %.53.i, 2147483647
  br i1 %i.r, label %bb.g, label %.loopexit.i.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %.1.i4 = phi i8 [ 0, %.thread ], [ 1, %bb.f ]   ; 2 uses
  %i.s = add nsw i64 %.53.i, 1
  %i.t = zext nneg i8 %.1.i4 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  store i64 %i.s, ptr %i.u, align 8
  %i.v = add nuw nsw i8 %.1.i4, 1
  br label %.thread.i

.loopexit.thread.i:                               ; preds = %.preheader.i.2, %.preheader.i.1, %.preheader.preheader.i
  %i.w = trunc nuw nsw i64 %smax.i to i8
  br label %.thread.i

.loopexit.i.thread:                               ; preds = %.thread
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %SDLTest_GenerateSignedBoundaryValues.exit

.thread.i:                                        ; preds = %bb.f, %.loopexit.thread.i, %bb.g, %bb.d
  %.255.i = phi i8 [ %i.w, %.loopexit.thread.i ], [ %i.v, %bb.g ], [ 4, %bb.d ], [ 1, %bb.f ]
  %i.y = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @fuzzerInvocationCounter, align 4
  %i.aa = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = trunc nuw i32 %i.ab to i8
  %i.ad = urem i8 %i.ac, %.255.i
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  br label %SDLTest_GenerateSignedBoundaryValues.exit

SDLTest_GenerateSignedBoundaryValues.exit:        ; preds = %bb.b, %.loopexit.i.thread, %.thread.i
  %.047.i = phi i64 [ %i.ag, %.thread.i ], [ -2147483648, %.loopexit.i.thread ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ah = trunc i64 %.047.i to i32
  ret i32 %i.ah
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SDLTest_RandomSint64BoundaryValue(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %..i = tail call i64 @llvm.smin.i64(i64 %0, i64 %1) ; 9 uses
  %.53.i = tail call i64 @llvm.smax.i64(i64 %0, i64 %1) ; 6 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, %0
  br i1 %i.b, label %SDLTest_GenerateSignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i64 %.53.i, %..i                 ; 4 uses
  %i.d = icmp slt i64 %i.c, 4
  br i1 %i.d, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.c
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.c, i64 1)
  store i64 %..i, ptr %i.a, align 16
  %exitcond.not.i = icmp slt i64 %i.c, 2
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.preheader.i
  %i.e = add nsw i64 %..i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %exitcond.not.i.1 = icmp eq i64 %i.c, 2
  br i1 %exitcond.not.i.1, label %.loopexit.thread.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.g = add nsw i64 %..i, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.h, align 16
  br label %.loopexit.thread.i

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.i = add nsw i64 %..i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = add nsw i64 %.53.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.53.i, ptr %i.m, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not.i.not = icmp eq i64 %..i, -9223372036854775808
  br i1 %.not.i.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i64 %..i, -1
  store i64 %i.n, ptr %i.a, align 16
  %.not5 = icmp eq i64 %.53.i, 9223372036854775807
  br i1 %.not5, label %.thread.i, label %bb.g

.thread:                                          ; preds = %bb.e
  %.not = icmp eq i64 %.53.i, 9223372036854775807
  br i1 %.not, label %.loopexit.i.thread, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.1.i4 = phi i8 [ 0, %.thread ], [ 1, %bb.f ]   ; 2 uses
  %i.o = add nsw i64 %.53.i, 1
  %i.p = zext nneg i8 %.1.i4 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  store i64 %i.o, ptr %i.q, align 8
  %i.r = add nuw nsw i8 %.1.i4, 1
  br label %.thread.i

.loopexit.thread.i:                               ; preds = %.preheader.i.2, %.preheader.i.1, %.preheader.preheader.i
  %i.s = trunc nuw nsw i64 %smax.i to i8
  br label %.thread.i

.loopexit.i.thread:                               ; preds = %.thread
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %SDLTest_GenerateSignedBoundaryValues.exit

.thread.i:                                        ; preds = %bb.f, %.loopexit.thread.i, %bb.g, %bb.d
  %.255.i = phi i8 [ %i.s, %.loopexit.thread.i ], [ %i.r, %bb.g ], [ 4, %bb.d ], [ 1, %bb.f ]
  %i.u = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr @fuzzerInvocationCounter, align 4
  %i.w = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.x = lshr i32 %i.w, 24
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = urem i8 %i.y, %.255.i
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  br label %SDLTest_GenerateSignedBoundaryValues.exit

SDLTest_GenerateSignedBoundaryValues.exit:        ; preds = %bb.b, %.loopexit.i.thread, %.thread.i
  %.047.i = phi i64 [ %i.ac, %.thread.i ], [ -9223372036854775808, %.loopexit.i.thread ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i64 %.047.i
}

; Function Attrs: nounwind uwtable
define dso_local float @SDLTest_RandomUnitFloat() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @SDL_randf_r(ptr noundef nonnull @rndContext) #6
  ret float %i.a
}

declare float @SDL_randf_r(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef float @SDLTest_RandomFloat() local_unnamed_addr #2 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.d = bitcast i32 %i.c to float                ; 3 uses
  %i.e = tail call i32 @SDL_isnanf(float noundef %i.d) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge.backedge

bb.b:                                             ; preds = %.critedge
  %i.f = tail call i32 @SDL_isinff(float noundef %i.d) #6
  %.not3 = icmp eq i32 %i.f, 0
  br i1 %.not3, label %bb.c, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.b, %.critedge
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  ret float %i.d
}

declare i32 @SDL_isnanf(float noundef) local_unnamed_addr #3

declare i32 @SDL_isinff(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @SDLTest_RandomUnitDouble() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.d = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @fuzzerInvocationCounter, align 4
  %i.f = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %.sroa.4.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.g = lshr i64 %.sroa.0.0.insert.insert.i, 11
  %i.h = uitofp nneg i64 %i.g to double
  %i.i = fmul nnan double %i.h, f0x3CA0000000000000
  ret double %i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef double @SDLTest_RandomDouble() local_unnamed_addr #2 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.d = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @fuzzerInvocationCounter, align 4
  %i.f = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %.sroa.4.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.g = bitcast i64 %.sroa.0.0.insert.insert.i to double ; 3 uses
  %i.h = tail call i32 @SDL_isnan(double noundef %i.g) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.critedge.backedge

bb.b:                                             ; preds = %.critedge
  %i.i = tail call i32 @SDL_isinf(double noundef %i.g) #6
  %.not3 = icmp eq i32 %i.i, 0
  br i1 %.not3, label %bb.c, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.b, %.critedge
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  ret double %i.g
}

declare i32 @SDL_isnan(double noundef) local_unnamed_addr #3

declare i32 @SDL_isinf(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @SDLTest_RandomAsciiString() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.d = and i32 %i.c, 255
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = add nuw nsw i32 %spec.store.select.i, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @SDL_malloc(i64 noundef %i.f) #6 ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %SDLTest_RandomAsciiStringWithMaximumLength.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.h = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr @fuzzerInvocationCounter, align 4
  %i.j = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef 95) #6
  %i.k = trunc i32 %i.j to i8
  %i.l = add i8 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  store i8 %i.l, ptr %i.m, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %wide.trip.count.i.i
  store i8 0, ptr %i.n, align 1
  %i.o = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr @fuzzerInvocationCounter, align 4
  br label %SDLTest_RandomAsciiStringWithMaximumLength.exit

SDLTest_RandomAsciiStringWithMaximumLength.exit:  ; preds = %bb.a, %._crit_edge.i.i
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @SDLTest_RandomAsciiStringWithMaximumLength(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %SDLTest_RandomAsciiStringOfSize.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @fuzzerInvocationCounter, align 4
  %i.e = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #6
  %i.f = add nuw nsw i32 %0, 1
  %i.g = urem i32 %i.e, %i.f
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.h = add nuw nsw i32 %spec.store.select, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call noalias ptr @SDL_malloc(i64 noundef %i.i) #6 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %SDLTest_RandomAsciiStringOfSize.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %spec.store.select to i64 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.k = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @fuzzerInvocationCounter, align 4
  %i.m = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef 95) #6
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.n, 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i
  store i8 %i.o, ptr %i.p, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %wide.trip.count.i
  store i8 0, ptr %i.q, align 1
  %i.r = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr @fuzzerInvocationCounter, align 4
  br label %SDLTest_RandomAsciiStringOfSize.exit

SDLTest_RandomAsciiStringOfSize.exit:             ; preds = %._crit_edge.i, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.j, %._crit_edge.i ]
  ret ptr %.0
}

declare zeroext i1 @SDL_SetError(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @SDLTest_RandomAsciiStringOfSize(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %0, 1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = tail call noalias ptr @SDL_malloc(i64 noundef %i.d) #6 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr @fuzzerInvocationCounter, align 4
  %i.h = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef 95) #6
  %i.i = trunc i32 %i.h to i8
  %i.j = add i8 %i.i, 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %wide.trip.count
  store i8 0, ptr %i.l, align 1
  %i.m = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr @fuzzerInvocationCounter, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.011 = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ], [ null, %bb.c ]
  ret ptr %.011
}

declare noalias ptr @SDL_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"llvm.loop.mustprogress"}
end_hunk_0
