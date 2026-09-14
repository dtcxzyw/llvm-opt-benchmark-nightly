Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_RenderClear_REAL:bb.a
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr %i.i, align 8
  store ptr null, ptr %i.k, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noalias dereferenceable_or_null(88) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 88) #16 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.m, null
  br i1 %.not19.i.i, label %QueueCmdClear.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not20.i.i = icmp eq ptr %i.o, null
  br i1 %.not20.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %.0.i.i, ptr %i.p, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %.0.i.i, ptr %i.q, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.0.i.i, ptr %i.n, align 8
  store i32 4, ptr %.0.i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.t = load float, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store float %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 540
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false)
  br label %QueueCmdClear.exit

QueueCmdClear.exit:                               ; preds = %bb.j, %bb.f, %bb.c, %SDL_ObjectValid.exit.thread5
  %.0 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread5 ], [ true, %bb.j ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_RenderPoint_REAL(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.SDL_FPoint, align 4         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store float %1, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %2, ptr %i.b, align 4
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread18.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.e, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread18.i

SDL_ObjectValid.exit.thread18.i:                  ; preds = %SDL_ObjectValid.exit.i, %bb.a
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_RenderPoints_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_RenderPoints_REAL.exit

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load float, ptr %i.m, align 4
  %i.o = fcmp une float %i.n, 1.000000e+00
  br i1 %i.o, label %RenderPointsWithRects.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp une float %i.q, 1.000000e+00
  br i1 %i.r, label %RenderPointsWithRects.exit, label %bb.f

RenderPointsWithRects.exit:                       ; preds = %bb.e, %bb.d
  %savedstack = tail call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load <2 x float>, ptr %i.t, align 4
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %1, i64 0
  %i.x = insertelement <4 x float> %i.w, float %2, i64 1
  %i.y = fmul <4 x float> %i.v, %i.x
  store <4 x float> %i.y, ptr %i.a, align 16
  %i.z = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br label %SDL_RenderPoints_REAL.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = call fastcc zeroext i1 @QueueCmdDrawPoints(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1)
  br label %SDL_RenderPoints_REAL.exit

SDL_RenderPoints_REAL.exit:                       ; preds = %SDL_ObjectValid.exit.thread18.i, %bb.c, %RenderPointsWithRects.exit, %bb.f
  %.014.i = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread18.i ], [ %i.aa, %bb.f ], [ %i.z, %RenderPointsWithRects.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 %.014.i
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderPoints_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread18

SDL_ObjectValid.exit.thread18:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.k

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.78) #14
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %2, 1
  br i1 %i.j, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load float, ptr %i.m, align 4
  %i.o = fcmp une float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp une float %i.q, 1.000000e+00
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = tail call fastcc zeroext i1 @RenderPointsWithRects(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.t = tail call fastcc zeroext i1 @QueueCmdDrawPoints(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread18
  %.014 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread18 ], [ true, %bb.f ], [ %i.i, %bb.e ], [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  ret i1 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @RenderPointsWithRects(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %i.c = shl nuw nsw i64 %i.b, 4                  ; 2 uses
  %i.d = icmp samesign ult i32 %2, 8              ; 2 uses
  br i1 %i.d, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.e = alloca i8, i64 %i.c, align 16
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.c) #14 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %.thread
  %i.g = phi ptr [ %i.e, %.thread ], [ %i.f, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat43 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.l = shufflevector <4 x float> %broadcast.splat, <4 x float> %broadcast.splat43, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.vec = load <8 x float>, ptr %i.m, align 4 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.n = fmul <4 x float> %broadcast.splat, %strided.vec
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.p = fmul <4 x float> %broadcast.splat43, %strided.vec44
  %i.q = shufflevector <4 x float> %i.n, <4 x float> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.q, <8 x float> %i.l, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.o, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.u = load <2 x float>, ptr %i.s, align 4
  %i.v = fmul <2 x float> %i.k, %i.u
  store <2 x float> %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x float> %i.k, ptr %i.w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.x = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %2) ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @SDL_free_REAL(ptr noundef nonnull %i.g) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.c, %bb.a
  %.034 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ %i.x, %._crit_edge ], [ %i.x, %bb.d ]
  ret i1 %.034
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdDrawPoints(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 5, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 %i.c(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef %2) #14
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0.shrunk
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderLine_REAL(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [2 x %struct.SDL_FPoint], align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store float %1, ptr %5, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %4, ptr %i.c, align 4
  %i.d = call zeroext i1 @SDL_RenderLines_REAL(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderLines_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread316, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread316

SDL_ObjectValid.exit.thread316:                   ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.aq

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.aq

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79) #14
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %2, 2
  br i1 %i.j, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i32, ptr %i.m, align 4
  %.not313 = icmp eq i32 %i.n, 0
  br i1 %.not313, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.p = load i32, ptr %i.o, align 8
  switch i32 %i.p, label %bb.am [
    i32 2, label %bb.i
    i32 0, label %bb.al
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 6 uses
  %i.s = shl nuw nsw i32 %2, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = icmp samesign ult i32 %2, 4              ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = alloca i8, i64 %i.u, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.u) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi ptr [ %i.w, %bb.j ], [ %i.x, %bb.k ] ; 9 uses
  %i.z = add nsw i32 %2, -1                       ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 12
  %i.ab = mul nuw nsw i32 %2, 6
  %i.ac = add nuw nsw i32 %i.aa, %i.ab            ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %i.af = icmp samesign ult i32 %i.ac, 32         ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = alloca i8, i64 %i.ae, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ah = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ae) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = phi ptr [ %i.ag, %bb.m ], [ %i.ah, %bb.n ] ; 11 uses
  %i.aj = icmp ne ptr %i.y, null
  %i.ak = icmp ne ptr %i.ai, null
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.p, label %QueueCmdGeometry.exit

bb.p:                                             ; preds = %bb.o
  %i.al = shl nuw nsw i32 %2, 2
  %i.am = load float, ptr %1, align 4
  %i.an = zext nneg i32 %i.z to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp oeq float %i.am, %i.ap
  br i1 %i.aq, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load float, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = load float, ptr %i.at, align 4
  %i.av = fcmp oeq float %i.as, %i.au
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p, %bb.q
  %i.aw = phi i1 [ false, %bb.p ], [ %i.av, %bb.q ]
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.ax = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ay = extractelement <2 x float> %i.r, i64 1  ; 2 uses
  %.sroa.0.0.copyload.peel = load float, ptr %1, align 4
  %.sroa.15.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.15.0.copyload.peel = load float, ptr %.sroa.15.0..sroa_idx.peel, align 4
  %i.az = fmul float %i.ax, %.sroa.0.0.copyload.peel ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store float %i.az, ptr %i.y, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bc = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %.sroa.15.0.copyload.peel, i64 1 ; 2 uses
  %i.be = fmul <2 x float> %i.r, %i.bd            ; 2 uses
  %i.bf = fadd <2 x float> %i.r, %i.bd
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  store <4 x float> %i.bg, ptr %i.ba, align 4
  %i.bh = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.bi = fadd float %i.ay, %i.bh                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store float %i.bi, ptr %i.bb, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store float %i.az, ptr %i.bj, align 4
  store float %i.bi, ptr %i.bk, align 4
  br i1 %i.aw, label %.lr.ph.preheader.peel.newph, label %bb.r

bb.r:                                             ; preds = %.lr.ph.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
end_hunk_0
begin_hunk_1_@SDL_RenderRect_REAL:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %.020
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderRects_REAL(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread14

SDL_ObjectValid.exit.thread14:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %.loopexit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.80) #14
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %2, 1
  br i1 %i.j, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.l = tail call zeroext i1 @SDL_RenderRect_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.k) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.l, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.preheader, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.preheader, %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread14
  %.010 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread14 ], [ true, %bb.f ], [ %i.i, %bb.e ], [ %i.l, %.preheader ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderFillRect_REAL(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_FRect, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread10

SDL_ObjectValid.exit.thread10:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.l

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.m = load float, ptr %i.l, align 4
  store <2 x float> zeroinitializer, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = uitofp nneg i32 %i.o to float
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %.val, align 4
  %i.s = sitofp i32 %i.r to float
  %i.t = fdiv float %i.s, %i.k
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi float [ %i.q, %bb.f ], [ %i.t, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = uitofp nneg i32 %i.w to float
  br label %GetRenderViewportSize.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fdiv float %i.ab, %i.m
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.i, %bb.j
  %.sink1.i = phi float [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink1.i, ptr %i.ad, align 4
  br label %bb.k

bb.k:                                             ; preds = %GetRenderViewportSize.exit, %bb.d
  %.0 = phi ptr [ %1, %bb.d ], [ %2, %GetRenderViewportSize.exit ]
  %i.ae = call zeroext i1 @SDL_RenderFillRects_REAL(ptr noundef nonnull %0, ptr noundef nonnull %.0, i32 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c, %SDL_ObjectValid.exit.thread10
  %.07 = phi i1 [ false, %bb.c ], [ %i.ae, %bb.k ], [ false, %SDL_ObjectValid.exit.thread10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %.07
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderFillRects_REAL(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread48

SDL_ObjectValid.exit.thread48:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.j

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.81) #14
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %2, 1
  br i1 %i.j, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 4                  ; 2 uses
  %i.m = icmp samesign ult i32 %2, 8              ; 2 uses
  br i1 %i.m, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.n = alloca i8, i64 %i.l, align 16
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.l) #14 ; 2 uses
  %.not46 = icmp eq ptr %i.o, null
  br i1 %.not46, label %bb.j, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %.thread
  %i.p = phi ptr [ %i.n, %.thread ], [ %i.o, %bb.h ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 3 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat57 = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load float, ptr %i.v, align 4
  %i.ad = load float, ptr %i.x, align 4
  %i.ae = load float, ptr %i.z, align 4
  %i.af = load float, ptr %i.ab, align 4
  %i.ag = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 3
  %i.ak = fmul <4 x float> %broadcast.splat, %i.aj
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = load float, ptr %i.an, align 4
  %i.as = load float, ptr %i.ao, align 4
  %i.at = load float, ptr %i.ap, align 4
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = fmul <4 x float> %broadcast.splat57, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.bd = load float, ptr %i.az, align 4
  %i.be = load float, ptr %i.ba, align 4
  %i.bf = load float, ptr %i.bb, align 4
  %i.bg = load float, ptr %i.bc, align 4
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = fmul <4 x float> %broadcast.splat, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.bq = load float, ptr %i.bm, align 4
  %i.br = load float, ptr %i.bn, align 4
  %i.bs = load float, ptr %i.bo, align 4
  %i.bt = load float, ptr %i.bp, align 4
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3
  %i.by = fmul <4 x float> %broadcast.splat57, %i.bx
  %i.bz = shufflevector <4 x float> %i.ak, <4 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = shufflevector <4 x float> %i.bl, <4 x float> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bz, <8 x float> %i.ca, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.al, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader58 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ce = load <4 x float>, ptr %i.cc, align 4
  %i.cf = fmul <4 x float> %i.u, %i.ce
  store <4 x float> %i.cf, ptr %i.cd, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.cg = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.p, i32 noundef %2) ; 2 uses
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @SDL_free_REAL(ptr noundef nonnull %i.p) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge, %bb.h, %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread48
  %.041 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread48 ], [ false, %bb.h ], [ true, %bb.f ], [ %i.i, %bb.e ], [ %i.cg, %._crit_edge ], [ %i.cg, %bb.i ]
  ret i1 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdFillRects(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  %i.c = select i1 %.not, i32 10, i32 7
  %i.d = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef %i.c, ptr noundef null) ; 5 uses
  %.not96 = icmp eq ptr %i.d, null
  br i1 %.not96, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = shl nsw i32 %2, 3
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = icmp ult i64 %i.g, 128                   ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = alloca i8, i64 %i.g, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.g) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 4 uses
  %i.l = mul nsw i32 %2, 6                        ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2                      ; 3 uses
  %i.o = icmp ult i64 %i.n, 128                   ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = alloca i8, i64 %i.n, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.n) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 4 uses
  %i.s = icmp ne ptr %i.k, null
  %i.t = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i32 %2, 2
  %i.v = icmp sgt i32 %2, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.085100 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.au, %.lr.ph ] ; 6 uses
  %.08699 = phi ptr [ %i.r, %.lr.ph.preheader ], [ %i.at, %.lr.ph ] ; 7 uses
  %.08798 = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.aj, %.lr.ph ] ; 7 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08798, i64 8
  %i.z = load <2 x float>, ptr %i.w, align 4      ; 4 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  store <2 x float> %i.z, ptr %.08798, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.08798, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.08798, i64 16
  store float %i.ab, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.08798, i64 24
  %i.af = load <2 x float>, ptr %i.x, align 4
  %i.ag = fadd <2 x float> %i.z, %i.af            ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  store float %i.ah, ptr %i.y, align 4
  store <2 x float> %i.ag, ptr %i.ad, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.08798, i64 28
  store float %i.aa, ptr %i.ae, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.08798, i64 32
  %i.ak = extractelement <2 x float> %i.ag, i64 1
  store float %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.08699, i64 4
  store i32 %.085100, ptr %.08699, align 4
  %i.am = or disjoint i32 %.085100, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.08699, i64 8
  store i32 %i.am, ptr %i.al, align 4
  %i.ao = or disjoint i32 %.085100, 2             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08699, i64 12
  store i32 %i.ao, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.08699, i64 16
  store i32 %.085100, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.08699, i64 20
  store i32 %i.ao, ptr %i.aq, align 4
  %i.as = or disjoint i32 %.085100, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.08699, i64 24
  store i32 %i.as, ptr %i.ar, align 4
  %i.au = add nuw nsw i32 %.085100, 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ay = call zeroext i1 %i.aw(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef nonnull %i.k, i32 noundef 8, ptr noundef nonnull %i.ax, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %i.u, ptr noundef nonnull %i.r, i32 noundef %i.l, i32 noundef 4, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.d, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ false, %bb.k ], [ true, %._crit_edge ] ; 2 uses
  br i1 %i.h, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @SDL_free_REAL(ptr noundef %i.k) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  br i1 %i.o, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @SDL_free_REAL(ptr noundef %i.r) #14
  br label %bb.r

bb.p:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = tail call zeroext i1 %i.az(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %1, i32 noundef %2) #14
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.d, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.q, %bb.p, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.q ], [ %.0, %bb.n ], [ %.0, %bb.o ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderTexture_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.SDL_FRect, align 8          ; 7 uses
  %5 = alloca %struct.SDL_FRect, align 8          ; 6 uses
  %.not.i29 = icmp eq ptr %0, null
  br i1 %.not.i29, label %SDL_ObjectValid.exit31.thread33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit31, label %SDL_ObjectValid.exit31.thread

SDL_ObjectValid.exit31:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit31.thread, label %SDL_ObjectValid.exit31.thread33

SDL_ObjectValid.exit31.thread33:                  ; preds = %bb.a, %SDL_ObjectValid.exit31
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.t

SDL_ObjectValid.exit31.thread:                    ; preds = %bb.b, %SDL_ObjectValid.exit31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit31.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %SDL_ObjectValid.exit31.thread
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
end_hunk_1
begin_hunk_2_@remap_indices:bb.a
  br i1 %i.ai, label %remap_one_indice.exit.thread.us.1, label %bb.c

bb.c:                                             ; preds = %remap_one_indice.exit.thread.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = load float, ptr %i.f, align 4
  %i.am = fcmp une float %i.ak, %i.al
  br i1 %i.am, label %remap_one_indice.exit.thread.us.1, label %remap_one_indice.exit.us.1

remap_one_indice.exit.us.1:                       ; preds = %bb.c
  %i.an = mul nsw i32 %i.ad, %6
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %5, i64 %i.ao
  %i.aq = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.m, i64 noundef 16) #14
  %.not35.i.us.1 = icmp eq i32 %i.aq, 0
  %..i.us.1 = select i1 %.not35.i.us.1, i32 %i.ad, i32 %1 ; 2 uses
  %.not.us.1 = icmp eq i32 %..i.us.1, %1
  br i1 %.not.us.1, label %remap_one_indice.exit.us.1.remap_one_indice.exit.thread.us.1_crit_edge, label %.loopexit

