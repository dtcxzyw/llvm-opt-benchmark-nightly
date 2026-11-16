Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_SetRenderDrawBlendMode_REAL:bb.a

IsSupportedBlendMode.exit.thread:                 ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %IsSupportedBlendMode.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 %1, ptr %i.n, align 4
  br label %bb.g

bb.g:                                             ; preds = %IsSupportedBlendMode.exit.thread, %IsSupportedBlendMode.exit.thread14, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread11
  %.0 = phi i1 [ false, %bb.c ], [ %i.i, %bb.e ], [ true, %IsSupportedBlendMode.exit.thread ], [ %i.m, %IsSupportedBlendMode.exit.thread14 ], [ false, %SDL_ObjectValid.exit.thread11 ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GetRenderDrawBlendMode_REAL(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2147483647, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread10, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread10

SDL_ObjectValid.exit.thread10:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread10
  %.0 = phi i1 [ false, %bb.e ], [ false, %SDL_ObjectValid.exit.thread10 ], [ true, %bb.g ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_RenderClear_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread5

SDL_ObjectValid.exit.thread5:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %QueueCmdClear.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %QueueCmdClear.exit

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
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
  br i1 %i.o, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp une float %i.q, 1.000000e+00
  br i1 %i.r, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %bb.e, %bb.d
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

SDL_RenderPoints_REAL.exit:                       ; preds = %SDL_ObjectValid.exit.thread18.i, %bb.c, %.lr.ph.i, %bb.f
  %.014.i = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread18.i ], [ %i.aa, %bb.f ], [ %i.z, %.lr.ph.i ]
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
  %i.b = zext nneg i32 %2 to i64                  ; 4 uses
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
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
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
  %cmp.n = icmp eq i64 %n.vec, %i.b
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
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
end_hunk_0
begin_hunk_1_@SDL_RenderLines_REAL:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %.0293322, i64 56
  store i32 %.pre, ptr %i.eb, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.0293322, i64 60
  store i32 %i.cl, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.0293322, i64 64
  store i32 %i.dz, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.0293322, i64 68
  store i32 %i.cl, ptr %i.ee, align 4
  %i.eg = or disjoint i32 %.0324, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %.0293322, i64 72
  store i32 %i.eg, ptr %i.ef, align 4
  %i.ei = add nsw i32 %.0291323, 18
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %.0293322, i64 28
  store i32 %.pre, ptr %i.cm, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.0293322, i64 32
  store i32 %.0324, ptr %i.ej, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %.0293322, i64 36
  store i32 %i.cf, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.0293322, i64 40
  store i32 %i.cf, ptr %i.el, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.0293322, i64 44
  store i32 %.0324, ptr %i.em, align 4
  %i.eo = or disjoint i32 %.0324, 3               ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0293322, i64 48
  store i32 %i.eo, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.0293322, i64 52
  store i32 %i.cf, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %.0293322, i64 56
  store i32 %i.eo, ptr %i.eq, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.0293322, i64 60
  store i32 %i.ch, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.0293322, i64 64
  store i32 %i.ch, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.0293322, i64 68
  store i32 %i.eo, ptr %i.et, align 4
  %i.ev = or disjoint i32 %.0324, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.0293322, i64 72
  store i32 %i.ev, ptr %i.eu, align 4
  %i.ex = add nsw i32 %.0291323, 18
  br label %.thread

bb.ad:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.0293322, i64 28 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0293322, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0293322, i64 48 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0293322, i64 52 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0293322, i64 56 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0293322, i64 60 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0293322, i64 64 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0293322, i64 68 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0293322, i64 72 ; 2 uses
  %i.fh = add nsw i32 %.0291323, 18               ; 2 uses
  br i1 %i.ds, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %.0324, ptr %i.cm, align 4
  store i32 %.pre, ptr %i.ey, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.0293322, i64 36
  store i32 %i.cl, ptr %i.ez, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0293322, i64 40
  store i32 %.0324, ptr %i.fi, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0293322, i64 44
  store i32 %i.cl, ptr %i.fj, align 4
  %i.fl = or disjoint i32 %.0324, 1               ; 3 uses
  store i32 %i.fl, ptr %i.fk, align 4
  store i32 %i.fl, ptr %i.fa, align 4
  store i32 %i.cl, ptr %i.fb, align 4
  store i32 %i.ch, ptr %i.fc, align 4
  store i32 %i.fl, ptr %i.fd, align 4
  store i32 %i.ch, ptr %i.fe, align 4
  %i.fm = or disjoint i32 %.0324, 2
  store i32 %i.fm, ptr %i.ff, align 4
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  store i32 %i.ch, ptr %i.cm, align 4
  store i32 %i.cf, ptr %i.ey, align 4
  %i.fn = or disjoint i32 %.0324, 1               ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0293322, i64 36
  store i32 %i.fn, ptr %i.ez, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.0293322, i64 40
  store i32 %i.ch, ptr %i.fo, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0293322, i64 44
  store i32 %i.fn, ptr %i.fp, align 4
  store i32 %.0324, ptr %i.fq, align 4
  store i32 %i.cl, ptr %i.fa, align 4
  store i32 %i.ch, ptr %i.fb, align 4
  store i32 %.0324, ptr %i.fc, align 4
  store i32 %i.cl, ptr %i.fd, align 4
  store i32 %.0324, ptr %i.fe, align 4
  %i.fr = or disjoint i32 %.0324, 3
  store i32 %i.fr, ptr %i.ff, align 4
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.ac, %bb.ab, %bb.af, %bb.ae, %bb.x, %bb.y
  %.3296 = phi ptr [ %i.dq, %bb.y ], [ %i.db, %bb.u ], [ %i.cw, %bb.t ], [ %i.ew, %bb.ac ], [ %i.eh, %bb.ab ], [ %i.fg, %bb.af ], [ %i.fg, %bb.ae ], [ %i.dm, %bb.x ]
  %.3 = phi i32 [ %i.dr, %bb.y ], [ %i.dc, %bb.u ], [ %i.cx, %bb.t ], [ %i.ex, %bb.ac ], [ %i.ei, %bb.ab ], [ %i.fh, %bb.af ], [ %i.fh, %bb.ae ], [ %i.dn, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.thread
  %i.fs = call fastcc ptr @PrepQueueCmdDraw(ptr noundef nonnull %0, i32 noundef 10, ptr noundef null) ; 5 uses
  %.not.i314 = icmp eq ptr %i.fs, null
  br i1 %.not.i314, label %QueueCmdGeometry.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 60
  store i32 1, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  store i32 1, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call zeroext i1 %i.fx(ptr noundef nonnull %0, ptr noundef nonnull %i.fs, ptr noundef null, ptr noundef nonnull %i.y, i32 noundef 8, ptr noundef nonnull %i.ft, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef range(i32 3, -2147483648) %i.al, ptr noundef nonnull %i.ai, i32 noundef %.3, i32 noundef 4, float noundef 1.000000e+00, float noundef 1.000000e+00) #14, !inline_history !19
  br i1 %i.fy, label %QueueCmdGeometry.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.fs, align 8
  br label %QueueCmdGeometry.exit

QueueCmdGeometry.exit:                            ; preds = %bb.ah, %bb.ag, %._crit_edge, %bb.o
  %.0299 = phi i1 [ true, %bb.o ], [ true, %bb.ag ], [ false, %bb.ah ], [ false, %._crit_edge ] ; 2 uses
  br i1 %i.v, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %QueueCmdGeometry.exit
  call void @SDL_free_REAL(ptr noundef %i.y) #14
  br label %bb.aj

bb.aj:                                            ; preds = %QueueCmdGeometry.exit, %bb.ai
  br i1 %i.af, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @SDL_free_REAL(ptr noundef %i.ai) #14
  br label %bb.aq

bb.al:                                            ; preds = %bb.h
  %i.fz = tail call fastcc zeroext i1 @RenderLinesWithRectsF(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.aq

bb.am:                                            ; preds = %bb.h
  %i.ga = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.gb = load float, ptr %i.ga, align 4
  %i.gc = fcmp une float %i.gb, 1.000000e+00
  br i1 %i.gc, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.ge = load float, ptr %i.gd, align 4
  %i.gf = fcmp une float %i.ge, 1.000000e+00
  br i1 %i.gf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gg = tail call fastcc zeroext i1 @RenderLinesWithRectsF(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gh = tail call fastcc zeroext i1 @QueueCmdDrawLines(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.al, %bb.aj, %bb.ak, %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread316
  %.0301 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread316 ], [ true, %bb.f ], [ %i.i, %bb.e ], [ %i.gh, %bb.ap ], [ %i.fz, %bb.al ], [ %i.gg, %bb.ao ], [ %.0299, %bb.aj ], [ %.0299, %bb.ak ]
  ret i1 %.0301
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdGeometry(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, float noundef %12, float noundef %13, i32 noundef %14, i32 noundef %15) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %14, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %15, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 %i.e(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, float noundef %12, float noundef %13) #14
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0.shrunk
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @RenderLinesWithRectsF(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 2, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %3 = load <2 x float>, ptr %i.c, align 4
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.d = add nsw i32 %2, -1
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 4                  ; 2 uses
  %i.g = icmp samesign ult i32 %2, 9              ; 2 uses
  br i1 %i.g, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = alloca i8, i64 %i.f, align 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.f) #14 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.v, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.h, %.thread ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = add nsw i32 %2, -2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = zext nneg i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.0158 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.r ]  ; 3 uses
  %.0130157 = phi i1 [ false, %.lr.ph ], [ %.1131, %bb.r ] ; 2 uses
  %.0132156 = phi i1 [ true, %.lr.ph ], [ %.2134, %bb.r ] ; 8 uses
  %.0135155 = phi i32 [ 0, %.lr.ph ], [ %.2137, %bb.r ] ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next ; 3 uses
  %i.q = load float, ptr %i.p, align 4            ; 6 uses
  %i.r = fcmp oeq float %i.o, %i.q                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4            ; 6 uses
  %i.w = fcmp oeq float %i.t, %i.v                ; 2 uses
  %i.x = icmp eq i64 %indvars.iv, %i.m
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %.0130157, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load float, ptr %1, align 4
  %i.z = fcmp une float %i.q, %i.y
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load float, ptr %i.l, align 4
  %i.ab = fcmp une float %i.v, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %or.cond = select i1 %i.r, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.1 = phi i8 [ 1, %bb.g ], [ %.0158, %bb.f ], [ %.0158, %bb.h ] ; 6 uses
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = fcmp olt float %i.t, %i.v
  %. = select i1 %i.ac, float %i.t, float %i.v    ; 2 uses
  %i.ad = fcmp ogt float %i.t, %i.v               ; 2 uses
  %i.ae = select i1 %i.ad, float %i.t, float %i.v
  %i.af = add nsw i32 %.0135155, 1                ; 3 uses
  %i.ag = sext i32 %.0135155 to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = fsub float %i.ae, %.
  %i.ak = trunc nuw i8 %.1 to i1
  %i.al = uitofp nneg i8 %.1 to float
  %i.am = fadd float %i.aj, %i.al
  %5 = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.o, i64 0
  %6 = insertelement <4 x float> %5, float %., i64 1
  %7 = insertelement <4 x float> %6, float %i.am, i64 3
  %8 = fmul <4 x float> %4, %7                    ; 2 uses
  store <4 x float> %8, ptr %i.ah, align 4
  br i1 %i.ak, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ad, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %foldExtExtBinop = fadd <4 x float> %4, %8
  %9 = extractelement <4 x float> %foldExtExtBinop, i64 1
  store float %9, ptr %i.ai, align 4
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  br i1 %i.w, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.an = fcmp olt float %i.o, %i.q
  %.153 = select i1 %i.an, float %i.o, float %i.q ; 2 uses
  %i.ao = fcmp ogt float %i.o, %i.q               ; 2 uses
  %i.ap = select i1 %i.ao, float %i.o, float %i.q
  %i.aq = add nsw i32 %.0135155, 1                ; 3 uses
  %i.ar = sext i32 %.0135155 to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ar ; 2 uses
  %i.at = fsub float %i.ap, %.153
  %i.au = trunc nuw i8 %.1 to i1
  %i.av = uitofp nneg i8 %.1 to float
  %i.aw = fadd float %i.at, %i.av
  %10 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.153, i64 0
  %11 = insertelement <4 x float> %10, float %i.t, i64 1
  %12 = insertelement <4 x float> %11, float %i.aw, i64 2
  %13 = fmul <4 x float> %4, %12                  ; 2 uses
  store <4 x float> %13, ptr %i.as, align 4
  br i1 %i.au, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %foldExtExtBinop166 = fadd <4 x float> %4, %13
  %14 = extractelement <4 x float> %foldExtExtBinop166, i64 0
  store float %14, ptr %i.as, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ax = tail call float @SDL_roundf_REAL(float noundef %i.o) #14
  %i.ay = fptosi float %i.ax to i32
  %i.az = load float, ptr %i.s, align 4
  %i.ba = tail call float @SDL_roundf_REAL(float noundef %i.az) #14
  %i.bb = fptosi float %i.ba to i32
  %i.bc = load float, ptr %i.p, align 4
  %i.bd = tail call float @SDL_roundf_REAL(float noundef %i.bc) #14
  %i.be = fptosi float %i.bd to i32
  %i.bf = load float, ptr %i.u, align 4
  %i.bg = tail call float @SDL_roundf_REAL(float noundef %i.bf) #14
  %i.bh = fptosi float %i.bg to i32
  %i.bi = trunc nuw i8 %.1 to i1
  %i.bj = tail call fastcc zeroext i1 @RenderLineBresenham(ptr noundef %0, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef %i.be, i32 noundef %i.bh, i1 noundef zeroext %i.bi)
  %i.bk = select i1 %i.bj, i1 %.0132156, i1 false
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l, %bb.k, %bb.j, %bb.p, %bb.o, %bb.n, %bb.h
  %.2137 = phi i32 [ %.0135155, %bb.h ], [ %.0135155, %bb.q ], [ %i.af, %bb.j ], [ %i.af, %bb.l ], [ %i.af, %bb.k ], [ %i.aq, %bb.p ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ] ; 3 uses
  %.2134 = phi i1 [ %.0132156, %bb.h ], [ %i.bk, %bb.q ], [ %.0132156, %bb.j ], [ %.0132156, %bb.l ], [ %.0132156, %bb.k ], [ %.0132156, %bb.p ], [ %.0132156, %bb.o ], [ %.0132156, %bb.n ] ; 3 uses
  %.1131 = phi i1 [ %.0130157, %bb.h ], [ true, %bb.q ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ]
  %.2 = phi i8 [ %.0158, %bb.h ], [ %.1, %bb.q ], [ 1, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %bb.o ], [ 1, %bb.n ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.r
  %.not151 = icmp eq i32 %.2137, 0
  br i1 %.not151, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef %0, ptr noundef %i.j, i32 noundef %.2137)
  %i.bm = select i1 %i.bl, i1 %.2134, i1 false
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %.3 = phi i1 [ %i.bm, %bb.s ], [ %.2134, %._crit_edge ] ; 2 uses
  br i1 %i.g, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @SDL_free_REAL(ptr noundef nonnull %i.j) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.b
  %.0139 = phi i1 [ false, %bb.b ], [ %.3, %bb.t ], [ %.3, %bb.u ]
  ret i1 %.0139
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdDrawLines(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 2, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 6, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
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
define hidden zeroext i1 @SDL_RenderRect_REAL(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [5 x %struct.SDL_FPoint], align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread68

SDL_ObjectValid.exit.thread68:                    ; preds = %bb.a, %SDL_ObjectValid.exit
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
  br i1 %.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.0.sroa.gep4467 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0.sroa.gep2966 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.sroa.gep2365 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load float, ptr %1, align 4
  %.pre73 = load float, ptr %.0.sroa.gep2365, align 4
  %.pre74 = load float, ptr %.0.sroa.gep2966, align 4
  %.pre75 = load float, ptr %.0.sroa.gep4467, align 4
  br label %GetRenderViewportSize.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = uitofp nneg i32 %i.m to float
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.q = load float, ptr %i.p, align 4
  %i.r = load i32, ptr %.val, align 4
  %i.s = sitofp i32 %i.r to float
  %i.t = fdiv float %i.s, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi float [ %i.o, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = uitofp nneg i32 %i.v to float
  br label %GetRenderViewportSize.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fdiv float %i.aa, %i.k
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.j, %bb.i, %._crit_edge
  %i.ac = phi float [ %.pre75, %._crit_edge ], [ %i.x, %bb.i ], [ %i.ab, %bb.j ]
  %i.ad = phi float [ %.pre74, %._crit_edge ], [ %.sink.i, %bb.i ], [ %.sink.i, %bb.j ]
  %3 = phi float [ %.pre73, %._crit_edge ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %4 = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.j ] ; 3 uses
  store float %4, ptr %2, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = fadd float %4, %i.ad
  %6 = insertelement <2 x float> poison, float %3, i64 0
  %7 = insertelement <2 x float> %6, float %5, i64 1
  %8 = fadd <2 x float> %7, <float -0.000000e+00, float -1.000000e+00>
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %9, ptr %i.ae, align 4
  %i.af = fadd float %3, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 20
  %10 = insertelement <2 x float> poison, float %i.af, i64 0
  %11 = insertelement <2 x float> %10, float %4, i64 1
  %12 = fadd <2 x float> %11, <float -1.000000e+00, float -0.000000e+00>
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %13, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %3, ptr %i.ah, align 4
  %i.ai = call zeroext i1 @SDL_RenderLines_REAL(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 5)
  br label %bb.k

bb.k:                                             ; preds = %GetRenderViewportSize.exit, %bb.c, %SDL_ObjectValid.exit.thread68
  %.020 = phi i1 [ false, %bb.c ], [ %i.ai, %GetRenderViewportSize.exit ], [ false, %SDL_ObjectValid.exit.thread68 ]
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

end_hunk_1
