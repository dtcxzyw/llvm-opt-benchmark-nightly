Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@VULKAN_CreateTexture:bb.a
bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.f, align 4
  %i.s = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %i.r, ptr noundef nonnull @.str.335, ptr noundef null) #13
  %i.t = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %i.s) #13
  store ptr %i.t, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.u, align 8
  %i.v = tail call ptr @VULKAN_AcquireCommandBuffer(ptr noundef %0) ; 5 uses
  tail call fastcc void @VULKAN_INTERNAL_TextureTransitionToDefaultUsage(ptr noundef %0, ptr noundef %i.v, i32 noundef 0, ptr noundef %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2600 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8              ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 2592 ; 3 uses
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = load ptr, ptr %i.y, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.ac = trunc nuw i64 %i.ae to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %._crit_edge, !llvm.loop !6

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv.i43 = phi i64 [ %i.aa, %.lr.ph ], [ %i.ae, %bb.g ]
  %i.ae = add nsw i64 %indvars.iv.i43, -1         ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %VULKAN_INTERNAL_TrackTexture.exit, label %bb.g, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 2604 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.x, %i.aj
  %.pre.i = load ptr, ptr %i.y, align 8           ; 2 uses
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.al = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.al, ptr %i.ai, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.an) #17 ; 2 uses
  store ptr %i.ao, ptr %i.y, align 8
  %.pre22.i = load i32, ptr %i.w, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ap = phi i32 [ %.pre22.i, %bb.i ], [ %i.x, %._crit_edge ]
  %i.aq = phi ptr [ %i.ao, %bb.i ], [ %.pre.i, %._crit_edge ]
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr %i.a, ptr %i.as, align 8
  %i.at = load i32, ptr %i.w, align 8
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.w, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.aw = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.av, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackTexture.exit

VULKAN_INTERNAL_TrackTexture.exit:                ; preds = %bb.h, %bb.j
  %i.ax = tail call zeroext i1 @VULKAN_Submit(ptr noundef nonnull %i.v)
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %VULKAN_INTERNAL_TrackTexture.exit
  tail call void @VULKAN_ReleaseTexture(ptr noundef %0, ptr noundef nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %VULKAN_INTERNAL_TrackTexture.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.c, %VULKAN_INTERNAL_TrackTexture.exit ], [ null, %bb.k ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @VULKAN_CreateBuffer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call fastcc ptr @VULKAN_INTERNAL_CreateBuffer(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %i.a, i32 noundef %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef %3) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %VULKAN_INTERNAL_CreateBufferContainer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(40) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 40) #16 ; 10 uses
  store ptr %i.b, ptr %i.d, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 1, ptr %i.g, align 4
  %i.h = tail call noalias dereferenceable_or_null(8) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 8) #16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.d, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr null, ptr %i.l, align 8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %VULKAN_INTERNAL_CreateBufferContainer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %3) #13
  store ptr %i.m, ptr %i.l, align 8
  br label %VULKAN_INTERNAL_CreateBufferContainer.exit

VULKAN_INTERNAL_CreateBufferContainer.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @VULKAN_CreateTransferBuffer(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call fastcc ptr @VULKAN_INTERNAL_CreateBuffer(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %i.a, i32 noundef 0, i32 noundef 2, i1 noundef zeroext true, ptr noundef %3) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %VULKAN_INTERNAL_CreateBufferContainer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(40) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 40) #16 ; 10 uses
  store ptr %i.b, ptr %i.d, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 1, ptr %i.g, align 4
  %i.h = tail call noalias dereferenceable_or_null(8) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 8) #16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.d, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr null, ptr %i.l, align 8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %VULKAN_INTERNAL_CreateBufferContainer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %3) #13
  store ptr %i.m, ptr %i.l, align 8
  br label %VULKAN_INTERNAL_CreateBufferContainer.exit

