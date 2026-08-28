Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@UpdatePixelViewport:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink1 = phi i32 [ %i.an, %bb.e ], [ %i.ap, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink1, ptr %i.aq, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateMainViewDimensions(ptr noundef initializes((320, 328)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call zeroext i1 @SDL_GetWindowSize_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  store i32 0, ptr %i.f, align 8
  store i32 0, ptr %i.g, align 4
  %i.h = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.c
  %i.j = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.j, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread24.i

SDL_ObjectValid.exit.thread24.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.k = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.o = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.q, null
  br i1 %.not21.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call zeroext i1 %i.q(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #14, !inline_history !12 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.s, null
  br i1 %.not22.i, label %SDL_GetRenderOutputSize_REAL.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #14 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

SDL_GetRenderOutputSize_REAL.exit:                ; preds = %SDL_ObjectValid.exit.thread24.i, %bb.d, %bb.f, %bb.g, %bb.h
  %i.u = load i32, ptr %i.a, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = load i32, ptr %i.b, align 4              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %SDL_GetRenderOutputSize_REAL.exit
  %i.y = uitofp nneg i32 %i.u to float
  %i.z = load <2 x i32>, ptr %i.f, align 8
  %i.aa = sitofp <2 x i32> %i.z to <2 x float>
  %i.ab = uitofp nneg i32 %i.w to float
  %i.ac = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fdiv <2 x float> %i.aa, %i.ad
  br label %bb.j

bb.j:                                             ; preds = %SDL_GetRenderOutputSize_REAL.exit, %bb.i
  %i.af = phi <2 x float> [ %i.ae, %bb.i ], [ splat (float 1.000000e+00), %SDL_GetRenderOutputSize_REAL.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x float> %i.af, ptr %i.ag, align 8
  call fastcc void @UpdatePixelViewport(ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @SDL_CreateHashTable(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SDL_HashPointer(ptr noundef, ptr noundef) #3

declare zeroext i1 @SDL_KeyMatchPointer(ptr noundef, ptr noundef, ptr noundef) #3

declare void @SDL_DestroyHashValue(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @SDL_GetRenderLineMethod() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.101) #14 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.a) #14
  %.fr = freeze i32 %i.b                          ; 2 uses
  %switch.selectcmp = icmp eq i32 %.fr, 2
  %spec.select = zext i1 %switch.selectcmp to i32
  %switch.selectcmp5 = icmp eq i32 %.fr, 3
  %spec.select16 = select i1 %switch.selectcmp5, i32 2, i32 %spec.select
  br label %.thread12

.thread12:                                        ; preds = %bb.b, %bb.a
  %i.c = phi i32 [ 0, %bb.a ], [ %spec.select16, %bb.b ]
  ret i32 %i.c
}

declare i64 @SDL_GetWindowFlags_REAL(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateHDRProperties(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @SDL_GetWindowProperties_REAL(ptr noundef %i.b) #14 ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %SDL_GetRendererProperties_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.f = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.f, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread6.i

SDL_ObjectValid.exit.thread6.i:                   ; preds = %SDL_ObjectValid.exit.i
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRendererProperties_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.i = load i8, ptr %i.h, align 8, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRendererProperties_REAL.exit.thread

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %SDL_GetRendererProperties_REAL.exit, label %SDL_GetRendererProperties_REAL.exit.thread23

SDL_GetRendererProperties_REAL.exit:              ; preds = %bb.d
  %i.o = tail call i32 @SDL_CreateProperties_REAL() #14 ; 3 uses
  store i32 %i.o, ptr %i.l, align 8
  %.not19 = icmp eq i32 %i.o, 0
  br i1 %.not19, label %SDL_GetRendererProperties_REAL.exit.thread, label %SDL_GetRendererProperties_REAL.exit.thread23

SDL_GetRendererProperties_REAL.exit.thread23:     ; preds = %bb.d, %SDL_GetRendererProperties_REAL.exit
  %.0.i26 = phi i32 [ %i.o, %SDL_GetRendererProperties_REAL.exit ], [ %i.m, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 301991168
  br i1 %i.r, label %bb.e, label %.thread

.thread:                                          ; preds = %SDL_GetRendererProperties_REAL.exit.thread23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 4
  br label %bb.f

bb.e:                                             ; preds = %SDL_GetRendererProperties_REAL.exit.thread23
  %i.u = tail call float @SDL_GetFloatProperty_REAL(i32 noundef %i.c, ptr noundef nonnull @.str.102, float noundef 1.000000e+00) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 524
  store float %i.u, ptr %i.v, align 4
  %i.w = tail call float @SDL_GetFloatProperty_REAL(i32 noundef %i.c, ptr noundef nonnull @.str.103, float noundef 1.000000e+00) #14 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store float %i.w, ptr %i.x, align 8
  %i.y = fcmp ogt float %i.w, 1.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.sink = phi i1 [ %i.y, %bb.e ], [ false, %.thread ]
  %1 = phi ptr [ %i.x, %bb.e ], [ %i.t, %.thread ]
  %i.z = tail call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %.0.i26, ptr noundef nonnull @.str.104, i1 noundef zeroext %.sink) #14 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = tail call zeroext i1 @SDL_SetFloatProperty_REAL(i32 noundef %.0.i26, ptr noundef nonnull @.str.105, float noundef %i.ab) #14 ; 0 uses
  %i.ad = load float, ptr %1, align 8
  %i.ae = tail call zeroext i1 @SDL_SetFloatProperty_REAL(i32 noundef %.0.i26, ptr noundef nonnull @.str.106, float noundef %i.ad) #14 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %.0.in.i = select i1 %.not.i, ptr %i.aa, ptr %i.ah
  %.0.i20 = load float, ptr %.0.in.i, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fmul float %.0.i20, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 536
  store float %i.ak, ptr %i.al, align 8
  br label %SDL_GetRendererProperties_REAL.exit.thread

SDL_GetRendererProperties_REAL.exit.thread:       ; preds = %SDL_ObjectValid.exit.thread6.i, %bb.c, %SDL_GetRendererProperties_REAL.exit, %bb.a, %bb.f
  ret void
}

declare i32 @SDL_GetWindowProperties_REAL(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_AddWindowRenderer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetRenderViewport_REAL(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread19

SDL_ObjectValid.exit.thread19:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.u

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.76) #14
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.s, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call fastcc void @UpdatePixelViewport(ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 658 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !range !5, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.z = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %2, ptr noundef nonnull %i.y, i64 noundef 16) #14
  %.not.i17 = icmp eq i32 %i.z, 0
  br i1 %.not.i17, label %QueueCmdSetViewport.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.aa, align 8
  store ptr null, ptr %i.ac, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ae = call noalias dereferenceable_or_null(88) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 88) #16 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ae, null
  br i1 %.not19.i.i, label %QueueCmdSetViewport.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %i.ab, %bb.m ], [ %i.ae, %bb.n ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ag, null
  br i1 %.not20.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store ptr %.0.i.i, ptr %i.ah, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %.0.i.i, ptr %i.ai, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %.0.i.i, ptr %i.af, align 8
  store i32 1, ptr %.0.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call zeroext i1 %i.am(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i) #14, !inline_history !13
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %.0.i.i, align 8
  br label %QueueCmdSetViewport.exit

bb.t:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  store i8 1, ptr %i.v, align 2
  br label %QueueCmdSetViewport.exit

QueueCmdSetViewport.exit:                         ; preds = %bb.k, %bb.n, %bb.s, %bb.t
  %.1.i = phi i1 [ true, %bb.k ], [ true, %bb.t ], [ false, %bb.s ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %QueueCmdSetViewport.exit, %bb.c, %SDL_ObjectValid.exit.thread19
  %.1 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread19 ], [ %i.q, %bb.g ], [ %.1.i, %QueueCmdSetViewport.exit ]
  ret i1 %.1
}

declare void @SDL_AddWindowEventWatch(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SDL_RendererEventWatch(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call i32 @SDL_GetWindowID_REAL(ptr noundef %i.b) #14
  %.not = icmp eq i32 %i.d, %i.e
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not33 = icmp eq ptr %i.f, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i32, ptr %1, align 8
  switch i32 %i.g, label %bb.m [
    i32 518, label %bb.e
    i32 519, label %bb.e
    i32 520, label %bb.e
    i32 515, label %bb.f
    i32 514, label %bb.g
    i32 521, label %bb.i
    i32 523, label %bb.j
end_hunk_0
begin_hunk_1_@SDL_GetRenderTarget_REAL:bb.a
SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 308 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %SDL_GetTextureProperties_REAL.exit

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.r = tail call i32 @SDL_CreateProperties_REAL() #14 ; 2 uses
  store i32 %i.r, ptr %i.o, align 4
  br label %SDL_GetTextureProperties_REAL.exit

SDL_GetTextureProperties_REAL.exit:               ; preds = %SDL_ObjectValid.exit.thread5.i, %SDL_ObjectValid.exit.thread.i, %bb.f
  %.0.i7 = phi i32 [ 0, %SDL_ObjectValid.exit.thread5.i ], [ %i.r, %bb.f ], [ %i.p, %SDL_ObjectValid.exit.thread.i ]
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i7, ptr noundef nonnull @.str.46, ptr noundef %i.s) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %SDL_GetTextureProperties_REAL.exit, %bb.c, %SDL_ObjectValid.exit.thread9
  %.0 = phi ptr [ null, %bb.c ], [ %i.t, %SDL_GetTextureProperties_REAL.exit ], [ null, %SDL_ObjectValid.exit.thread9 ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetRenderLogicalPresentation_REAL(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread14

SDL_ObjectValid.exit.thread14:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp eq i32 %3, 0                        ; 2 uses
  %spec.select = select i1 %i.k, i32 0, i32 %1
  %spec.select18 = select i1 %i.k, i32 0, i32 %2
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i32 %spec.select, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  store i32 %spec.select18, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  store i32 %3, ptr %i.n, align 4
  tail call fastcc void @UpdateLogicalPresentation(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %SDL_ObjectValid.exit.thread14
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %SDL_ObjectValid.exit.thread14 ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateLogicalPresentation(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %2 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 58 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = sitofp i32 %i.h to float                 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = sitofp i32 %i.k to float                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.b, align 4
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.o = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.o, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread24.i

SDL_ObjectValid.exit.thread24.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.r = load i8, ptr %i.q, align 8, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.v, null
  br i1 %.not21.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call zeroext i1 %i.v(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !12 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.y, null
  br i1 %.not22.i, label %SDL_GetRenderOutputSize_REAL.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  br label %SDL_GetRenderOutputSize_REAL.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  store i32 %i.ad, ptr %i.a, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  store i32 %i.af, ptr %i.b, align 4
  br label %SDL_GetRenderOutputSize_REAL.exit

SDL_GetRenderOutputSize_REAL.exit:                ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread24.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <2 x float> zeroinitializer, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store float %i.i, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store float %i.l, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %SDL_GetRenderOutputSize_REAL.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <2 x float> zeroinitializer, ptr %i.am, align 4
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = sitofp i32 %i.an to float               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.ao, ptr %i.ap, align 4
  %i.aq = load i32, ptr %i.b, align 4
  %i.ar = sitofp i32 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.at, align 4
  br label %bb.z

bb.j:                                             ; preds = %SDL_GetRenderOutputSize_REAL.exit
  %i.au = load i32, ptr %i.a, align 4
  %i.av = sitofp i32 %i.au to float               ; 12 uses
  %i.aw = load i32, ptr %i.b, align 4
  %i.ax = sitofp i32 %i.aw to float               ; 11 uses
  %i.ay = fdiv float %i.i, %i.l                   ; 3 uses
  %i.az = fdiv float %i.av, %i.ax                 ; 3 uses
  %i.ba = icmp slt i32 %i.h, 1
  %i.bb = icmp slt i32 %i.k, 1
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ak, label %bb.m [
    i32 4, label %bb.l
    i32 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = fcmp ogt float %i.ay, %i.az             ; 2 uses
  %. = select i1 %i.bc, float %i.av, float %i.ax
  %.180 = select i1 %i.bc, float %i.i, float %i.l
  %i.bd = fptosi float %. to i32
  %i.be = fptosi float %.180 to i32
  %i.bf = sdiv i32 %i.bd, %i.be
  %.0 = sitofp i32 %i.bf to float                 ; 2 uses
  %3 = fcmp olt float %.0, 1.000000e+00
  %spec.store.select = select i1 %3, float 1.000000e+00, float %.0 ; 2 uses
  %i.bg = fmul nnan float %spec.store.select, %i.i
  %i.bh = call float @SDL_floorf_REAL(float noundef %i.bg) #14 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.bh, ptr %i.bj, align 4
  %i.bk = fsub float %i.av, %i.bh
  %i.bl = fmul float %i.bk, 5.000000e-01
  store float %i.bl, ptr %i.bi, align 4
  %i.bm = fmul nnan float %spec.store.select, %i.l
  %i.bn = call float @SDL_floorf_REAL(float noundef %i.bm) #14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.bn, ptr %i.bo, align 4
  %i.bp = fsub float %i.ax, %i.bn
  %i.bq = fmul float %i.bp, 5.000000e-01
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store float %i.bq, ptr %i.br, align 4
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bs = fsub float %i.ay, %i.az
  %i.bt = call float @SDL_fabsf_REAL(float noundef %i.bs) #14
  %i.bu = fcmp olt float %i.bt, f0x38D1B717
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <2 x float> zeroinitializer, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.av, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.ax, ptr %i.bx, align 4
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.by = fcmp ogt float %i.ay, %i.az
  %i.bz = load i32, ptr %i.aj, align 4
  %i.ca = icmp eq i32 %i.bz, 2                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  br i1 %i.by, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = fdiv float %i.av, %i.i
  store float 0.000000e+00, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.av, ptr %i.cd, align 4
  %i.ce = fmul float %i.cc, %i.l
  %i.cf = call float @SDL_floorf_REAL(float noundef %i.ce) #14 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.cf, ptr %i.cg, align 4
  %i.ch = fsub float %i.ax, %i.cf
  %i.ci = fmul float %i.ch, 5.000000e-01
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store float %i.ci, ptr %i.cj, align 4
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.ck = fdiv float %i.ax, %i.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store float 0.000000e+00, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.ax, ptr %i.cm, align 4
  %i.cn = fmul float %i.ck, %i.i
  %i.co = call float @SDL_floorf_REAL(float noundef %i.cn) #14 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.co, ptr %i.cp, align 4
  %i.cq = fsub float %i.av, %i.co
  %i.cr = fmul float %i.cq, 5.000000e-01
  store float %i.cr, ptr %i.cb, align 4
  br label %.thread

bb.s:                                             ; preds = %bb.o
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = fdiv float %i.ax, %i.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store float 0.000000e+00, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.ax, ptr %i.cu, align 4
  %i.cv = fmul float %i.cs, %i.i
  %i.cw = call float @SDL_floorf_REAL(float noundef %i.cv) #14 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.cw, ptr %i.cx, align 4
  %i.cy = fsub float %i.av, %i.cw
  %i.cz = fmul float %i.cy, 5.000000e-01
  store float %i.cz, ptr %i.cb, align 4
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.da = fdiv float %i.av, %i.i
  store float 0.000000e+00, ptr %i.cb, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.av, ptr %i.db, align 4
  %i.dc = fmul float %i.da, %i.l
  %i.dd = call float @SDL_floorf_REAL(float noundef %i.dc) #14 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.dd, ptr %i.de, align 4
  %i.df = fsub float %i.ax, %i.dd
  %i.dg = fmul float %i.df, 5.000000e-01
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store float %i.dg, ptr %i.dh, align 4
  br label %.thread

bb.v:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <2 x float> zeroinitializer, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store float %i.av, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float %i.ax, ptr %i.dk, align 4
  %i.dl = icmp sgt i32 %i.h, 0
  br i1 %i.dl, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.n, %bb.t, %bb.u, %bb.q, %bb.r, %bb.l, %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.dn = load float, ptr %i.dm, align 4          ; 2 uses
  %i.do = fdiv float %i.dn, %i.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread
  %i.dp = phi float [ %i.dn, %.thread ], [ %i.av, %bb.v ]
  %i.dq = phi float [ %i.do, %.thread ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store float %i.dq, ptr %i.dr, align 4
  %i.ds = icmp sgt i32 %i.k, 0
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = fdiv float %i.du, %i.l
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.dw = phi float [ %i.dv, %bb.x ], [ 0.000000e+00, %bb.w ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  store float %i.dw, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ea = load <2 x float>, ptr %i.dy, align 4
  %i.eb = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dw, i64 1
  %i.ed = fmul <2 x float> %i.ec, %i.ea
  store <2 x float> %i.ed, ptr %i.dz, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.i
  %.sink179 = phi i64 [ 112, %bb.y ], [ 76, %bb.i ]
  %.sink177 = phi i64 [ 136, %bb.y ], [ 144, %bb.i ]
  %.sink = phi i64 [ 116, %bb.y ], [ 80, %bb.i ]
  %.sink173 = phi i64 [ 140, %bb.y ], [ 148, %bb.i ]
  %i.ee = phi float [ %i.dp, %bb.y ], [ %i.ao, %bb.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink179
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink177
  store float %i.eg, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink173
  store float %i.ej, ptr %i.ek, align 4
  br i1 %i.f, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call fastcc void @UpdateMainViewDimensions(ptr noundef nonnull %0)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.pre = load float, ptr %.phi.trans.insert, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.el = phi float [ %.pre, %bb.aa ], [ %i.ee, %bb.z ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.en = load float, ptr %i.em, align 4
  %i.eo = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.en, i64 1
  %i.eq = fptosi <2 x float> %i.ep to <2 x i32>
  store <2 x i32> %i.eq, ptr %i.d, align 4
  call fastcc void @UpdatePixelViewport(ptr noundef nonnull %i.d)
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.es = load float, ptr %i.er, align 4          ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.eu = load float, ptr %i.et, align 4          ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = sitofp i32 %i.ew to float
  %i.ey = fmul float %i.es, %i.ex
  %i.ez = call float @SDL_floorf_REAL(float noundef %i.ey) #14
  %i.fa = fptosi float %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.fa, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = fmul float %i.eu, %i.fe
  %i.fg = call float @SDL_floorf_REAL(float noundef %i.ff) #14
  %i.fh = fptosi float %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.fh, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = sitofp i32 %i.fk to float
  %i.fm = fmul float %i.es, %i.fl
  %i.fn = call float @SDL_ceilf_REAL(float noundef %i.fm) #14
  %i.fo = fptosi float %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.fo, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 52
end_hunk_1
