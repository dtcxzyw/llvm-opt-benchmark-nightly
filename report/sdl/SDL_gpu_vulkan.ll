Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@VULKAN_BindFragmentStorageTextures:bb.a

.lr.ph25:                                         ; preds = %bb.c
  %i.s = zext nneg i32 %i.q to i64
  %i.t = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.u = trunc nuw i64 %i.w to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %._crit_edge26, !llvm.loop !6

bb.e:                                             ; preds = %.lr.ph25, %bb.d
  %indvars.iv.i23 = phi i64 [ %i.s, %.lr.ph25 ], [ %i.w, %bb.d ]
  %i.w = add nsw i64 %indvars.iv.i23, -1          ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, %i.n
  br i1 %i.z, label %VULKAN_INTERNAL_TrackTexture.exit, label %bb.d, !llvm.loop !6

._crit_edge26:                                    ; preds = %bb.d, %bb.c
  %i.aa = load i32, ptr %i.d, align 4
  %i.ab = icmp eq i32 %i.q, %i.aa
  %.pre.i = load ptr, ptr %i.c, align 8           ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge26
  %i.ac = add nsw i32 %i.q, 1                     ; 2 uses
  store i32 %i.ac, ptr %i.d, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 3
  %i.af = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.ae) #17 ; 2 uses
  store ptr %i.af, ptr %i.c, align 8
  %.pre22.i = load i32, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge26
  %i.ag = phi i32 [ %.pre22.i, %bb.f ], [ %i.q, %._crit_edge26 ]
  %i.ah = phi ptr [ %i.af, %bb.f ], [ %.pre.i, %._crit_edge26 ]
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %i.n, ptr %i.aj, align 8
  %i.ak = load i32, ptr %i.b, align 8
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %i.an = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.am, i32 noundef 1) #13 ; 0 uses
  %.pre = load ptr, ptr %i.m, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre19 = load ptr, ptr %.phi.trans.insert, align 8
  br label %VULKAN_INTERNAL_TrackTexture.exit

VULKAN_INTERNAL_TrackTexture.exit:                ; preds = %bb.e, %bb.g
  %i.ao = phi ptr [ %.pre19, %bb.g ], [ %i.p, %bb.e ]
  store ptr %i.ao, ptr %i.k, align 8
  store i8 1, ptr %i.e, align 1
  br label %bb.h

bb.h:                                             ; preds = %VULKAN_INTERNAL_TrackTexture.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !104
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindFragmentStorageBuffers(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %.not17 = icmp eq i32 %3, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2572 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 587
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = add i32 %1, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, %i.o
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.b, align 8              ; 5 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %bb.c
  %i.r = zext nneg i32 %i.p to i64
  %i.s = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.t = trunc nuw i64 %i.v to i32
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %._crit_edge26, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph25, %bb.d
  %indvars.iv.i23 = phi i64 [ %i.r, %.lr.ph25 ], [ %i.v, %bb.d ]
  %i.v = add nsw i64 %indvars.iv.i23, -1          ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, %i.m
  br i1 %i.y, label %VULKAN_INTERNAL_TrackBuffer.exit, label %bb.d, !llvm.loop !11

._crit_edge26:                                    ; preds = %bb.d, %bb.c
  %i.z = load i32, ptr %i.d, align 4
  %i.aa = icmp eq i32 %i.p, %i.z
  %.pre.i = load ptr, ptr %i.c, align 8           ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge26
  %i.ab = add nsw i32 %i.p, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.d, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.ad) #17 ; 2 uses
  store ptr %i.ae, ptr %i.c, align 8
  %.pre22.i = load i32, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge26
  %i.af = phi i32 [ %.pre22.i, %bb.f ], [ %i.p, %._crit_edge26 ]
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %.pre.i, %._crit_edge26 ]
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  store ptr %i.m, ptr %i.ai, align 8
  %i.aj = load i32, ptr %i.b, align 8
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.b, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.am = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.al, i32 noundef 1) #13 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre19 = load ptr, ptr %.phi.trans.insert, align 8
  br label %VULKAN_INTERNAL_TrackBuffer.exit