remap_one_indice.exit.us.1.remap_one_indice.exit.thread.us.1_crit_edge: ; preds = %remap_one_indice.exit.us.1
  %.pre33 = load float, ptr %i.e, align 4
  br label %remap_one_indice.exit.thread.us.1

remap_one_indice.exit.thread.us.1:                ; preds = %remap_one_indice.exit.us.1.remap_one_indice.exit.thread.us.1_crit_edge, %bb.c, %remap_one_indice.exit.thread.us
  %i.ar = phi float [ %.pre33, %remap_one_indice.exit.us.1.remap_one_indice.exit.thread.us.1_crit_edge ], [ %i.ab, %bb.c ], [ %i.ab, %remap_one_indice.exit.thread.us ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = mul nsw i32 %i.at, %4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = fcmp une float %i.ax, %i.ar
  br i1 %i.ay, label %remap_one_indice.exit.thread.2, label %bb.d

bb.d:                                             ; preds = %remap_one_indice.exit.thread.us.1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = load float, ptr %i.f, align 4
  %i.bc = fcmp une float %i.ba, %i.bb
  br i1 %i.bc, label %remap_one_indice.exit.thread.2, label %remap_one_indice.exit.us.2

remap_one_indice.exit.us.2:                       ; preds = %bb.d
  %i.bd = mul nsw i32 %i.at, %6
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.be
  %i.bg = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.m, i64 noundef 16) #14
  %.not35.i.us.2 = icmp eq i32 %i.bg, 0
  %..i.us.2 = select i1 %.not35.i.us.2, i32 %i.at, i32 %1 ; 2 uses
  %.not.us.2 = icmp eq i32 %..i.us.2, %1
  br i1 %.not.us.2, label %remap_one_indice.exit.thread.2, label %.loopexit