VULKAN_INTERNAL_CreateBufferContainer.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_SetBufferName(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.VkDebugUtilsObjectNameInfoEXT, align 8 ; 8 uses
  %i.a = tail call i64 @SDL_strlen_REAL(ptr noundef %2) #13
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1422 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @SDL_realloc_REAL(ptr noundef %i.j, i64 noundef %i.b) #17 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8
  %i.l = tail call i64 @SDL_utf8strlcpy_REAL(ptr noundef %i.k, ptr noundef %2, i64 noundef %i.b) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.v = load i8, ptr %i.c, align 4, !range !23, !noundef !24
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %VULKAN_INTERNAL_SetBufferName.exit
  %.pr = load i8, ptr %i.c, align 4
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %4 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %i.x = phi i32 [ %i.ak, %.lr.ph.splitthread-pre-split ], [ %i.n, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ab = trunc nuw i8 %4 to i1
  br i1 %i.ab, label %bb.d, label %VULKAN_INTERNAL_SetBufferName.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = load i8, ptr %i.f, align 2, !range !23, !noundef !24
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %VULKAN_INTERNAL_SetBufferName.exit

bb.e:                                             ; preds = %bb.d
  store i32 1000128000, ptr %3, align 8
  store ptr null, ptr %i.p, align 8
  store ptr %2, ptr %i.q, align 8
  store i32 9, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %i.s, align 8
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = call i32 %i.ah(ptr noundef %i.ai, ptr noundef nonnull %3) #13, !inline_history !84 ; 0 uses
  %.pre = load i32, ptr %i.m, align 4
  br label %VULKAN_INTERNAL_SetBufferName.exit

VULKAN_INTERNAL_SetBufferName.exit:               ; preds = %.lr.ph.split, %bb.d, %bb.e
  %i.ak = phi i32 [ %i.x, %.lr.ph.split ], [ %i.x, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph.splitthread-pre-split, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %VULKAN_INTERNAL_SetBufferName.exit, %.lr.ph, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_SetTextureName(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.VkDebugUtilsObjectNameInfoEXT, align 8 ; 8 uses
  %i.a = tail call i64 @SDL_strlen_REAL(ptr noundef %2) #13
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1422 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @SDL_realloc_REAL(ptr noundef %i.j, i64 noundef %i.b) #17 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8
  %i.l = tail call i64 @SDL_utf8strlcpy_REAL(ptr noundef %i.k, ptr noundef %2, i64 noundef %i.b) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.v = load i8, ptr %i.c, align 4, !range !23, !noundef !24
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %VULKAN_INTERNAL_SetTextureName.exit
  %.pr = load i8, ptr %i.c, align 4
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %4 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %i.x = phi i32 [ %i.ak, %.lr.ph.splitthread-pre-split ], [ %i.n, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ab = trunc nuw i8 %4 to i1
  br i1 %i.ab, label %bb.d, label %VULKAN_INTERNAL_SetTextureName.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = load i8, ptr %i.f, align 2, !range !23, !noundef !24
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %VULKAN_INTERNAL_SetTextureName.exit

bb.e:                                             ; preds = %bb.d
  store i32 1000128000, ptr %3, align 8
  store ptr null, ptr %i.p, align 8
  store ptr %2, ptr %i.q, align 8
  store i32 10, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %i.s, align 8
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = call i32 %i.ah(ptr noundef %i.ai, ptr noundef nonnull %3) #13, !inline_history !86 ; 0 uses
  %.pre = load i32, ptr %i.m, align 4
  br label %VULKAN_INTERNAL_SetTextureName.exit

VULKAN_INTERNAL_SetTextureName.exit:              ; preds = %.lr.ph.split, %bb.d, %bb.e
  %i.ak = phi i32 [ %i.x, %.lr.ph.split ], [ %i.x, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph.splitthread-pre-split, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %VULKAN_INTERNAL_SetTextureName.exit, %.lr.ph, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_InsertDebugLabel(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.VkDebugUtilsLabelEXT, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1422
  %i.d = load i8, ptr %i.c, align 2, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  store i32 1000128002, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2528
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_PushDebugGroup(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.VkDebugUtilsLabelEXT, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1422
  %i.d = load i8, ptr %i.c, align 2, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  store i32 1000128002, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2504
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_PopDebugGroup(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1422
  %i.d = load i8, ptr %i.c, align 2, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2520
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.g(ptr noundef %i.i) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseTexture(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2140 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %VULKAN_INTERNAL_ReleaseTexture.exit
  %i.i = phi i32 [ %i.d, %.lr.ph ], [ %i.af, %VULKAN_INTERNAL_ReleaseTexture.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %VULKAN_INTERNAL_ReleaseTexture.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %VULKAN_INTERNAL_ReleaseTexture.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.p) #13
  %i.q = load i32, ptr %i.f, align 8              ; 2 uses
  %i.r = add i32 %i.q, 1
  %i.s = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = shl i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %i.g, align 4
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = zext i32 %i.t to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call ptr @SDL_realloc_REAL(ptr noundef %i.u, i64 noundef %i.w) #17 ; 2 uses
  store ptr %i.x, ptr %i.h, align 8
  %.pre15.i = load i32, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.y = phi i32 [ %i.q, %._crit_edge.i ], [ %.pre15.i, %bb.d ]
  %i.z = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.x, %bb.d ]
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store ptr %i.l, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.f, align 8
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.f, align 8
  store i8 1, ptr %i.m, align 8
  %i.ae = load ptr, ptr %i.a, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ae) #13
  %.pre = load i32, ptr %i.c, align 4
  br label %VULKAN_INTERNAL_ReleaseTexture.exit

VULKAN_INTERNAL_ReleaseTexture.exit:              ; preds = %bb.b, %bb.e
  %i.af = phi i32 [ %i.i, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %VULKAN_INTERNAL_ReleaseTexture.exit, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i32, ptr %i.ai, align 8
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.aj) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.al) #13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.an) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %1) #13
  %i.ao = load ptr, ptr %i.a, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ao) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseSampler(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2172 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not = icmp ult i32 %i.e, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
end_hunk_0
