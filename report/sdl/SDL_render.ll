Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_RenderPoint_REAL:bb.a
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
  %3 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x float> %i.k, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.w = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %2) ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @SDL_free_REAL(ptr noundef nonnull %i.g) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.c, %bb.a
  %.034 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ %i.w, %._crit_edge ], [ %i.w, %bb.d ]
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

end_hunk_0
begin_hunk_1_@SDL_RenderFillRects_REAL:bb.a
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
  br i1 %i.j, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.e
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.k, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread36

SDL_ObjectValid.exit.thread36:                    ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %bb.t

SDL_ObjectValid.exit.thread:                      ; preds = %bb.e, %SDL_ObjectValid.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp eq ptr %0, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #14
  br label %bb.t

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <2 x float> zeroinitializer, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load <2 x i32>, ptr %i.p, align 4
  %8 = sitofp <2 x i32> %7 to <2 x float>
  store <2 x float> %8, ptr %6, align 8
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %4) #14
  br i1 %i.q, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.r, align 8             ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.v = load float, ptr %i.u, align 4
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = uitofp nneg i32 %i.x to float
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %.val, align 4
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fdiv float %i.ab, %i.t
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi float [ %i.z, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = uitofp nneg i32 %i.af to float
  br label %GetRenderViewportSize.exit

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fdiv float %i.ak, %i.v
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.n, %bb.o
  %.sink1.i = phi float [ %i.ah, %bb.n ], [ %i.al, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %.sink1.i, ptr %i.am, align 4
  br label %bb.p

bb.p:                                             ; preds = %GetRenderViewportSize.exit, %bb.i
  %.0 = phi ptr [ %3, %bb.i ], [ %5, %GetRenderViewportSize.exit ]
  %i.an = call fastcc zeroext i1 @UpdateTexturePalette(ptr noundef nonnull %1)
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not28 = icmp eq ptr %i.ap, null
  %spec.select = select i1 %.not28, ptr %1, ptr %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select, i64 304
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = call fastcc zeroext i1 @SDL_RenderTextureInternal(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %4, ptr noundef %.0)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.020 = phi i1 [ %i.at, %bb.q ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.r
  %.1 = phi i1 [ %.020, %bb.r ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f, %SDL_ObjectValid.exit.thread36, %bb.c, %SDL_ObjectValid.exit31.thread33
  %.2 = phi i1 [ false, %bb.c ], [ %i.o, %bb.f ], [ %.1, %bb.s ], [ false, %SDL_ObjectValid.exit.thread36 ], [ false, %SDL_ObjectValid.exit31.thread33 ]
  ret i1 %.2
}

declare zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @UpdateTexturePalette(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = load i32, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  %.mask = and i32 %i.f, -268435456
  %.not39 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not39
  br i1 %or.cond, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i32 %i.f, 24
  %i.h = and i32 %i.g, 15
  switch i32 %i.h, label %bb.t [
    i32 1, label %bb.c
    i32 12, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.108) #14
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %.not41 = icmp eq ptr %i.k, null
  br i1 %.not41, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %.val43 = load ptr, ptr %i.q, align 8           ; 11 uses
  %i.r = getelementptr i8, ptr %i.k, i64 304
  %.val44 = load i32, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val43, i64 600 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %.val44, %i.t
  br i1 %i.u, label %bb.h, label %FlushRenderCommandsIfTextureNeeded.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val43, i64 576 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %FlushRenderCommandsIfTextureNeeded.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val43, i64 104
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val43, i64 664
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val43, i64 672 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call zeroext i1 %i.y(ptr noundef nonnull %.val43, ptr noundef nonnull %i.w, ptr noundef %i.aa, i64 noundef %i.ac) #14, !inline_history !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.val43, i64 584
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.af, null
  br i1 %.not22.i.i, label %FlushRenderCommandsIfTextureNeeded.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val43, i64 592 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.v, align 8
  store ptr %i.aj, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %FlushRenderCommandsIfTextureNeeded.exit

FlushRenderCommandsIfTextureNeeded.exit:          ; preds = %bb.i, %bb.j
  store i64 0, ptr %i.ab, align 8
  %i.ak = load i32, ptr %i.s, align 8
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.s, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.val43, i64 657
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.val43, i64 658
  store i8 0, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.val43, i64 659
  store i8 0, ptr %i.ao, align 1
  br i1 %i.ad, label %FlushRenderCommandsIfTextureNeeded.exit.FlushRenderCommandsIfTextureNeeded.exit.thread_crit_edge, label %bb.t

FlushRenderCommandsIfTextureNeeded.exit.FlushRenderCommandsIfTextureNeeded.exit.thread_crit_edge: ; preds = %FlushRenderCommandsIfTextureNeeded.exit
  %.pre = load ptr, ptr %i.j, align 8
  br label %FlushRenderCommandsIfTextureNeeded.exit.thread

FlushRenderCommandsIfTextureNeeded.exit.thread:   ; preds = %FlushRenderCommandsIfTextureNeeded.exit.FlushRenderCommandsIfTextureNeeded.exit.thread_crit_edge, %bb.h, %bb.g
  %i.ap = phi ptr [ %.pre, %FlushRenderCommandsIfTextureNeeded.exit.FlushRenderCommandsIfTextureNeeded.exit.thread_crit_edge ], [ %i.k, %bb.h ], [ %i.k, %bb.g ]
end_hunk_1
begin_hunk_2_@UpdateTexturePalette:bb.a
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %.not42 = icmp eq i32 %i.ba, %i.bc
  br i1 %.not42, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr i8, ptr %i.ay, i64 8
  %.val = load i32, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 600 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp eq i32 %.val, %i.bf
  br i1 %i.bg, label %bb.o, label %FlushRenderCommandsIfPaletteNeeded.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 576 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i46, label %FlushRenderCommandsIfPaletteNeeded.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 672 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = tail call zeroext i1 %i.bk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bi, ptr noundef %i.bm, i64 noundef %i.bo) #14, !inline_history !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not22.i.i47 = icmp eq ptr %i.br, null
  br i1 %.not22.i.i47, label %FlushRenderCommandsIfPaletteNeeded.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 592 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bh, align 8
  store ptr %i.bv, ptr %i.bs, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  br label %FlushRenderCommandsIfPaletteNeeded.exit

FlushRenderCommandsIfPaletteNeeded.exit:          ; preds = %bb.p, %bb.q
  store i64 0, ptr %i.bn, align 8
  %i.bw = load i32, ptr %i.be, align 8
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.be, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 657
  store i8 0, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 658
  store i8 0, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 659
  store i8 0, ptr %i.ca, align 1
  br i1 %i.bp, label %FlushRenderCommandsIfPaletteNeeded.exit.thread, label %bb.t

FlushRenderCommandsIfPaletteNeeded.exit.thread:   ; preds = %bb.o, %bb.n, %FlushRenderCommandsIfPaletteNeeded.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load i32, ptr %i.e, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call zeroext i1 %i.cc(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ay, i32 noundef %i.cd, ptr noundef %i.cf) #14
  br i1 %i.cg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %FlushRenderCommandsIfPaletteNeeded.exit.thread
  %i.ch = load i32, ptr %i.bb, align 8
  store i32 %i.ch, ptr %i.az, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.cj, ptr %i.ck, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %FlushRenderCommandsIfPaletteNeeded.exit, %FlushRenderCommandsIfPaletteNeeded.exit.thread, %FlushRenderCommandsIfTextureNeeded.exit, %bb.f, %bb.a, %bb.b, %.thread, %bb.d
  %.2 = phi i1 [ %i.i, %bb.d ], [ true, %bb.a ], [ %.0.in50, %.thread ], [ true, %bb.f ], [ false, %FlushRenderCommandsIfTextureNeeded.exit ], [ true, %bb.b ], [ true, %bb.s ], [ false, %FlushRenderCommandsIfPaletteNeeded.exit ], [ false, %FlushRenderCommandsIfPaletteNeeded.exit.thread ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_RenderTextureInternal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 9 uses
  %i.b = alloca [8 x float], align 16             ; 7 uses
  %4 = alloca %struct.SDL_FRect, align 16         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load <2 x float>, ptr %i.e, align 4      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.l = load <2 x float>, ptr %i.j, align 4
  %i.m = fadd <2 x float> %i.k, %i.l              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.p = load <2 x i32>, ptr %i.i, align 4
  %i.q = sitofp <2 x i32> %i.p to <2 x float>     ; 2 uses
  %i.r = shufflevector <2 x float> %i.m, <2 x float> %i.k, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.t = fdiv <4 x float> %i.r, %i.s
  store <4 x float> %i.t, ptr %i.o, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.v = shufflevector <2 x float> %i.k, <2 x float> %i.m, <2 x i32> <i32 0, i32 3>
  %i.w = fdiv <2 x float> %i.v, %i.q              ; 3 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  store float %i.x, ptr %i.b, align 16
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.y, ptr %i.u, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aa = extractelement <2 x float> %i.w, i64 1
  store float %i.aa, ptr %i.z, align 4
  %i.ab = load <2 x float>, ptr %3, align 4       ; 4 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = extractelement <2 x float> %i.ab, i64 1
  store <2 x float> %i.ab, ptr %i.a, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.ad, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = load <2 x float>, ptr %i.n, align 4
  %i.ai = fadd <2 x float> %i.ab, %i.ah           ; 3 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  store float %i.aj, ptr %i.ae, align 8
  store <2 x float> %i.ai, ptr %i.ag, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.ac, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.am = extractelement <2 x float> %i.ai, i64 1
  store float %i.am, ptr %i.al, align 4
  %i.an = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %QueueCmdGeometry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i32 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = extractelement <2 x float> %i.f, i64 0
  %i.au = extractelement <2 x float> %i.f, i64 1
  %i.av = call zeroext i1 %i.as(ptr noundef nonnull %0, ptr noundef nonnull %i.an, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull %i.ao, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 8, i32 noundef 4, ptr noundef nonnull @rect_index_order, i32 noundef 6, i32 noundef 4, float noundef %i.at, float noundef %i.au) #14, !inline_history !19
  br i1 %i.av, label %QueueCmdGeometry.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.an, align 8
  br label %QueueCmdGeometry.exit

QueueCmdGeometry.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.0.shrunk.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aw = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ax = load <4 x float>, ptr %3, align 4
  %i.ay = fmul <4 x float> %i.aw, %i.ax
  store <4 x float> %i.ay, ptr %4, align 16
  %i.az = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef nonnull %0, i32 noundef 8, ptr noundef %1) ; 3 uses
  %.not.i54 = icmp eq ptr %i.az, null
  br i1 %.not.i54, label %QueueCmdCopy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.g, align 8
  %i.bb = call zeroext i1 %i.ba(ptr noundef nonnull %0, ptr noundef nonnull %i.az, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #14, !inline_history !56
  br i1 %i.bb, label %QueueCmdCopy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.az, align 8
  br label %QueueCmdCopy.exit

QueueCmdCopy.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.0.shrunk.i55 = phi i1 [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.h

bb.h:                                             ; preds = %QueueCmdCopy.exit, %QueueCmdGeometry.exit
  %.0.in = phi i1 [ %.0.shrunk.i, %QueueCmdGeometry.exit ], [ %.0.shrunk.i55, %QueueCmdCopy.exit ]
  ret i1 %.0.in
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderTextureAffine_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.SDL_FRect, align 8          ; 7 uses
  %i.a = alloca [8 x float], align 16             ; 12 uses
  %i.b = alloca [8 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.not.i65 = icmp eq ptr %0, null
  br i1 %.not.i65, label %SDL_ObjectValid.exit67.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit67, label %SDL_ObjectValid.exit67.thread

SDL_ObjectValid.exit67:                           ; preds = %bb.b
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.e, label %SDL_ObjectValid.exit67.thread, label %SDL_ObjectValid.exit67.thread77

SDL_ObjectValid.exit67.thread77:                  ; preds = %bb.a, %SDL_ObjectValid.exit67
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.aa

SDL_ObjectValid.exit67.thread:                    ; preds = %bb.b, %SDL_ObjectValid.exit67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit67.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.aa

bb.d:                                             ; preds = %SDL_ObjectValid.exit67.thread
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.e
  %i.m = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.m, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread80

SDL_ObjectValid.exit.thread80:                    ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %bb.aa

SDL_ObjectValid.exit.thread:                      ; preds = %bb.e, %SDL_ObjectValid.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %.not = icmp eq ptr %0, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #14
  br label %bb.aa

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %.not61 = icmp eq ptr %i.s, null
  br i1 %.not61, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %.not62 = icmp eq ptr %i.u, null
  br i1 %.not62, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.82) #14
  br label %bb.aa

bb.j:                                             ; preds = %bb.h, %bb.g
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = load <2 x i32>, ptr %i.w, align 4
  %i.z = sitofp <2 x i32> %i.y to <2 x float>
  store <2 x float> %i.z, ptr %i.x, align 8
  %.not63 = icmp eq ptr %2, null
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %6) #14
  br i1 %i.aa, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 312       ; 2 uses
  %.val = load ptr, ptr %i.ab, align 8            ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = uitofp nneg i32 %i.af to float
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = load i32, ptr %.val, align 4
  %i.al = sitofp i32 %i.ak to float
  %i.am = fdiv float %i.al, %i.aj
  %i.an = fadd float %i.am, 0.000000e+00
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi float [ %i.ah, %bb.m ], [ %i.an, %bb.n ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = uitofp nneg i32 %i.ap to float
  br label %GetRenderViewportSize.exit

bb.q:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sitofp i32 %i.at to float
  %i.av = fdiv float %i.au, %i.ad
  %i.aw = fadd float %i.av, 0.000000e+00
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.p, %bb.q
  %.sink1.i = phi float [ %i.ar, %bb.p ], [ %i.aw, %bb.q ] ; 3 uses
  %i.ax = call fastcc zeroext i1 @UpdateTexturePalette(ptr noundef nonnull %1)
  br i1 %i.ax, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %GetRenderViewportSize.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.az, null
  %spec.select = select i1 %.not64, ptr %1, ptr %i.az ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select, i64 304
  store i32 %i.bb, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 148
  %i.bh = load float, ptr %i.bg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.bj = load <2 x float>, ptr %6, align 8       ; 3 uses
  %i.bk = load <2 x float>, ptr %i.x, align 8
  %i.bl = fadd <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bn = load <2 x i32>, ptr %i.bi, align 4
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>   ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> %i.bj, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.br = fdiv <4 x float> %i.bp, %i.bq
  store <4 x float> %i.br, ptr %i.bm, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bt = shufflevector <2 x float> %i.bj, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bu = fdiv <2 x float> %i.bt, %i.bo           ; 3 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  store float %i.bv, ptr %i.b, align 16
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bw, ptr %i.bs, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.by = extractelement <2 x float> %i.bu, i64 1
  store float %i.by, ptr %i.bx, align 4
  %i.bz = icmp ne ptr %3, null                    ; 2 uses
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = load <2 x float>, ptr %3, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cb = phi <2 x float> [ %i.ca, %bb.s ], [ zeroinitializer, %bb.r ] ; 2 uses
  store <2 x float> %i.cb, ptr %i.a, align 16
  %i.cc = icmp ne ptr %4, null                    ; 2 uses
  %i.cd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i, i64 0
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = load <2 x float>, ptr %4, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cf = phi <2 x float> [ %i.ce, %bb.u ], [ %i.cd, %bb.t ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ch = extractelement <2 x float> %i.cf, i64 0
  store float %i.ch, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cj = extractelement <2 x float> %i.cf, i64 1
  store float %i.cj, ptr %i.ci, align 4
  %.not84 = icmp eq ptr %5, null
  br i1 %.not84, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cl = load <2 x float>, ptr %5, align 4       ; 2 uses
  store <2 x float> %i.cl, ptr %i.ck, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float 0.000000e+00, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %.sink1.i, ptr %i.cn, align 4
  %or.cond = or i1 %i.bz, %i.cc
  %i.co = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sink1.i, i64 1
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %bb.w
  %i.cp = phi <2 x float> [ %i.cl, %.thread ], [ %i.co, %bb.w ]
  %i.cq = fadd <2 x float> %i.cf, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cs = fsub <2 x float> %i.cq, %i.cb           ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  store float %i.ct, ptr %i.cr, align 16
  %i.cu = extractelement <2 x float> %i.cs, i64 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %.sink.i, ptr %i.cv, align 16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink1.i.sink = phi float [ %.sink1.i, %bb.y ], [ %i.cu, %bb.x ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %.sink1.i.sink, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %i.cy = call fastcc zeroext i1 @QueueCmdGeometry(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %i.a, i32 noundef 8, ptr noundef nonnull %i.cx, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 8, i32 noundef 4, ptr noundef nonnull @rect_index_order, i32 noundef 6, i32 noundef 4, float noundef %i.bf, float noundef %i.bh, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.aa

bb.aa:                                            ; preds = %GetRenderViewportSize.exit, %bb.k, %bb.z, %bb.i, %bb.f, %SDL_ObjectValid.exit.thread80, %bb.c, %SDL_ObjectValid.exit67.thread77
  %.0 = phi i1 [ false, %bb.c ], [ %i.q, %bb.f ], [ %i.cy, %bb.z ], [ true, %bb.k ], [ false, %SDL_ObjectValid.exit67.thread77 ], [ %i.v, %bb.i ], [ false, %SDL_ObjectValid.exit.thread80 ], [ false, %GetRenderViewportSize.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderTextureRotated_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.SDL_FRect, align 8          ; 8 uses
  %8 = alloca %struct.SDL_FPoint, align 8         ; 5 uses
  %9 = alloca %struct.SDL_FRect, align 8          ; 7 uses
  %i.a = alloca [8 x float], align 16             ; 5 uses
  %i.b = alloca [8 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.c = icmp eq i32 %6, 0
  %.0133.sroa.gep136 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.0133.sroa.gep137 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.0133.sroa.gep142 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0133.sroa.gep143 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.0133.sroa.gep151 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.0133.sroa.gep152 = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = fdiv double %4, 3.600000e+02             ; 2 uses
  %i.e = fptosi double %i.d to i32
  %i.f = sitofp i32 %i.e to double
  %i.g = fcmp oeq double %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_RenderTexture_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
  %.not.i194 = icmp eq ptr %0, null
  br i1 %.not.i194, label %SDL_ObjectValid.exit196.thread198, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %SDL_ObjectValid.exit196, label %SDL_ObjectValid.exit196.thread

SDL_ObjectValid.exit196:                          ; preds = %bb.e
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.k, label %SDL_ObjectValid.exit196.thread, label %SDL_ObjectValid.exit196.thread198

SDL_ObjectValid.exit196.thread198:                ; preds = %bb.d, %SDL_ObjectValid.exit196
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ad

SDL_ObjectValid.exit196.thread:                   ; preds = %bb.e, %SDL_ObjectValid.exit196
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.n = load i8, ptr %i.m, align 8, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit196.thread
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ad

bb.g:                                             ; preds = %SDL_ObjectValid.exit196.thread
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread201, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.h
  %i.s = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.s, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread201

SDL_ObjectValid.exit.thread201:                   ; preds = %bb.g, %SDL_ObjectValid.exit
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %bb.ad

SDL_ObjectValid.exit.thread:                      ; preds = %bb.h, %SDL_ObjectValid.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %.not = icmp eq ptr %0, %i.v
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #14
  br label %bb.ad

bb.j:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.not185 = icmp eq ptr %i.y, null
  br i1 %.not185, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %.not186 = icmp eq ptr %i.aa, null
  br i1 %.not186, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.82) #14
  br label %bb.ad

bb.m:                                             ; preds = %bb.k, %bb.j
  store <2 x float> zeroinitializer, ptr %7, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.ac, align 4
  %i.af = sitofp <2 x i32> %i.ae to <2 x float>
  store <2 x float> %i.af, ptr %i.ad, align 8
  %.not187 = icmp eq ptr %2, null
  br i1 %.not187, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = call zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %7) #14
  br i1 %i.ag, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %.not188 = icmp eq ptr %3, null
  br i1 %.not188, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.ah, align 8            ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.al = load float, ptr %i.ak, align 4
  store <2 x float> zeroinitializer, ptr %9, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = uitofp nneg i32 %i.an to float
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aq = load i32, ptr %.val, align 4
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fdiv float %i.ar, %i.aj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i = phi float [ %i.ap, %bb.q ], [ %i.as, %bb.r ]
  store float %.sink.i, ptr %.0133.sroa.gep143, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = uitofp nneg i32 %i.au to float
  br label %GetRenderViewportSize.exit

bb.u:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fdiv float %i.az, %i.al
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.t, %bb.u
  %.sink1.i = phi float [ %i.aw, %bb.t ], [ %i.ba, %bb.u ]
  store float %.sink1.i, ptr %.0133.sroa.gep152, align 4
  br label %bb.v

bb.v:                                             ; preds = %GetRenderViewportSize.exit, %bb.o
  %.0133.sroa.phi159 = phi ptr [ %.0133.sroa.gep136, %bb.o ], [ %.0133.sroa.gep137, %GetRenderViewportSize.exit ]
  %.0133.sroa.phi174 = phi ptr [ %.0133.sroa.gep142, %bb.o ], [ %.0133.sroa.gep143, %GetRenderViewportSize.exit ] ; 2 uses
  %.0133.sroa.phi177 = phi ptr [ %.0133.sroa.gep151, %bb.o ], [ %.0133.sroa.gep152, %GetRenderViewportSize.exit ] ; 2 uses
  %.0133 = phi ptr [ %3, %bb.o ], [ %9, %GetRenderViewportSize.exit ] ; 2 uses
  %i.bb = call fastcc zeroext i1 @UpdateTexturePalette(ptr noundef nonnull %1)
  br i1 %i.bb, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not189 = icmp eq ptr %i.bd, null
  %spec.select = select i1 %.not189, ptr %1, ptr %i.bd ; 5 uses
  %.not190 = icmp eq ptr %5, null
  br i1 %.not190, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = load i64, ptr %5, align 4               ; 2 uses
  store i64 %i.be, ptr %8, align 8
  %i.bf = bitcast i64 %i.be to <2 x float>
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bg = load float, ptr %.0133.sroa.phi174, align 4
  %i.bh = load float, ptr %.0133.sroa.phi177, align 4
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul <2 x float> %i.bj, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.bk, ptr %8, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bl = phi <2 x float> [ %i.bk, %bb.y ], [ %i.bf, %bb.x ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select, i64 304
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %i.bs = load float, ptr %i.br, align 4          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 148
  %i.bu = load float, ptr %i.bt, align 4          ; 2 uses
  %i.bv = load ptr, ptr %i.x, align 8
  %.not191 = icmp eq ptr %i.bv, null
  br i1 %.not191, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bw = fmul double %4, f0x400921FB54442D18
  %i.bx = fdiv double %i.bw, 1.800000e+02
  %i.by = fptrunc double %i.bx to float           ; 2 uses
  %i.bz = call float @SDL_sinf_REAL(float noundef %i.by) #14 ; 2 uses
  %i.ca = call float @SDL_cosf_REAL(float noundef %i.by) #14 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.cc = load <2 x float>, ptr %7, align 8       ; 3 uses
  %i.cd = load <2 x float>, ptr %i.ad, align 8
  %i.ce = fadd <2 x float> %i.cc, %i.cd           ; 2 uses
  %i.cf = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.cg = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ch = and <2 x i32> %i.cg, <i32 1, i32 2>
  %i.ci = load float, ptr %.0133.sroa.phi174, align 4
  %i.cj = load float, ptr %.0133.sroa.phi177, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cl = load <2 x i32>, ptr %i.cb, align 4
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>   ; 2 uses
  %i.cn = shufflevector <2 x float> %i.ce, <2 x float> %i.cc, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cp = fdiv <4 x float> %i.cn, %i.co
  store <4 x float> %i.cp, ptr %i.ck, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cr = shufflevector <2 x float> %i.cc, <2 x float> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.cs = fdiv <2 x float> %i.cr, %i.cm           ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  store float %i.ct, ptr %i.b, align 16
  %i.cu = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cu, ptr %i.cq, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cw = extractelement <2 x float> %i.cs, i64 1
  store float %i.cw, ptr %i.cv, align 4
  %i.cx = load float, ptr %.0133, align 4         ; 3 uses
  %i.cy = load float, ptr %.0133.sroa.phi159, align 4 ; 3 uses
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cy, i64 1
  %i.db = fadd <2 x float> %i.bl, %i.da           ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.dd = fadd float %i.cx, %i.ci
  %i.de = fadd float %i.cy, %i.cj
  %i.df = icmp eq <2 x i32> %i.ch, zeroinitializer
  %i.dg = shufflevector <2 x i1> %i.df, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dh = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.dd, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.cy, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.de, i64 3 ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.dm = select <4 x i1> %i.dg, <4 x float> %i.dk, <4 x float> %i.dl ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.do = fsub <4 x float> %i.dn, %i.dc           ; 2 uses
  %i.dp = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.ds = fmul <4 x float> %i.dq, %i.dr           ; 3 uses
  %i.dt = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fmul <4 x float> %i.du, %i.do           ; 3 uses
  %i.dw = fsub <4 x float> %i.dv, %i.ds
  %i.dx = fadd <4 x float> %i.dv, %i.ds
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.dz = fadd <4 x float> %i.dc, %i.dy
  store <4 x float> %i.dz, ptr %i.a, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eb = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ca, i64 1
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ee = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ef = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eg = fsub <4 x float> %i.ee, %i.ef
  %i.eh = fmul <4 x float> %i.ed, %i.eg           ; 2 uses
  %i.ei = shufflevector <4 x float> %i.dv, <4 x float> %i.ds, <4 x i32> <i32 2, i32 7, i32 0, i32 5> ; 2 uses
  %i.ej = fsub <4 x float> %i.ei, %i.eh
  %i.ek = fadd <4 x float> %i.ei, %i.eh
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.em = fadd <4 x float> %i.dc, %i.el
  store <4 x float> %i.em, ptr %i.ea, align 16
  %i.en = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %i.eo = call fastcc zeroext i1 @QueueCmdGeometry(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %i.a, i32 noundef 8, ptr noundef nonnull %i.en, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 8, i32 noundef 4, ptr noundef nonnull @rect_index_order, i32 noundef 6, i32 noundef 4, float noundef %i.bs, float noundef %i.bu, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ep = call fastcc zeroext i1 @QueueCmdCopyEx(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %7, ptr noundef %.0133, double noundef %4, ptr noundef %8, i32 noundef %6, float noundef %i.bs, float noundef %i.bu)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.v
  %.0131 = phi i1 [ false, %bb.v ], [ %i.eo, %bb.aa ], [ %i.ep, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.n, %bb.ac, %bb.l, %bb.i, %SDL_ObjectValid.exit.thread201, %bb.f, %SDL_ObjectValid.exit196.thread198, %bb.c
  %.1 = phi i1 [ %i.h, %bb.c ], [ false, %bb.f ], [ %i.w, %bb.i ], [ %.0131, %bb.ac ], [ false, %SDL_ObjectValid.exit196.thread198 ], [ %i.ab, %bb.l ], [ false, %SDL_ObjectValid.exit.thread201 ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i1 %.1
}

declare float @SDL_sinf_REAL(float noundef) local_unnamed_addr #3

declare float @SDL_cosf_REAL(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdCopyEx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %4, ptr noundef nonnull %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 9, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 %i.c(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %4, ptr noundef nonnull %5, i32 noundef %6, float noundef %7, float noundef %8) #14
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0.shrunk
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderTextureTiled_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.SDL_FRect, align 8          ; 10 uses
  %6 = alloca %struct.SDL_FRect, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %.not.i52 = icmp eq ptr %0, null
  br i1 %.not.i52, label %SDL_ObjectValid.exit54.thread59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit54, label %SDL_ObjectValid.exit54.thread

SDL_ObjectValid.exit54:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit54.thread, label %SDL_ObjectValid.exit54.thread59

SDL_ObjectValid.exit54.thread59:                  ; preds = %bb.a, %SDL_ObjectValid.exit54
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ab

SDL_ObjectValid.exit54.thread:                    ; preds = %bb.b, %SDL_ObjectValid.exit54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit54.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ab

bb.d:                                             ; preds = %SDL_ObjectValid.exit54.thread
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.e
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.k, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread62

SDL_ObjectValid.exit.thread62:                    ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %bb.ab

SDL_ObjectValid.exit.thread:                      ; preds = %bb.e, %SDL_ObjectValid.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp eq ptr %0, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #14
  br label %bb.ab

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.p = fcmp ugt float %3, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.83) #14
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.s, align 4
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  store <2 x float> %i.w, ptr %i.t, align 8
  %.not44 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br i1 %i.x, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.not45 = icmp eq ptr %4, null
  br i1 %.not45, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.y, align 8             ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.ac = load float, ptr %i.ab, align 4
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = uitofp nneg i32 %i.ae to float
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %.val, align 4
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fdiv float %i.ai, %i.aa
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi float [ %i.ag, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sink.i, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = uitofp nneg i32 %i.am to float
  br label %GetRenderViewportSize.exit

bb.q:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fdiv float %i.ar, %i.ac
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.p, %bb.q
  %.sink1.i = phi float [ %i.ao, %bb.p ], [ %i.as, %bb.q ]
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sink1.i, ptr %i.at, align 4
  br label %bb.r

bb.r:                                             ; preds = %GetRenderViewportSize.exit, %bb.k
  %.036 = phi ptr [ %4, %bb.k ], [ %6, %GetRenderViewportSize.exit ] ; 2 uses
  %i.au = call fastcc zeroext i1 @UpdateTexturePalette(ptr noundef nonnull %1)
  br i1 %i.au, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  %spec.select = select i1 %.not46, ptr %1, ptr %i.aw ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 304
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.bb = load i8, ptr %i.ba, align 4, !range !9, !noundef !10
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %brmerge = or i1 %.not44, %i.bc
  br i1 %brmerge, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load float, ptr %5, align 8
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  %i.bf = load float, ptr %i.r, align 4
  %i.bg = fcmp oeq float %i.bf, 0.000000e+00
  %or.cond = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.u, label %.critedge48

bb.u:                                             ; preds = %bb.t
  %i.bh = load float, ptr %i.t, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fcmp oeq float %i.bh, %i.bk
  br i1 %i.bl, label %.split, label %.critedge48

.split:                                           ; preds = %bb.u
  %i.bm = load float, ptr %i.u, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fcmp oeq float %i.bm, %i.bp
  br i1 %i.bq, label %bb.w, label %.critedge48

bb.v:                                             ; preds = %bb.s
  br i1 %i.bc, label %.critedge48, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 277
  %i.bs = load i8, ptr %i.br, align 1, !range !9, !noundef !10
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 1
  %i.bx = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.bv)
  %i.by = icmp samesign ugt i32 %i.bx, 1
  %or.cond67 = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond67, label %.critedge48, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.ca = load i32, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 1
  %i.cc = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ca)
  %i.cd = icmp samesign ugt i32 %i.cc, 1
  %or.cond69 = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond69, label %.critedge48, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.val55 = load float, ptr %i.t, align 8
  %.val56 = load float, ptr %i.u, align 4
  %i.ce = call fastcc zeroext i1 @SDL_RenderTextureTiled_Wrap(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, float %.val55, float %.val56, float noundef %3, ptr noundef %.036)
  br label %bb.aa

.critedge48:                                      ; preds = %bb.y, %bb.x, %.split, %bb.t, %bb.u, %bb.v
  %i.cf = call fastcc zeroext i1 @SDL_RenderTextureTiled_Iterate(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %5, float noundef %3, ptr noundef %.036)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge48, %bb.r
  %.1 = phi i1 [ false, %bb.r ], [ %i.ce, %bb.z ], [ %i.cf, %.critedge48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %bb.aa, %bb.h, %bb.f, %SDL_ObjectValid.exit.thread62, %bb.c, %SDL_ObjectValid.exit54.thread59
  %.2 = phi i1 [ false, %bb.c ], [ %i.o, %bb.f ], [ %i.q, %bb.h ], [ %.1, %bb.aa ], [ false, %SDL_ObjectValid.exit54.thread59 ], [ false, %SDL_ObjectValid.exit.thread62 ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_RenderTextureTiled_Wrap(ptr noundef %0, ptr noundef %1, float %.8.val, float %.12.val, float noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 10 uses
  %i.b = alloca [8 x float], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <2 x float>, ptr %i.c, align 4      ; 2 uses
  %i.g = load float, ptr %i.d, align 4
  %i.h = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %.8.val, i64 0
  %i.i = insertelement <4 x float> %i.h, float %.12.val, i64 1
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.k = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %2, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.m = fmul <4 x float> %i.j, %i.l
  %i.n = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.o = shufflevector <4 x float> %i.n, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 1>
  %i.p = fdiv <4 x float> %i.o, %i.m              ; 2 uses
  %i.q = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  store <4 x float> %i.q, ptr %i.b, align 16
  store <4 x float> %i.p, ptr %i.e, align 16
  %i.r = load <2 x float>, ptr %3, align 4        ; 4 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %foldExtExtBinop = fadd <2 x float> %i.f, %i.r
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.u = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.v = fadd float %i.g, %i.u                    ; 2 uses
  store <2 x float> %i.r, ptr %i.a, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.u, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %i.t, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %i.v, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %i.v, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 148
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %QueueCmdGeometry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  store i32 2, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i32 2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call zeroext i1 %i.an(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull %i.aj, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 8, i32 noundef 4, ptr noundef nonnull @rect_index_order, i32 noundef 6, i32 noundef 4, float noundef %i.af, float noundef %i.ah) #14, !inline_history !19
  br i1 %i.ao, label %QueueCmdGeometry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.ai, align 8
  br label %QueueCmdGeometry.exit

QueueCmdGeometry.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %.0.shrunk.i = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.0.shrunk.i
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_RenderTextureTiled_Iterate(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, float noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 5 uses
  %i.b = alloca [8 x float], align 16             ; 8 uses
  %5 = alloca %struct.SDL_FRect, align 16         ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %6 = alloca %struct.SDL_FRect, align 8          ; 12 uses
  %7 = alloca %struct.SDL_FRect, align 4          ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load <2 x float>, ptr %i.e, align 4
  %i.h = insertelement <2 x float> poison, float %3, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %i.g              ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 14 uses
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load float, ptr %i.m, align 4
  %i.o = fdiv float %i.n, %i.l
  %i.p = call float @SDL_modff_REAL(float noundef %i.o, ptr noundef nonnull %i.d) #14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fdiv float %i.r, %i.k
  %i.t = call float @SDL_modff_REAL(float noundef %i.s, ptr noundef nonnull %i.c) #14 ; 2 uses
  %i.u = load float, ptr %i.e, align 4
  %i.v = fmul float %i.p, %i.u                    ; 3 uses
  %i.w = load float, ptr %i.f, align 4
  %i.x = fmul float %i.t, %i.w
  %i.y = fmul float %i.l, %i.p                    ; 5 uses
  %i.z = fmul float %i.k, %i.t                    ; 2 uses
  %i.aa = load float, ptr %i.c, align 4
  %i.ab = fptosi float %i.aa to i32               ; 6 uses
  %i.ac = load float, ptr %i.d, align 4
  %i.ad = fptosi float %i.ac to i32               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load float, ptr %i.ae, align 4          ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  store float %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store float %i.l, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store float %i.k, ptr %i.ai, align 4
  %.not6483 = icmp sgt i32 %i.ab, 0
  br i1 %.not6483, label %.lr.ph85, label %.critedge67

.lr.ph85:                                         ; preds = %bb.a
  %.not80 = icmp sgt i32 %i.ad, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
end_hunk_2
begin_hunk_3_@SDL_RenderGeometryRaw_REAL:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select160, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  %i.al = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.aj)
  %i.am = icmp samesign ugt i32 %i.al, 1
  %or.cond197 = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond197, label %.thread, label %.thread175

.thread175:                                       ; preds = %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ao = load i32, ptr %i.an, align 8
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = load i32, ptr %i.ap, align 8
  br label %bb.aa

.thread:                                          ; preds = %bb.y, %.thread175
  %.0130174 = phi i32 [ %i.ao, %.thread175 ], [ 1, %bb.y ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select160, i64 8
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i32 %i.as, 1
  %i.au = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.as)
  %i.av = icmp samesign ugt i32 %i.au, 1
  %or.cond199 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond199, label %IsNPOT.exit166.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %.0130172 = phi i32 [ %.0130174, %.thread ], [ %i.aq, %bb.z ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ax = load i32, ptr %i.aw, align 4
  br label %IsNPOT.exit166.thread

IsNPOT.exit166.thread:                            ; preds = %.thread, %bb.aa
  %.0130173 = phi i32 [ %.0130172, %bb.aa ], [ %.0130174, %.thread ] ; 3 uses
  %.0127 = phi i32 [ %i.ax, %bb.aa ], [ 1, %.thread ] ; 3 uses
  %i.ay = icmp eq i32 %.0130173, 0
  %i.az = icmp eq i32 %.0127, 0
  %or.cond7 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond7, label %.lr.ph.preheader, label %bb.ad

.lr.ph.preheader:                                 ; preds = %IsNPOT.exit166.thread
  %i.ba = sext i32 %7 to i64
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %.1128203 = phi i32 [ %.0127, %.lr.ph.preheader ], [ %.3.ph, %select.unfold ] ; 4 uses
  %.1131202 = phi i32 [ %.0130173, %.lr.ph.preheader ], [ %.2132192, %select.unfold ] ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %6, i64 %i.bb ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load float, ptr %i.be, align 4          ; 4 uses
  %i.bg = fcmp olt float %i.bd, 0.000000e+00
  %i.bh = fcmp ogt float %i.bd, 1.000000e+00
  %or.cond9 = or i1 %i.bg, %i.bh
  %i.bi = icmp eq i32 %.1131202, 0                ; 2 uses
  %or.cond17 = select i1 %or.cond9, i1 %i.bi, i1 false
  br i1 %or.cond17, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %.not156 = icmp eq i32 %.1128203, 0
  br i1 %.not156, label %.thread187, label %.thread193

bb.ac:                                            ; preds = %.lr.ph
  %i.bj = fcmp uge float %i.bf, 0.000000e+00
  %i.bk = fcmp ule float %i.bf, 1.000000e+00
  %or.cond11.not255 = and i1 %i.bj, %i.bk
  %i.bl = icmp ne i32 %.1128203, 0
  %or.cond19.not252 = select i1 %or.cond11.not255, i1 true, i1 %i.bl ; 3 uses
  %brmerge = select i1 %or.cond19.not252, i1 true, i1 %i.bi
  %.1131202.mux = select i1 %or.cond19.not252, i32 %.1131202, i32 0
  %.1128203.mux = select i1 %or.cond19.not252, i32 %.1128203, i32 2
  br i1 %brmerge, label %select.unfold, label %.thread193

.thread187:                                       ; preds = %bb.ab
  %i.bm = fcmp olt float %i.bf, 0.000000e+00
  %i.bn = fcmp ogt float %i.bf, 1.000000e+00
  %or.cond11189 = or i1 %i.bm, %i.bn
  br i1 %or.cond11189, label %.thread193, label %select.unfold

select.unfold:                                    ; preds = %bb.ac, %.thread187
  %.2132192 = phi i32 [ 2, %.thread187 ], [ %.1131202.mux, %bb.ac ] ; 2 uses
  %.3.ph = phi i32 [ 0, %.thread187 ], [ %.1128203.mux, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread193, label %.lr.ph, !llvm.loop !63

.thread193:                                       ; preds = %bb.ac, %select.unfold, %bb.ab, %.thread187
  %.4134.ph = phi i32 [ %.2132192, %select.unfold ], [ 2, %.thread187 ], [ 2, %bb.ab ], [ %.1131202, %bb.ac ]
  %.4.ph = phi i32 [ %.3.ph, %select.unfold ], [ 2, %.thread187 ], [ %.1128203, %bb.ab ], [ 2, %bb.ac ]
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.4134.ph, i32 1)
  %spec.store.select20 = tail call i32 @llvm.umax.i32(i32 %.4.ph, i32 1)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread193, %IsNPOT.exit166.thread, %bb.v
  %.1140 = phi ptr [ %spec.select160, %.thread193 ], [ %spec.select160, %IsNPOT.exit166.thread ], [ null, %bb.v ] ; 4 uses
  %.5135 = phi i32 [ %spec.store.select, %.thread193 ], [ %.0130173, %IsNPOT.exit166.thread ], [ 1, %bb.v ] ; 2 uses
  %.5 = phi i32 [ %spec.store.select20, %.thread193 ], [ %.0127, %IsNPOT.exit166.thread ], [ 1, %bb.v ] ; 2 uses
  %i.bo = icmp sgt i32 %10, 0
  %or.cond220 = and i1 %.not, %i.bo
  br i1 %or.cond220, label %.lr.ph214, label %.loopexit

.lr.ph214:                                        ; preds = %bb.ad
  %wide.trip.count239 = zext nneg i32 %10 to i64  ; 3 uses
  switch i32 %11, label %.lr.ph214.split [
    i32 4, label %.lr.ph214.split.us
    i32 2, label %.lr.ph214.split.us215
  ]

.lr.ph214.split.us:                               ; preds = %.lr.ph214, %bb.ae
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.ae ], [ 0, %.lr.ph214 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv231
  %i.bq = load i32, ptr %i.bp, align 4
  %or.cond161.us = icmp ult i32 %i.bq, %8
  br i1 %or.cond161.us, label %bb.ae, label %.split.us

bb.ae:                                            ; preds = %.lr.ph214.split.us
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count239
  br i1 %exitcond235.not, label %.loopexit, label %.lr.ph214.split.us, !llvm.loop !64

.lr.ph214.split.us215:                            ; preds = %.lr.ph214, %bb.af
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %bb.af ], [ 0, %.lr.ph214 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv226
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32
  %or.cond161.us219 = icmp ugt i32 %8, %i.bt
  br i1 %or.cond161.us219, label %bb.af, label %.split.us

bb.af:                                            ; preds = %.lr.ph214.split.us215
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count239
  br i1 %exitcond230.not, label %.loopexit, label %.lr.ph214.split.us215, !llvm.loop !64

bb.ag:                                            ; preds = %.lr.ph214.split
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit, label %.lr.ph214.split, !llvm.loop !64

.lr.ph214.split:                                  ; preds = %.lr.ph214, %bb.ag
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.ag ], [ 0, %.lr.ph214 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv236
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %or.cond161 = icmp ugt i32 %8, %i.bw
  br i1 %or.cond161, label %bb.ag, label %.split.us

.split.us:                                        ; preds = %.lr.ph214.split.us215, %.lr.ph214.split.us, %.lr.ph214.split
  %i.bx = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.91) #14
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ag, %bb.ad
  %.not158 = icmp eq ptr %.1140, null
  br i1 %.not158, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.1140, i64 304
  store i32 %i.bz, ptr %i.ca, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cc = load i8, ptr %i.cb, align 4, !range !9, !noundef !10
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = icmp eq i32 %.5135, 1
  %or.cond13 = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cf = icmp eq i32 %.5, 1
  %or.cond15 = select i1 %or.cond13, i1 %i.cf, i1 false
  br i1 %or.cond15, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cg = tail call fastcc zeroext i1 @SDL_SW_RenderGeometryRaw(ptr noundef nonnull %0, ptr noundef %.1140, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %spec.select)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 148
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = tail call fastcc zeroext i1 @QueueCmdGeometry(ptr noundef nonnull %0, ptr noundef %.1140, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %spec.select, float noundef %i.ck, float noundef %i.cm, i32 noundef %.5135, i32 noundef %.5)
  br label %bb.al

bb.al:                                            ; preds = %.split.us, %bb.w, %bb.u, %bb.ak, %bb.aj, %bb.t, %bb.r, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %bb.c, %SDL_ObjectValid.exit165.thread168
  %.2 = phi i1 [ false, %bb.c ], [ %i.p, %bb.g ], [ %i.w, %bb.o ], [ %i.x, %bb.r ], [ false, %SDL_ObjectValid.exit165.thread168 ], [ %i.bx, %.split.us ], [ %i.cg, %bb.aj ], [ %i.cn, %bb.ak ], [ true, %bb.u ], [ %i.aa, %bb.t ], [ %i.t, %bb.m ], [ %i.r, %bb.k ], [ %i.q, %bb.i ], [ false, %bb.f ], [ false, %bb.w ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_SW_RenderGeometryRaw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr nofree noundef readonly captures(address_is_null) %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 14 uses
  %12 = alloca %struct.SDL_FRect, align 8         ; 11 uses
  %13 = alloca %struct.SDL_FRect, align 16        ; 7 uses
  %.not = icmp eq ptr %9, null                    ; 2 uses
  %i.b = select i1 %.not, i32 %8, i32 %10         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.a
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.k, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread10.i

SDL_ObjectValid.exit.thread10.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRenderDrawBlendMode_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.n = load i8, ptr %i.m, align 8, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRenderDrawBlendMode_REAL.exit

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.r = load i32, ptr %i.q, align 4
  br label %SDL_GetRenderDrawBlendMode_REAL.exit

SDL_GetRenderDrawBlendMode_REAL.exit:             ; preds = %bb.c, %bb.b, %SDL_ObjectValid.exit.thread10.i
  %.0440 = phi i32 [ 2147483647, %SDL_ObjectValid.exit.thread10.i ], [ 2147483647, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %SDL_ObjectValid.exit.i386, label %SDL_ObjectValid.exit.thread.i384

SDL_ObjectValid.exit.i386:                        ; preds = %SDL_GetRenderDrawBlendMode_REAL.exit
  %i.u = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.u, label %SDL_ObjectValid.exit.thread.i384, label %SDL_ObjectValid.exit.thread31.i

SDL_ObjectValid.exit.thread31.i:                  ; preds = %SDL_ObjectValid.exit.i386
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRenderDrawColorFloat_REAL.exit

SDL_ObjectValid.exit.thread.i384:                 ; preds = %SDL_ObjectValid.exit.i386, %SDL_GetRenderDrawBlendMode_REAL.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.x = load i8, ptr %i.w, align 8, !range !9, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread.i384
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRenderDrawColorFloat_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i384
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ab = load <4 x float>, ptr %i.aa, align 4
  br label %SDL_GetRenderDrawColorFloat_REAL.exit

SDL_GetRenderDrawColorFloat_REAL.exit:            ; preds = %SDL_ObjectValid.exit.thread31.i, %bb.d, %bb.e
  %i.ac = phi <4 x float> [ zeroinitializer, %SDL_ObjectValid.exit.thread31.i ], [ zeroinitializer, %bb.d ], [ %i.ab, %bb.e ]
  %.not515 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not515, label %SDL_GetTextureSize_REAL.exit, label %bb.f

bb.f:                                             ; preds = %SDL_GetRenderDrawColorFloat_REAL.exit
  %i.ad = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %SDL_ObjectValid.exit.i389, label %SDL_ObjectValid.exit.thread.i388

SDL_ObjectValid.exit.i389:                        ; preds = %bb.f
  %i.af = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.af, label %SDL_ObjectValid.exit.thread.i388, label %SDL_ObjectValid.exit.thread19.i

SDL_ObjectValid.exit.thread19.i:                  ; preds = %SDL_ObjectValid.exit.i389
  %i.ag = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %SDL_GetTextureSize_REAL.exit

SDL_ObjectValid.exit.thread.i388:                 ; preds = %SDL_ObjectValid.exit.i389, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load <2 x i32>, ptr %i.ah, align 4
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>
  br label %SDL_GetTextureSize_REAL.exit

SDL_GetTextureSize_REAL.exit:                     ; preds = %SDL_ObjectValid.exit.thread.i388, %SDL_ObjectValid.exit.thread19.i, %SDL_GetRenderDrawColorFloat_REAL.exit
  %i.ak = phi <2 x float> [ zeroinitializer, %SDL_GetRenderDrawColorFloat_REAL.exit ], [ zeroinitializer, %SDL_ObjectValid.exit.thread19.i ], [ %i.aj, %SDL_ObjectValid.exit.thread.i388 ] ; 2 uses
  store i32 -1, ptr %i.a, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 -1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 -1, ptr %i.am, align 4
  %i.an = select i1 %.not, i32 0, i32 %11
  %i.ao = icmp sgt i32 %i.b, 0
  br i1 %i.ao, label %.lr.ph, label %QueueCmdGeometry.exit418

.lr.ph:                                           ; preds = %SDL_GetTextureSize_REAL.exit
  %.not484 = icmp eq ptr %6, null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 540
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.aw = phi i32 [ -1, %.lr.ph ], [ %.be, %.backedge.backedge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.be, %.backedge.backedge ] ; 8 uses
  switch i32 %i.an, label %bb.j [
    i32 4, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.g:                                             ; preds = %.backedge
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  br label %bb.k

bb.h:                                             ; preds = %.backedge
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  br label %bb.k

bb.i:                                             ; preds = %.backedge
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  br label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = call fastcc i32 @remap_indices(ptr noundef %i.a, i32 noundef %i.bv, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  %i.bx = trunc i64 %indvars.iv to i32
  %i.by = add i32 %i.bx, 1
  %i.bz = call fastcc i32 @remap_indices(ptr noundef %i.a, i32 noundef %i.by, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = add i32 %i.ca, 2
  %i.cc = call fastcc i32 @remap_indices(ptr noundef %i.a, i32 noundef %i.cb, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.g
  %i.cd = phi i32 [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %i.aw, %bb.i ], [ %.pre, %bb.j ] ; 7 uses
  %.0318 = phi i32 [ %i.ay, %bb.g ], [ %i.bf, %bb.h ], [ %i.bo, %bb.i ], [ %i.bw, %bb.j ] ; 13 uses
  %.0317 = phi i32 [ %i.ba, %bb.g ], [ %i.bi, %bb.h ], [ %i.br, %bb.i ], [ %i.bz, %bb.j ] ; 10 uses
  %.0316 = phi i32 [ %i.bc, %bb.g ], [ %i.bl, %bb.h ], [ %i.bu, %bb.i ], [ %i.cc, %bb.j ] ; 8 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %QueueCmdGeometry.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k
  %i.cf = load i32, ptr %i.am, align 4            ; 4 uses
  %i.cg = icmp eq i32 %i.cf, %.0318
  %i.ch = icmp eq i32 %i.cf, %.0317
  %or.cond356 = select i1 %i.cg, i1 true, i1 %i.ch
  %i.ci = icmp eq i32 %i.cf, %.0316
  %or.cond357 = select i1 %or.cond356, i1 true, i1 %i.ci
  %i.cj = zext i1 %or.cond357 to i32
  %i.ck = load i32, ptr %i.al, align 4            ; 6 uses
  %i.cl = icmp eq i32 %i.ck, %.0318
  %i.cm = icmp eq i32 %i.ck, %.0317
  %or.cond356.1 = select i1 %i.cl, i1 true, i1 %i.cm
  %i.cn = icmp eq i32 %i.ck, %.0316
  %or.cond357.1 = select i1 %or.cond356.1, i1 true, i1 %i.cn
  %i.co = zext i1 %or.cond357.1 to i32
  %.1304.1 = add nuw nsw i32 %i.cj, %i.co
  %i.cp = icmp eq i32 %i.cd, %.0318
  %i.cq = icmp eq i32 %i.cd, %.0317
  %or.cond356.2 = select i1 %i.cp, i1 true, i1 %i.cq
  %i.cr = icmp eq i32 %i.cd, %.0316
  %or.cond357.2 = select i1 %or.cond356.2, i1 true, i1 %i.cr
  %i.cs = zext i1 %or.cond357.2 to i32
  %.1304.2 = add nuw nsw i32 %.1304.1, %i.cs
  %i.ct = icmp eq i32 %.1304.2, 2
  br i1 %i.ct, label %bb.l, label %.thread456

bb.l:                                             ; preds = %.preheader.preheader
  %i.cu = mul nsw i32 %.0318, %3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv ; 2 uses
  %i.cx = mul nsw i32 %.0317, %3
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %2, i64 %i.cy ; 2 uses
  %i.da = mul nsw i32 %.0316, %3
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %2, i64 %i.db ; 2 uses
  %i.dd = load float, ptr %i.cw, align 4          ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.df = load float, ptr %i.de, align 4          ; 4 uses
  %i.dg = load float, ptr %i.cz, align 4          ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.di = load float, ptr %i.dh, align 4          ; 4 uses
  %i.dj = load float, ptr %i.dc, align 4          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dl = load float, ptr %i.dk, align 4          ; 2 uses
  %i.dm = fcmp ugt float %i.dd, %i.dg
  %i.dn = fcmp ugt float %i.df, %i.di
  %or.cond358 = select i1 %i.dm, i1 true, i1 %i.dn ; 3 uses
  %. = select i1 %or.cond358, float %i.dg, float %i.dd
  %.531 = select i1 %or.cond358, float %i.di, float %i.df
  %.0317..0318 = select i1 %or.cond358, i32 %.0317, i32 %.0318
  %i.do = fcmp ugt float %., %i.dj
  %i.dp = fcmp ugt float %.531, %i.dl
  %or.cond360 = select i1 %i.do, i1 true, i1 %i.dp
  %spec.select376 = select i1 %or.cond360, i32 %.0316, i32 %.0317..0318 ; 7 uses
  %i.dq = fcmp ult float %i.dd, %i.dg
  %i.dr = fcmp ult float %i.df, %i.di
  %or.cond361 = select i1 %i.dq, i1 true, i1 %i.dr ; 3 uses
  %.sink530 = select i1 %or.cond361, float %i.dg, float %i.dd
  %.sink529 = select i1 %or.cond361, float %i.di, float %i.df
  %.0317.sink527 = select i1 %or.cond361, i32 %.0317, i32 %.0318
  %i.ds = fcmp ult float %.sink530, %i.dj
  %i.dt = fcmp ult float %.sink529, %i.dl
  %or.cond363 = select i1 %i.ds, i1 true, i1 %i.dt
  %spec.select378 = select i1 %or.cond363, i32 %.0316, i32 %.0317.sink527 ; 7 uses
  %.not345 = icmp eq i32 %.0318, %spec.select376
  %.not346 = icmp eq i32 %.0318, %spec.select378
  %or.cond364 = or i1 %.not345, %.not346
  %.not347 = icmp eq i32 %.0317, %spec.select376
  %.not348 = icmp eq i32 %.0317, %spec.select378
  %or.cond365 = or i1 %.not347, %.not348
  %spec.select379 = select i1 %or.cond365, i32 %.0316, i32 %.0317
  %.0308 = select i1 %or.cond364, i32 %spec.select379, i32 %.0318 ; 2 uses
  %.not349 = icmp eq i32 %i.cd, %spec.select376
  %.not350 = icmp eq i32 %i.cd, %spec.select378
  %or.cond366 = or i1 %.not349, %.not350
  %.not351 = icmp eq i32 %i.ck, %spec.select376
  %.not352 = icmp eq i32 %i.ck, %spec.select378
  %or.cond367 = or i1 %.not351, %.not352
  %spec.select380 = select i1 %or.cond367, i32 %i.cf, i32 %i.ck
  %.0306 = select i1 %or.cond366, i32 %spec.select380, i32 %i.cd ; 2 uses
  %i.du = mul nsw i32 %spec.select376, %3
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %2, i64 %i.dv ; 3 uses
  %i.dx = mul nsw i32 %spec.select378, %3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %2, i64 %i.dy ; 3 uses
  %i.ea = mul nsw i32 %.0308, %3
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %2, i64 %i.eb ; 2 uses
  %i.ed = load float, ptr %i.dw, align 4          ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ef = load float, ptr %i.ee, align 4          ; 2 uses
  %i.eg = load float, ptr %i.dz, align 4          ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ei = load float, ptr %i.eh, align 4          ; 2 uses
  %i.ej = load float, ptr %i.ec, align 4          ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.el = load float, ptr %i.ek, align 4          ; 2 uses
  %i.em = fcmp oeq float %i.ed, %i.ej
  %i.en = fcmp oeq float %i.ei, %i.el
  %or.cond368 = select i1 %i.em, i1 %i.en, i1 false
  %i.eo = fcmp oeq float %i.ef, %i.el
  %i.ep = fcmp oeq float %i.eg, %i.ej
  %or.cond369 = select i1 %i.eo, i1 %i.ep, i1 false
  %i.eq = select i1 %or.cond368, i1 true, i1 %or.cond369 ; 2 uses
  %i.er = mul nsw i32 %.0306, %3
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %2, i64 %i.es ; 2 uses
  %i.eu = load float, ptr %i.et, align 4          ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = load float, ptr %i.ev, align 4          ; 2 uses
  %i.ex = fcmp oeq float %i.ed, %i.eu
  %i.ey = fcmp oeq float %i.ei, %i.ew
  %or.cond370 = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond370, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ez = fcmp oeq float %i.ef, %i.ew
  %i.fa = fcmp oeq float %i.eg, %i.eu
  %or.cond371.not480.not483 = select i1 %i.ez, i1 %i.fa, i1 false
  %or.cond477.not = select i1 %or.cond371.not480.not483, i1 %i.eq, i1 false
  br i1 %or.cond477.not, label %bb.n, label %.thread456

select.unfold:                                    ; preds = %bb.l
  br i1 %i.eq, label %bb.n, label %.thread456

bb.n:                                             ; preds = %bb.m, %select.unfold
  %i.fb = mul nsw i32 %spec.select376, %5
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %4, i64 %i.fc ; 3 uses
  %i.fe = mul nsw i32 %spec.select378, %5
  %i.ff = sext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %4, i64 %i.ff
  %i.fh = mul nsw i32 %.0306, %5
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %4, i64 %i.fi
  %i.fk = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fg, i64 noundef 16) #14
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.o, label %.thread456

bb.o:                                             ; preds = %bb.n
  %i.fm = mul nsw i32 %.0308, %5
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %4, i64 %i.fn
  %i.fp = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fo, i64 noundef 16) #14
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.p, label %.thread456

bb.p:                                             ; preds = %bb.o
  %i.fr = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fj, i64 noundef 16) #14
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.q, label %.thread456

bb.q:                                             ; preds = %bb.p
  br i1 %.not484, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ft = getelementptr inbounds i8, ptr %6, i64 %i.fc
  %i.fu = getelementptr inbounds i8, ptr %6, i64 %i.fn
  %i.fv = getelementptr inbounds i8, ptr %6, i64 %i.fi
  %i.fw = load float, ptr %i.ft, align 4          ; 2 uses
  %i.fx = fcmp ult float %i.fw, 0.000000e+00
  %i.fy = fcmp ugt float %i.fw, 1.000000e+00
  %or.cond372 = or i1 %i.fx, %i.fy
  br i1 %or.cond372, label %.thread456, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = getelementptr inbounds i8, ptr %6, i64 %i.ff
  %i.ga = load float, ptr %i.fz, align 4          ; 2 uses
  %i.gb = fcmp ult float %i.ga, 0.000000e+00
  %i.gc = fcmp ugt float %i.ga, 1.000000e+00
  %or.cond373 = or i1 %i.gb, %i.gc
  br i1 %or.cond373, label %.thread456, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gd = load float, ptr %i.fu, align 4          ; 2 uses
  %i.ge = fcmp ult float %i.gd, 0.000000e+00
  %i.gf = fcmp ugt float %i.gd, 1.000000e+00
  %or.cond374 = or i1 %i.ge, %i.gf
  br i1 %or.cond374, label %.thread456, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gg = load float, ptr %i.fv, align 4          ; 2 uses
  %i.gh = fcmp ult float %i.gg, 0.000000e+00
  %i.gi = fcmp ugt float %i.gg, 1.000000e+00
  %or.cond375 = or i1 %i.gh, %i.gi
  br i1 %or.cond375, label %.thread456, label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.gj = mul nsw i32 %.0318, %5
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %4, i64 %i.gk ; 7 uses
  br i1 %.not515, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gm = mul nsw i32 %spec.select376, %7
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %6, i64 %i.gn
  %i.gp = mul nsw i32 %spec.select378, %7
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %6, i64 %i.gq
  %i.gs = load <2 x float>, ptr %i.go, align 4
  %i.gt = fmul <2 x float> %i.ak, %i.gs           ; 2 uses
  store <2 x float> %i.gt, ptr %12, align 8
  %i.gu = load <2 x float>, ptr %i.gr, align 4
  %i.gv = fneg <2 x float> %i.gt
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.ak, <2 x float> %i.gv) ; 3 uses
  store <2 x float> %i.gw, ptr %i.aq, align 8
  %i.gx = extractelement <2 x float> %i.gw, i64 0
  %i.gy = fcmp une float %i.gx, 0.000000e+00
  %i.gz = extractelement <2 x float> %i.gw, i64 1
  %i.ha = fcmp une float %i.gz, 0.000000e+00
  %i.hb = select i1 %i.gy, i1 %i.ha, i1 false
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %or.cond4 = phi i1 [ false, %bb.x ], [ %i.hb, %bb.w ]
  %i.hc = load <2 x float>, ptr %i.dw, align 4    ; 2 uses
  store <2 x float> %i.hc, ptr %13, align 16
  %i.hd = load <2 x float>, ptr %i.dz, align 4
  %i.he = fsub <2 x float> %i.hd, %i.hc           ; 3 uses
  store <2 x float> %i.he, ptr %i.as, align 8
  br i1 %or.cond4, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.hg = load float, ptr %i.hf, align 4          ; 2 uses
  %i.hh = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %.split, label %SDL_ObjectValid.exit.thread.i391.us

SDL_ObjectValid.exit.thread.i391.us:              ; preds = %bb.z, %SDL_ObjectValid.exit.thread.i391.us
  %.tr.i.us = phi ptr [ %i.hl, %SDL_ObjectValid.exit.thread.i391.us ], [ %1, %bb.z ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.tr.i.us, i64 60
  store float %i.hg, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr.i.us, i64 248
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %.not.i.us = icmp eq ptr %i.hl, null
  br i1 %.not.i.us, label %SDL_SetTextureAlphaModFloat_REAL.exit.thread, label %SDL_ObjectValid.exit.thread.i391.us

SDL_SetTextureAlphaModFloat_REAL.exit.thread:     ; preds = %SDL_ObjectValid.exit.thread.i391.us
  %i.hm = load <2 x float>, ptr %i.gl, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.ho = load float, ptr %i.hn, align 4
  br label %SDL_ObjectValid.exit.thread.i397.us.preheader

.split:                                           ; preds = %bb.z, %SDL_ObjectValid.exit.thread.i391
  %i.hp = phi i8 [ %i.hu, %SDL_ObjectValid.exit.thread.i391 ], [ 1, %bb.z ]
  %i.hq = phi i8 [ %i.hv, %SDL_ObjectValid.exit.thread.i391 ], [ 1, %bb.z ]
  %.tr.i = phi ptr [ %i.hy, %SDL_ObjectValid.exit.thread.i391 ], [ %1, %bb.z ] ; 3 uses
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %SDL_ObjectValid.exit.i393, label %SDL_ObjectValid.exit.thread.i391

SDL_ObjectValid.exit.i393:                        ; preds = %.split
  %i.hs = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %.tr.i, i32 noundef 3) #14, !inline_history !14
  %.pre494 = load i8, ptr @SDL_object_validation, align 1, !range !9 ; 2 uses
  br i1 %i.hs, label %SDL_ObjectValid.exit.thread.i391, label %SDL_ObjectValid.exit.thread9.i

SDL_ObjectValid.exit.thread9.i:                   ; preds = %SDL_ObjectValid.exit.i393
  %i.ht = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14, !inline_history !14 ; 0 uses
  %.pre496 = load i8, ptr @SDL_object_validation, align 1, !range !9
  br label %SDL_SetTextureAlphaModFloat_REAL.exit

SDL_ObjectValid.exit.thread.i391:                 ; preds = %SDL_ObjectValid.exit.i393, %.split
  %i.hu = phi i8 [ %.pre494, %SDL_ObjectValid.exit.i393 ], [ %i.hp, %.split ] ; 2 uses
  %i.hv = phi i8 [ %.pre494, %SDL_ObjectValid.exit.i393 ], [ 0, %.split ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr.i, i64 60
  store float %i.hg, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr.i, i64 248
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.hy, null
  br i1 %.not.i, label %SDL_SetTextureAlphaModFloat_REAL.exit, label %.split, !llvm.loop !65

SDL_SetTextureAlphaModFloat_REAL.exit:            ; preds = %SDL_ObjectValid.exit.thread.i391, %SDL_ObjectValid.exit.thread9.i
  %.pre498 = phi i8 [ %.pre496, %SDL_ObjectValid.exit.thread9.i ], [ %i.hu, %SDL_ObjectValid.exit.thread.i391 ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.ia = load float, ptr %i.hz, align 4
  %i.ib = load <2 x float>, ptr %i.gl, align 4    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.id = load float, ptr %i.ic, align 4          ; 2 uses
  %i.ie = trunc nuw i8 %.pre498 to i1
  %i.if = insertelement <2 x float> %i.ib, float %i.ia, i64 1
  br i1 %i.ie, label %SDL_SetTextureAlphaModFloat_REAL.exit.split, label %SDL_ObjectValid.exit.thread.i397.us.preheader

SDL_ObjectValid.exit.thread.i397.us.preheader:    ; preds = %SDL_SetTextureAlphaModFloat_REAL.exit.thread, %SDL_SetTextureAlphaModFloat_REAL.exit
  %i.ig = phi float [ %i.ho, %SDL_SetTextureAlphaModFloat_REAL.exit.thread ], [ %i.id, %SDL_SetTextureAlphaModFloat_REAL.exit ]
  %i.ih = phi <2 x float> [ %i.hm, %SDL_SetTextureAlphaModFloat_REAL.exit.thread ], [ %i.if, %SDL_SetTextureAlphaModFloat_REAL.exit ]
  br label %SDL_ObjectValid.exit.thread.i397.us

SDL_ObjectValid.exit.thread.i397.us:              ; preds = %SDL_ObjectValid.exit.thread.i397.us.preheader, %SDL_ObjectValid.exit.thread.i397.us
  %.tr.i395.us = phi ptr [ %i.il, %SDL_ObjectValid.exit.thread.i397.us ], [ %1, %SDL_ObjectValid.exit.thread.i397.us.preheader ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.tr.i395.us, i64 48
  store <2 x float> %i.ih, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr.i395.us, i64 56
  store float %i.ig, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr.i395.us, i64 248
  %i.il = load ptr, ptr %i.ik, align 8            ; 2 uses
  %.not.i398.us = icmp eq ptr %i.il, null
  br i1 %.not.i398.us, label %SDL_SetTextureColorModFloat_REAL.exit, label %SDL_ObjectValid.exit.thread.i397.us

SDL_SetTextureAlphaModFloat_REAL.exit.split:      ; preds = %SDL_SetTextureAlphaModFloat_REAL.exit, %SDL_ObjectValid.exit.thread.i397
  %i.im = phi i8 [ %i.iq, %SDL_ObjectValid.exit.thread.i397 ], [ 1, %SDL_SetTextureAlphaModFloat_REAL.exit ]
  %.tr.i395 = phi ptr [ %i.iu, %SDL_ObjectValid.exit.thread.i397 ], [ %1, %SDL_SetTextureAlphaModFloat_REAL.exit ] ; 4 uses
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %SDL_ObjectValid.exit.i400, label %SDL_ObjectValid.exit.thread.i397

SDL_ObjectValid.exit.i400:                        ; preds = %SDL_SetTextureAlphaModFloat_REAL.exit.split
  %i.io = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %.tr.i395, i32 noundef 3) #14, !inline_history !12
  %.pre497 = load i8, ptr @SDL_object_validation, align 1, !range !9
  br i1 %i.io, label %SDL_ObjectValid.exit.thread.i397, label %SDL_ObjectValid.exit.thread15.i

SDL_ObjectValid.exit.thread15.i:                  ; preds = %SDL_ObjectValid.exit.i400
  %i.ip = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14, !inline_history !12 ; 0 uses
  br label %SDL_SetTextureColorModFloat_REAL.exit

SDL_ObjectValid.exit.thread.i397:                 ; preds = %SDL_ObjectValid.exit.i400, %SDL_SetTextureAlphaModFloat_REAL.exit.split
  %i.iq = phi i8 [ %.pre497, %SDL_ObjectValid.exit.i400 ], [ 0, %SDL_SetTextureAlphaModFloat_REAL.exit.split ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.tr.i395, i64 48
  store <2 x float> %i.ib, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %.tr.i395, i64 56
  store float %i.id, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %.tr.i395, i64 248
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  %.not.i398 = icmp eq ptr %i.iu, null
  br i1 %.not.i398, label %SDL_SetTextureColorModFloat_REAL.exit, label %SDL_SetTextureAlphaModFloat_REAL.exit.split, !llvm.loop !66

SDL_SetTextureColorModFloat_REAL.exit:            ; preds = %SDL_ObjectValid.exit.thread.i397.us, %SDL_ObjectValid.exit.thread.i397, %SDL_ObjectValid.exit.thread15.i
  %i.iv = load float, ptr %i.aq, align 8          ; 4 uses
  %i.iw = fcmp ogt float %i.iv, 0.000000e+00
  %i.ix = load float, ptr %14, align 4            ; 4 uses
  %i.iy = fcmp ogt float %i.ix, 0.000000e+00
  %or.cond10 = select i1 %i.iw, i1 %i.iy, i1 false
  br i1 %or.cond10, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %SDL_SetTextureColorModFloat_REAL.exit
  %i.iz = call zeroext i1 @SDL_RenderTexture_REAL(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %13) ; 0 uses
  br label %.thread

bb.ab:                                            ; preds = %SDL_SetTextureColorModFloat_REAL.exit
  %i.ja = fcmp olt float %i.iv, 0.000000e+00
  br i1 %i.ja, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jb = fneg float %i.iv
  store float %i.jb, ptr %i.aq, align 8
  %i.jc = load float, ptr %12, align 8
  %i.jd = fadd float %i.iv, %i.jc
  store float %i.jd, ptr %12, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i32 [ 1, %bb.ac ], [ 0, %bb.ab ]      ; 2 uses
  %i.je = fcmp olt float %i.ix, 0.000000e+00
  br i1 %i.je, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jf = or disjoint i32 %.0, 2
  %i.jg = fneg float %i.ix
  store float %i.jg, ptr %14, align 4
  %i.jh = load float, ptr %i.ar, align 4
  %i.ji = fadd float %i.ix, %i.jh
  store float %i.ji, ptr %i.ar, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1 = phi i32 [ %i.jf, %bb.ae ], [ %.0, %bb.ad ]
  %i.jj = call zeroext i1 @SDL_RenderTextureRotated_REAL(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %13, double noundef 0.000000e+00, ptr noundef null, i32 noundef %.1) ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.y
  %i.jk = extractelement <2 x float> %i.he, i64 0
  %i.jl = fcmp une float %i.jk, 0.000000e+00
  %i.jm = extractelement <2 x float> %i.he, i64 1
  %i.jn = fcmp une float %i.jm, 0.000000e+00
  %or.cond13 = select i1 %i.jl, i1 %i.jn, i1 false
  br i1 %or.cond13, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.jo = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %SDL_ObjectValid.exit.i404, label %SDL_ObjectValid.exit.thread.i402

SDL_ObjectValid.exit.i404:                        ; preds = %bb.ah
  %i.jq = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.jq, label %SDL_ObjectValid.exit.thread.i402, label %SDL_ObjectValid.exit.thread11.i

SDL_ObjectValid.exit.thread11.i:                  ; preds = %SDL_ObjectValid.exit.i404
  %i.jr = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ak

SDL_ObjectValid.exit.thread.i402:                 ; preds = %SDL_ObjectValid.exit.i404, %bb.ah
  %i.js = load i8, ptr %i.at, align 8, !range !9, !noundef !10
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %SDL_ObjectValid.exit.thread.i402
  %i.ju = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %SDL_ObjectValid.exit.thread.i402
  store i32 1, ptr %i.au, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %SDL_ObjectValid.exit.thread11.i
  %i.jv = load <4 x float>, ptr %i.gl, align 4
  %i.jw = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %SDL_ObjectValid.exit.i408, label %SDL_ObjectValid.exit.thread.i406

SDL_ObjectValid.exit.i408:                        ; preds = %bb.ak
  %i.jy = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.jy, label %SDL_ObjectValid.exit.thread.i406, label %SDL_ObjectValid.exit.thread12.i

SDL_ObjectValid.exit.thread12.i:                  ; preds = %SDL_ObjectValid.exit.i408
  %i.jz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_SetRenderDrawColorFloat_REAL.exit

SDL_ObjectValid.exit.thread.i406:                 ; preds = %SDL_ObjectValid.exit.i408, %bb.ak
  %i.ka = load i8, ptr %i.at, align 8, !range !9, !noundef !10
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %SDL_ObjectValid.exit.thread.i406
  %i.kc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_SetRenderDrawColorFloat_REAL.exit

bb.am:                                            ; preds = %SDL_ObjectValid.exit.thread.i406
  store <4 x float> %i.jv, ptr %i.av, align 4
  br label %SDL_SetRenderDrawColorFloat_REAL.exit

SDL_SetRenderDrawColorFloat_REAL.exit:            ; preds = %bb.am, %bb.al, %SDL_ObjectValid.exit.thread12.i
  %i.kd = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %SDL_ObjectValid.exit.i413, label %SDL_ObjectValid.exit.thread.i410

SDL_ObjectValid.exit.i413:                        ; preds = %SDL_SetRenderDrawColorFloat_REAL.exit
  %i.kf = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.kf, label %SDL_ObjectValid.exit.thread.i410, label %SDL_ObjectValid.exit.thread10.i414

SDL_ObjectValid.exit.thread10.i414:               ; preds = %SDL_ObjectValid.exit.i413
  %i.kg = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %.thread

SDL_ObjectValid.exit.thread.i410:                 ; preds = %SDL_ObjectValid.exit.i413, %SDL_SetRenderDrawColorFloat_REAL.exit
  %i.kh = load i8, ptr %i.at, align 8, !range !9, !noundef !10
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %SDL_ObjectValid.exit.thread.i410
  %i.kj = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %.thread

bb.ao:                                            ; preds = %SDL_ObjectValid.exit.thread.i410
  %savedstack = call ptr @llvm.stacksave.p0()
  %i.kk = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %SDL_ObjectValid.exit.i428, label %SDL_ObjectValid.exit.thread.i426

SDL_ObjectValid.exit.i428:                        ; preds = %bb.ao
  %i.km = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.km, label %SDL_ObjectValid.exit.thread.i426, label %SDL_ObjectValid.exit.thread48.i

SDL_ObjectValid.exit.thread48.i:                  ; preds = %SDL_ObjectValid.exit.i428
  %i.kn = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_RenderFillRects_REAL.exit

SDL_ObjectValid.exit.thread.i426:                 ; preds = %SDL_ObjectValid.exit.i428, %bb.ao
  %i.ko = load i8, ptr %i.at, align 8, !range !9, !noundef !10
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.ap, label %.lr.ph.i

bb.ap:                                            ; preds = %SDL_ObjectValid.exit.thread.i426
  %i.kq = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_RenderFillRects_REAL.exit

.lr.ph.i:                                         ; preds = %SDL_ObjectValid.exit.thread.i426
  %i.kr = alloca [16 x i8], align 16              ; 2 uses
  %i.ks = load ptr, ptr %i.c, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 144
  %i.ku = load <2 x float>, ptr %i.kt, align 4
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kw = load <4 x float>, ptr %13, align 16
  %i.kx = fmul <4 x float> %i.kv, %i.kw
  store <4 x float> %i.kx, ptr %i.kr, align 16
  %i.ky = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.kr, i32 noundef 1) ; 0 uses
  br label %SDL_RenderFillRects_REAL.exit

SDL_RenderFillRects_REAL.exit:                    ; preds = %SDL_ObjectValid.exit.thread48.i, %bb.ap, %.lr.ph.i
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br label %.thread

.thread456:                                       ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.n, %bb.o, %bb.p, %bb.m, %.preheader.preheader, %select.unfold
  %i.kz = load i32, ptr %i.a, align 4
  %.not355 = icmp eq i32 %i.kz, -1
  br i1 %.not355, label %QueueCmdGeometry.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread456
  %i.la = call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not.i415 = icmp eq ptr %i.la, null
  br i1 %.not.i415, label %QueueCmdGeometry.exit418, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 60
  store i32 1, ptr %i.lb, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  store i32 1, ptr %i.lc, align 8
  %i.ld = load ptr, ptr %i.ap, align 8
  %i.le = call zeroext i1 %i.ld(ptr noundef %0, ptr noundef nonnull %i.la, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 4, float noundef %i.f, float noundef %i.h) #14, !inline_history !19
  br i1 %i.le, label %QueueCmdGeometry.exit, label %QueueCmdGeometry.exit418.sink.split

QueueCmdGeometry.exit:                            ; preds = %.thread456, %bb.ar, %bb.k
  store i32 %.0318, ptr %i.a, align 4
  store i32 %.0317, ptr %i.al, align 4
  store i32 %.0316, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.lf = trunc nuw i64 %indvars.iv.next to i32
  %i.lg = icmp sgt i32 %i.b, %i.lf
  br i1 %i.lg, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %QueueCmdGeometry.exit, %.thread
  %.be = phi i32 [ %.0318, %QueueCmdGeometry.exit ], [ -1, %.thread ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %QueueCmdGeometry.exit ], [ %indvars.iv.next518, %.thread ]
  br label %.backedge, !llvm.loop !67

.thread:                                          ; preds = %bb.af, %bb.aa, %bb.ag, %SDL_ObjectValid.exit.thread10.i414, %bb.an, %SDL_RenderFillRects_REAL.exit
  store i32 -1, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.lh = trunc nuw i64 %indvars.iv.next518 to i32
  %i.li = icmp sgt i32 %i.b, %i.lh
  br i1 %i.li, label %.backedge.backedge, label %QueueCmdGeometry.exit418

._crit_edge:                                      ; preds = %QueueCmdGeometry.exit
  %i.lj = icmp eq i32 %.0318, -1
  br i1 %i.lj, label %QueueCmdGeometry.exit418, label %bb.as

bb.as:                                            ; preds = %._crit_edge
  %i.lk = call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not.i416 = icmp eq ptr %i.lk, null
  br i1 %.not.i416, label %QueueCmdGeometry.exit418, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 60
  store i32 1, ptr %i.ll, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  store i32 1, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = call zeroext i1 %i.lo(ptr noundef %0, ptr noundef nonnull %i.lk, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 4, float noundef %i.f, float noundef %i.h) #14, !inline_history !19
  br i1 %i.lp, label %QueueCmdGeometry.exit418, label %QueueCmdGeometry.exit418.sink.split

QueueCmdGeometry.exit418.sink.split:              ; preds = %bb.ar, %bb.at
  %.sink = phi ptr [ %i.lk, %bb.at ], [ %i.la, %bb.ar ]
  store i32 0, ptr %.sink, align 8
  br label %QueueCmdGeometry.exit418

QueueCmdGeometry.exit418:                         ; preds = %.thread, %bb.aq, %QueueCmdGeometry.exit418.sink.split, %SDL_GetTextureSize_REAL.exit, %bb.at, %bb.as, %._crit_edge
  %.4323 = phi i1 [ true, %._crit_edge ], [ false, %bb.as ], [ true, %SDL_GetTextureSize_REAL.exit ], [ true, %bb.at ], [ false, %QueueCmdGeometry.exit418.sink.split ], [ true, %.thread ], [ false, %bb.aq ]
  %i.lq = call zeroext i1 @SDL_SetRenderDrawBlendMode_REAL(ptr noundef %0, i32 noundef %.0440) ; 0 uses
  %i.lr = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.ls = trunc nuw i8 %i.lr to i1
end_hunk_3