bb.e:                                             ; preds = %.preheader.split.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = load float, ptr %i.f, align 4
  %i.bk = fcmp une float %i.bi, %i.bj
  br i1 %i.bk, label %remap_one_indice.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = mul nsw i32 %i.a, %8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %7, i64 %i.bm ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = load float, ptr %i.i, align 4
  %i.bq = fcmp une float %i.bo, %i.bp
  br i1 %i.bq, label %remap_one_indice.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = load float, ptr %i.j, align 4
  %i.bu = fcmp une float %i.bs, %i.bt
  br i1 %i.bu, label %remap_one_indice.exit.thread, label %remap_one_indice.exit

remap_one_indice.exit:                            ; preds = %bb.g
  %i.bv = mul nsw i32 %i.a, %6
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %5, i64 %i.bw
  %i.by = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.m, i64 noundef 16) #14
  %.not35.i = icmp eq i32 %i.by, 0
  %..i = select i1 %.not35.i, i32 %i.a, i32 %1    ; 2 uses
  %.not = icmp eq i32 %..i, %1
  br i1 %.not, label %remap_one_indice.exit.remap_one_indice.exit.thread_crit_edge, label %.loopexit

remap_one_indice.exit.remap_one_indice.exit.thread_crit_edge: ; preds = %remap_one_indice.exit
  %.pre = load float, ptr %i.e, align 4
  br label %remap_one_indice.exit.thread