VULKAN_INTERNAL_TrackBuffer.exit:                 ; preds = %bb.e, %bb.g
  %i.an = phi ptr [ %.pre19, %bb.g ], [ %i.o, %bb.e ]
  store ptr %i.an, ptr %i.k, align 8
  store i8 1, ptr %i.e, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %VULKAN_INTERNAL_TrackBuffer.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_PushVertexUniformData(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2124
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = add i32 %3, -1
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  %i.g = urem i32 %i.f, %i.d
  %i.h = sub nuw i32 %i.f, %i.g                   ; 2 uses
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0) ; 2 uses
  store ptr %i.n, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = add i32 %i.h, 4096
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %.0.i, align 8             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %.not.i = icmp ugt i64 %i.v, %i.s
  br i1 %.not.i, label %VULKAN_INTERNAL_PushUniformData.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  store i32 0, ptr %i.x, align 4
  store ptr %i.w, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 585
  store i8 1, ptr %i.y, align 1
  %.pre = load i32, ptr %i.x, align 4
  %.pre4 = load ptr, ptr %i.w, align 8
  br label %VULKAN_INTERNAL_PushUniformData.exit

VULKAN_INTERNAL_PushUniformData.exit:             ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %.pre4, %bb.d ], [ %i.t, %bb.c ]
  %i.aa = phi i32 [ %.pre, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %i.w, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.al = zext i32 %i.aa to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr readonly align 1 %2, i64 %i.an, i1 false)
  %i.ao = load i32, ptr %i.ab, align 4
  %i.ap = add i32 %i.ao, %i.h
  store i32 %i.ap, ptr %i.ab, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 586
  store i8 1, ptr %i.aq, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_PushFragmentUniformData(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2124
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = add i32 %3, -1
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  %i.g = urem i32 %i.f, %i.d
  %i.h = sub nuw i32 %i.f, %i.g                   ; 2 uses
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0) ; 2 uses
  store ptr %i.n, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.l, %bb.a ], [ %i.n, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = add i32 %i.h, 4096
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %.0.i, align 8             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %.not.i = icmp ugt i64 %i.v, %i.s
  br i1 %.not.i, label %VULKAN_INTERNAL_PushUniformData.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  store i32 0, ptr %i.x, align 4
  store ptr %i.w, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i8 1, ptr %i.y, align 4
  %.pre = load i32, ptr %i.x, align 4
  %.pre4 = load ptr, ptr %i.w, align 8
  br label %VULKAN_INTERNAL_PushUniformData.exit

VULKAN_INTERNAL_PushUniformData.exit:             ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %i.t, %bb.c ], [ %.pre4, %bb.d ]
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.1.i = phi ptr [ %.0.i, %bb.c ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.al = zext i32 %i.aa to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr readonly align 1 %2, i64 %i.an, i1 false)
  %i.ao = load i32, ptr %i.ab, align 4
  %i.ap = add i32 %i.ao, %i.h
  store i32 %i.ap, ptr %i.ab, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 589
  store i8 1, ptr %i.aq, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_DrawIndexedPrimitives(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call fastcc void @VULKAN_INTERNAL_BindGraphicsDescriptorSets(ptr noundef %i.b, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2712
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.f, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_DrawPrimitives(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call fastcc void @VULKAN_INTERNAL_BindGraphicsDescriptorSets(ptr noundef %i.b, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2704
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.f, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_DrawPrimitivesIndirect(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  tail call fastcc void @VULKAN_INTERNAL_BindGraphicsDescriptorSets(ptr noundef %i.b, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1427
  %i.e = load i8, ptr %i.d, align 1, !range !23, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2728
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2728
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i32 %2 to i64
  tail call void %i.k(ptr noundef %i.m, ptr noundef %i.o, i64 noundef %i.p, i32 noundef %3, i32 noundef 16) #13
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = trunc nuw i64 %indvars.iv to i32
  %i.u = shl i32 %i.t, 4
  %i.v = add i32 %i.u, %2
  %i.w = zext i32 %i.v to i64
  tail call void %i.q(ptr noundef %i.r, ptr noundef %i.s, i64 noundef %i.w, i32 noundef 1, i32 noundef 16) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !106

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.aa = icmp sgt i32 %i.y, 0
  br i1 %i.aa, label %.lr.ph27, label %._crit_edge

.lr.ph27:                                         ; preds = %.loopexit
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = load ptr, ptr %i.z, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.ad = trunc nuw i64 %i.af to i32
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %._crit_edge, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph27, %bb.d
  %indvars.iv.i26 = phi i64 [ %i.ab, %.lr.ph27 ], [ %i.af, %bb.d ]
  %i.af = add nsw i64 %indvars.iv.i26, -1         ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, %i.c
  br i1 %i.ai, label %VULKAN_INTERNAL_TrackBuffer.exit, label %bb.d, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2572 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.y, %i.ak
  %.pre.i = load ptr, ptr %i.z, align 8           ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.am = add nsw i32 %i.y, 1                     ; 2 uses
  store i32 %i.am, ptr %i.aj, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.ao) #17 ; 2 uses
  store ptr %i.ap, ptr %i.z, align 8
  %.pre22.i = load i32, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.aq = phi i32 [ %.pre22.i, %bb.f ], [ %i.y, %._crit_edge ]
  %i.ar = phi ptr [ %i.ap, %bb.f ], [ %.pre.i, %._crit_edge ]
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  store ptr %i.c, ptr %i.at, align 8
  %i.au = load i32, ptr %i.x, align 8
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.x, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ax = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.aw, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackBuffer.exit

VULKAN_INTERNAL_TrackBuffer.exit:                 ; preds = %bb.e, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_DrawIndexedPrimitivesIndirect(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  tail call fastcc void @VULKAN_INTERNAL_BindGraphicsDescriptorSets(ptr noundef %i.b, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1427
  %i.e = load i8, ptr %i.d, align 1, !range !23, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2720
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2720
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_0
begin_hunk_1_@VULKAN_BindComputeStorageTextures:bb.a
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m
  store ptr %i.au, ptr %i.av, align 8
  store i8 1, ptr %i.h, align 2
  br label %bb.j

bb.j:                                             ; preds = %VULKAN_INTERNAL_TrackTexture.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !115
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindComputeStorageBuffers(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not40 = icmp eq i32 %3, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2572 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 590
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = add i32 %1, %i.k
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not33 = icmp eq ptr %i.o, null
  br i1 %.not33, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.o, i64 36
  %.val.i = load i32, ptr %i.q, align 4           ; 2 uses
  %i.r = shl i32 %.val.i, 2
  %.4.i.i = and i32 %i.r, 124                     ; 2 uses
  %.not19.i.i = icmp eq i32 %.4.i.i, 0
  br i1 %.not19.i.i, label %bb.e, label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %.val.i, 32
  %.not20.i.i = icmp eq i32 %i.s, 0
  br i1 %.not20.i.i, label %bb.f, label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.349) #13
  br label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit

VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.014.i.i = phi i32 [ 4, %bb.f ], [ 128, %bb.e ], [ %.4.i.i, %bb.d ]
  tail call fastcc void @VULKAN_INTERNAL_BufferMemoryBarrier(ptr noundef readonly %i.b, ptr noundef nonnull readonly %0, i32 noundef 64, i32 noundef %.014.i.i, ptr noundef nonnull %i.o)
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit, %bb.c
  %i.t = phi ptr [ %.pre, %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit ], [ %i.p, %bb.c ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 36
  %.val.i34 = load i32, ptr %i.u, align 4         ; 2 uses
  %i.v = shl i32 %.val.i34, 2
  %.4.i.i35 = and i32 %i.v, 124                   ; 2 uses
  %.not19.i.i36 = icmp eq i32 %.4.i.i35, 0
  br i1 %.not19.i.i36, label %bb.h, label %VULKAN_INTERNAL_BufferTransitionFromDefaultUsage.exit

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %.val.i34, 32
  %.not20.i.i38 = icmp eq i32 %i.w, 0
  br i1 %.not20.i.i38, label %bb.i, label %VULKAN_INTERNAL_BufferTransitionFromDefaultUsage.exit

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.349) #13
  br label %VULKAN_INTERNAL_BufferTransitionFromDefaultUsage.exit

VULKAN_INTERNAL_BufferTransitionFromDefaultUsage.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.014.i.i37 = phi i32 [ 4, %bb.i ], [ 128, %bb.h ], [ %.4.i.i35, %bb.g ]
  tail call fastcc void @VULKAN_INTERNAL_BufferMemoryBarrier(ptr noundef readonly %i.b, ptr noundef nonnull readonly %0, i32 noundef %.014.i.i37, i32 noundef 64, ptr noundef nonnull %i.t)
  %i.x = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.y = load i32, ptr %i.d, align 8              ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %VULKAN_INTERNAL_BufferTransitionFromDefaultUsage.exit
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = load ptr, ptr %i.e, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = trunc nuw i64 %i.ae to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %._crit_edge49, !llvm.loop !11

bb.k:                                             ; preds = %.lr.ph48, %bb.j
  %indvars.iv.i47 = phi i64 [ %i.aa, %.lr.ph48 ], [ %i.ae, %bb.j ]
  %i.ae = add nsw i64 %indvars.iv.i47, -1         ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, %i.x
  br i1 %i.ah, label %VULKAN_INTERNAL_TrackBuffer.exit, label %bb.j, !llvm.loop !11

._crit_edge49:                                    ; preds = %bb.j, %VULKAN_INTERNAL_BufferTransitionFromDefaultUsage.exit
  %i.ai = load i32, ptr %i.f, align 4
  %i.aj = icmp eq i32 %i.y, %i.ai
  %.pre.i = load ptr, ptr %i.e, align 8           ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge49
  %i.ak = add nsw i32 %i.y, 1                     ; 2 uses
  store i32 %i.ak, ptr %i.f, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  %i.an = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.am) #17 ; 2 uses
  store ptr %i.an, ptr %i.e, align 8
  %.pre22.i = load i32, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge49
  %i.ao = phi i32 [ %.pre22.i, %bb.l ], [ %i.y, %._crit_edge49 ]
  %i.ap = phi ptr [ %i.an, %bb.l ], [ %.pre.i, %._crit_edge49 ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  store ptr %i.x, ptr %i.ar, align 8
  %i.as = load i32, ptr %i.d, align 8
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.d, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.av = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.au, i32 noundef 1) #13 ; 0 uses
  %.pre42 = load ptr, ptr %i.j, align 8
  br label %VULKAN_INTERNAL_TrackBuffer.exit

VULKAN_INTERNAL_TrackBuffer.exit:                 ; preds = %bb.k, %bb.m
  %i.aw = phi ptr [ %.pre42, %bb.m ], [ %i.x, %bb.k ]
  store ptr %i.aw, ptr %i.n, align 8
  %i.ax = load ptr, ptr %i.j, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m
  store ptr %i.az, ptr %i.ba, align 8
  store i8 1, ptr %i.h, align 2
  br label %bb.n

bb.n:                                             ; preds = %VULKAN_INTERNAL_TrackBuffer.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !116
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_PushComputeUniformData(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2124
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = add i32 %3, -1
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  %i.g = urem i32 %i.f, %i.d
  %i.h = sub nuw i32 %i.f, %i.g                   ; 2 uses
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0) ; 2 uses
  store ptr %i.n, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = add i32 %i.h, 4096
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %.0.i, align 8             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %.not.i = icmp ugt i64 %i.v, %i.s
  br i1 %.not.i, label %VULKAN_INTERNAL_PushUniformData.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  store i32 0, ptr %i.x, align 4
  store ptr %i.w, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 1, ptr %i.y, align 8
  %.pre = load i32, ptr %i.x, align 4
  %.pre4 = load ptr, ptr %i.w, align 8
  br label %VULKAN_INTERNAL_PushUniformData.exit

VULKAN_INTERNAL_PushUniformData.exit:             ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %.pre4, %bb.d ], [ %i.t, %bb.c ]
  %i.aa = phi i32 [ %.pre, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %i.w, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.al = zext i32 %i.aa to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr readonly align 1 %2, i64 %i.an, i1 false)
  %i.ao = load i32, ptr %i.ab, align 4
  %i.ap = add i32 %i.ao, %i.h
  store i32 %i.ap, ptr %i.ab, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 593
  store i8 1, ptr %i.aq, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_DispatchCompute(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call fastcc void @VULKAN_INTERNAL_BindComputeDescriptorSets(ptr noundef %i.b, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2688
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.f, i32 noundef %1, i32 noundef %2, i32 noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_DispatchComputeIndirect(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  tail call fastcc void @VULKAN_INTERNAL_BindComputeDescriptorSets(ptr noundef %i.b, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2696
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %2 to i64
  tail call void %i.e(ptr noundef %i.g, ptr noundef %i.i, i64 noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = zext nneg i32 %i.l to i64
  %i.p = load ptr, ptr %i.m, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.q = trunc nuw i64 %i.s to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %._crit_edge, !llvm.loop !11

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i10 = phi i64 [ %i.o, %.lr.ph ], [ %i.s, %bb.b ]
  %i.s = add nsw i64 %indvars.iv.i10, -1          ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %VULKAN_INTERNAL_TrackBuffer.exit, label %bb.b, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2572 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.l, %i.x
  %.pre.i = load ptr, ptr %i.m, align 8           ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.z = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.z, ptr %i.w, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.ab) #17 ; 2 uses
  store ptr %i.ac, ptr %i.m, align 8
  %.pre22.i = load i32, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ad = phi i32 [ %.pre22.i, %bb.d ], [ %i.l, %._crit_edge ]
  %i.ae = phi ptr [ %i.ac, %bb.d ], [ %.pre.i, %._crit_edge ]
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store ptr %i.c, ptr %i.ag, align 8
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ak = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.aj, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackBuffer.exit

VULKAN_INTERNAL_TrackBuffer.exit:                 ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_EndComputePass(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2392 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not64 = icmp eq i32 %i.b, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2328
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call fastcc void @VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage(ptr noundef %i.e, ptr noundef nonnull %0, i32 noundef 6, ptr noundef %i.g)
  store ptr null, ptr %i.f, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 24 uses
  %i.m = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not52 = icmp eq ptr %i.m, null
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 36
  %.val.i = load i32, ptr %i.o, align 4           ; 2 uses
  %i.p = shl i32 %.val.i, 2
  %.4.i.i = and i32 %i.p, 124                     ; 2 uses
  %.not19.i.i = icmp eq i32 %.4.i.i, 0
  br i1 %.not19.i.i, label %bb.d, label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit

bb.d:                                             ; preds = %bb.c
  %i.q = and i32 %.val.i, 32
  %.not20.i.i = icmp eq i32 %i.q, 0
  br i1 %.not20.i.i, label %bb.e, label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.349) #13
  br label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit

VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.014.i.i = phi i32 [ 4, %bb.e ], [ 128, %bb.d ], [ %.4.i.i, %bb.c ]
  tail call fastcc void @VULKAN_INTERNAL_BufferMemoryBarrier(ptr noundef readonly %i.n, ptr noundef nonnull readonly %0, i32 noundef 128, i32 noundef %.014.i.i, ptr noundef nonnull %i.m)
  store ptr null, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not52.1 = icmp eq ptr %i.s, null
  br i1 %.not52.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = getelementptr i8, ptr %i.s, i64 36
  %.val.i.1 = load i32, ptr %i.u, align 4         ; 2 uses
  %i.v = shl i32 %.val.i.1, 2
  %.4.i.i.1 = and i32 %i.v, 124                   ; 2 uses
  %.not19.i.i.1 = icmp eq i32 %.4.i.i.1, 0
  br i1 %.not19.i.i.1, label %bb.h, label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit.1

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %.val.i.1, 32
  %.not20.i.i.1 = icmp eq i32 %i.w, 0
  br i1 %.not20.i.i.1, label %bb.i, label %VULKAN_INTERNAL_BufferTransitionToDefaultUsage.exit.1
end_hunk_1
