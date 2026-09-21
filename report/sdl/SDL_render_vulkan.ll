Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render_vulkan?download=true
inline.NumInlined: 100
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@VULKAN_CreateTexture:bb.a
  %i.bz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, ptr noundef %i.by) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.aw

.thread105:                                       ; preds = %bb.z, %bb.ai
  %.184.ph = phi i1 [ false, %bb.ai ], [ %i.ao, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.aw

bb.am:                                            ; preds = %bb.aj
  %i.ca = load ptr, ptr %i.bu, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.cd = call fastcc i32 @VULKAN_CreateDescriptorSetAndPipelineLayout(ptr noundef nonnull %i.b, ptr noundef %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc)
  %.not97 = icmp eq i32 %i.cd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %.not97, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.p, %bb.am
  %.182 = phi i32 [ %i.z, %bb.am ], [ %i.i, %bb.p ] ; 2 uses
  %.180 = phi i32 [ %i.ab, %bb.am ], [ %i.k, %bb.p ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store i32 %.182, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  store i32 %.180, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.ch, 2
  %spec.select = select i1 %i.ci, i32 23, i32 7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call fastcc i32 @VULKAN_AllocateImage(ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %.182, i32 noundef %.180, i32 noundef %.0.i, i32 noundef %spec.select, ptr noundef nonnull byval(%struct.VkComponentMapping) align 8 %3, ptr noundef %i.ck, ptr noundef %i.r) ; 3 uses
  %.not98 = icmp eq i32 %i.cl, 0
  br i1 %.not98, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.3, i1 noundef zeroext false) #7
  br i1 %i.cm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cn = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.cl) #7
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %i.cn) #7
  call void @llvm.debugtrap()
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.co = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.cl) #7
  %i.cp = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %i.co) #7 ; 0 uses
  br label %bb.aw

bb.ar:                                            ; preds = %bb.an
  %i.cq = call i32 @SDL_GetTextureProperties_REAL(ptr noundef nonnull %1) #7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.cq, ptr noundef nonnull @.str.25, i64 noundef %i.ct) #7 ; 0 uses
  %i.cv = load i32, ptr %i.cg, align 4
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.cx = load i32, ptr %i.h, align 4
  %i.cy = load i32, ptr %i.j, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.dc = call fastcc i32 @VULKAN_CreateFramebuffersAndRenderPasses(ptr %.val, i32 noundef %i.cx, i32 noundef %i.cy, i32 noundef %.0.i, i32 noundef 1, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %i.db) ; 3 uses
  %.not99 = icmp eq i32 %i.dc, 0
  br i1 %.not99, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dd = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.3, i1 noundef zeroext false) #7
  br i1 %i.dd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.de = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.dc) #7
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26, ptr noundef %i.de) #7
  call void @llvm.debugtrap()
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.df = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.dc) #7
  %i.dg = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26, ptr noundef %i.df) #7 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.thread108, %.thread105, %.thread100, %bb.aq, %bb.ar, %bb.as, %bb.av, %bb.o, %bb.am, %bb.n, %bb.l
  %.5 = phi i1 [ %i.q, %bb.n ], [ false, %bb.o ], [ false, %bb.am ], [ %i.o, %bb.l ], [ false, %bb.aq ], [ false, %bb.av ], [ true, %bb.as ], [ true, %bb.ar ], [ %i.x, %.thread100 ], [ %.184.ph, %.thread105 ], [ false, %.thread108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.5
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @VULKAN_UpdateTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.31) #7
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  switch i32 %i.g, label %bb.g [
    i32 1000156002, label %VULKAN_VkFormatGetNumPlanes.exit
    i32 1000156003, label %VULKAN_GetBytesPerPixel.exit
    i32 1000156013, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %VULKAN_GetBytesPerPixel.exit

VULKAN_GetBytesPerPixel.exit:                     ; preds = %bb.c, %bb.d
  %.0.i62 = phi i32 [ 2, %bb.c ], [ 4, %bb.d ]    ; 2 uses
  %i.h = add i32 %4, -1
  %i.i = add i32 %i.h, %.0.i62
  %i.j = sub nsw i32 0, %.0.i62
  %i.k = and i32 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = mul nsw i32 %i.m, %4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %3, i64 %i.o
  %i.q = tail call zeroext i1 @VULKAN_UpdateTextureNV(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.p, i32 noundef %i.k)
  br label %bb.h

VULKAN_VkFormatGetNumPlanes.exit:                 ; preds = %bb.c
  %i.r = add nsw i32 %4, 1
  %i.s = sdiv i32 %i.r, 2                         ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = mul nsw i32 %i.u, %4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %3, i64 %i.w ; 3 uses
  %i.y = add nsw i32 %i.u, 1
  %i.z = sdiv i32 %i.y, 2
  %i.aa = mul nsw i32 %i.z, %i.s
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %1, align 8
  %i.ae = icmp eq i32 %i.ad, 842094169
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %VULKAN_VkFormatGetNumPlanes.exit
  %i.af = tail call zeroext i1 @VULKAN_UpdateTextureYUV(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.ac, i32 noundef %i.s, ptr noundef %i.x, i32 noundef %i.s)
  br label %bb.h

bb.f:                                             ; preds = %VULKAN_VkFormatGetNumPlanes.exit
  %i.ag = tail call zeroext i1 @VULKAN_UpdateTextureYUV(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %i.x, i32 noundef %i.s, ptr noundef %i.ac, i32 noundef %i.s)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %2, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.ai, i32 noundef %i.g, i32 noundef 0, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.aq)
  br label %bb.h