remap_one_indice.exit.thread:                     ; preds = %remap_one_indice.exit.remap_one_indice.exit.thread_crit_edge, %bb.f, %bb.e, %.preheader.split.preheader, %bb.g
  %i.bz = phi float [ %.pre, %remap_one_indice.exit.remap_one_indice.exit.thread_crit_edge ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %.preheader.split.preheader ], [ %i.r, %bb.g ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i32, ptr %i.ca, align 4            ; 4 uses
  %i.cc = mul nsw i32 %i.cb, %4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = fcmp une float %i.cf, %i.bz
  br i1 %i.cg, label %remap_one_indice.exit.thread.1, label %bb.h

bb.h:                                             ; preds = %remap_one_indice.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = load float, ptr %i.f, align 4
  %i.ck = fcmp une float %i.ci, %i.cj
  br i1 %i.ck, label %remap_one_indice.exit.thread.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = mul nsw i32 %i.cb, %8
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %7, i64 %i.cm ; 2 uses
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = load float, ptr %i.i, align 4
  %i.cq = fcmp une float %i.co, %i.cp
  br i1 %i.cq, label %remap_one_indice.exit.thread.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = load float, ptr %i.j, align 4
  %i.cu = fcmp une float %i.cs, %i.ct
  br i1 %i.cu, label %remap_one_indice.exit.thread.1, label %remap_one_indice.exit.1

remap_one_indice.exit.1:                          ; preds = %bb.j
  %i.cv = mul nsw i32 %i.cb, %6
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %5, i64 %i.cw
  %i.cy = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.m, i64 noundef 16) #14
  %.not35.i.1 = icmp eq i32 %i.cy, 0
  %..i.1 = select i1 %.not35.i.1, i32 %i.cb, i32 %1 ; 2 uses
  %.not.1 = icmp eq i32 %..i.1, %1
  br i1 %.not.1, label %remap_one_indice.exit.1.remap_one_indice.exit.thread.1_crit_edge, label %.loopexit

remap_one_indice.exit.1.remap_one_indice.exit.thread.1_crit_edge: ; preds = %remap_one_indice.exit.1
  %.pre31 = load float, ptr %i.e, align 4
  br label %remap_one_indice.exit.thread.1

remap_one_indice.exit.thread.1:                   ; preds = %remap_one_indice.exit.1.remap_one_indice.exit.thread.1_crit_edge, %bb.j, %bb.i, %bb.h, %remap_one_indice.exit.thread
  %i.cz = phi float [ %.pre31, %remap_one_indice.exit.1.remap_one_indice.exit.thread.1_crit_edge ], [ %i.bz, %bb.j ], [ %i.bz, %bb.i ], [ %i.bz, %bb.h ], [ %i.bz, %remap_one_indice.exit.thread ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i32, ptr %i.da, align 4            ; 4 uses
  %i.dc = mul nsw i32 %i.db, %4
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %3, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fcmp une float %i.df, %i.cz
  br i1 %i.dg, label %remap_one_indice.exit.thread.2, label %bb.k

bb.k:                                             ; preds = %remap_one_indice.exit.thread.1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = load float, ptr %i.f, align 4
  %i.dk = fcmp une float %i.di, %i.dj
  br i1 %i.dk, label %remap_one_indice.exit.thread.2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dl = mul nsw i32 %i.db, %8
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %7, i64 %i.dm ; 2 uses
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = load float, ptr %i.i, align 4
  %i.dq = fcmp une float %i.do, %i.dp
  br i1 %i.dq, label %remap_one_indice.exit.thread.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = load float, ptr %i.j, align 4
  %i.du = fcmp une float %i.ds, %i.dt
  br i1 %i.du, label %remap_one_indice.exit.thread.2, label %remap_one_indice.exit.2

remap_one_indice.exit.2:                          ; preds = %bb.m
  %i.dv = mul nsw i32 %i.db, %6
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %5, i64 %i.dw
  %i.dy = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.m, i64 noundef 16) #14
  %.not35.i.2 = icmp eq i32 %i.dy, 0
  %..i.2 = select i1 %.not35.i.2, i32 %i.db, i32 %1 ; 2 uses
  %.not.2 = icmp eq i32 %..i.2, %1
  br i1 %.not.2, label %remap_one_indice.exit.thread.2, label %.loopexit