bb.h:                                             ; preds = %VULKAN_GetBytesPerPixel.exit, %bb.f, %bb.e, %bb.g, %bb.b
  %.2 = phi i1 [ %i.e, %bb.b ], [ %i.q, %VULKAN_GetBytesPerPixel.exit ], [ %i.ar, %bb.g ], [ %i.ag, %bb.f ], [ %i.af, %bb.e ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @VULKAN_UpdateTextureYUV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.31) #7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %2, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 5 uses
  %i.r = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.g, i32 noundef %i.i, i32 noundef 0, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.q)
  br i1 %i.r, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %1, align 8
  %i.t = icmp eq i32 %i.s, 842094169
  %i.u = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.v = load i32, ptr %i.h, align 4              ; 2 uses
  %9 = load i32, ptr %2, align 4
  %10 = sdiv i32 %9, 2                            ; 2 uses
  %11 = load i32, ptr %i.k, align 4
  %12 = sdiv i32 %11, 2                           ; 2 uses
  %13 = load i32, ptr %i.m, align 4
  %14 = add nsw i32 %13, 1
  %15 = sdiv i32 %14, 2                           ; 2 uses
  %16 = load i32, ptr %i.o, align 4
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %17, 2                           ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.u, i32 noundef %i.v, i32 noundef 1, i32 noundef %10, i32 noundef %12, i32 noundef %15, i32 noundef %18, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %i.q)
  br i1 %i.w, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load i32, ptr %i.h, align 4
  %i.z = load <4 x i32>, ptr %2, align 4
  %i.aa = add nsw <4 x i32> %i.z, <i32 0, i32 0, i32 1, i32 1>
  %i.ab = sdiv <4 x i32> %i.aa, splat (i32 2)     ; 4 uses
  %i.ac = extractelement <4 x i32> %i.ab, i64 0
  %i.ad = extractelement <4 x i32> %i.ab, i64 1
  %i.ae = extractelement <4 x i32> %i.ab, i64 2
  %i.af = extractelement <4 x i32> %i.ab, i64 3
  %i.ag = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.x, i32 noundef %i.y, i32 noundef 2, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %i.q)
  br i1 %i.ag, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ah = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.u, i32 noundef %i.v, i32 noundef 1, i32 noundef %10, i32 noundef %12, i32 noundef %15, i32 noundef %18, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %i.q)
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.f, align 8
  %i.aj = load i32, ptr %i.h, align 4
  %i.ak = load <4 x i32>, ptr %2, align 4
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 0, i32 1, i32 1>
  %i.am = sdiv <4 x i32> %i.al, splat (i32 2)     ; 4 uses
  %i.an = extractelement <4 x i32> %i.am, i64 0
  %i.ao = extractelement <4 x i32> %i.am, i64 1
  %i.ap = extractelement <4 x i32> %i.am, i64 2
  %i.aq = extractelement <4 x i32> %i.am, i64 3
  %i.ar = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef 2, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %i.q)
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.i, %bb.b
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.f ], [ %i.e, %bb.b ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @VULKAN_UpdateTextureNV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.31) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %2, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.r = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.g, i32 noundef %i.i, i32 noundef 0, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.q)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = load i32, ptr %i.h, align 4
  %i.u = load <4 x i32>, ptr %2, align 4
  %i.v = add nsw <4 x i32> %i.u, <i32 0, i32 0, i32 1, i32 1>
  %i.w = sdiv <4 x i32> %i.v, splat (i32 2)       ; 4 uses
  %i.x = extractelement <4 x i32> %i.w, i64 0
  %i.y = extractelement <4 x i32> %i.w, i64 1
  %i.z = extractelement <4 x i32> %i.w, i64 2
  %i.aa = extractelement <4 x i32> %i.w, i64 3
  %i.ab = tail call fastcc zeroext i1 @VULKAN_UpdateTextureInternal(ptr noundef %i.b, ptr noundef %i.s, i32 noundef %i.t, i32 noundef 1, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ %i.ab, %bb.d ], [ %i.e, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @VULKAN_LockTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.31) #7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.32) #7
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.k = load i32, ptr %i.j, align 4
  switch i32 %i.k, label %bb.h [
    i32 9, label %VULKAN_GetBytesPerPixel.exit
    i32 16, label %bb.f
    i32 1000156013, label %bb.f
    i32 1000156003, label %VULKAN_GetBytesPerPixel.exit
    i32 1000156002, label %VULKAN_GetBytesPerPixel.exit
    i32 97, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  br label %VULKAN_GetBytesPerPixel.exit

bb.g:                                             ; preds = %bb.e
  br label %VULKAN_GetBytesPerPixel.exit

bb.h:                                             ; preds = %bb.e
  br label %VULKAN_GetBytesPerPixel.exit

VULKAN_GetBytesPerPixel.exit:                     ; preds = %bb.e, %bb.e, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ 4, %bb.h ], [ 1, %bb.e ], [ 2, %bb.f ], [ 1, %bb.e ], [ 1, %bb.e ], [ 8, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %.0.i, %i.n                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.o, %i.r
  %i.t = tail call fastcc i32 @VULKAN_AllocateBuffer(ptr noundef %i.b, i64 noundef %i.s, i32 noundef 1, ptr noundef nonnull %i.i)
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %VULKAN_GetBytesPerPixel.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %3, align 8
  %i.x = trunc i64 %i.o to i32
  store i32 %i.x, ptr %4, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %VULKAN_GetBytesPerPixel.exit, %bb.d, %bb.b
  %.1 = phi i1 [ %i.h, %bb.d ], [ %i.e, %bb.b ], [ false, %VULKAN_GetBytesPerPixel.exit ], [ true, %bb.i ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_UnlockTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.VkImageMemoryBarrier, align 8 ; 15 uses
  %3 = alloca %struct.VkImageMemoryBarrier, align 8 ; 15 uses
  %4 = alloca %struct.VkBufferImageCopy, align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  tail call fastcc void @VULKAN_EnsureCommandBuffer(ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1808 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %VULKAN_RecordPipelineImageBarrier.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @vkCmdEndRenderPass, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1688
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.j(ptr noundef %i.l) #7, !inline_history !0
  store ptr null, ptr %i.h, align 8
  br label %VULKAN_RecordPipelineImageBarrier.exit

VULKAN_RecordPipelineImageBarrier.exit:           ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  store i32 45, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 6560, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 4096, ptr %i.n, align 4
  %i.o = load i32, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 7, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 -1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.f, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 1, ptr %i.v, align 8
end_hunk_0