remap_one_indice.exit.thread.2:                   ; preds = %remap_one_indice.exit.thread.us.1, %bb.d, %remap_one_indice.exit.us.2, %remap_one_indice.exit.2, %bb.m, %bb.l, %bb.k, %remap_one_indice.exit.thread.1
  br label %.loopexit

.loopexit:                                        ; preds = %remap_one_indice.exit, %remap_one_indice.exit.1, %remap_one_indice.exit.2, %remap_one_indice.exit.thread.2, %remap_one_indice.exit.us, %remap_one_indice.exit.us.1, %remap_one_indice.exit.us.2, %bb.a
  %.2 = phi i32 [ %1, %bb.a ], [ %..i.us.2, %remap_one_indice.exit.us.2 ], [ %..i.2, %remap_one_indice.exit.2 ], [ %..i.us, %remap_one_indice.exit.us ], [ %..i.us.1, %remap_one_indice.exit.us.1 ], [ %..i, %remap_one_indice.exit ], [ %1, %remap_one_indice.exit.thread.2 ], [ %..i.1, %remap_one_indice.exit.1 ]
  ret i32 %.2
}

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #3

declare void @SDL_DelayPrecise_REAL(i64 noundef) local_unnamed_addr #3

declare void @SDL_SW_DestroyYUVTexture(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{ptr @FlushRenderCommandsIfTextureNeeded, null}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{ptr @SDL_GetRenderOutputSize_REAL}
!12 = !{ptr @SDL_SetTextureColorModFloat_REAL}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = !{ptr @SDL_SetTextureAlphaModFloat_REAL}
!15 = !{ptr @SDL_SetTextureBlendMode_REAL}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{ptr @QueueCmdGeometry}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{null}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !8}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{!46, !8, !17, !18}
!47 = distinct !{!47, !8, !18, !17}
!48 = distinct !{!48, !8, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8, !17, !18}
!53 = distinct !{!53, !8, !18, !17}
!54 = distinct !{!54, !8}
!55 = distinct !{null, null}
!56 = distinct !{null}
!57 = distinct !{ptr @SDL_RenderTextureInternal, null}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !8}
!62 = !{ptr @SDL_RenderTextureInternal, ptr @QueueCmdGeometry}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !8}
!68 = distinct !{null, ptr @SDL_SetTextureBlendMode_REAL, null}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !8}
!72 = !{ptr @SDL_SetTextureScaleMode_REAL}
!73 = distinct !{!73, !8}
!74 = distinct !{!74, !8}
!75 = distinct !{null}
!76 = distinct !{!76, !8}
!77 = !{ptr @QueueCmdDrawPoints}
end_hunk_2
